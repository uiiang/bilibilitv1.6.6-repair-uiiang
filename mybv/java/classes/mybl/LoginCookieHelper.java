package mybl;

import android.util.Log;
import bl.mg;
import bl.mk;
import bl.ml;
import bl.vd;
import bl.ve;
import bl.vf;
import bl.vo;
import com.bilibili.lib.passport.BiliAuthService;
import com.bilibili.lib.passport.BiliPassportException;
import com.bilibili.tv.MainApplication;

public class LoginCookieHelper {
    
    private static final String TAG = "LoginCookieHelper";
    
    public static void fetchCookiesAfterLogin() {
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    Thread.sleep(500);
                    
                    mg account = mg.a(MainApplication.a());
                    if (account == null) {
                        Log.e(TAG, "fetchCookiesAfterLogin - account is null");
                        return;
                    }
                    
                    ml cookiesData = account.h();
                    if (cookiesData != null && cookiesData.a != null && !cookiesData.a.isEmpty()) {
                        Log.d(TAG, "fetchCookiesAfterLogin - cookies already exist, count: " + cookiesData.a.size());
                        return;
                    }
                    
                    String accessToken = account.e();
                    String refreshToken = account.getRefreshToken();
                    
                    if (accessToken == null || accessToken.isEmpty()) {
                        Log.e(TAG, "fetchCookiesAfterLogin - accessToken is empty");
                        return;
                    }
                    
                    if (refreshToken == null || refreshToken.isEmpty()) {
                        Log.e(TAG, "fetchCookiesAfterLogin - refreshToken is empty");
                        return;
                    }
                    
                    Log.d(TAG, "fetchCookiesAfterLogin - calling refreshToken API");
                    
                    BiliAuthService.CookieParamsMap cookieParams = new BiliAuthService.CookieParamsMap();
                    mk result = callRefreshTokenInternal(accessToken, refreshToken, cookieParams);
                    
                    if (result != null && result.b != null && result.b.a != null) {
                        Log.d(TAG, "fetchCookiesAfterLogin - got cookies, count: " + result.b.a.size());
                        
                        vd tokenInfo = result.a;
                        ml cookieInfo = result.b;
                        
                        if (tokenInfo != null && tokenInfo.a()) {
                            saveTokenAndCookies(tokenInfo, cookieInfo);
                        }
                    } else {
                        Log.e(TAG, "fetchCookiesAfterLogin - result is null or empty");
                    }
                    
                } catch (Exception e) {
                    Log.e(TAG, "fetchCookiesAfterLogin - exception: " + e.getMessage());
                    e.printStackTrace();
                }
            }
        }).start();
    }
    
    private static mk callRefreshTokenInternal(String accessToken, String refreshToken, BiliAuthService.CookieParamsMap cookieParams) {
        try {
            BiliAuthService authService = (BiliAuthService) vo.a(BiliAuthService.class);
            bl.vp response = authService.refreshToken(accessToken, refreshToken, cookieParams);
            return parseResponse(response);
        } catch (Exception e) {
            Log.e(TAG, "callRefreshTokenInternal - exception: " + e.getMessage());
            return null;
        }
    }
    
    private static mk parseResponse(bl.vp response) {
        try {
            retrofit2.Response resp = response.d();
            Object body = resp.body();
            if (body instanceof com.bilibili.okretro.GeneralResponse) {
                com.bilibili.okretro.GeneralResponse gr = (com.bilibili.okretro.GeneralResponse) body;
                if (gr.data instanceof mk) {
                    return (mk) gr.data;
                }
            }
            return null;
        } catch (Exception e) {
            Log.e(TAG, "parseResponse - exception: " + e.getMessage());
            return null;
        }
    }
    
    private static void saveTokenAndCookies(vd tokenInfo, ml cookieInfo) {
        try {
            android.content.Context context = MainApplication.a();
            mg account = mg.a(context);
            if (account == null) {
                Log.e(TAG, "saveTokenAndCookies - account is null");
                return;
            }
            
            java.lang.reflect.Field dField = mg.class.getDeclaredField("d");
            dField.setAccessible(true);
            Object veInstance = dField.get(account);
            
            if (veInstance != null) {
                java.lang.reflect.Field aField = veInstance.getClass().getDeclaredField("a");
                aField.setAccessible(true);
                Object vhInstance = aField.get(veInstance);
                
                if (vhInstance != null) {
                    java.lang.reflect.Method saveTokenMethod = vhInstance.getClass().getDeclaredMethod("a", vd.class);
                    saveTokenMethod.setAccessible(true);
                    saveTokenMethod.invoke(vhInstance, tokenInfo);
                    
                    java.lang.reflect.Method saveCookieMethod = vhInstance.getClass().getDeclaredMethod("a", ml.class);
                    saveCookieMethod.setAccessible(true);
                    saveCookieMethod.invoke(vhInstance, cookieInfo);
                    
                    Log.d(TAG, "saveTokenAndCookies - saved successfully");
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "saveTokenAndCookies - exception: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
