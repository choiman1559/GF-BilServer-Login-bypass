package com.sunborn.gameplatform.api;

import java.util.HashMap;

public class SunbornGamePlatformApi {
    private static SunbornGamePlatformApi sInstance = new SunbornGamePlatformApi();

    public static SunbornGamePlatformApi getInstance() {
        if (sInstance == null) {
            sInstance = new SunbornGamePlatformApi();
        }
        return sInstance;
    }

    public void doLoginVerify(HashMap<String, Object> map) {
        throw new RuntimeException("Stub!");
    }
}
