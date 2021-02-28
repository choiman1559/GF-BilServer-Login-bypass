.class final Lcom/unity3d/splash/services/core/webview/WebViewApp$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/splash/services/core/webview/WebViewApp;->create(Lcom/unity3d/splash/services/core/configuration/Configuration;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;


# direct methods
.method constructor <init>(Lcom/unity3d/splash/services/core/configuration/Configuration;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp$1;->val$configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    const/4 v5, 0x0

    :try_start_1
    new-instance v6, Lcom/unity3d/splash/services/core/webview/WebViewApp;

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp$1;->val$configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1}, Lcom/unity3d/splash/services/core/webview/WebViewApp;-><init>(Lcom/unity3d/splash/services/core/configuration/Configuration;Lcom/unity3d/splash/services/core/webview/WebViewApp$1;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_8e

    const-string v0, "?platform=android"

    :try_start_b
    iget-object v1, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp$1;->val$configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-virtual {v1}, Lcom/unity3d/splash/services/core/configuration/Configuration;->getWebViewUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&origin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp$1;->val$configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-virtual {v2}, Lcom/unity3d/splash/services/core/configuration/Configuration;->getWebViewUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_35
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_35} :catch_9c

    move-result-object v0

    :cond_36
    :goto_36
    :try_start_36
    iget-object v1, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp$1;->val$configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-virtual {v1}, Lcom/unity3d/splash/services/core/configuration/Configuration;->getWebViewVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_61

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp$1;->val$configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-virtual {v2}, Lcom/unity3d/splash/services/core/configuration/Configuration;->getWebViewVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_60
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_36 .. :try_end_60} :catch_a3

    move-result-object v0

    :cond_61
    move-object v1, v0

    :goto_62
    invoke-virtual {v6}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getWebView()Lcom/unity3d/splash/services/core/webview/WebView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getLocalWebViewFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/splash/services/core/webview/WebViewApp$1;->val$configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-virtual {v2}, Lcom/unity3d/splash/services/core/configuration/Configuration;->getWebViewData()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Lcom/unity3d/splash/services/core/webview/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->setCurrentApp(Lcom/unity3d/splash/services/core/webview/WebViewApp;)V

    :goto_8d
    return-void

    :catch_8e
    move-exception v0

    const-string v0, "Couldn\'t construct WebViewApp"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->access$300()Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_8d

    :catch_9c
    move-exception v1

    const-string v2, "Unsupported charset when encoding origin url"

    invoke-static {v2, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_36

    :catch_a3
    move-exception v1

    const-string v2, "Unsupported charset when encoding webview version"

    invoke-static {v2, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v1, v0

    goto :goto_62
.end method
