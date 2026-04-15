package mybl;

import android.util.Log;
import bl.mg;
import bl.ml;
import java.util.List;

public class CookieUtil {
    
    private static final String TAG = "CookieUtil";
    
    private static final String[] ESSENTIAL_COOKIES = {
        "SESSDATA",
        "bili_jct", 
        "DedeUserID",
        "DedeUserID__ckMd5",
        "sid"
    };

    public static String getFullCookieWithDevice(mg biliAccount) {
        String authCookie = getEssentialCookie(biliAccount);
        String deviceCookie = DeviceIdentityManager.getInstance().getDeviceCookie();
        
        Log.d(TAG, "getFullCookieWithDevice - biliAccount: " + (biliAccount != null ? "not null" : "null"));
        Log.d(TAG, "getFullCookieWithDevice - authCookie: " + authCookie);
        Log.d(TAG, "getFullCookieWithDevice - deviceCookie: " + deviceCookie);
        
        String result;
        if (authCookie == null || authCookie.isEmpty()) {
            result = deviceCookie;
        } else if (deviceCookie == null || deviceCookie.isEmpty()) {
            result = authCookie;
        } else {
            result = authCookie + "; " + deviceCookie;
        }
        
        Log.d(TAG, "getFullCookieWithDevice - result: " + result);
        return result;
    }

    public static String getFullCookie(mg biliAccount) {
        if (biliAccount == null) {
            return "";
        }
        try {
            ml cookiesData = biliAccount.h();
            if (cookiesData == null || cookiesData.a == null) {
                return "";
            }
            StringBuilder sb = new StringBuilder();
            List<ml.a> cookies = cookiesData.a;
            for (ml.a cookie : cookies) {
                if (sb.length() > 0) {
                    sb.append("; ");
                }
                sb.append(cookie.a).append("=").append(cookie.b);
            }
            return sb.toString();
        } catch (Exception e) {
            return "";
        }
    }

    public static String getEssentialCookie(mg biliAccount) {
        if (biliAccount == null) {
            Log.d(TAG, "getEssentialCookie - biliAccount is null");
            return "";
        }
        try {
            ml cookiesData = biliAccount.h();
            Log.d(TAG, "getEssentialCookie - cookiesData: " + (cookiesData != null ? "not null" : "null"));
            if (cookiesData == null || cookiesData.a == null) {
                Log.d(TAG, "getEssentialCookie - cookiesData.a is null");
                return "";
            }
            StringBuilder sb = new StringBuilder();
            List<ml.a> cookies = cookiesData.a;
            Log.d(TAG, "getEssentialCookie - cookies count: " + cookies.size());
            for (String name : ESSENTIAL_COOKIES) {
                String value = findCookieValue(cookies, name);
                Log.d(TAG, "getEssentialCookie - " + name + " = " + value);
                if (value != null && !value.isEmpty()) {
                    if (sb.length() > 0) {
                        sb.append("; ");
                    }
                    sb.append(name).append("=").append(value);
                }
            }
            return sb.toString();
        } catch (Exception e) {
            Log.e(TAG, "getEssentialCookie - exception: " + e.getMessage());
            return "";
        }
    }

    public static String getCookieValue(mg biliAccount, String name) {
        if (biliAccount == null || name == null) {
            return "";
        }
        try {
            ml cookiesData = biliAccount.h();
            if (cookiesData == null || cookiesData.a == null) {
                return "";
            }
            return findCookieValue(cookiesData.a, name);
        } catch (Exception e) {
            return "";
        }
    }

    public static String getSESSDATA(mg biliAccount) {
        return getCookieValue(biliAccount, "SESSDATA");
    }

    public static String getBiliJct(mg biliAccount) {
        return getCookieValue(biliAccount, "bili_jct");
    }

    public static String getDedeUserID(mg biliAccount) {
        return getCookieValue(biliAccount, "DedeUserID");
    }

    public static String getSid(mg biliAccount) {
        return getCookieValue(biliAccount, "sid");
    }

    public static void clearCookies(mg biliAccount) {
        if (biliAccount == null) {
            Log.d(TAG, "clearCookies - biliAccount is null");
            return;
        }
        try {
            biliAccount.i();
            Log.d(TAG, "clearCookies - cookies cleared successfully");
        } catch (Exception e) {
            Log.e(TAG, "clearCookies - exception: " + e.getMessage());
        }
    }

    private static String findCookieValue(List<ml.a> cookies, String name) {
        if (cookies == null || name == null) {
            return null;
        }
        for (ml.a cookie : cookies) {
            if (name.equals(cookie.a)) {
                return cookie.b;
            }
        }
        return null;
    }
}
