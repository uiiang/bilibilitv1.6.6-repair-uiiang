package mybl;

import android.content.Context;
import android.util.Log;
import bl.mg;
import bl.mk;
import bl.ml;
import bl.vd;
import bl.vo;
import com.bilibili.lib.passport.BiliAuthService;
import com.bilibili.tv.MainApplication;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

public class LoginCookieHelper {
    
    private static final String TAG = "LoginCookieHelper";
    
    public static void fetchCookiesAfterLogin() {
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    Thread.sleep(500);
                    Log.d(TAG, "fetchCookiesAfterLogin - refreshing cookies after login");
                    // 多账号切换修复：登录新账号后必须调用refreshToken获取新账号cookie并覆盖保存，
                    // 否则bili.account.storage仍残留旧账号cookie，导致历史/稍后再看/首页推荐使用旧账号身份
                    refreshCookiesInternal(MainApplication.a(), "fetchCookiesAfterLogin");
                } catch (Exception e) {
                    Log.e(TAG, "fetchCookiesAfterLogin - exception: " + e.getMessage());
                    e.printStackTrace();
                }
            }
        }).start();
    }
    
    /**
     * 同步刷新当前账号的token和cookie并重新读取账号cookie文件内容。
     * 用于多账号切换时校验cookie与当前登录账号是否一致（不一致说明cookie文件仍是旧账号的凭证）。
     * @return 刷新后的 bili.account.storage 文件内容（Base64单行），失败返回null
     */
    public static String refreshCookiesAndReadAccountStorageSync(final Context context) {
        try {
            mk result = refreshCookiesInternal(context, "refreshSync");
            if (result == null) {
                return null;
            }
            File accountFile = new File(context.getFilesDir(), "bili.account.storage");
            BufferedReader reader = new BufferedReader(new FileReader(accountFile));
            String content = reader.readLine();
            reader.close();
            Log.d(TAG, "refreshSync - re-read account storage len: " + (content == null ? -1 : content.length()));
            return content;
        } catch (Exception e) {
            Log.e(TAG, "refreshSync - exception: " + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }

    // 公共刷新逻辑：调用refreshToken接口获取当前账号的token和cookie并保存
    private static mk refreshCookiesInternal(Context context, String logPrefix) {
        try {
            mg account = mg.a(context);
            if (account == null) {
                Log.e(TAG, logPrefix + " - account is null");
                return null;
            }
            String accessToken = account.e();
            String refreshToken = account.getRefreshToken();
            if (accessToken == null || accessToken.isEmpty() || refreshToken == null || refreshToken.isEmpty()) {
                Log.e(TAG, logPrefix + " - accessToken or refreshToken is empty");
                return null;
            }
            Log.d(TAG, logPrefix + " - calling refreshToken API");
            BiliAuthService.CookieParamsMap cookieParams = new BiliAuthService.CookieParamsMap();
            mk result = callRefreshTokenInternal(accessToken, refreshToken, cookieParams);
            if (result == null || result.b == null || result.b.a == null || result.b.a.isEmpty()) {
                Log.e(TAG, logPrefix + " - result is null or cookies empty");
                return null;
            }
            vd tokenInfo = result.a;
            ml cookieInfo = result.b;
            if (tokenInfo == null || !tokenInfo.a()) {
                Log.e(TAG, logPrefix + " - tokenInfo is invalid");
                return null;
            }
            saveTokenAndCookies(tokenInfo, cookieInfo);
            Log.d(TAG, logPrefix + " - saved token and cookies");
            return result;
        } catch (Exception e) {
            Log.e(TAG, logPrefix + " - exception: " + e.getMessage());
            e.printStackTrace();
            return null;
        }
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
