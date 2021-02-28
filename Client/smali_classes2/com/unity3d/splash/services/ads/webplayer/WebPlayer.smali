.class public Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;
.super Landroid/webkit/WebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerDownloadListener;,
        Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;,
        Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;,
        Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$JavaScriptInvocation;
    }
.end annotation


# instance fields
.field private _erroredSettings:Ljava/util/Map;

.field private _evaluateJavascript:Ljava/lang/reflect/Method;

.field private _eventSettings:Lorg/json/JSONObject;

.field private viewId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 15

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_evaluateJavascript:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->viewId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1b

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_1b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_38

    :try_start_21
    const-class v0, Landroid/webkit/WebView;

    const-string v2, "evaluateJavascript"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/webkit/ValueCallback;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_evaluateJavascript:Ljava/lang/reflect/Method;
    :try_end_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_21 .. :try_end_38} :catch_9a

    :cond_38
    :goto_38
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {v1, v9}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {v1, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v8}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    sget-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p0, v6}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v6}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v6}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->setInitialScale(I)V

    invoke-virtual {p0, v6}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->setBackgroundColor(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {p0, v0}, Lcom/unity3d/splash/services/core/misc/ViewUtilities;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v6}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->setBackgroundResource(I)V

    invoke-virtual {p0, p3, p4}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->setSettings(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;

    invoke-direct {v0, p0, v7}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;-><init>(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$1;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;

    invoke-direct {v0, p0, v7}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;-><init>(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$1;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerDownloadListener;

    invoke-direct {v0, p0, v7}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerDownloadListener;-><init>(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$1;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerBridgeInterface;

    invoke-direct {v0, p2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerBridgeInterface;-><init>(Ljava/lang/String;)V

    const-string v1, "webplayerbridge"

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :catch_9a
    move-exception v0

    const-string v2, "Method evaluateJavascript not found"

    invoke-static {v2, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    iput-object v7, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_evaluateJavascript:Ljava/lang/reflect/Method;

    goto :goto_38
.end method

.method static synthetic access$300(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/reflect/Method;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_evaluateJavascript:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->shouldCallSuper(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->shouldSendEvent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->viewId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->hasReturnValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->getReturnValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private addErroredSetting(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_erroredSettings:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_erroredSettings:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_erroredSettings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getReturnValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "returnValue"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "returnValue"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2b

    move-result-object p3

    :cond_2a
    :goto_2a
    return-object p3

    :catch_2b
    move-exception v0

    const-string v1, "Error getting default return value"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2a
.end method

.method private getTypes(Lorg/json/JSONArray;)[Ljava/lang/Class;
    .registers 6

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v2, v0, [Ljava/lang/Class;

    if-eqz p1, :cond_43

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_43

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_34

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v3, "className"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_30

    aput-object v0, v2, v1

    :cond_30
    :goto_30
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_34
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->getPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_30

    :cond_43
    move-object v0, v2

    goto :goto_3
.end method

.method private getValues(Lorg/json/JSONArray;)[Ljava/lang/Object;
    .registers 11

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_6

    move-object v0, v4

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v6, v0, [Ljava/lang/Object;

    move v2, v3

    :goto_13
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_65

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_5e

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "value"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v7, "type"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "className"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_70

    const-string v8, "className"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_41
    if-eqz v0, :cond_5a

    const-string v8, "Enum"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5a

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_5a

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v7, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    aput-object v0, v6, v2

    :cond_5a
    :goto_5a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    :cond_5e
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v2

    goto :goto_5a

    :cond_65
    if-eqz p1, :cond_6e

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {v6, v3, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6e
    move-object v0, v5

    goto :goto_5

    :cond_70
    move-object v0, v4

    goto :goto_41
.end method

.method private hasReturnValue(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "returnValue"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_1c

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_1b
    return v0

    :catch_1c
    move-exception v0

    const-string v1, "Error getting default return value"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_22
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private setTargetSettings(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 8

    if-eqz p2, :cond_38

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_12
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->getTypes(Lorg/json/JSONArray;)[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->getValues(Lorg/json/JSONArray;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_29} :catch_2a

    goto :goto_6

    :catch_2a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->addErroredSetting(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Setting errored"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_6

    :cond_38
    return-object p1
.end method

.method private shouldCallSuper(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "callSuper"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "callSuper"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_27

    move-result v0

    :goto_26
    return v0

    :catch_27
    move-exception v0

    const-string v1, "Error getting super call status"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2d
    const/4 v0, 0x1

    goto :goto_26
.end method

.method private shouldSendEvent(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "sendEvent"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "sendEvent"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_27

    move-result v0

    :goto_26
    return v0

    :catch_27
    move-exception v0

    const-string v1, "Error getting send event status"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2d
    const/4 v0, 0x0

    goto :goto_26
.end method


# virtual methods
.method public getErroredSettings()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_erroredSettings:Ljava/util/Map;

    return-object v0
.end method

.method public getPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Byte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    :cond_e
    :goto_e
    return-object p1

    :cond_f
    const-string v1, "java.lang.Short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_e

    :cond_1a
    const-string v1, "java.lang.Integer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_e

    :cond_25
    const-string v1, "java.lang.Long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_e

    :cond_30
    const-string v1, "java.lang.Character"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_e

    :cond_3b
    const-string v1, "java.lang.Float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_e

    :cond_46
    const-string v1, "java.lang.Double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_e

    :cond_51
    const-string v1, "java.lang.Boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_e

    :cond_5c
    const-string v1, "java.lang.Void"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    goto :goto_e
.end method

.method public invokeJavascript(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$JavaScriptInvocation;

    invoke-direct {v0, p0, p1, p0}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$JavaScriptInvocation;-><init>(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendEvent(Lorg/json/JSONArray;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:window.nativebridge.receiveEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->invokeJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public setEventSettings(Lorg/json/JSONObject;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    return-void
.end method

.method public setSettings(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_erroredSettings:Ljava/util/Map;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->_erroredSettings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_9
    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->setTargetSettings(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;

    invoke-direct {p0, p0, p2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->setTargetSettings(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;

    return-void
.end method
