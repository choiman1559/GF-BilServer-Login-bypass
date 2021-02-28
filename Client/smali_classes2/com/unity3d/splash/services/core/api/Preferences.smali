.class public Lcom/unity3d/splash/services/core/api/Preferences;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 7
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/unity3d/splash/services/core/preferences/AndroidPreferences;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_10

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p2, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_f
    return-void

    :cond_10
    sget-object v0, Lcom/unity3d/splash/services/core/preferences/PreferencesError;->COULDNT_GET_VALUE:Lcom/unity3d/splash/services/core/preferences/PreferencesError;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_f
.end method

.method public static getFloat(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 7
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/unity3d/splash/services/core/preferences/AndroidPreferences;->getFloat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_10

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p2, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_f
    return-void

    :cond_10
    sget-object v0, Lcom/unity3d/splash/services/core/preferences/PreferencesError;->COULDNT_GET_VALUE:Lcom/unity3d/splash/services/core/preferences/PreferencesError;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_f
.end method

.method public static getInt(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 7
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/unity3d/splash/services/core/preferences/AndroidPreferences;->getInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_10

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p2, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_f
    return-void

    :cond_10
    sget-object v0, Lcom/unity3d/splash/services/core/preferences/PreferencesError;->COULDNT_GET_VALUE:Lcom/unity3d/splash/services/core/preferences/PreferencesError;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_f
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 7
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/unity3d/splash/services/core/preferences/AndroidPreferences;->getLong(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_10

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p2, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_f
    return-void

    :cond_10
    sget-object v0, Lcom/unity3d/splash/services/core/preferences/PreferencesError;->COULDNT_GET_VALUE:Lcom/unity3d/splash/services/core/preferences/PreferencesError;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_f
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 7
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/unity3d/splash/services/core/preferences/AndroidPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p2, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_f
    return-void

    :cond_10
    sget-object v0, Lcom/unity3d/splash/services/core/preferences/PreferencesError;->COULDNT_GET_VALUE:Lcom/unity3d/splash/services/core/preferences/PreferencesError;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_f
.end method

.method public static hasKey(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 6
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/unity3d/splash/services/core/preferences/AndroidPreferences;->hasKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static removeKey(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0, p1}, Lcom/unity3d/splash/services/core/preferences/AndroidPreferences;->removeKey(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static setBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 5
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/unity3d/splash/services/core/preferences/AndroidPreferences;->setBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static setFloat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 5
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/unity3d/splash/services/core/preferences/AndroidPreferences;->setFloat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static setInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 5
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/unity3d/splash/services/core/preferences/AndroidPreferences;->setInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static setLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 5
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/unity3d/splash/services/core/preferences/AndroidPreferences;->setLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static setString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 5
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/unity3d/splash/services/core/preferences/AndroidPreferences;->setString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method
