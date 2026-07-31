package com.bilibili.tv;

/**
 * 功能开关配置类
 * 用于控制可选功能的启用状态
 */
public class FeatureConfig {

    /**
     * 电子书阅读器功能开关
     * 默认值: false (不启用)
     * 
     * 注意: 此功能现在完全由用户配置控制
     * 1. 在设置-实验室中选择TextureView
     * 2. 在个性化设置中勾选电子书选项
     * 3. 视频播放右键菜单中才会显示电子书菜单项
     */
    public static final boolean ENABLE_EBOOK_READER = false;

    /**
     * 功能版本标识
     * 用于区分不同功能版本
     */
    public static final String FEATURE_VERSION = "standard";

    /**
     * 检查是否启用电子书阅读器
     * @return true: 启用, false: 不启用
     */
    public static boolean isEbookReaderEnabled() {
        return ENABLE_EBOOK_READER;
    }
}