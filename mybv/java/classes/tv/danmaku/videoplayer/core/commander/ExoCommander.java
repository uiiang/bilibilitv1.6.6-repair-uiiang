package tv.danmaku.videoplayer.core.commander;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.MergingMediaSource;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import com.google.android.exoplayer2.source.dash.DashMediaSource;
import com.google.android.exoplayer2.source.hls.HlsMediaSource;
import com.google.android.exoplayer2.upstream.DefaultHttpDataSource;
import com.google.android.exoplayer2.upstream.DataSource;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.ijk.media.player.IjkMediaCodecInfo;
import tv.danmaku.videoplayer.core.media.PlayerProxyUtils;
import tv.danmaku.videoplayer.core.media.PlayerSelector;
import tv.danmaku.videoplayer.core.media.exo.ExoPlayerImpl;
import tv.danmaku.videoplayer.core.media.exo.AudioBalanceLevel;
import tv.danmaku.videoplayer.core.media.resource.SegmentSource;
import tv.danmaku.videoplayer.core.media.resource.UrlExpirationChecker;
import tv.danmaku.videoplayer.core.videoview.IVideoParams;
import tv.danmaku.videoplayer.core.videoview.IVideoView;

import bl.abd;
import bl.mg;
import com.bilibili.tv.MainApplication;
import mybl.VideoViewParams;
import mybl.CookieUtil;
import com.bilibili.tv.player.widget.PlayerMenuRight;
import mybl.CdnFailoverDataSource;
import mybl.CdnFailoverDataSourceFactory;

public class ExoCommander extends AbsPlayerCommander {

    private static final String TAG = "ExoCommander";
    private ExoPlayerImpl mExoPlayer;
    private IVideoView.OnExtraInfoListener mOnExtraInfoListener;

    public ExoCommander(IMediaPlayer iMediaPlayer) {
        super(iMediaPlayer);
        IMediaPlayer actualPlayer = PlayerProxyUtils.getActualPlayer(iMediaPlayer);
        this.mExoPlayer = (ExoPlayerImpl) actualPlayer;
    }

