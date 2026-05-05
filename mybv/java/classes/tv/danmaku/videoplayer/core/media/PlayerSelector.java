package tv.danmaku.videoplayer.core.media;

import android.content.Context;
import android.os.Build;
import bl.abd;

public class PlayerSelector {

    public static final int API_USE_EXOPLAYER = 19;

    public static final int PLAYER_IJK = 2;
    public static final int PLAYER_EXO = 3;

    private static Boolean exoPlayerAvailable = null;

    public static boolean isExoPlayerSupported() {
        return Build.VERSION.SDK_INT >= API_USE_EXOPLAYER;
    }

    public static boolean isExoPlayerAvailable() {
        if (exoPlayerAvailable != null) {
            return exoPlayerAvailable;
        }
        try {
            Class.forName("com.google.android.exoplayer2.ExoPlayer");
            exoPlayerAvailable = true;
        } catch (ClassNotFoundException e) {
            exoPlayerAvailable = false;
        }
        return exoPlayerAvailable;
    }

    public static boolean shouldUseExoPlayer(Context context) {
        if (!isExoPlayerSupported() || !isExoPlayerAvailable()) {
            return false;
        }
        return abd.get_player_type(context) == PLAYER_EXO;
    }

    public static int getSelectedPlayerType(Context context) {
        if (!isExoPlayerSupported() || !isExoPlayerAvailable()) {
            return PLAYER_IJK;
        }
        return abd.get_player_type(context);
    }

    public static void setPlayerType(Context context, int playerType) {
        abd.set_player_type(context, playerType);
    }
}
