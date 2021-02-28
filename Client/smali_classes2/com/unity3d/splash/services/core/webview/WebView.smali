.class public Lcom/unity3d/splash/services/core/webview/WebView;
.super Landroid/webkit/WebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/splash/services/core/webview/WebView$JavaScriptInvocation;
    }
.end annotation


# static fields
.field private static _evaluateJavascript:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebView;->_evaluateJavascript:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12

    const/16 v9, 0xb

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/webview/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_18

    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_35

    :try_start_1e
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

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebView;->_evaluateJavascript:Ljava/lang/reflect/Method;
    :try_end_35
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1e .. :try_end_35} :catch_ba

    :cond_35
    :goto_35
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v1, v8}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_4e

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    :cond_4e
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_58

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setEnableSmoothTransition(Z)V

    :cond_58
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_73

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_7c

    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_7c
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    sget-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p0, v6}, Lcom/unity3d/splash/services/core/webview/WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v6}, Lcom/unity3d/splash/services/core/webview/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v6}, Lcom/unity3d/splash/services/core/webview/WebView;->setInitialScale(I)V

    invoke-virtual {p0, v6}, Lcom/unity3d/splash/services/core/webview/WebView;->setBackgroundColor(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {p0, v0}, Lcom/unity3d/splash/services/core/misc/ViewUtilities;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v6}, Lcom/unity3d/splash/services/core/webview/WebView;->setBackgroundResource(I)V

    new-instance v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeInterface;

    invoke-direct {v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeInterface;-><init>()V

    const-string v1, "webviewbridge"

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :catch_ba
    move-exception v0

    const-string v2, "Method evaluateJavascript not found"

    invoke-static {v2, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebView;->_evaluateJavascript:Ljava/lang/reflect/Method;

    goto/16 :goto_35
.end method

.method static synthetic access$000()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/core/webview/WebView;->_evaluateJavascript:Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method public invokeJavascript(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebView$JavaScriptInvocation;

    invoke-direct {v0, p0, p1, p0}, Lcom/unity3d/splash/services/core/webview/WebView$JavaScriptInvocation;-><init>(Lcom/unity3d/splash/services/core/webview/WebView;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