    @Override
    public void openVideo(Context context, IVideoParams iVideoParams, Uri uri) throws IOException {
        long openStart = System.currentTimeMillis();
        Log.i(TAG, "[OPEN_VIDEO] preparing video -> " + uri);

        String uriStr = uri.toString();
        tv.danmaku.videoplayer.core.media.resource.MediaSource mediaSource = iVideoParams.getMediaSource();

        if (isMultiSegmentVideo(uriStr, mediaSource)) {
            Log.i(TAG, "[OPEN_VIDEO] Multi-segment video detected");
            StringBuilder sb = new StringBuilder("ffconcat version 1.0\n");
            Iterator<SegmentSource> it = mediaSource.mSegmentList.iterator();
            int index = 0;
            while (it.hasNext()) {
                SegmentSource next = it.next();
                sb.append("file ijksegment:");
                sb.append(index);
                sb.append("\n");
                sb.append("duration ");
                sb.append(next.mDuration / IjkMediaCodecInfo.RANK_MAX);
                if (next.mDuration % IjkMediaCodecInfo.RANK_MAX != 0) {
                    sb.append(".");
                    sb.append(next.mDuration % IjkMediaCodecInfo.RANK_MAX);
                }
                sb.append("\n");
                index++;
            }
            String concatStr = sb.toString();
            this.mExoPlayer.setDataSource(concatStr);
        } else {
            com.bilibili.tv.player.basic.context.VideoViewParams videoViewParams =
                (com.bilibili.tv.player.basic.context.VideoViewParams) iVideoParams;
            boolean hasDash = videoViewParams.mMediaResource != null
                && videoViewParams.mMediaResource.dash != null;

            Log.i(TAG, "[OPEN_VIDEO] hasDash=" + hasDash);

            DataSource.Factory dataSourceFactory = createDataSourceFactory();

            if (hasDash) {
                Log.i(TAG, "[DASH_BILI] Bilibili DASH JSON format detected");
                Log.i(TAG, "[DASH_BILI] video_count="
                    + videoViewParams.mMediaResource.dash.optJSONArray("video").length()
                    + ", quality=" + videoViewParams.mMediaResource.quality);

                JSONObject dashJson = videoViewParams.mMediaResource.dash;
                int quality = videoViewParams.mMediaResource.quality;

                int progressSec = videoViewParams.mResolveParams != null
                    ? videoViewParams.mResolveParams.mProgress : 0;
                long progressMs = 0;
                if (progressSec > 0) {
                    progressMs = progressSec * 1000L;
                }

                MediaSource dashSource = buildBiliDashMediaSource(dashJson, quality, dataSourceFactory);
                Log.i(TAG, "[DASH_BILI] Using MergingMediaSource for Bilibili DASH");
                if (progressMs > 0) {
                    this.mExoPlayer.setDataSourceWithSeek(dashSource, progressMs);
                } else {
                    this.mExoPlayer.setDataSource(dashSource);
                }
            } else if (isStandardDash(uriStr)) {
                Log.i(TAG, "[DASH_NATIVE] Standard DASH (MPD) format detected: " + uriStr);
                MediaSource dashSource = buildStandardDashSource(uriStr, dataSourceFactory);
                Log.i(TAG, "[DASH_NATIVE] Using DashMediaSource for standard DASH");
                this.mExoPlayer.setDataSource(dashSource);
            } else if (isHls(uriStr)) {
                Log.i(TAG, "[HLS_NATIVE] HLS format detected: " + uriStr);
                MediaSource hlsSource = buildHlsSource(uriStr, dataSourceFactory);
                Log.i(TAG, "[HLS_NATIVE] Using HlsMediaSource for HLS");
                this.mExoPlayer.setDataSource(hlsSource);
            } else {
                Log.i(TAG, "[PROGRESSIVE] Progressive format: " + uriStr);
                
                int progressSec = videoViewParams.mResolveParams != null
                    ? videoViewParams.mResolveParams.mProgress : 0;
                long progressMs = 0;
                if (progressSec > 0) {
                    progressMs = progressSec * 1000L;
                    Log.i(TAG, "[PROGRESSIVE] Will seek to " + progressMs + "ms on start");
                }
                
                DataSource.Factory factory = dataSourceFactory;
                
                if (uriStr.startsWith("http://") || uriStr.startsWith("https://")) {
                    java.util.List<String> urlCandidates = getUrlCandidates(videoViewParams, uriStr);
                    Log.i(TAG, "[CDN_FAILOVER] Found " + urlCandidates.size() + " URL candidates");
                    
                    if (urlCandidates.size() > 1) {
                        java.util.List<Uri> uris = new java.util.ArrayList<>();
                        for (String url : urlCandidates) {
                            uris.add(Uri.parse(url));
                        }
                        factory = new CdnFailoverDataSourceFactory(dataSourceFactory, uris, "PROGRESSIVE");
                        Log.i(TAG, "[CDN_FAILOVER] Using CdnFailoverDataSource with " + uris.size() + " candidates");
                    } else {
                        Log.i(TAG, "[CDN_FAILOVER] Only one URL candidate, using default DataSource");
                    }
                }
                
                MediaSource progressiveSource = new ProgressiveMediaSource.Factory(factory)
                    .createMediaSource(MediaItem.fromUri(uriStr));
                
                if (progressMs > 0) {
                    this.mExoPlayer.setDataSourceWithSeek(progressiveSource, progressMs);
                } else {
                    this.mExoPlayer.setDataSource(progressiveSource);
                }
            }
        }

        int speed_id = PlayerMenuRight.speed_id >= 0 ? PlayerMenuRight.speed_id
            : abd.get_speed_id(MainApplication.a().getApplicationContext());
        this.mExoPlayer.setSpeed(abd.get_speed(speed_id));

        this.mMediaPlayer.prepareAsync();
    }

    private DataSource.Factory createDataSourceFactory() {
        Log.i(TAG, "[DATASOURCE] Creating DefaultHttpDataSource factory");
        
        String pcUserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36";
        
        DefaultHttpDataSource.Factory httpFactory = new DefaultHttpDataSource.Factory()
            .setUserAgent(pcUserAgent)
            .setConnectTimeoutMs(10000)
            .setReadTimeoutMs(30000)
            .setAllowCrossProtocolRedirects(true);

        java.util.Map<String, String> headers = new java.util.HashMap<>();
        headers.put("Referer", "https://www.bilibili.com/");
        
        mg biliAccount = mg.a(MainApplication.a());
        String cookie = CookieUtil.getFullCookieWithDevice(biliAccount);
        if (cookie != null && !cookie.isEmpty()) {
            headers.put("Cookie", cookie);
            Log.i(TAG, "[DATASOURCE] Added Cookie header, length=" + cookie.length());
        } else {
            Log.w(TAG, "[DATASOURCE] No Cookie available");
        }
        
        httpFactory.setDefaultRequestProperties(headers);
        
        Log.i(TAG, "[DATASOURCE] DefaultHttpDataSource factory created with PC User-Agent, Referer and Cookie headers");
        
        return httpFactory;
    }

