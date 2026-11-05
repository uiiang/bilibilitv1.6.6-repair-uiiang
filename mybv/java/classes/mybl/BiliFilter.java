package mybl;

import bl.aj;
import bl.kz;
import bl.abd;
import java.io.*;
import java.util.*;
import android.net.Uri;
import android.util.Base64;
import com.alibaba.fastjson.*;
import java.nio.charset.Charset;
import tv.danmaku.android.log.BLog;
import com.bilibili.tv.MainApplication;
import android.content.res.AssetManager;
import com.bilibili.tv.api.rank.BiliRankV2;
import com.bilibili.tv.api.area.BiliVideoV2;
import com.bilibili.tv.api.auth.BiliSpaceVideo;
import com.bilibili.tv.api.attention.UpperFeedList;

public class BiliFilter {
    public static boolean filter_on = false;
    public static String filter_rule_path;
    public static Config config;
    public static Set<String> skip_categories = new HashSet<String>();
    public static boolean progressbar_on = false;
    public static boolean fastquit_on = true;
    public static int prefer_videoview = 1;
    /** 下一集 playurl 预取总开关。设为 false 即可一键回退到原始解析链路，便于 A/B 对比。 */
    public static boolean next_episode_prefetch = true;
    /**
     * 换集不重建 VideoView（P1 / L3-lite）。
     * true：换集时复用同一个 BaseVideoView 与 SurfaceTexture，保留上一帧，消除黑屏；
     * false：回退到原有 stopPlayback() + resetVideoView() 重建流程。
     * 实机若出现花屏 / 无画面 / 音画不同步，设为 false 即可回滚。
     */
    public static boolean reuse_videoview_on_switch = true;
    /**
     * Exo 点播起播水位（仅 Exo 内核生效），默认关闭。
     * true：bufferForPlaybackMs 由默认 2500 降到 800；false：保持 Exo 默认 2500。
     * 两轮实机均证明无效，保留开关仅供 A/B 与内核探针：
     * 16:03 轮 800ms -> 首次起播 1859ms、换集 918/895ms；
     * 16:34 轮 2500ms -> 首次起播 754ms、换集 628~734ms（反而更快，说明是网络波动）。
     * 代码层面也解释得通：STATE_READY 由 renderer 是否已有可渲染样本决定，
     * bufferForPlaybackMs 只控制 shouldContinueLoading 的加载节奏，不直接决定 READY 时机。
     * 且 800ms 那轮播放中缓冲由 4 次 0.6~1.0s 增至 5 次 1.2~2.2s，无收益不保留。
     */
    public static boolean fast_episode_start = false;
    /**
     * 预取阶段对下一集 DASH 首分片发 Range 预热（L1 延伸）。实测无收益，默认关闭。
     * 16:34 日志：4 次换集 prepare->READY = 734 / 640 / 729 / 628ms；
     * 有预热两次均值 687ms，无预热两次均值 679ms（首次起播无预热 754ms），差异在噪声内。
     * 原因：预热用 base_url 固定 host，播放器经 DASH_CDN_REORDER 重排后可能落到另一 CDN；
     * 32KiB 不进入 Exo DataSource，视频/音频两轨仍各发完整 GET；且预热与 initPlayInfo
     * 串行占住 NETWORK 单线程，两次预热晚于换集才完成。
     * 保留代码与开关供对照实验，避免额外 32KiB 请求与播放中抢带宽。
     */
    public static boolean warm_next_segment = false;
    /**
     * P3：把预取后的章节/字幕/跳过段预热（initPlayInfo）从 NETWORK 单线程剥离到独立 WARMER 线程。
     * true：playurl 一拿到就写 CACHE 并立刻释放 NETWORK，后续预取不再被 3.8~14.4s 的
     *       initPlayInfo（内部多个 submit().get()）排队阻塞，跳集/换清晰度时新预取能立即发出；
     * false：退回原来的串行行为，供 A/B 与回退。
     * 注意：这不减少换集时 prepare -> READY 的 ~700ms 冻结，只修复预取链路的健壮性。
     */
    public static boolean async_play_info_warm = true;

    public static void updateConfig() throws Exception{
        BiliFilter.filter_rule_path = abd.get_filter_path(MainApplication.a().getApplicationContext());
        BiliFilter.config = new Config();
    }

