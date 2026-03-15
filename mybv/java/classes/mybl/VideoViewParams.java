package mybl;

import android.content.Context;
import android.os.Bundle;

import java.util.*;
import android.net.Uri;

import tv.danmaku.ijk.media.player.IjkMediaMeta;

import bl.afo;
import org.json.*;

public class VideoViewParams {
    public static List<String> cdn_history = new ArrayList<String>();
    public static String prefect_cdn = null;
    private static Context appContext = null;
    public static String currentVideoId = null;
    public static String currentCdn = null;
    private static String selectedBestCdn = null;
    public static boolean hasCommonCdn = false;
    
    public static void init(Context context) {
        appContext = context.getApplicationContext();
        CdnSelector.init(appContext);
    }
    
    public static void setCurrentVideo(String videoId) {
        currentVideoId = videoId;
    }
    
    public static void reportPlaybackSuccess() {
        if (currentCdn != null) {
            CdnSelector.updateCdnScore(currentCdn, true, false);
        }
    }
    
    public static void reportPlaybackFailed() {
        if (currentCdn != null) {
            CdnSelector.updateCdnScore(currentCdn, false, false);
        }
    }
    
    public static void reportPlaybackTimeout() {
        if (currentCdn != null) {
            CdnSelector.updateCdnScore(currentCdn, false, true);
        }
    }

    public static String CloestURL(String url,JSONObject dash){
        JSONArray videos=dash.optJSONArray("video");
        JSONArray audios=dash.optJSONArray("audio");
        String[] info=url.split("\\?")[0].split("/");
        String name=info[info.length-1];
        for(int i=0;i<videos.length();i++){
            String s=videos.optJSONObject(i).optString("base_url");
            info=s.split("\\?")[0].split("/");
            if(info[info.length-1].equals(name))url=s;
        }
        for(int i=0;i<audios.length();i++){
            String s=audios.optJSONObject(i).optString("base_url");
            info=s.split("\\?")[0].split("/");
            if(info[info.length-1].equals(name))url=s;
        }
        if(VideoViewParams.prefect_cdn!=null&&!VideoViewParams.prefect_cdn.isEmpty())url = Uri.parse(url).buildUpon().authority(VideoViewParams.prefect_cdn).build().toString();
        return url;
    }

    public static Bundle toBundleData(JSONObject dash) {
        Bundle bundle = new Bundle();
        
        selectedBestCdn = raceAndFindBestCdn(dash);
        
        JSONArray audios=dash.optJSONArray("audio");
        if(dash.optJSONObject("dolby")!=null&&dash.optJSONObject("dolby").optJSONObject("audio")!=null)audios.put(dash.optJSONObject("dolby").optJSONObject("audio"));
        if(dash.optJSONObject("flac")!=null&&dash.optJSONObject("flac").optJSONObject("audio")!=null)audios.put(dash.optJSONObject("flac").optJSONObject("audio"));
        bundle.putBundle(IjkMediaMeta.IJKM_DASH_KEY_AUDIO, filterData(-1, false, audios));
        
        String codecType = "H264";
        int codecId = 7;
        if("video/hevc".equals(afo.prefect_codec)){
            codecType = "HEVC";
            codecId = 12;
        }else if("video/av01".equals(afo.prefect_codec)){
            codecType = "AV01";
            codecId = 13;
        }
        bundle.putBundle(IjkMediaMeta.IJKM_DASH_KEY_VIDEO_264, filterData(codecId, true, dash.optJSONArray("video")));
        return bundle;
    }
    
    private static String raceAndFindBestCdn(JSONObject dash) {
        Map<String, String> cdnToUrl = new HashMap<>();
        Map<String, Integer> cdnScore = new HashMap<>();
        
        JSONArray videos = dash.optJSONArray("video");
        if (videos != null) {
            collectAllCdns(videos, cdnToUrl, cdnScore);
        }
        
        JSONArray audios = dash.optJSONArray("audio");
        if (audios != null) {
            collectAllCdns(audios, cdnToUrl, cdnScore);
        }
        
        if (cdnToUrl.isEmpty()) {
            return "upos-sz-mirror08c.bilivideo.com";
        }
        
        List<CdnSelector.CdnUrlInfo> urlInfos = new ArrayList<>();
        for (Map.Entry<String, String> entry : cdnToUrl.entrySet()) {
            String cdn = entry.getKey();
            String url = entry.getValue();
            CdnSelector.CdnUrlInfo info = new CdnSelector.CdnUrlInfo(url, cdn, cdnScore.getOrDefault(cdn, 70));
            urlInfos.add(info);
        }
        
        CdnSelector.RaceResult result = CdnSelector.selectBestUrl(appContext, currentVideoId, urlInfos);
        
        if (result != null && result.winningCdn != null) {
            hasCommonCdn = true;
            return result.winningCdn;
        }
        
        String bestCdn = selectCdnByScore(cdnScore);
        return bestCdn != null ? bestCdn : "upos-sz-mirror08c.bilivideo.com";
    }
    