    private boolean isStandardDash(String url) {
        if (TextUtils.isEmpty(url)) return false;
        String lowerUrl = url.toLowerCase();
        return lowerUrl.endsWith(".mpd") || lowerUrl.contains(".mpd?");
    }

    private boolean isHls(String url) {
        if (TextUtils.isEmpty(url)) return false;
        String lowerUrl = url.toLowerCase();
        return lowerUrl.endsWith(".m3u8") || lowerUrl.contains(".m3u8?");
    }

    private MediaSource buildStandardDashSource(String mpdUrl, DataSource.Factory dataSourceFactory) {
        Log.i(TAG, "[DASH_NATIVE] Creating DashMediaSource for: " + mpdUrl);
        DashMediaSource.Factory dashFactory = new DashMediaSource.Factory(dataSourceFactory);
        return dashFactory.createMediaSource(MediaItem.fromUri(mpdUrl));
    }

    private MediaSource buildHlsSource(String m3u8Url, DataSource.Factory dataSourceFactory) {
        Log.i(TAG, "[HLS_NATIVE] Creating HlsMediaSource for: " + m3u8Url);
        HlsMediaSource.Factory hlsFactory = new HlsMediaSource.Factory(dataSourceFactory);
        return hlsFactory.createMediaSource(MediaItem.fromUri(m3u8Url));
    }
    
    private String fixPlatformInUrl(String url) {
        if (TextUtils.isEmpty(url)) return url;
        
        String fixedUrl = url;
        if (url.contains("platform=android_tv")) {
            fixedUrl = url.replace("platform=android_tv", "platform=pc");
            Log.i(TAG, "[URL_FIX] Fixed platform parameter: android_tv -> pc");
        } else if (url.contains("platform=android")) {
            fixedUrl = url.replace("platform=android", "platform=pc");
            Log.i(TAG, "[URL_FIX] Fixed platform parameter: android -> pc");
        }
        
        if (!fixedUrl.equals(url)) {
            Log.i(TAG, "[URL_FIX] Original URL: " + (url.length() > 100 ? url.substring(0, 100) + "..." : url));
            Log.i(TAG, "[URL_FIX] Fixed URL: " + (fixedUrl.length() > 100 ? fixedUrl.substring(0, 100) + "..." : fixedUrl));
        }
        
        return fixedUrl;
    }

    private MediaSource buildBiliDashMediaSource(JSONObject dashJson, int quality, DataSource.Factory dataSourceFactory) throws IOException {
        try {
            JSONArray videoArray = dashJson.optJSONArray("video");
            JSONArray audioArray = dashJson.optJSONArray("audio");

            JSONObject selectedVideo = findMediaByQuality(videoArray, quality);
            JSONObject selectedAudio = (audioArray != null && audioArray.length() > 0)
                ? audioArray.optJSONObject(0) : null;

            if (selectedVideo == null) {
                throw new IOException("No video track found for quality: " + quality);
            }

            String videoUrl = selectedVideo.optString("base_url");
            videoUrl = fixPlatformInUrl(videoUrl);
            int videoId = selectedVideo.optInt("id");
            Log.i(TAG, "[DASH_BILI] Selected video: id=" + videoId + ", url=" + videoUrl);
            
            checkUrlExpiration(videoUrl, "video");

            java.util.List<String> videoCandidates = getDashUrlCandidates(selectedVideo, videoUrl);
            Log.i(TAG, "[DASH_CDN] Video URL candidates: " + videoCandidates.size());
            
            DataSource.Factory videoFactory = dataSourceFactory;
            if (videoCandidates.size() > 1) {
                java.util.List<Uri> videoUris = new java.util.ArrayList<>();
                for (String url : videoCandidates) {
                    String fixedUrl = fixPlatformInUrl(url);
                    videoUris.add(Uri.parse(fixedUrl));
                }
                videoFactory = new CdnFailoverDataSourceFactory(dataSourceFactory, videoUris, "DASH_VIDEO");
                Log.i(TAG, "[DASH_CDN] Using CdnFailoverDataSource for video with " + videoUris.size() + " candidates");
            }

            MediaSource videoSource = new ProgressiveMediaSource.Factory(videoFactory)
                .createMediaSource(MediaItem.fromUri(videoUrl));

            if (selectedAudio != null) {
                String audioUrl = selectedAudio.optString("base_url");
                audioUrl = fixPlatformInUrl(audioUrl);
                int audioId = selectedAudio.optInt("id");
                Log.i(TAG, "[DASH_BILI] Selected audio: id=" + audioId + ", url=" + audioUrl);
                
                checkUrlExpiration(audioUrl, "audio");

                java.util.List<String> audioCandidates = getDashUrlCandidates(selectedAudio, audioUrl);
                Log.i(TAG, "[DASH_CDN] Audio URL candidates: " + audioCandidates.size());
                
                DataSource.Factory audioFactory = dataSourceFactory;
                if (audioCandidates.size() > 1) {
                    java.util.List<Uri> audioUris = new java.util.ArrayList<>();
                    for (String url : audioCandidates) {
                        String fixedUrl = fixPlatformInUrl(url);
                        audioUris.add(Uri.parse(fixedUrl));
                    }
                    audioFactory = new CdnFailoverDataSourceFactory(dataSourceFactory, audioUris, "DASH_AUDIO");
                    Log.i(TAG, "[DASH_CDN] Using CdnFailoverDataSource for audio with " + audioUris.size() + " candidates");
                }
                
                MediaSource audioSource = new ProgressiveMediaSource.Factory(audioFactory)
                    .createMediaSource(MediaItem.fromUri(audioUrl));
                Log.i(TAG, "[DASH_BILI] Merging video and audio sources");
                return new MergingMediaSource(true, true, videoSource, audioSource);
            }

            Log.i(TAG, "[DASH_BILI] Video only (no audio track)");
            return videoSource;
        } catch (Exception e) {
            Log.e(TAG, "[DASH_BILI] Failed to build DASH source", e);
            throw new IOException("DASH source error", e);
        }
    }
    
