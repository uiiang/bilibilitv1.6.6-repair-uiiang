package tv.danmaku.videoplayer.core.media.exo;

public enum AudioBalanceLevel {
    OFF("off", "关闭"),
    STANDARD("standard", "标准"),
    HIGH_DYNAMIC("high_dynamic", "高动态");

    private final String prefValue;
    private final String label;

    AudioBalanceLevel(String prefValue, String label) {
        this.prefValue = prefValue;
        this.label = label;
    }

    public String getPrefValue() {
        return prefValue;
    }

    public String getLabel() {
        return label;
    }

    public static AudioBalanceLevel fromPrefValue(String value) {
        if (value == null) return OFF;
        for (AudioBalanceLevel level : values()) {
            if (level.prefValue.equals(value)) {
                return level;
            }
        }
        return OFF;
    }

    public static AudioBalanceLevel fromIndex(int index) {
        switch (index) {
            case 0:
                return OFF;
            case 1:
                return STANDARD;
            case 2:
                return HIGH_DYNAMIC;
            default:
                return OFF;
        }
    }

    public int getIndex() {
        switch (this) {
            case OFF:
                return 0;
            case STANDARD:
                return 1;
            case HIGH_DYNAMIC:
                return 2;
            default:
                return 0;
        }
    }

    public static final AudioBalanceLevel[] ORDERED = {OFF, STANDARD, HIGH_DYNAMIC};
}
