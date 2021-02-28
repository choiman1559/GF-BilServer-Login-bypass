package com.smali.tools;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.util.Log;
import android.view.Gravity;
import android.view.inputmethod.EditorInfo;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

import com.sunborn.gameplatform.api.SunbornGamePlatformApi;
import com.sunborn.gameplatform.core.listener.SunbronUserCenterListener;

import java.util.HashMap;

import lib.xdsdk.passport.CometPassport;

public class SmaliTools {
    public static void showTechnicalDemoOverlay(Context context) {
        context.startService(new Intent(context, TechnicalDemoOverlay.class));
    }

    public static void closeTechnicalDemoOverlay(Context context) {
        context.stopService(new Intent(context, TechnicalDemoOverlay.class));
    }

    public static void checkOverlayPermissionAndRequest(Context context) {
        if(Build.VERSION.SDK_INT > 22 && !Settings.canDrawOverlays(context)) {
            Intent intent = new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION, Uri.parse("package:" + context.getPackageName()));
            context.startActivity(intent);
        }
    }

    @SuppressLint("SetTextI18n")
    public static boolean doLogin(Activity context, String platform, SunbronUserCenterListener mThirdpartySDKListener) {
        LinearLayout layout = new LinearLayout(context);
        layout.setGravity(Gravity.CENTER);
        layout.setOrientation(LinearLayout.VERTICAL);
        LayoutParams layoutParams = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
        layoutParams.setMargins(10, 10, 10, 10);

        TextView textView = new TextView(context);
        textView.setLayoutParams(layoutParams);
        textView.setText("Set login method");
        textView.setTypeface(textView.getTypeface(), Typeface.BOLD);
        textView.setTextSize(15);
        textView.setGravity(Gravity.CENTER);
        layout.addView(textView);

        Button login_origin = new Button(context);
        login_origin.setLayoutParams(layoutParams);
        login_origin.setText("Original method");
        layout.addView(login_origin);

        Button login_alter = new Button(context);
        login_alter.setLayoutParams(layoutParams);
        login_alter.setText("Alternative method");
        layout.addView(login_alter);

        Dialog dialog = new Dialog(context);
        dialog.setContentView(layout);

        login_origin.setOnClickListener(v -> {
            if (mThirdpartySDKListener != null) {
                mThirdpartySDKListener.doLogin(platform);
            }
            dialog.dismiss();
        });

        login_alter.setOnClickListener(v -> {
            showLoginDialog(context);
            dialog.dismiss();
        });
        dialog.show();
        return true;
    }

    @SuppressLint("SetTextI18n")
    public static void showLoginDialog(Activity context) {
        LinearLayout layout = new LinearLayout(context);
        layout.setGravity(Gravity.CENTER);
        layout.setOrientation(LinearLayout.VERTICAL);
        LayoutParams layoutParams = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);

        TextView textView = new TextView(context);
        textView.setLayoutParams(layoutParams);
        textView.setText("Xdg Global Login");
        textView.setGravity(Gravity.CENTER);
        layout.addView(textView);

        EditText ID = new EditText(context);
        ID.setLayoutParams(layoutParams);
        ID.setEms(10);
        ID.setInputType(EditorInfo.TYPE_CLASS_TEXT);
        ID.setHint("아이디");
        layout.addView(ID);

        EditText PW = new EditText(context);
        PW.setLayoutParams(layoutParams);
        PW.setEms(10);
        PW.setInputType(EditorInfo.TYPE_CLASS_TEXT);
        PW.setHint("비밀번호");
        layout.addView(PW);

        Button login = new Button(context);
        layoutParams.setMargins(0, 10, 0, 0);
        login.setLayoutParams(layoutParams);
        login.setText("로그인");
        layout.addView(login);

        Dialog dialog = new Dialog(context);
        dialog.setContentView(layout);

        ProgressDialog progressDialog = new ProgressDialog(context);
        progressDialog.setCancelable(false);
        progressDialog.setMessage("getting login information...");
        progressDialog.setTitle("Please wait...");

        CometPassport passport = CometPassport.model();
        passport.setOnXdgLoginCompleteListener(result -> {
            progressDialog.dismiss();
            Log.i(SmaliTools.class.getSimpleName(), "doLogin http request result : " + result.toString());
            try {
                if(result.has("token")) {
                    final HashMap<String, Object> r3 = new HashMap<>();
                    r3.put("openid", result.getString("uid"));
                    r3.put("username", result.getString("username"));
                    r3.put("access_token", result.getString("token"));
                    r3.put("expire_times", result.get("time"));
                    r3.put("refresh_token", result.get("sid"));
                    SunbornGamePlatformApi.getInstance().doLoginVerify(r3);
                } else {
                    new AlertDialog.Builder(context)
                            .setTitle("Login Error!")
                            .setMessage("Error code : " + result.getString("ret") + "\nError message : " + result.getString("msg") + "\n\n아이디와 비밀번호 확인 후 재시도 바랍니다.")
                            .setPositiveButton("OK", (dialog1, which) -> { }).show();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            dialog.dismiss();
        });

        login.setOnClickListener((v1) -> {
            String Id = ID.getText().toString();
            String Pw = PW.getText().toString();

            if (Id.equals("") || Pw.equals("")) {
                if (Id.equals("")) ID.setError("Input ID");
                if (Pw.equals("")) PW.setError("Input PW");
            } else {
                passport.signInWithXdg(context, Id, Pw);
                progressDialog.show();
                dialog.dismiss();
            }
        });
        dialog.show();
    }
}
