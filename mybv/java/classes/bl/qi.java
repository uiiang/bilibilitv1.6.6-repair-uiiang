package bl;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.bilibili.lib.media.resolver.exception.ResolveMediaSourceException;
import com.bilibili.lib.media.resolver.params.ResolveMediaResourceParams;
import com.bilibili.lib.media.resource.MediaResource;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: BL */
/* loaded from: classes.dex */
public class qi extends py {
    private boolean d = false;

    @Override // bl.qe
    public boolean a() {
        return super.a() && this.a == 200;
    }

    public MediaResource a(Context context, ResolveMediaResourceParams resolveMediaResourceParams, int i, SparseArray<qn> sparseArray, int[] iArr) throws ResolveMediaSourceException {
        JSONObject jSONObject;
        int a;
        int i2 = i;
        JSONObject jSONObject2 = new JSONObject();
        long qiStart = System.currentTimeMillis();
        Log.i("PlaySpeed", "[QI_PARSE_START] qi.a() start, cid=" + resolveMediaResourceParams.c());
        try {
            if (a()) {
                long parseStart = System.currentTimeMillis();
                String responseStr = new String(this.b);
                Log.i("PgcPlayUrl", "========== PGC PlayUrl Response ==========");
                Log.i("PgcPlayUrl", "Response length: " + responseStr.length());
                
                JSONObject jSONObject3 = new JSONObject(responseStr);
                JSONObject optJSONObject;
                if ((optJSONObject = jSONObject3.optJSONObject("result")) != null) {
                    Log.i("PgcPlayUrl", "Found 'result' object");
                    jSONObject3 = optJSONObject;
                }else if ((optJSONObject = jSONObject3.optJSONObject("data")) != null) {
                    Log.i("PgcPlayUrl", "Found 'data' object");
                    jSONObject3 = optJSONObject;
                }
                
                JSONArray optJSONArray = jSONObject3.optJSONArray("accept_quality");
                int optInt = jSONObject3.optInt("code");
                int optInt2 = jSONObject3.optInt("timelength");
                int optInt3 = jSONObject3.optInt("video_codecid");
                int optInt4 = jSONObject3.optInt("quality", i2);
                String optString = jSONObject3.optString("format");
                String optString2 = jSONObject3.optString("message");
                String optString3 = jSONObject3.optString("marlin_token");
                String acceptFormatStr = jSONObject3.optString("accept_format");
                String[] a2 = a(acceptFormatStr);
                
                Log.i("PgcPlayUrl", "code=" + optInt + ", message=" + optString2);
                Log.i("PgcPlayUrl", "format=" + optString + ", quality=" + optInt4);
                Log.i("PgcPlayUrl", "accept_quality=" + (optJSONArray != null ? optJSONArray.toString() : "null"));
                Log.i("PgcPlayUrl", "accept_format raw=" + acceptFormatStr);
                Log.i("PgcPlayUrl", "accept_format parsed=" + (a2 != null ? java.util.Arrays.toString(a2) : "null"));
                
                JSONObject dashObj = jSONObject3.optJSONObject("dash");
                JSONArray optJSONArray2 = dashObj != null ? dashObj.optJSONArray("video") : null;
                Log.i("PgcPlayUrl", "dash object=" + (dashObj != null ? "exists" : "null"));
                Log.i("PgcPlayUrl", "dash.video=" + (optJSONArray2 != null ? optJSONArray2.length() + " items" : "null"));
                Log.i("PlaySpeed", "[QI_PARSE] dash=" + (dashObj != null ? "YES" : "NO") + ", parseResponse elapsed=" + (System.currentTimeMillis() - parseStart) + "ms");
                
                JSONArray optJSONArray3 = jSONObject3.optJSONArray("accept_description");
                boolean optBoolean = jSONObject3.optBoolean("video_project", false);
                JSONArray optJSONArray4 = jSONObject3.optJSONArray("accept_watermark");
                if (optJSONArray != null && a2 != null && optJSONArray.length() == a2.length && optJSONArray.length() != 0) {
                    Map<Integer, qn> a3 = a(resolveMediaResourceParams, optJSONArray, a2, optJSONArray3, optJSONArray4);
                    a(resolveMediaResourceParams, i2, a3, optInt);
                    if (e()) {
                        Log.i("PgcPlayUrl", "e() returned true, returning empty MediaResource");
                        return a(jSONObject2);
                    }
                    if (optInt != 0) {
                        Log.e("PgcPlayUrl", "Throwing ResolveInvalidCodeException: code=" + optInt);
                        throw new ResolveMediaSourceException.ResolveInvalidCodeException(optInt);
                    }
                    if (TextUtils.isEmpty(optString)) {
                        Log.e("PgcPlayUrl", "format is empty, message=" + optString2);
                        throw new ResolveMediaSourceException(optString2, -6);
                    }
                    if (optJSONArray2 != null && optJSONArray2.length() != 0) {
                        for(int i1=0;i1<optJSONArray2.length();i1++){
                            int id=optJSONArray2.optJSONObject(i1).optInt("id");
                            if(id==optInt4){break;}
                            if(id<optInt4){optInt4=id;break;}
                        }
                        int i3 = optInt4;
                        int[] a4 = a(optJSONArray, i3);
                        if (a4.length == a2.length && (a = a(optString, a2, a4)) != i3) {
                            a4 = a(optJSONArray, a);
                            i3 = a;
                        }
                        qn qnVar = a3.get(Integer.valueOf(i3));
                        if (qnVar == null) {
                            qnVar = a3.get(Integer.valueOf(i));
                        } else {
                            i2 = i3;
                        }
                        if (qnVar == null) {
                            throw new ResolveMediaSourceException("unknown quality returned", -10);
                        }
                        JSONObject jSONObject4 = new JSONObject();
                        JSONArray jSONArray = new JSONArray();
                        jSONObject4.put("player_codec_config_list", a(optString, resolveMediaResourceParams));
                        jSONObject4.put("type_tag", qnVar.a(context, optString));
                        jSONObject4.put("description", qnVar.e);
                        jSONObject4.put("from", resolveMediaResourceParams.b());
                        jSONObject4.put("user_agent", "Bilibili Freedoooooom/MarkII");
                        jSONObject4.put("parse_timestamp_milli", System.currentTimeMillis());
                        jSONObject4.put("available_period_milli", 0L);
                        jSONObject4.put("is_resolved", true);
                        jSONObject4.put("order", qnVar.f);
                        jSONObject4.put("time_length", optInt2);
                        jSONObject4.put("marlin_token", optString3);
                        jSONObject4.put("video_codec_id", optInt3);
                        jSONObject4.put("video_project", optBoolean);
                        jSONObject4.put("water_mark", qnVar.h);
                        {
                            JSONObject jSONObject5 = new JSONObject();
                            jSONObject5.put("url", "ijkdash");
                            jSONObject5.put("bytes", -1);
                            jSONObject5.put("duration", jSONObject3.optJSONObject("dash").optInt("duration")*1000);
                            jSONObject5.put("backup_urls", null);
                            jSONObject5.put("ahead", "");
                            jSONObject5.put("vhead", "");
                            jSONArray.put(jSONObject5);
                        }
                        jSONObject4.put("segment_list", jSONArray);
                        JSONArray jSONArray2 = new JSONArray();
                        int i5 = 0;
                        for (Map.Entry<Integer, qn> entry : a3.entrySet()) {
                            int intValue = entry.getKey().intValue();
                            if (intValue == i2) {
                                i5 = jSONArray2.length();
                                jSONObject = jSONObject4;
                            } else {
                                int length = a4.length;
                                int i6 = 0;
                                while (true) {
                                    if (i6 >= length) {
                                        jSONObject = null;
                                        break;
                                    } else if (intValue == a4[i6]) {
                                        qn value = entry.getValue();
                                        jSONObject = new JSONObject();
                                        jSONObject.put("type_tag", value.a(context, value.b));
                                        jSONObject.put("description", value.e);
                                        jSONObject.put("from", resolveMediaResourceParams.b());
                                        jSONObject.put("order", value.f);
                                        jSONObject.put("water_mark", value.h);
                                        jSONObject.put("is_resolved", false);
                                        break;
                                    } else {
                                        i6++;
                                    }
                                }
                            }
                            if (jSONObject != null) {
                                jSONArray2.put(jSONObject);
                            }
                        }
                        JSONObject jSONObject7 = new JSONObject();
                        jSONObject7.put("video_list", jSONArray2);
                        jSONObject2.put("vod_index", jSONObject7);
                        jSONObject2.put("resolved_index", i5);

                        jSONObject2.put("dash", jSONObject3.optJSONObject("dash"));
                        jSONObject2.put("quality", optInt4);

                        Log.i("PlaySpeed", "[QI_PARSE_DASH] DASH MediaResource built, elapsed=" + (System.currentTimeMillis() - qiStart) + "ms");
                        return a(jSONObject2);
                    }
                    
                    JSONArray durlArray = jSONObject3.optJSONArray("durl");
                    if (durlArray != null && durlArray.length() > 0) {
                        Log.i("PgcPlayUrl", "dash is null, trying durl fallback");
                        Log.i("PlaySpeed", "[QI_PARSE_DURL] DURL fallback, elapsed=" + (System.currentTimeMillis() - qiStart) + "ms");
                        Log.i("PgcPlayUrl", "durlArray length=" + durlArray.length());
                        
                        JSONObject durlObj = durlArray.optJSONObject(0);
                        String durlUrl = durlObj != null ? durlObj.optString("url", "") : "";
                        Log.i("PgcPlayUrl", "durl url=" + (durlUrl.length() > 100 ? durlUrl.substring(0, 100) + "..." : durlUrl));
                        
                        JSONArray backupUrls = durlObj != null ? durlObj.optJSONArray("backup_url") : null;
                        Log.i("PgcPlayUrl", "durl backup_url count=" + (backupUrls != null ? backupUrls.length() : 0));
                        
                        java.util.List<String> allDurlUrls = new java.util.ArrayList<>();
                        if (!TextUtils.isEmpty(durlUrl)) {
                            allDurlUrls.add(durlUrl);
                        }
                        if (backupUrls != null && backupUrls.length() > 0) {
                            for (int bi = 0; bi < backupUrls.length(); bi++) {
                                String backupUrl = backupUrls.optString(bi, "");
                                Log.i("PgcPlayUrl", "durl backup_url[" + bi + "]=" + (backupUrl.length() > 100 ? backupUrl.substring(0, 100) + "..." : backupUrl));
                                if (!TextUtils.isEmpty(backupUrl) && !allDurlUrls.contains(backupUrl)) {
                                    allDurlUrls.add(backupUrl);
                                }
                            }
                        }
                        
                        Log.i("PgcPlayUrl", "Total durl urls for racing: " + allDurlUrls.size());
                        
                        String selectedDurlUrl = durlUrl;
                        JSONArray sortedBackupUrls = null;
                        
                        if (allDurlUrls.size() > 1) {
                            long durlRaceStart = System.currentTimeMillis();
                            Log.i("PlaySpeed", "[QI_DURL_RACE_START] CDN racing for durl, urls=" + allDurlUrls.size());
                            java.util.List<mybl.CdnSelector.CdnUrlInfo> cdnInfos = new java.util.ArrayList<>();
                            for (String url : allDurlUrls) {
                                String cdnHost = android.net.Uri.parse(url).getHost();
                                int score = mybl.CdnSelector.getCdnScore(cdnHost);
                                cdnInfos.add(new mybl.CdnSelector.CdnUrlInfo(url, cdnHost, score));
                                Log.i("PgcPlayUrl", "CDN: " + cdnHost + ", score=" + score);
                            }
                            
                            mybl.CdnSelector.RaceResult raceResult = mybl.CdnSelector.selectBestUrl(
                                context, 
                                String.valueOf(resolveMediaResourceParams.c()), 
                                cdnInfos
                            );
                            Log.i("PlaySpeed", "[QI_DURL_RACE_END] CDN race done, winner=" + (raceResult != null ? raceResult.winningCdn : "null") + ", raceTime=" + (raceResult != null ? raceResult.raceTime + "ms" : "null") + ", elapsed=" + (System.currentTimeMillis() - durlRaceStart) + "ms");
                            
                            if (raceResult != null && raceResult.winningCdn != null) {
                                Log.i("PgcPlayUrl", "Race winner: " + raceResult.winningCdn);
                                for (String url : allDurlUrls) {
                                    if (android.net.Uri.parse(url).getHost().equals(raceResult.winningCdn)) {
                                        selectedDurlUrl = url;
                                        break;
                                    }
                                }
                            } else {
                                java.util.Collections.sort(cdnInfos, new java.util.Comparator<mybl.CdnSelector.CdnUrlInfo>() {
                                    @Override
                                    public int compare(mybl.CdnSelector.CdnUrlInfo o1, mybl.CdnSelector.CdnUrlInfo o2) {
                                        return Integer.compare(o2.score, o1.score);
                                    }
                                });
                                selectedDurlUrl = cdnInfos.get(0).url;
                                Log.i("PgcPlayUrl", "No race winner, using highest score CDN: " + cdnInfos.get(0).cdnHost);
                            }
                            
                            sortedBackupUrls = new JSONArray();
                            for (String url : allDurlUrls) {
                                if (!url.equals(selectedDurlUrl)) {
                                    sortedBackupUrls.put(url);
                                }
                            }
                            Log.i("PgcPlayUrl", "Selected URL: " + (selectedDurlUrl.length() > 100 ? selectedDurlUrl.substring(0, 100) + "..." : selectedDurlUrl));
                            Log.i("PgcPlayUrl", "Sorted backup_urls count: " + (sortedBackupUrls != null ? sortedBackupUrls.length() : 0));
                        }
                        
                        if (!TextUtils.isEmpty(selectedDurlUrl)) {
                            qn qnVar = a3.get(Integer.valueOf(optInt4));
                            if (qnVar == null) {
                                qnVar = a3.get(Integer.valueOf(i));
                            }
                            if (qnVar == null) {
                                qnVar = a3.values().iterator().next();
                            }
                            
                            JSONObject durlResult = new JSONObject();
                            JSONArray durlSegmentList = new JSONArray();
                            JSONObject durlSegment = new JSONObject();
                            durlSegment.put("url", selectedDurlUrl);
                            durlSegment.put("bytes", durlObj != null ? durlObj.optLong("size", -1) : -1);
                            durlSegment.put("duration", optInt2);
                            durlSegment.put("backup_urls", sortedBackupUrls);
                            durlSegment.put("ahead", "");
                            durlSegment.put("vhead", "");
                            durlSegmentList.put(durlSegment);
                            
                            JSONObject durlVideoInfo = new JSONObject();
                            durlVideoInfo.put("player_codec_config_list", a(optString, resolveMediaResourceParams));
                            durlVideoInfo.put("type_tag", qnVar != null ? qnVar.a(context, optString) : "mp4");
                            durlVideoInfo.put("description", qnVar != null ? qnVar.e : "MP4");
                            durlVideoInfo.put("from", resolveMediaResourceParams.b());
                            durlVideoInfo.put("user_agent", "Bilibili Freedoooooom/MarkII");
                            durlVideoInfo.put("parse_timestamp_milli", System.currentTimeMillis());
                            durlVideoInfo.put("available_period_milli", 0L);
                            durlVideoInfo.put("is_resolved", true);
                            durlVideoInfo.put("order", qnVar != null ? qnVar.f : 0);
                            durlVideoInfo.put("time_length", optInt2);
                            durlVideoInfo.put("marlin_token", optString3);
                            durlVideoInfo.put("video_codec_id", optInt3);
                            durlVideoInfo.put("video_project", optBoolean);
                            durlVideoInfo.put("water_mark", qnVar != null ? qnVar.h : true);
                            durlVideoInfo.put("segment_list", durlSegmentList);
                            
                            JSONArray durlVideoList = new JSONArray();
                            durlVideoList.put(durlVideoInfo);
                            
                            JSONObject durlVodIndex = new JSONObject();
                            durlVodIndex.put("video_list", durlVideoList);
                            durlResult.put("vod_index", durlVodIndex);
                            durlResult.put("resolved_index", 0);
                            durlResult.put("quality", optInt4);
                            
                            Log.i("PgcPlayUrl", "Returning durl MediaResource");
                            return a(durlResult);
                        }
                    }
                    
                    Log.e("PgcPlayUrl", "No dash or durl available, throwing exception");
                    throw new ResolveMediaSourceException(optString2, -7);
                }
                throw new ResolveMediaSourceException("accept_format not matched with accept_quality, the content is " + new String(this.b), -9);
            }
            return null;
        } catch (ResolveMediaSourceException e) {
            throw e;
        } catch (Exception e2) {
            throw new ResolveMediaSourceException(e2);
        }
    }

