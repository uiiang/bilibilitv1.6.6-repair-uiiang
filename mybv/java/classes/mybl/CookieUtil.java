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
        // BUG修复：完整Cookie含超长SESSDATA/bili_ticket，主线程打印易造成logd写阻塞卡顿，改为只打印长度
        Log.d(TAG, "getFullCookieWithDevice - authCookie length: " + (authCookie == null ? 0 : authCookie.length()));
        Log.d(TAG, "getFullCookieWithDevice - deviceCookie length: " + (deviceCookie == null ? 0 : deviceCookie.length()));
        
        String result;
        if (authCookie == null || authCookie.isEmpty()) {
            result = deviceCookie;
        } else if (deviceCookie == null || deviceCookie.isEmpty()) {
            result = authCookie;
        } else {
            result = authCookie + "; " + deviceCookie;
        }
        
        Log.d(TAG, "getFullCookieWithDevice - result length: " + (result == null ? 0 : result.length()));
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
                // BUG修复：超长值（SESSDATA等）只打印长度，避免主线程打印超长日志造成logd写阻塞卡顿
                Log.d(TAG, "getEssentialCookie - " + name + " = " + (value != null && value.length() > 50 ? ("len=" + value.length()) : value));
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

    public static String getCookieValue(String cookieString, String name) {
        if (cookieString == null || name == null || cookieString.isEmpty()) {
            return null;
        }
        String[] cookies = cookieString.split(";");
        for (String cookie : cookies) {
            String trimmed = cookie.trim();
            int eqIndex = trimmed.indexOf('=');
            if (eqIndex > 0) {
                String cookieName = trimmed.substring(0, eqIndex).trim();
                if (name.equals(cookieName)) {
                    return trimmed.substring(eqIndex + 1).trim();
                }
            }
        }
        return null;
    }
}
