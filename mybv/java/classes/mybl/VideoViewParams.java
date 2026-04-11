package mybl;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;

import java.util.*;
import android.net.Uri;

import tv.danmaku.ijk.media.player.IjkMediaMeta;

import bl.afo;
import bl.abd;
import org.json.*;

public class VideoViewParams {
    public static List<String> cdn_history = new ArrayList<String>();
    public static String prefect_cdn = null;
    private static Context appContext = null;
    public static String currentVideoId = null;
    public static String currentCdn = null;
    private static String selectedBestCdn = null;
    public static boolean hasCommonCdn = false;
    private static long prepareStartTime = 0;
    
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
        
        // Collect all URLs (base_url + backup_url) matching the filename
        List<String> candidateUrls = new ArrayList<>();
        
        for(int i=0;i<videos.length();i++){
            JSONObject item=videos.optJSONObject(i);
            String s=item.optString("base_url");
            info=s.split("\\?")[0].split("/");
            if(info[info.length-1].equals(name)){
                candidateUrls.add(s);
                // Also collect backup_urls for this track
                JSONArray backupUrls = item.optJSONArray("backup_url");
                if (backupUrls != null) {
                    for (int j = 0; j < backupUrls.length(); j++) {
                        String backup = backupUrls.optString(j);
                        String[] backupInfo = backup.split("\\?")[0].split("/");
                        if (backupInfo[backupInfo.length-1].equals(name)) {
                            candidateUrls.add(backup);
                        }
                    }
                }
            }
        }
        for(int i=0;i<audios.length();i++){
            JSONObject item=audios.optJSONObject(i);
            String s=item.optString("base_url");
            info=s.split("\\?")[0].split("/");
            if(info[info.length-1].equals(name)){
                candidateUrls.add(s);
                JSONArray backupUrls = item.optJSONArray("backup_url");
                if (backupUrls != null) {
                    for (int j = 0; j < backupUrls.length(); j++) {
                        String backup = backupUrls.optString(j);
                        String[] backupInfo = backup.split("\\?")[0].split("/");
                        if (backupInfo[backupInfo.length-1].equals(name)) {
                            candidateUrls.add(backup);
                        }
                    }
                }
            }
        }
        
        if (!candidateUrls.isEmpty()) {
            // Determine CDN preference
            int cdnPref = abd.CDN_PREF_AUTO;
            if (appContext != null) {
                cdnPref = abd.get_cdn_preference(appContext);
            }
            
            if (cdnPref == abd.CDN_PREF_MANUAL && prefect_cdn != null && !prefect_cdn.isEmpty()) {
                // Manual mode with prefect_cdn set: use host replacement (old behavior)
                url = candidateUrls.get(0);
                url = Uri.parse(url).buildUpon().authority(prefect_cdn).build().toString();
            } else if (cdnPref == abd.CDN_PREF_AUTO) {
                // Auto mode: use host replacement with prefect_cdn if set (old behavior)
                url = candidateUrls.get(0);
                if (prefect_cdn != null && !prefect_cdn.isEmpty()) {
                    url = Uri.parse(url).buildUpon().authority(prefect_cdn).build().toString();
                }
            } else {
                // bilivideo/mcdn preference: sort candidates by type, use full URL (no host replacement)
                candidateUrls = sortUrlsByPreference(candidateUrls, cdnPref);
                // Pick a URL that's different from the current one
                for (String candidate : candidateUrls) {
                    if (!candidate.equals(url)) {
                        url = candidate;
                        break;
                    }
                }
            }
        }
        