    private static void collectAllCdns(JSONArray list, Map<String, String> cdnToUrl, Map<String, Integer> cdnScore) {
        for (int i = 0; i < list.length(); i++) {
            JSONObject item = list.optJSONObject(i);
            if (item != null) {
                String base_url = item.optString("base_url");
                String cdn = Uri.parse(base_url).getHost();
                if (cdn != null && !cdnToUrl.containsKey(cdn)) {
                    cdnToUrl.put(cdn, base_url);
                    cdnScore.put(cdn, CdnSelector.getCdnScore(cdn));
                }
                
                JSONArray backupUrls = item.optJSONArray("backup_url");
                if (backupUrls != null) {
                    for (int j = 0; j < backupUrls.length(); j++) {
                        String backupUrl = backupUrls.optString(j);
                        String backupCdn = Uri.parse(backupUrl).getHost();
                        if (backupCdn != null && !cdnToUrl.containsKey(backupCdn)) {
                            cdnToUrl.put(backupCdn, backupUrl);
                            cdnScore.put(backupCdn, CdnSelector.getCdnScore(backupCdn));
                        }
                    }
                }
            }
        }
    }
    
    private static String selectCdnByScore(Map<String, Integer> cdnScore) {
        if (cdnScore.isEmpty()) return null;
        
        String bestCdn = null;
        int bestScore = -1;
        
        for (Map.Entry<String, Integer> entry : cdnScore.entrySet()) {
            if (entry.getValue() > bestScore) {
                bestScore = entry.getValue();
                bestCdn = entry.getKey();
            }
        }
        
        return bestCdn;
    }

    private static Bundle filterData(int num, boolean z, JSONArray list) {
        Bundle bundle = new Bundle();
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = new Bundle();
        Bundle bundle4 = new Bundle();
        Bundle bundle5 = new Bundle();
        Set<Integer> Ids = new HashSet<Integer>();
        
        for (int i=0;i<list.length();i++) {
            JSONObject dashMediaIndex = list.optJSONObject(i);
            if (dashMediaIndex != null) {
                int id = dashMediaIndex.optInt("id");
                int codecid = dashMediaIndex.optInt("codecid");
                int bandwidth = dashMediaIndex.optInt("bandwidth");
                String idstr = String.valueOf(id);
                Ids.add(id);
                String base_url = dashMediaIndex.optString("base_url");
                String cdn_host = Uri.parse(base_url).getHost();
                if(!VideoViewParams.cdn_history.contains(cdn_host))VideoViewParams.cdn_history.add(cdn_host);
                
                boolean shouldSelect = bundle2.getString(idstr)==null || num == codecid;
                if(shouldSelect){
                    String selectedUrl = base_url;
                    String backupUrl0 = null;
                    String backupUrl1 = null;
                    
                    JSONArray backupUrls = dashMediaIndex.optJSONArray("backup_url");
                    if (backupUrls != null && backupUrls.length() > 0) {
                        List<String> allUrls = new ArrayList<>();
                        allUrls.add(base_url);
                        for (int j = 0; j < backupUrls.length(); j++) {
                            allUrls.add(backupUrls.optString(j));
                        }
                        
                        selectedUrl = findUrlByCdn(allUrls, selectedBestCdn);
                        if (selectedUrl == null) {
                            allUrls = sortUrlsByCdnScore(allUrls);
                            selectedUrl = allUrls.get(0);
                        }
                        
                        List<String> otherUrls = new ArrayList<>();
                        for (String url : allUrls) {
                            if (!url.equals(selectedUrl)) {
                                otherUrls.add(url);
                            }
                        }
                        otherUrls = sortUrlsByCdnScore(otherUrls);
                        
                        if (otherUrls.size() > 0) backupUrl0 = otherUrls.get(0);
                        if (otherUrls.size() > 1) backupUrl1 = otherUrls.get(1);
                    }
                    
                    String selectedCdn = Uri.parse(selectedUrl).getHost();
                    if (num == 7 || num == 12 || num == 13) {
                        currentCdn = selectedCdn;
                    }
                    
                    bundle2.putString(idstr, selectedUrl);
                    if (backupUrl0 != null) {
                        bundle3.putString(idstr, backupUrl0);
                    }
                    if (backupUrl1 != null) {
                        bundle4.putString(idstr, backupUrl1);
                    }
                    bundle5.putInt(idstr, bandwidth);
                }
            }
        }
        int[] ids = new int[Ids.size()];
        int i=0;
        for(Integer Id: Ids){ids[i++]=Id;}
        bundle.putIntArray(IjkMediaMeta.IJKM_DASH_KEY_ID, ids);
        bundle.putBundle(IjkMediaMeta.IJKM_DASH_KEY_BASE_URL, bundle2);
        bundle.putBundle(IjkMediaMeta.IJKM_DASH_KEY_BACKUP_URL0, bundle3);
        bundle.putBundle(IjkMediaMeta.IJKM_DASH_KEY_BACKUP_URL1, bundle4);
        bundle.putBundle(IjkMediaMeta.IJKM_DASH_KEY_BANDWIDTH, bundle5);
        
        return bundle;
    }
    
    private static List<String> sortUrlsByCdnScore(List<String> urls) {
        Collections.sort(urls, new Comparator<String>() {
            @Override
            public int compare(String url1, String url2) {
                String cdn1 = Uri.parse(url1).getHost();
                String cdn2 = Uri.parse(url2).getHost();
                int score1 = CdnSelector.getCdnScore(cdn1);
                int score2 = CdnSelector.getCdnScore(cdn2);
                return Integer.compare(score2, score1);
            }
        });
        return urls;
    }
    
    private static String findUrlByCdn(List<String> urls, String targetCdn) {
        if (targetCdn == null) return null;
        for (String url : urls) {
            String cdn = Uri.parse(url).getHost();
            if (targetCdn.equals(cdn)) {
                return url;
            }
        }
        return null;
    }
}
