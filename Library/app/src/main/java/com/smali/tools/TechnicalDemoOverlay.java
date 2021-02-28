package com.smali.tools;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.PixelFormat;
import android.os.Build;
import android.os.IBinder;
import android.view.Gravity;
import android.view.WindowManager;
import android.widget.TextView;

import androidx.annotation.Nullable;

public class TechnicalDemoOverlay extends Service {
    WindowManager mManager;
    TextView textView;

    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @SuppressLint("SetTextI18n")
    @Override
    public void onCreate() {
        super.onCreate();
        textView = new TextView(getApplicationContext());
        textView.setText("  Technical demo.\n   non-commercial use only.");
        textView.setTextColor(Color.GRAY);
        textView.setTextSize(20);

        WindowManager.LayoutParams mParams = new WindowManager.LayoutParams(
                WindowManager.LayoutParams.WRAP_CONTENT,
                WindowManager.LayoutParams.WRAP_CONTENT,
                Build.VERSION.SDK_INT > 25 ?
                        WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY :
                        WindowManager.LayoutParams.TYPE_SYSTEM_ALERT,
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
                PixelFormat.TRANSLUCENT);
        mParams.gravity = Gravity.START | Gravity.TOP;

        mManager = (WindowManager) getSystemService(WINDOW_SERVICE);
        mManager.addView(textView, mParams);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if(mManager != null && textView != null) mManager.removeView(textView);
    }
}
