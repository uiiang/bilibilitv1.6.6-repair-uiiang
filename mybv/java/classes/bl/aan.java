package bl;

import android.util.Log;

public class aan {
    private static final String TAG = "aan_java";

    public static String a(long j) {
        Log.i(TAG, "a(long) called with j=" + j);
        long seconds = j / 1000;
        long secs = seconds % 60;
        long mins = (seconds / 60) % 60;
        long hours = seconds / 3600;
        
        String result;
        if (hours > 0) {
            result = String.format(java.util.Locale.US, "%02d:%02d:%02d", hours, mins, secs);
        } else {
            result = String.format(java.util.Locale.US, "%02d:%02d", mins, secs);
        }
        Log.i(TAG, "a(long) result=" + result);
        return result;
    }

    public static String a(long j, boolean z) {
        Log.i(TAG, "a(long, boolean) called with j=" + j + ", z=" + z);
        if (z) {
            return b(j);
        }
        long seconds = j / 1000;
        long secs = seconds % 60;
        long mins = seconds / 60;
        String result = String.format(java.util.Locale.US, "%02d:%02d", mins, secs);
        Log.i(TAG, "a(long, boolean) result=" + result);
        return result;
    }

    public static String b(long j) {
        Log.i(TAG, "b(long) called with j=" + j);
        long seconds = j / 1000;
        long secs = seconds % 60;
        long mins = (seconds / 60) % 60;
        long hours = seconds / 3600;
        
        String result;
        if (hours > 0) {
            result = String.format(java.util.Locale.US, "%02d:%02d:%02d", hours, mins, secs);
        } else {
            result = String.format(java.util.Locale.US, "%02d:%02d", mins, secs);
        }
        Log.i(TAG, "b(long) result=" + result);
        return result;
    }
}
