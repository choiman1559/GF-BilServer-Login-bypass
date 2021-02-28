.class public Lcom/unity3d/splash/services/core/webview/WebViewApp;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/splash/services/core/webview/WebViewApp$WebAppChromeClient;,
        Lcom/unity3d/splash/services/core/webview/WebViewApp$WebAppClient;
    }
.end annotation


# static fields
.field private static final INVOKE_JS_CHARS_LENGTH:I = 0x16

.field private static _conditionVariable:Landroid/os/ConditionVariable;

.field private static _currentApp:Lcom/unity3d/splash/services/core/webview/WebViewApp;


# instance fields
.field private _configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

.field private _initialized:Z

.field private _nativeCallbacks:Ljava/util/HashMap;

.field private _webAppLoaded:Z

.field private _webView:Lcom/unity3d/splash/services/core/webview/WebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_webAppLoaded:Z

    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_initialized:Z

    return-void
.end method

.method private constructor <init>(Lcom/unity3d/splash/services/core/configuration/Configuration;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_webAppLoaded:Z

    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_initialized:Z

    invoke-virtual {p0, p1}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->setConfiguration(Lcom/unity3d/splash/services/core/configuration/Configuration;)V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getConfiguration()Lcom/unity3d/splash/services/core/configuration/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/configuration/Configuration;->getWebAppApiClassList()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridge;->setClassTable([Ljava/lang/Class;)V

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebView;

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unity3d/splash/services/core/webview/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_webView:Lcom/unity3d/splash/services/core/webview/WebView;

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_webView:Lcom/unity3d/splash/services/core/webview/WebView;

    new-instance v1, Lcom/unity3d/splash/services/core/webview/WebViewApp$WebAppClient;

    invoke-direct {v1, p0, v2}, Lcom/unity3d/splash/services/core/webview/WebViewApp$WebAppClient;-><init>(Lcom/unity3d/splash/services/core/webview/WebViewApp;Lcom/unity3d/splash/services/core/webview/WebViewApp$1;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/splash/services/core/webview/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_webView:Lcom/unity3d/splash/services/core/webview/WebView;

    new-instance v1, Lcom/unity3d/splash/services/core/webview/WebViewApp$WebAppChromeClient;

    invoke-direct {v1, p0, v2}, Lcom/unity3d/splash/services/core/webview/WebViewApp$WebAppChromeClient;-><init>(Lcom/unity3d/splash/services/core/webview/WebViewApp;Lcom/unity3d/splash/services/core/webview/WebViewApp$1;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/splash/services/core/webview/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/splash/services/core/configuration/Configuration;Lcom/unity3d/splash/services/core/webview/WebViewApp$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/unity3d/splash/services/core/webview/WebViewApp;-><init>(Lcom/unity3d/splash/services/core/configuration/Configuration;)V

    return-void
.end method

.method static synthetic access$300()Landroid/os/ConditionVariable;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_conditionVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method public static create(Lcom/unity3d/splash/services/core/configuration/Configuration;)Z
    .registers 5

    invoke-static {}, Lcom/unity3d/splash/services/core/log/DeviceLog;->entered()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Cannot call create() from main thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewApp$1;

    invoke-direct {v0, p0}, Lcom/unity3d/splash/services/core/webview/WebViewApp$1;-><init>(Lcom/unity3d/splash/services/core/configuration/Configuration;)V

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_conditionVariable:Landroid/os/ConditionVariable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    :goto_3c
    return v0

    :cond_3d
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method public static getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_currentApp:Lcom/unity3d/splash/services/core/webview/WebViewApp;

    return-object v0
.end method

.method private invokeJavascriptMethod(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 7

    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "javascript:window."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invoking javascript: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getWebView()Lcom/unity3d/splash/services/core/webview/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/unity3d/splash/services/core/webview/WebView;->invokeJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public static setCurrentApp(Lcom/unity3d/splash/services/core/webview/WebViewApp;)V
    .registers 1

    sput-object p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_currentApp:Lcom/unity3d/splash/services/core/webview/WebViewApp;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/unity3d/splash/services/core/webview/bridge/NativeCallback;)V
    .registers 5

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    :cond_b
    iget-object v1, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/unity3d/splash/services/core/webview/bridge/NativeCallback;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getCallback(Ljava/lang/String;)Lcom/unity3d/splash/services/core/webview/bridge/NativeCallback;
    .registers 4

    iget-object v1, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/core/webview/bridge/NativeCallback;

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getConfiguration()Lcom/unity3d/splash/services/core/configuration/Configuration;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    return-object v0
.end method

.method public getWebView()Lcom/unity3d/splash/services/core/webview/WebView;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_webView:Lcom/unity3d/splash/services/core/webview/WebView;

    return-object v0
.end method

.method public invokeCallback(Lcom/unity3d/splash/services/core/webview/bridge/Invocation;)Z
    .registers 12

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->isWebAppLoaded()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "invokeBatchCallback ignored because web app is not loaded"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    move v0, v4

    :goto_e
    return v0

    :cond_f
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->getResponses()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_95

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_95

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_24
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v3, v0, v4

    check-cast v3, Ljava/lang/String;

    array-length v8, v0

    invoke-static {v0, v5, v8}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_6b
    array-length v2, v8

    move v0, v4

    :goto_6d
    if-ge v0, v2, :cond_77

    aget-object v3, v8, v0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    :cond_77
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_83
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_83

    :cond_91
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_24

    :cond_95
    :try_start_95
    const-string v0, "nativebridge"

    const-string v1, "handleCallback"

    invoke-direct {p0, v0, v1, v6}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->invokeJavascriptMethod(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_9c} :catch_9f

    :goto_9c
    move v0, v5

    goto/16 :goto_e

    :catch_9f
    move-exception v0

    const-string v1, "Error while invoking batch response for WebView"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_9c
.end method

.method public varargs invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->isWebAppLoaded()Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "invokeMethod ignored because web app is not loaded"

    invoke-static {v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    :goto_c
    return v0

    :cond_d
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-eqz p3, :cond_37

    new-instance v1, Lcom/unity3d/splash/services/core/webview/bridge/NativeCallback;

    invoke-direct {v1, p3}, Lcom/unity3d/splash/services/core/webview/bridge/NativeCallback;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {p0, v1}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->addCallback(Lcom/unity3d/splash/services/core/webview/bridge/NativeCallback;)V

    invoke-virtual {v1}, Lcom/unity3d/splash/services/core/webview/bridge/NativeCallback;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_29
    if-eqz p4, :cond_3c

    array-length v3, p4

    move v1, v0

    :goto_2d
    if-ge v1, v3, :cond_3c

    aget-object v4, p4, v1

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_37
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_29

    :cond_3c
    :try_start_3c
    const-string v1, "nativebridge"

    const-string v3, "handleInvocation"

    invoke-direct {p0, v1, v3, v2}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->invokeJavascriptMethod(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_43} :catch_45

    const/4 v0, 0x1

    goto :goto_c

    :catch_45
    move-exception v1

    const-string v2, "Error invoking javascript method"

    invoke-static {v2, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_c
.end method

.method public isWebAppInitialized()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_initialized:Z

    return v0
.end method

.method public isWebAppLoaded()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_webAppLoaded:Z

    return v0
.end method

.method public removeCallback(Lcom/unity3d/splash/services/core/webview/bridge/NativeCallback;)V
    .registers 5

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/unity3d/splash/services/core/webview/bridge/NativeCallback;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_4

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public varargs sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->isWebAppLoaded()Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "sendEvent ignored because web app is not loaded"

    invoke-static {v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    :goto_c
    return v0

    :cond_d
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    array-length v3, p3

    move v1, v0

    :goto_22
    if-ge v1, v3, :cond_2c

    aget-object v4, p3, v1

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_2c
    :try_start_2c
    const-string v1, "nativebridge"

    const-string v3, "handleEvent"

    invoke-direct {p0, v1, v3, v2}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->invokeJavascriptMethod(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_33} :catch_35

    const/4 v0, 0x1

    goto :goto_c

    :catch_35
    move-exception v1

    const-string v2, "Error while sending event to WebView"

    invoke-static {v2, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_c
.end method

.method public setConfiguration(Lcom/unity3d/splash/services/core/configuration/Configuration;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    return-void
.end method

.method public setWebAppInitialized(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_initialized:Z

    sget-object v0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public setWebAppLoaded(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_webAppLoaded:Z

    return-void
.end method

.method public setWebView(Lcom/unity3d/splash/services/core/webview/WebView;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp;->_webView:Lcom/unity3d/splash/services/core/webview/WebView;

    return-void
.end method