    private java.util.List<String> getDashUrlCandidates(JSONObject mediaObj, String baseUrl) {
        java.util.List<String> candidates = new java.util.ArrayList<>();
        candidates.add(baseUrl);
        
        if (mediaObj == null) {
            return candidates;
        }
        
        JSONArray backupUrls = mediaObj.optJSONArray("backup_url");
        if (backupUrls != null && backupUrls.length() > 0) {
            Log.i(TAG, "[DASH_BACKUP] Found " + backupUrls.length() + " backup URLs");
            for (int i = 0; i < backupUrls.length(); i++) {
                String backupUrl = backupUrls.optString(i);
                if (!TextUtils.isEmpty(backupUrl) && !candidates.contains(backupUrl)) {
                    candidates.add(backupUrl);
                    Log.i(TAG, "[DASH_BACKUP] Added backup URL: " + (backupUrl.length() > 80 ? backupUrl.substring(0, 80) + "..." : backupUrl));
                }
            }
        } else {
            Log.i(TAG, "[DASH_BACKUP] No backup URLs found");
        }
        
        return candidates;
    }
    
    private void checkUrlExpiration(String url, String type) {
        UrlExpirationChecker.checkUrlExpiration(url, type);
    }

    private JSONObject findMediaByQuality(JSONArray mediaArray, int quality) {
        if (mediaArray == null) return null;

        for (int i = 0; i < mediaArray.length(); i++) {
            JSONObject media = mediaArray.optJSONObject(i);
            if (media != null && media.optInt("id") == quality) {
                return media;
            }
        }

        return mediaArray.optJSONObject(0);
    }

    @Override
    public void start() throws IllegalStateException {
        this.mMediaPlayer.start();
    }

