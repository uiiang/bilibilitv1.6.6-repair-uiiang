package tv.danmaku.videoplayer.core.media.exo;

import android.content.Context;
import android.util.Log;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.videoplayer.core.media.PlayerSelector;
import tv.danmaku.videoplayer.core.media.resource.PlayerConfig;
import tv.danmaku.videoplayer.core.videoview.AbsVideoViewPlayerAdapter;
import tv.danmaku.videoplayer.core.videoview.IVideoViewController;
import tv.danmaku.videoplayer.core.videoview.IVideoViewPlayerAdapter;

public class ExoMediaPlayerAdapter extends AbsVideoViewPlayerAdapter {

    private static final String TAG = "ExoMediaPlayerAdapter";

    private ExoPlayerImpl mMediaPlayer;

    @Override
    public IMediaPlayer createMediaPlayer(Context context, PlayerConfig config, Object... args) {
        Log.i(TAG, "Create ExoPlayer");
        releaseMediaPlayer();

        mMediaPlayer = new ExoPlayerImpl(context);

        if (args != null && args.length > 0 && args[0] instanceof tv.danmaku.videoplayer.core.videoview.IVideoParams) {
            tv.danmaku.videoplayer.core.videoview.IVideoParams videoParams =
                (tv.danmaku.videoplayer.core.videoview.IVideoParams) args[0];
            android.os.Bundle extra = videoParams.getExtra(null);
            if (extra != null) {
                boolean startOnPrepared = extra.getBoolean("start-on-prepared", true);
                mMediaPlayer.setPlayWhenReadyOnPrepare(startOnPrepared);
            }
        }

        return mMediaPlayer;
    }

    @Override
    public IVideoViewController createVideoView(Context context, int type) {
        switch (type) {
            case 1:
                return new tv.danmaku.videoplayer.core.videoview.SurfaceVideoView(context);
            case 2:
                return new tv.danmaku.videoplayer.core.videoview.TextureVideoView(context);
            case 3:
                return new tv.danmaku.videoplayer.core.videoview.GLVideoView(context);
            default:
                throw new IllegalArgumentException("Unknown VideoView type: " + type);
        }
    }

    @Override
    public PlayerConfig getConfig() {
        PlayerConfig config = new PlayerConfig();
        config.mPlayer = 3;
        return config;
    }

    @Override
    public boolean isThisPlayerAvailable(Context context, PlayerConfig config) {
        return PlayerSelector.shouldUseExoPlayer(context);
    }

    @Override
    public void onDestroy() {
        if (mMediaPlayer != null) {
            mMediaPlayer.setOnPreparedListener(null);
            mMediaPlayer.setOnVideoSizeChangedListener(null);
            mMediaPlayer.setOnCompletionListener(null);
            mMediaPlayer.setOnErrorListener(null);
            mMediaPlayer.setOnInfoListener(null);
            mMediaPlayer.setOnSeekCompleteListener(null);
            mMediaPlayer.setOnBufferingUpdateListener(null);
            mMediaPlayer.release();
            mMediaPlayer = null;
        }
    }

    @Override
    public void onStop() {
        if (mMediaPlayer != null) {
            mMediaPlayer.stop();
        }
    }

    @Override
    public IMediaPlayer onReusePlayer(Context context, Object... args) {
        if (mMediaPlayer != null) {
            mMediaPlayer.reset();
            return mMediaPlayer;
        }
        return null;
    }

    private void releaseMediaPlayer() {
        if (mMediaPlayer != null) {
            mMediaPlayer.release();
            mMediaPlayer = null;
        }
    }
}