        return url;
    }

    public static Bundle toBundleData(JSONObject dash) {
        long toBundleStart = System.currentTimeMillis();
        prepareStartTime = toBundleStart;
        Log.i("PlaySpeed", "[TO_BUNDLE_START] toBundleData() start, video_count=" + (dash != null && dash.optJSONArray("video") != null ? dash.optJSONArray("video").length() : 0) + ", audio_count=" + (dash != null && dash.optJSONArray("audio") != null ? dash.optJSONArray("audio").length() : 0));
        Bundle bundle = new Bundle();
        
        int cdnPref = abd.CDN_PREF_AUTO;
        if (appContext != null) {
            cdnPref = abd.get_cdn_preference(appContext);
        }
        Log.i("PlaySpeed", "[TO_BUNDLE] cdnPreference=" + cdnPref + " (0=auto,1=bilivideo,2=mcdn,3=manual)");
        
        if (cdnPref == abd.CDN_PREF_AUTO) {
            selectedBestCdn = raceAndFindBestCdn(dash);
        } else if (cdnPref == abd.CDN_PREF_MANUAL) {
            // Manual mode: use prefect_cdn if set, otherwise fall back to race
            if (prefect_cdn != null && !prefect_cdn.isEmpty()) {
                selectedBestCdn = prefect_cdn;
                Log.i("PlaySpeed", "[TO_BUNDLE] Manual CDN mode, using prefect_cdn=" + prefect_cdn);
            } else {
                selectedBestCdn = raceAndFindBestCdn(dash);
            }
        } else {
            // bilivideo or mcdn preference: skip race, find best by type
            selectedBestCdn = findBestCdnByType(dash, cdnPref);
        }
        
        Log.i("PlaySpeed", "[TO_BUNDLE_RACE_DONE] selectedBestCdn=" + selectedBestCdn + ", cdnPref=" + cdnPref + ", race elapsed=" + (System.currentTimeMillis() - toBundleStart) + "ms");
        
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
        Log.i("PlaySpeed", "[TO_BUNDLE_END] toBundleData() done, total elapsed=" + (System.currentTimeMillis() - toBundleStart) + "ms, selectedCdn=" + selectedBestCdn);
        return bundle;
    }
    
    private static String raceAndFindBestCdn(JSONObject dash) {
        long raceStart = System.currentTimeMillis();
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
        
        Log.i("PlaySpeed", "[CDN_RACE] cdnToUrl.size=" + cdnToUrl.size() + ", cdns=" + cdnToUrl.keySet());
        
        if (cdnToUrl.isEmpty()) {
            Log.i("PlaySpeed", "[CDN_RACE] No CDN found, using default");
            return "upos-sz-mirror08c.bilivideo.com";
        }
        
        List<CdnSelector.CdnUrlInfo> urlInfos = new ArrayList<>();
        for (Map.Entry<String, String> entry : cdnToUrl.entrySet()) {
            String cdn = entry.getKey();
            String url = entry.getValue();
            Integer score = cdnScore.get(cdn);
            int finalScore = (score != null) ? score : 70;
            CdnSelector.CdnUrlInfo info = new CdnSelector.CdnUrlInfo(url, cdn, finalScore);
            urlInfos.add(info);
        }
        
        CdnSelector.RaceResult result = CdnSelector.selectBestUrl(appContext, currentVideoId, urlInfos);
        
        Log.i("PlaySpeed", "[CDN_RACE_DONE] winner=" + (result != null ? result.winningCdn : "null") + ", raceTime=" + (result != null ? result.raceTime + "ms" : "null") + ", fromCache=" + (result != null ? result.fromCache : "null") + ", total elapsed=" + (System.currentTimeMillis() - raceStart) + "ms");
        
        if (result != null && result.winningCdn != null) {
            hasCommonCdn = true;
            return result.winningCdn;
        }
        
        String bestCdn = selectCdnByScore(cdnScore);
        Log.i("PlaySpeed", "[CDN_RACE_FALLBACK] No race winner, using bestCdnByScore=" + bestCdn);
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

    /**
     * Find best CDN by user preference type (bilivideo or mcdn).
     * Skips CDN race entirely - finds the first CDN of preferred type.
     */
    private static String findBestCdnByType(JSONObject dash, int cdnPref) {
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
            Log.i("PlaySpeed", "[CDN_TYPE] No CDN found, using default");
            return "upos-sz-mirror08c.bilivideo.com";
        }
        
        int targetType = CdnSelector.CDN_TYPE_BILIVIDEO;
        if (cdnPref == abd.CDN_PREF_MCDN) {
            targetType = CdnSelector.CDN_TYPE_MCDN;
        }
        
        // First: find CDN matching the preferred type with highest score
        String bestMatch = null;
        int bestMatchScore = -1;
        // Second: fallback to any CDN with highest score
        String bestAny = null;
        int bestAnyScore = -1;
        
        for (Map.Entry<String, Integer> entry : cdnScore.entrySet()) {
            String cdn = entry.getKey();
            int score = entry.getValue();
            int type = CdnSelector.getCdnType(cdn);
            Log.i("PlaySpeed", "[CDN_TYPE] cdn=" + cdn + ", type=" + type + ", score=" + score);
            if (type == targetType && score > bestMatchScore) {
                bestMatch = cdn;
                bestMatchScore = score;
            }
            if (score > bestAnyScore) {
                bestAny = cdn;
                bestAnyScore = score;
            }
        }
        
        String result = bestMatch != null ? bestMatch : bestAny;
        Log.i("PlaySpeed", "[CDN_TYPE] targetType=" + targetType + ", bestMatch=" + bestMatch + ", fallback=" + bestAny + ", result=" + result);
        return result != null ? result : "upos-sz-mirror08c.bilivideo.com";
    }

    private static Bundle filterData(int num, boolean z, JSONArray list) {
        Bundle bundle = new Bundle();
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = new Bundle();
        Bundle bundle4 = new Bundle();
        Bundle bundle5 = new Bundle();
        Set<Integer> Ids = new HashSet<Integer>();
        
        int cdnPref = abd.CDN_PREF_AUTO;
        if (appContext != null) {
            cdnPref = abd.get_cdn_preference(appContext);
        }
        
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
                        
                        // Try to find URL matching selectedBestCdn first
                        selectedUrl = findUrlByCdn(allUrls, selectedBestCdn);
                        if (selectedUrl == null) {
                            // Sort by preference type, then by CDN score
                            allUrls = sortUrlsByPreference(allUrls, cdnPref);
                            selectedUrl = allUrls.get(0);
                        }
                        
                        List<String> otherUrls = new ArrayList<>();
                        for (String url : allUrls) {
                            if (!url.equals(selectedUrl)) {
                                otherUrls.add(url);
                            }
                        }
                        otherUrls = sortUrlsByPreference(otherUrls, cdnPref);
                        
                        if (otherUrls.size() > 0) backupUrl0 = otherUrls.get(0);
                        if (otherUrls.size() > 1) backupUrl1 = otherUrls.get(1);
                    }
                    
                    String selectedCdn = Uri.parse(selectedUrl).getHost();
                    if (num == 7 || num == 12 || num == 13) {
                        currentCdn = selectedCdn;
                        // Log CDN selection summary for video track
                        String cdnPrefName = "AUTO";
                        if (appContext != null) {
                            int cp = abd.get_cdn_preference(appContext);
                            if (cp == abd.CDN_PREF_BILIVIDEO) cdnPrefName = "BILIVIDEO";
                            else if (cp == abd.CDN_PREF_MCDN) cdnPrefName = "MCDN";
                            else if (cp == abd.CDN_PREF_MANUAL) cdnPrefName = "MANUAL";
                        }
                        int cdnType = CdnSelector.getCdnType(selectedCdn);
                        String cdnTypeName = cdnType == CdnSelector.CDN_TYPE_BILIVIDEO ? "bilivideo" : (cdnType == CdnSelector.CDN_TYPE_MCDN ? "mcdn" : "other");
                        Log.i("PlaySpeed", "[CDN_SUMMARY] mode=" + cdnPrefName + ", selectedCdn=" + selectedCdn + ", cdnType=" + cdnTypeName + ", score=" + CdnSelector.getCdnScore(selectedCdn) + ", commonCdn=" + hasCommonCdn + ", prefect_cdn=" + prefect_cdn);
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
    
    /**
     * Sort URLs by CDN preference type, then by score.
     * If preference is auto or manual, falls back to score-based sorting.
     * If preference is bilivideo/mcdn, preferred type URLs come first.
     */
    private static List<String> sortUrlsByPreference(List<String> urls, int cdnPref) {
        if (cdnPref == abd.CDN_PREF_AUTO || cdnPref == abd.CDN_PREF_MANUAL) {
            return sortUrlsByCdnScore(urls);
        }
        
        final int targetType;
        if (cdnPref == abd.CDN_PREF_BILIVIDEO) {
            targetType = CdnSelector.CDN_TYPE_BILIVIDEO;
        } else if (cdnPref == abd.CDN_PREF_MCDN) {
            targetType = CdnSelector.CDN_TYPE_MCDN;
        } else {
            return sortUrlsByCdnScore(urls);
        }
        
        Collections.sort(urls, new Comparator<String>() {
            @Override
            public int compare(String url1, String url2) {
                String cdn1 = Uri.parse(url1).getHost();
                String cdn2 = Uri.parse(url2).getHost();
                int type1 = CdnSelector.getCdnType(cdn1);
                int type2 = CdnSelector.getCdnType(cdn2);
                
                // Preferred type first
                boolean pref1 = (type1 == targetType);
                boolean pref2 = (type2 == targetType);
                if (pref1 && !pref2) return -1;
                if (!pref1 && pref2) return 1;
                
                // Same type group: sort by score
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
    
    /**
     * Called when player is prepared (onPrepared callback).
     * Logs the total buffering time from toBundleData start to prepared.
     */
    public static void onPlayerPrepared() {
        long now = System.currentTimeMillis();
        long bufferTime = prepareStartTime > 0 ? (now - prepareStartTime) : -1;
        String cdnPrefName = "AUTO";
        if (appContext != null) {
            int cp = abd.get_cdn_preference(appContext);
            if (cp == abd.CDN_PREF_BILIVIDEO) cdnPrefName = "BILIVIDEO";
            else if (cp == abd.CDN_PREF_MCDN) cdnPrefName = "MCDN";
            else if (cp == abd.CDN_PREF_MANUAL) cdnPrefName = "MANUAL";
        }
        Log.i("PlaySpeed", "[PREPARED_SUMMARY] cdnMode=" + cdnPrefName + ", cdn=" + currentCdn + ", bufferTime=" + bufferTime + "ms, selectedBestCdn=" + selectedBestCdn);
        prepareStartTime = 0;
    }
}
