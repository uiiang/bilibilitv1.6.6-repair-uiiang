package tv.danmaku.videoplayer.core.media.exo;

public enum AudioBalanceLevel {
    OFF("off", "关闭"),
    LOW("low", "低"),
    MEDIUM("medium", "中"),
    HIGH("high", "高");

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
                return LOW;
            case 2:
                return MEDIUM;
            case 3:
                return HIGH;
            default:
                return OFF;
        }
    }

    public int getIndex() {
        switch (this) {
            case OFF:
                return 0;
            case LOW:
                return 1;
            case MEDIUM:
                return 2;
            case HIGH:
                return 3;
            default:
                return 0;
        }
    }

    public static final AudioBalanceLevel[] ORDERED = {OFF, LOW, MEDIUM, HIGH};
}
