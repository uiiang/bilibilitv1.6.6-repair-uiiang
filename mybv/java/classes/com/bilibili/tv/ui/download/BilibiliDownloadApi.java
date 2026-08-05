package com.bilibili.tv.ui.download;

import android.content.Context;
import android.util.Log;
import com.bilibili.tv.MainApplication;
import java.util.TreeMap;
import mybl.CookieUtil;
import mybl.WbiSigner;
import bl.mg;
import bl.qa;
import bl.qm;
import bl.pz;
import org.json.JSONObject;
import org.json.JSONArray;

/**
 * Bilibili下载URL获取API
 * 负责从B站服务器获取视频的实际下载URL
 */
public class BilibiliDownloadApi {
    private static final String TAG = "BilibiliDownloadApi";

    /**
     * 获取视频下载URL（同步调用）
     *
     * @param context 上下文
     * @param avid 视频AVID
     * @param bvid 视频BV号
     * @param cid 视频CID
     * @param quality 画质ID（16=360P, 32=480P, 48=720P, 64=720P, 80=1080P）
     * @return 视频下载URL，失败返回null
     */
    public static String getDownloadUrl(Context context, long avid, String bvid, long cid, int quality) {
        Log.i(TAG, "获取下载URL: avid=" + avid + ", bvid=" + bvid + ", cid=" + cid + ", quality=" + quality);

        try {
            // 如果没有提供avid，尝试从bvid转换
            if (avid <= 0) {
                Log.w(TAG, "AVID无效，尝试从BV号转换");
                avid = convertBvidToAvid(bvid);
                if (avid <= 0) {
                    Log.e(TAG, "无法获取有效的AVID");
                    return null;
                }
            }

            // 调用B站API获取播放URL
            return getPlayUrl(context, avid, cid, quality);

        } catch (Exception e) {
            Log.e(TAG, "获取下载URL失败: " + e.getMessage(), e);
            return null;
        }
    }

    /**
     * BV号转AVID
     * 简化实现：直接从VideoDetailActivity中获取avid
     * 如果无法转换，返回0
     */
    private static long convertBvidToAvid(String bvid) {
        // TODO: 实现BV号到AVID的转换算法
        // 暂时返回0，表示需要从其他地方获取avid
        Log.w(TAG, "BV号转AVID功能暂未实现，请直接使用avid");
        return 0;
    }

    /**
     * 调用B站playurl API获取下载URL
     * 复用ql.java中的逻辑
     */
    private static String getPlayUrl(Context context, long avid, long cid, int quality) {
        try {
            Log.i(TAG, "调用PlayUrl API: avid=" + avid + ", cid=" + cid + ", qn=" + quality);

            // 获取Cookie
            mg biliAccount = mg.a(MainApplication.a());
            String cookie = CookieUtil.getFullCookieWithDevice(biliAccount);
            Log.i(TAG, "Cookie: " + (cookie != null && !cookie.isEmpty() ? "exists" : "null"));

            // 构建请求参数
            TreeMap<String, String> params = new TreeMap<>();
            params.put("cid", String.valueOf(cid));
            params.put("avid", String.valueOf(avid));
            params.put("qn", String.valueOf(quality)); // 先请求目标画质
            params.put("fnver", "0");
            params.put("fnval", "16"); // 使用MP4格式（单文件，无需合并）
            params.put("fourk", "1");
            params.put("voice_balance", "1");
            params.put("web_location", "1315873");
            params.put("gaia_source", "pre-load");
            params.put("isGaiaAvoided", "true");

            // 添加gaia_vtoken（如果有）
            String gaiaVtoken = CookieUtil.getCookieValue(cookie, "x-bili-gaia-vtoken");
            if (gaiaVtoken != null && !gaiaVtoken.trim().isEmpty()) {
                params.put("gaia_vtoken", gaiaVtoken.trim());
            }

            // 检查是否有SESSDATA
            boolean hasSessData = cookie != null && cookie.contains("SESSDATA=");
            if (!hasSessData) {
                params.put("try_look", "1");
                Log.i(TAG, "No SESSDATA, using try_look=1");
            }

            // WBI签名
            String signedQuery = WbiSigner.getInstance().encWbiAndGetQuery(params);
            if (signedQuery == null) {
                Log.e(TAG, "WBI签名失败!");
                return null;
            }

            String fullUrl = "https://api.bilibili.com/x/player/wbi/playurl?" + signedQuery;
            Log.i(TAG, "签名后的URL: " + fullUrl);

            // 构建请求
            qa.a requestBuilder = new qa.a(qm.class)
                .a(fullUrl)
                .b("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36")
                .a(true);

            requestBuilder.a("env", "prod");
            requestBuilder.a("app-key", "android64");

            // 添加Cookie
            if (cookie != null && !cookie.isEmpty()) {
                requestBuilder.a("Cookie", cookie);
            }
            requestBuilder.a("Referer", "https://www.bilibili.com");

            // 发起请求
            qa request = requestBuilder.a();
            qm response = (qm) pz.a(request);

            if (response == null || !response.a()) {
                Log.e(TAG, "API请求失败");
                return null;
            }

            // 解析响应，提取下载URL（包含画质检查）
            return extractDownloadUrl(response, quality);

        } catch (Exception e) {
            Log.e(TAG, "获取PlayUrl失败: " + e.getMessage(), e);
            return null;
        }
    }