    @Override
    public <T> T require(String str, T t) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode == -742835314) {
            if (str.equals(Commands.CMD_GET_ASYNC_POS)) {
                c = 1;
            }
            c = 65535;
        } else if (hashCode == 1404097366) {
            if (str.equals(Commands.CMD_GET_PLAYBACK_SPEED)) {
                c = 0;
            }
            c = 65535;
        } else {
            c = 65535;
        }
        switch (c) {
            case 0:
                return (T) cast(Float.valueOf(getPlaybackSpeed()), t);
            case 1:
                return cast(Integer.valueOf((int) getCurrentPosition()), t);
            default:
                return t;
        }
    }

    @Override
    public Object act(String str, Object... objArr) {
        char c;
        switch (str.hashCode()) {
            case -1103207439:
                if (str.equals(Commands.CMD_SET_ON_EXTRA_INFO_LIS)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -427345462:
                if (str.equals(Commands.CMD_SET_PLAYBACK_SPEED)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1995754716:
                if (str.equals("SetAudioBalanceLevel")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                if (objArr.length < 1 || !(objArr[0] instanceof IVideoView.OnExtraInfoListener)) {
                    return null;
                }
                mOnExtraInfoListener = (IVideoView.OnExtraInfoListener) objArr[0];
                return null;
            case 1:
                if (objArr.length < 1 || !(objArr[0] instanceof Float)) {
                    return null;
                }
                setPlaybackSpeed(((Float) objArr[0]).floatValue());
                return null;
            case 2:
                if (objArr.length < 1 || !(objArr[0] instanceof AudioBalanceLevel)) {
                    return null;
                }
                setAudioBalanceLevel((AudioBalanceLevel) objArr[0]);
                return null;
            default:
                return null;
        }
    }

    @Override
    public void onRelease() {
        super.onRelease();
    }

    private void setPlaybackSpeed(float f) {
        this.mExoPlayer.setSpeed(f);
    }

    public void setAudioBalanceLevel(AudioBalanceLevel level) {
        if (this.mExoPlayer != null) {
            this.mExoPlayer.setAudioBalanceLevel(level);
        }
    }
    
    public ExoPlayerImpl getMediaPlayer() {
        return this.mExoPlayer;
    }

    private float getPlaybackSpeed() {
        return 1.0f;
    }

    private boolean isMultiSegmentVideo(String str, tv.danmaku.videoplayer.core.media.resource.MediaSource mediaSource) {
        if (TextUtils.isEmpty(str)) {
            if (mediaSource == null || mediaSource.mSegmentList == null
                || mediaSource.mSegmentList.isEmpty()) {
                return false;
            }
        } else if (!str.contains("vsl://") && !str.contains("down://")
            && !str.contains("vsindex://")) {
            return false;
        }
        return true;
    }
    
    private java.util.List<String> getUrlCandidates(com.bilibili.tv.player.basic.context.VideoViewParams videoViewParams, String primaryUrl) {
        java.util.List<String> candidates = new java.util.ArrayList<>();
        candidates.add(primaryUrl);
        
        if (videoViewParams == null || videoViewParams.mMediaResource == null) {
            Log.i(TAG, "[BACKUP_URLS] No MediaResource available");
            return candidates;
        }
        
        com.bilibili.lib.media.resource.MediaResource mediaResource = videoViewParams.mMediaResource;
        
        if (mediaResource.a == null || mediaResource.a.a == null || mediaResource.a.a.isEmpty()) {
            Log.i(TAG, "[BACKUP_URLS] No VodIndex or PlayIndex list available");
            return candidates;
        }
        
        int resolvedIndex = mediaResource.e();
        if (resolvedIndex < 0 || resolvedIndex >= mediaResource.a.a.size()) {
            Log.i(TAG, "[BACKUP_URLS] Invalid resolved index: " + resolvedIndex);
            return candidates;
        }
        
        Object playIndexObj = mediaResource.a.a.get(resolvedIndex);
        if (playIndexObj == null) {
            Log.i(TAG, "[BACKUP_URLS] PlayIndex is null at index " + resolvedIndex);
            return candidates;
        }
        
        try {
            Class<?> playIndexClass = playIndexObj.getClass();
            java.lang.reflect.Field segmentListField = playIndexClass.getField("f");
            Object segmentListObj = segmentListField.get(playIndexObj);
            
            if (segmentListObj == null) {
                Log.i(TAG, "[BACKUP_URLS] Segment list is null");
                return candidates;
            }
            
            java.util.ArrayList<?> segmentList = (java.util.ArrayList<?>) segmentListObj;
            if (segmentList.isEmpty()) {
                Log.i(TAG, "[BACKUP_URLS] Segment list is empty");
                return candidates;
            }
            
            Object segmentObj = segmentList.get(0);
            Class<?> segmentClass = segmentObj.getClass();
            
            java.lang.reflect.Field backupUrlsField = segmentClass.getField("e");
            Object backupUrlsObj = backupUrlsField.get(segmentObj);
            
            if (backupUrlsObj != null) {
                java.util.ArrayList<String> backupUrls = (java.util.ArrayList<String>) backupUrlsObj;
                Log.i(TAG, "[BACKUP_URLS] Found " + backupUrls.size() + " backup URLs");
                
                for (String backupUrl : backupUrls) {
                    if (!TextUtils.isEmpty(backupUrl) && !candidates.contains(backupUrl)) {
                        candidates.add(backupUrl);
                        Log.i(TAG, "[BACKUP_URLS] Added backup URL: " + (backupUrl.length() > 80 ? backupUrl.substring(0, 80) + "..." : backupUrl));
                    }
                }
            } else {
                Log.i(TAG, "[BACKUP_URLS] No backup URLs field");
            }
        } catch (Exception e) {
            Log.e(TAG, "[BACKUP_URLS] Error getting backup URLs: " + e.getMessage());
        }
        
        return candidates;
    }
}