    public static void saveConfig(){
        AssetManager assetManager = MainApplication.a().getAssets();
        InputStream inputStream;
        OutputStream outputStream;
        try {
            inputStream = assetManager.open("data/filter_rule_example.json");
            File f = new File(aj.a(MainApplication.a(),"data")[0],"filter_rule_example.json");
            if(!f.getParentFile().exists())f.getParentFile().mkdirs();
            BiliFilter.filter_rule_path = f.getPath();
            abd.set_filter_path(MainApplication.a().getApplicationContext(), BiliFilter.filter_rule_path);
            //if(f.exists()&&f.isFile())return;
            outputStream = new FileOutputStream(f);
            byte[] buffer = new byte[1024];
            int length;
            while ((length = inputStream.read(buffer)) > 0) {
                outputStream.write(buffer, 0, length);
            }
            outputStream.flush();
            outputStream.close();
            inputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static List<UpperFeedList.UpperFeedItem> filterUpperFeedItem(List<UpperFeedList.UpperFeedItem> inputItems, String scope){
        if(!BiliFilter.filter_on)return inputItems;
        if(!BiliFilter.config.scopes.contains(scope))return inputItems;
        List<UpperFeedList.UpperFeedItem> outputItems = new ArrayList<>();
        for(UpperFeedList.UpperFeedItem item: inputItems){
            boolean f=true;
            for(String filter_word:BiliFilter.config.filter_words){
                if(item.title.matches(filter_word)){
                    f=false;
                    break;
                }
            }
            if(f)outputItems.add(item);
        }
        return outputItems;
    }

    public static List<JSONObject> filterUpperFeedJSONItem(List<JSONObject> inputItems, String scope){
        if(!BiliFilter.filter_on)return inputItems;
        if(!BiliFilter.config.scopes.contains(scope))return inputItems;
        List<JSONObject> outputItems = new ArrayList<>();
        for(JSONObject item: inputItems){
            boolean f=true;
            for(String filter_word:BiliFilter.config.filter_words){
                if(item.getJSONObject("module_dynamic").getJSONObject("major").getJSONObject("archive").getString("title").matches(filter_word)){
                    f=false;
                    break;
                }
            }
            if(f)outputItems.add(item);
        }
        return outputItems;
    }

    public static List<BiliSpaceVideo> filterBiliSpaceVideo(List<BiliSpaceVideo> inputItems, String scope){
        if(!BiliFilter.filter_on)return inputItems;
        if(!BiliFilter.config.scopes.contains(scope))return inputItems;
        List<BiliSpaceVideo> outputItems = new ArrayList<>();
        for(BiliSpaceVideo item: inputItems){
            boolean f=true;
            for(String filter_word:BiliFilter.config.filter_words){
                if(item.title.matches(filter_word)){
                    f=false;
                    break;
                }
            }
            if(f)outputItems.add(item);
        }
        return outputItems;
    }

    public static List<BiliRankV2> filterBiliRankV2(List<BiliRankV2> inputItems, String scope){
        if(!BiliFilter.filter_on)return inputItems;
        if(!BiliFilter.config.scopes.contains(scope))return inputItems;
        List<BiliRankV2> outputItems = new ArrayList<>();
        for(BiliRankV2 item: inputItems){
            boolean f=true;
            for(String filter_word:BiliFilter.config.filter_words){
                if(item.getTitle().matches(filter_word)){
                    f=false;
                    break;
                }
            }
            if(f)outputItems.add(item);
        }
        return outputItems;
    }

    public static List<BiliVideoV2> filterBiliVideoV2(List<BiliVideoV2> inputItems, String scope){
        if(!BiliFilter.filter_on)return inputItems;
        if(!BiliFilter.config.scopes.contains(scope))return inputItems;
        List<BiliVideoV2> outputItems = new ArrayList<>();
        for(BiliVideoV2 item: inputItems){
            boolean f=true;
            for(String filter_word:BiliFilter.config.filter_words){
                if(item.title.matches(filter_word)){
                    f=false;
                    break;
                }
            }
            if(f)outputItems.add(item);
        }
        return outputItems;
    }
}

class Config{
    boolean live_record;
    JSONArray scopes;
    JSONArray masked_words;
    JSONArray banned_words;
    JSONObject blacklist_users;
    List<String> filter_words;
    Config() throws Exception{
        try {
            if(BiliFilter.filter_rule_path.isEmpty())BiliFilter.saveConfig();
            String content=null;
            if(BiliFilter.filter_rule_path.startsWith("content://")){
                InputStream inputStream = MainApplication.a().getApplicationContext().getContentResolver().openInputStream(Uri.parse(BiliFilter.filter_rule_path));
                content = kz.c(inputStream);
                kz.a(inputStream);
            }else{
                File f = new File(BiliFilter.filter_rule_path);
                FileInputStream fileInputStream = new FileInputStream(f);
                content = kz.c(fileInputStream);
                kz.a(fileInputStream);
            }
            if(content==null|content.length()==0)throw new Exception("no content");
            JSONObject data = JSON.parseObject(content);
            this.live_record = data.getBoolean("直播回放");
            this.scopes = data.getJSONArray("作用范围");
            this.masked_words = data.getJSONArray("屏蔽词");
            this.banned_words = data.getJSONArray("禁用词");
            this.blacklist_users = data.getJSONObject("黑名单用户");
            filter_words = new ArrayList<>();
            if(this.live_record==false)this.filter_words.add("【直播回放】(.*)");
            for(Object masked_word:this.masked_words)this.filter_words.add("(.*)("+(String)masked_word+")(.*)");
            for(Object banned_word:this.banned_words)this.filter_words.add(new String(Base64.decode((String)banned_word, Base64.DEFAULT), "UTF-8"));
        } catch (Exception e) {
            e.printStackTrace();
            BLog.w("Error read filter config!", e);
            kz.a((InputStream)null);
            BiliFilter.filter_on=false;
            throw e;
        }
    }
}