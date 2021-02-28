package lib.xdsdk.passport;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.provider.Settings;
import android.widget.Toast;

import org.json.JSONObject;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Locale;

import lib.xdsdk.passport.httpUrlConnectionUtil.HttpUrlConnectionHelper;
import lib.xdsdk.passport.httpUrlConnectionUtil.Key;
import lib.xdsdk.passport.httpUrlConnectionUtil.callback.HttpCallbackModelListener;

public class CometPassport {
    private static OnXdgLoginCompleteListener XdgLoginCompleteListener;
    private static CometPassport m_obj;

    public interface OnXdgLoginCompleteListener {
        void onFinish(JSONObject jSONObject);
    }

    public void setOnXdgLoginCompleteListener(OnXdgLoginCompleteListener listener) {
        XdgLoginCompleteListener = listener;
    }

    public static CometPassport model() {
        if (m_obj != null) {
            return m_obj;
        }
        m_obj = new CometPassport();
        return m_obj;
    }

    public void signInWithXdg(final Activity activity, final String id, String pw) {
        new Thread(() -> {
            try {
                HashMap<String, Object> r8 = new HashMap<>();
                r8.put("appid", urlencode("158714"));
                r8.put("ver", 8);
                r8.put("time", System.currentTimeMillis() / 1000);
                String r9 = id;
                if (id.indexOf("@") == 0) {
                    r9 = id.substring(1);
                }
                r8.put("username", urlencode(r9));
                r8.put("password", urlencode(pw));
                r8.put("fuid", urlencode("android_kr_snqx"));
                r8.put("device_id", urlencode(getAndroidID(activity)));
                r8.put("binding", 1);
                r8.put("autologin", urlencode(""));
                r8.put("device_token", urlencode(""));
                HttpUrlConnectionHelper.doPost(activity, String.format(Locale.CHINESE, "https://%s/%s/signin", "p.17996api.com", "api2"), new HttpCallbackModelListener<Object>() {
                    @Override
                    public void onFinish(Object obj) {
                        if ((obj instanceof JSONObject)) {
                            XdgLoginCompleteListener.onFinish((JSONObject) obj);
                        }
                    }

                    @Override
                    public void onError(Exception exc) {
                        exc.printStackTrace();
                        Toast.makeText(activity, "Login post Error", Toast.LENGTH_SHORT).show();
                    }
                }, r8);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }).start();
    }

    @SuppressLint("HardwareIds")
    private String getAndroidID(Activity activity) {
        return Settings.Secure.getString(activity.getContentResolver(), "android_id");
    }

    public static String urlencode(String str) {
        if (str == null) {
            return "";
        }
        try {
            return str.length() == 0 ? "" : URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            return str;
        } catch (Exception unused2) {
            return "";
        }
    }

    public static String urldecode(String str) {
        if (str == null) {
            return "";
        }
        try {
            return str.length() == 0 ? "" : URLDecoder.decode(str, Key.STRING_CHARSET_NAME);
        } catch (UnsupportedEncodingException unused) {
            return str;
        } catch (Exception unused2) {
            return "";
        }
    }
}
