package com.bilibili.tv;

/**
 * 功能开关配置类
 * 用于控制可选功能的启用状态
 */
public class FeatureConfig {

    /**
     * 电子书阅读器功能开关
     * 默认值: false (不启用)
     * 当值为 true 时启用阅读器功能
     *
     * 注意: 此值由编译脚本控制,请勿手动修改!
     * 使用 ./build.sh --plus 编译时会自动设置为 true
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