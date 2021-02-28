.class public Lcom/unity3d/splash/services/core/api/Lifecycle;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static _listener:Lcom/unity3d/splash/services/core/lifecycle/LifecycleListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLifecycleListener()Lcom/unity3d/splash/services/core/lifecycle/LifecycleListener;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/core/api/Lifecycle;->_listener:Lcom/unity3d/splash/services/core/lifecycle/LifecycleListener;

    return-object v0
.end method

.method public static register(Lorg/json/JSONArray;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 6
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-static {}, Lcom/unity3d/splash/services/core/api/Lifecycle;->getLifecycleListener()Lcom/unity3d/splash/services/core/lifecycle/LifecycleListener;

    move-result-object v0

    if-nez v0, :cond_48

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2f

    :try_start_19
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_22} :catch_26

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    :catch_26
    move-exception v0

    sget-object v0, Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;->JSON_ERROR:Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :goto_2e
    return-void

    :cond_2f
    new-instance v0, Lcom/unity3d/splash/services/core/lifecycle/LifecycleListener;

    invoke-direct {v0, v3}, Lcom/unity3d/splash/services/core/lifecycle/LifecycleListener;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/unity3d/splash/services/core/api/Lifecycle;->setLifecycleListener(Lcom/unity3d/splash/services/core/lifecycle/LifecycleListener;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/splash/services/core/api/Lifecycle;->getLifecycleListener()Lcom/unity3d/splash/services/core/lifecycle/LifecycleListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_2e

    :cond_48
    sget-object v0, Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;->LISTENER_NOT_NULL:Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_2e

    :cond_50
    sget-object v0, Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;->APPLICATION_NULL:Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_2e
.end method

.method public static setLifecycleListener(Lcom/unity3d/splash/services/core/lifecycle/LifecycleListener;)V
    .registers 1

    sput-object p0, Lcom/unity3d/splash/services/core/api/Lifecycle;->_listener:Lcom/unity3d/splash/services/core/lifecycle/LifecycleListener;

    return-void
.end method

.method public static unregister(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/unity3d/splash/services/core/api/Lifecycle;->getLifecycleListener()Lcom/unity3d/splash/services/core/lifecycle/LifecycleListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/splash/services/core/api/Lifecycle;->getLifecycleListener()Lcom/unity3d/splash/services/core/lifecycle/LifecycleListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/api/Lifecycle;->setLifecycleListener(Lcom/unity3d/splash/services/core/lifecycle/LifecycleListener;)V

    :cond_1c
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_21
    return-void

    :cond_22
    sget-object v0, Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;->APPLICATION_NULL:Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_21
.end method
