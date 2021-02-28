.class public Lcom/unity3d/splash/services/ads/adunit/AdUnitOpen;
.super Ljava/lang/Object;


# static fields
.field private static _waitShowStatus:Landroid/os/ConditionVariable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized open(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 9

    const-class v1, Lcom/unity3d/splash/services/ads/adunit/AdUnitOpen;

    monitor-enter v1

    :try_start_3
    const-class v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitOpen;

    const-string v2, "showCallback"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitOpen;->_waitShowStatus:Landroid/os/ConditionVariable;

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v2

    const-string v3, "webview"

    const-string v4, "show"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitOpen;->_waitShowStatus:Landroid/os/ConditionVariable;

    invoke-static {}, Lcom/unity3d/splash/services/ads/properties/AdsProperties;->getShowTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    const/4 v2, 0x0

    sput-object v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitOpen;->_waitShowStatus:Landroid/os/ConditionVariable;
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3e

    monitor-exit v1

    return v0

    :catchall_3e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static showCallback(Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;)V
    .registers 2

    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitOpen;->_waitShowStatus:Landroid/os/ConditionVariable;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;->OK:Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitOpen;->_waitShowStatus:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    :cond_11
    return-void
.end method
