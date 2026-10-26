package bl;

import android.os.Bundle;
import com.bilibili.tv.player.basic.context.PlayerParams;

public class yr {
    public static String a(PlayerParams playerParams) {
        return playerParams.mExtraStorage.getString("player_params_title");
    }

    public static void a(PlayerParams playerParams, int i) {
        playerParams.mExtraStorage.putInt("player_params_season_type", i);
    }

    public static void a(PlayerParams playerParams, String str) {
        playerParams.mExtraStorage.putString("player_params_cover", str);
    }

    public static int b(PlayerParams playerParams) {
        return playerParams.mExtraStorage.getInt("player_params_season_type");
    }

    public static void b(PlayerParams playerParams, String str) {
        playerParams.mExtraStorage.putString("player_params_title", str);
    }

    public static void c(PlayerParams playerParams, String str) {
        playerParams.mExtraStorage.putString("player_params_author", str);
    }

    public static String d(PlayerParams playerParams) {
        return playerParams.mExtraStorage.getString("player_params_cover");
    }

    /**
     * 列表名称（UGC 合集的 section 标题），用于播放页标题拼成"合集名 - 当前视频名"。
     * 仅合集（mListType==3）时由 xg 写入；分P / 番剧不写。
     */
    public static void e(PlayerParams playerParams, String str) {
        playerParams.mExtraStorage.putString("player_params_list_title", str);
    }

    public static String f(PlayerParams playerParams) {
        return playerParams.mExtraStorage.getString("player_params_list_title");
    }
}
