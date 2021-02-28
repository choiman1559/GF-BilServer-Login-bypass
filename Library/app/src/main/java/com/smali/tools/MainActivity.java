package com.smali.tools;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.TextView;

import com.sunborn.gameplatform.core.listener.SunbronUserCenterListener;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        SmaliTools.checkOverlayPermissionAndRequest(this);
        SmaliTools.showTechnicalDemoOverlay(this);
        TextView textView = findViewById(R.id.dddd);
        textView.setOnClickListener(v -> SmaliTools.doLogin(this,"", platform -> {
            throw new RuntimeException("Stub!");
        }));
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        SmaliTools.closeTechnicalDemoOverlay(this);
    }
}