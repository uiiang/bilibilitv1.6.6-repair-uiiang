package com.bilibili.tv.ebook.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;

/**
 * 电子书宿主适配接口
 *
 * 作用：解耦播放器差异（点播 xw 播放器控制器 / 直播 LivePlayerActivity），
 * 使 EbookReaderPanel 能够以同一套代码运行在点播和直播页面。
 *
 * 点播实现：bl.xw（通过 IPlayerContext 获取视频视图，右侧菜单 PlayerMenuRight）
 * 直播实现：com.bilibili.tv.ui.live.player.LivePlayerActivity（LiveVideoPlayer + LivePlayerMenuRight）
 */
public interface EbookHost {

    /** 宿主 Activity */
    Activity getActivity();

    /** 宿主 Context（通常就是 Activity） */
    Context getContext();

    /**
     * 需要缩放的视频区域视图
     * 点播：IVideoView.getView()（TextureView 视频视图，弹幕/字幕独立缩放）
     * 直播：LiveVideoPlayer 整体（视频+弹幕一体，随整体缩放）
     */
    View getVideoView();

    /**
     * 视频区域视图的父容器（电子书面板添加位置）
     * 电子书面板将插入到该容器中：视频之上、overlay UI（弹幕/控制条/菜单）之下
     */
    ViewGroup getVideoContainer();

    /**
     * 弹幕视图
     * 点播：R.id.danmaku_view 独立弹幕视图
     * 直播：弹幕在 LiveVideoPlayer 内部随整体缩放，返回 null 即可
     */
    View getDanmakuView();

    /**
     * 是否 TextureView 渲染模式（电子书功能前置条件）
     * 点播：mybl.BiliFilter.prefer_videoview == 2
     * 直播：内部渲染视图 wz 继承 TextureView，恒为 true
     */
    boolean isVideoTextureView();

    /**
     * 是否直播模式
     * 直播：视频视图为 LiveVideoPlayer 整体（高度占满父容器），缩小视频时必须同步缩小高度，
     *       否则 ALIGN_PARENT_TOP/BOTTOM 无效，视频画面永远垂直居中
     * 点播：视频视图高度自适应，仅需缩小宽度即可实现四角对齐
     */
    boolean isLiveMode();

    /** 右侧菜单是否显示（点播：PlayerMenuRight.isShown()；直播：LivePlayerMenuRight.isShown()） */
    boolean isMenuShown();

    /** 显示/隐藏右侧菜单（点播：d(boolean)；直播：mRightMenu.a(boolean)） */
    void showMenu(boolean show);

    /** 生命周期销毁回调（回收电子书资源） */
    void onEbookDestroy();

    /** 显示 Toast 提示 */
    void showToast(String message);

    /** 控制视频时请求视频焦点 */
    void requestVideoFocus();
}