    /**
     * 从响应中提取下载URL
     * 优先提取MP4格式的视频URL（fnval=16时）
     * 包含画质可用性检查和自动降级
     */
    private static String extractDownloadUrl(qm response, int targetQuality) {
        try {
            // 获取响应数据：qm 继承自 py -> qe，qe.c() 为公开方法返回响应体字节数组（避免反射）
            byte[] responseData = response.c();

            if (responseData == null || responseData.length == 0) {
                Log.e(TAG, "响应数据为空");
                return null;
            }

            String responseStr = new String(responseData);
            JSONObject jsonResponse = new JSONObject(responseStr);

            int code = jsonResponse.optInt("code", -1);
            if (code != 0) {
                Log.e(TAG, "API返回错误: code=" + code + ", message=" + jsonResponse.optString("message"));
                return null;
            }

            JSONObject data = jsonResponse.optJSONObject("data");
            if (data == null) {
                Log.e(TAG, "响应数据为空");
                return null;
            }

            // ========== 画质可用性检查 ==========
            int actualQuality = checkAndAdjustQuality(data, targetQuality);
            if (actualQuality != targetQuality) {
                Log.i(TAG, "画质自动降级: " + targetQuality + " -> " + actualQuality);
            }

            // 获取实际返回的画质
            int responseQuality = data.optInt("quality", targetQuality);
            Log.i(TAG, "API返回画质: " + responseQuality + " (请求画质: " + targetQuality + ")");
            // ========== 画质检查结束 ==========

            // 尝试从durl格式中提取（MP4格式通常使用durl）
            JSONArray durlArray = data.optJSONArray("durl");
            if (durlArray != null && durlArray.length() > 0) {
                Log.i(TAG, "使用DURL格式（MP4单文件）");

                // 检查是否为分段视频
                if (durlArray.length() > 1) {
                    Log.w(TAG, "检测到分段视频，共 " + durlArray.length() + " 段");
                    // TODO: 后续实现分段下载和合并
                    // 当前只返回第一段
                }

                JSONObject firstDurl = durlArray.getJSONObject(0);
                String url = firstDurl.optString("url");
                if (!url.isEmpty()) {
                    long size = firstDurl.optLong("size", 0);
                    Log.i(TAG, "找到下载URL: " + url + ", 大小: " + size);
                    return url;
                }
            }

            // 尝试从dash格式中提取（如果API返回了DASH格式）
            JSONObject dash = data.optJSONObject("dash");
            if (dash != null) {
                Log.w(TAG, "API返回DASH格式，但请求的是MP4格式");
                // DASH格式：提取视频流的第一个URL
                JSONArray videoArray = dash.optJSONArray("video");
                if (videoArray != null && videoArray.length() > 0) {
                    JSONObject firstVideo = videoArray.getJSONObject(0);

                    // 尝试从baseUrl字段提取
                    String baseUrl = firstVideo.optString("baseUrl");
                    if (baseUrl != null && !baseUrl.isEmpty()) {
                        Log.i(TAG, "找到DASH视频URL(baseUrl): " + baseUrl);
                        return baseUrl;
                    }

                    // 尝试从base_url字段提取
                    baseUrl = firstVideo.optString("base_url");
                    if (baseUrl != null && !baseUrl.isEmpty()) {
                        Log.i(TAG, "找到DASH视频URL(base_url): " + baseUrl);
                        return baseUrl;
                    }
                }
            }

            Log.e(TAG, "无法从响应中提取下载URL");
            return null;

        } catch (Exception e) {
            Log.e(TAG, "解析响应失败: " + e.getMessage(), e);
            return null;
        }
    }

    /**
     * 检查画质可用性并自动降级
     * 
     * @param data API响应数据
     * @param targetQuality 目标画质ID
     * @return 实际可用的画质ID
     */
    private static int checkAndAdjustQuality(JSONObject data, int targetQuality) {
        try {
            // 获取可用画质列表
            JSONArray acceptQualityArray = data.optJSONArray("accept_quality");
            if (acceptQualityArray == null || acceptQualityArray.length() == 0) {
                Log.w(TAG, "未找到可用画质列表，使用目标画质");
                return targetQuality;
            }

            // 解析可用画质列表
            java.util.List<Integer> acceptQualityList = new java.util.ArrayList<>();
            for (int i = 0; i < acceptQualityArray.length(); i++) {
                acceptQualityList.add(acceptQualityArray.getInt(i));
            }

            Log.i(TAG, "可用画质列表: " + acceptQualityList.toString());

            // 检查目标画质是否可用
            if (acceptQualityList.contains(targetQuality)) {
                Log.i(TAG, "目标画质 " + targetQuality + " 可用");
                return targetQuality;
            }

            // 目标画质不可用，降级到最高可用画质（列表第一个）
            int bestAvailableQuality = acceptQualityList.get(0);
            Log.w(TAG, "目标画质 " + targetQuality + " 不可用，降级到最高可用画质: " + bestAvailableQuality);

            return bestAvailableQuality;

        } catch (Exception e) {
            Log.e(TAG, "检查画质可用性失败: " + e.getMessage(), e);
            return targetQuality;
        }
    }
}