    @NonNull
    private int[] a(JSONArray jSONArray, int i) {
        int[] iArr = new int[jSONArray.length()];
        int i2 = 0;
        for (int i3 = 0; i3 < jSONArray.length(); i3++) {
            iArr[i3] = jSONArray.optInt(i3);
        }
        int i4 = 0;
        while (i4 < iArr.length) {
            if (iArr[i4] == i) {
                int[] iArr2 = new int[iArr.length - 1];
                while (i2 < iArr.length) {
                    if (i4 != i2) {
                        iArr2[i4 > i2 ? i2 : i2 - 1] = iArr[i2];
                    }
                    i2++;
                }
                return iArr2;
            }
            i4++;
        }
        return iArr;
    }

    private int a(String str, @NonNull String[] strArr, @NonNull int[] iArr) {
        if (TextUtils.isEmpty(str) || iArr.length == 0) {
            return -1000;
        }
        if (iArr.length == 1) {
            return iArr[0];
        }
        if (strArr.length == iArr.length) {
            for (int i = 0; i < strArr.length; i++) {
                if (str.equals(strArr[i])) {
                    return iArr[i];
                }
            }
            return -1000;
        }
        return -1000;
    }

    private String[] a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.split(",");
    }

    @Nullable
    private MediaResource a(JSONObject jSONObject) {
        try {
            MediaResource mediaResource = new MediaResource();
            mediaResource.a(jSONObject);
            return mediaResource;
        } catch (Exception e) {
            att.a(e);
            return null;
        }
    }

    private void a(ResolveMediaResourceParams resolveMediaResourceParams, int i, Map<Integer, qn> map, int i2) {
        qn qnVar = map.get(Integer.valueOf(i));
        this.d = i2 == -5016 && qnVar != null && qnVar.a(resolveMediaResourceParams);
    }

    private Map<Integer, qn> a(ResolveMediaResourceParams resolveMediaResourceParams, JSONArray jSONArray, String[] strArr, JSONArray jSONArray2, JSONArray jSONArray3) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int length = jSONArray.length();
        int length2 = strArr.length;
        int length3 = jSONArray2 == null ? 0 : jSONArray2.length();
        int length4 = jSONArray3 != null ? jSONArray3.length() : 0;
        int i = length - 1;
        String[] strArr2 = strArr;
        while (i >= 0) {
            int optInt = jSONArray.optInt(i);
            linkedHashMap.put(Integer.valueOf(optInt), new qn("bb2api", String.valueOf(optInt), (jSONArray2 == null || i >= length3) ? "unknown" : jSONArray2.optString(i), i < length2 ? strArr2[i] : "", "MP4A", "H264", length - i, optInt, (jSONArray3 == null || i >= length4) ? true : jSONArray3.optBoolean(i)));
            i--;
            strArr2 = strArr;
        }
        return linkedHashMap;
    }

    public boolean e() {
        return this.d;
    }
}