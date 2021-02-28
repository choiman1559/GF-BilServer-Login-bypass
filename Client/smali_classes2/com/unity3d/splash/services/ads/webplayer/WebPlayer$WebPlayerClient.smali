.class Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebPlayerClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;


# direct methods
.method private constructor <init>(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;-><init>(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)V

    return-void
.end method


# virtual methods
.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 10

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onFormResubmission"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    :cond_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onFormResubmission"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->FORM_RESUBMISSION:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_2e
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onLoadResource"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onLoadResource"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->LOAD_RESOUCE:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_31
    return-void
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onPageCommitVisible"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onPageCommitVisible"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->PAGE_COMMIT_VISIBLE:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_31
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onPageFinished"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onPageFinished"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->PAGE_FINISHED:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_31
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 10

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onPageStarted"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onPageStarted"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->PAGE_STARTED:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_31
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedClientCertRequest"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    :cond_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedClientCertRequest"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v1, ""

    const/4 v0, -0x1

    if-eqz p2, :cond_24

    invoke-virtual {p2}, Landroid/webkit/ClientCertRequest;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/webkit/ClientCertRequest;->getPort()I

    move-result v0

    :cond_24
    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->CLIENT_CERT_REQUEST:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_45
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedError"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedError"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->ERROR:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_34
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedError"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    :cond_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedError"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    const-string v0, ""

    if-eqz p3, :cond_29

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_29
    const-string v1, ""

    if-eqz p2, :cond_3b

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_3b

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3b
    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->ERROR:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v0, v5, v1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_58
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedHttpAuthRequest"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedHttpAuthRequest"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->HTTP_AUTH_REQUEST:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    aput-object p4, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_34
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedHttpError"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    :cond_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedHttpError"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string v0, ""

    if-eqz p2, :cond_29

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_29
    const/4 v2, -0x1

    const-string v1, ""

    if-eqz p3, :cond_36

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v2

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    :cond_36
    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v3

    sget-object v4, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v5, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->HTTP_ERROR:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-virtual {v3, v4, v5, v6}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_5a
    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedLoginRequest"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedLoginRequest"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->LOGIN_REQUEST:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_37
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedSslError"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    :cond_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedSslError"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, ""

    if-eqz p3, :cond_1f

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_1f
    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->SSL_ERROR:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_39
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .registers 10

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onScaleChanged"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    :cond_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onScaleChanged"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->SCALE_CHANGED:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_3c
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .registers 9

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onUnhandledKeyEvent"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    :cond_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onUnhandledKeyEvent"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->UNHANDLED_KEY_EVENT:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_44
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "shouldInterceptRequest"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :cond_f
    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "shouldInterceptRequest"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->SHOULD_INTERCEPT_REQUEST:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v6}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_3b
    return-object v0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .registers 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "shouldOverrideKeyEvent"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_18
    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "shouldOverrideKeyEvent"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->SHOULD_OVERRIDE_KEY_EVENT:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v6}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_4d
    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "shouldOverrideKeyEvent"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$700(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "shouldOverrideKeyEvent"

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$800(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    :cond_67
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "shouldOverrideUrlLoading"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_18
    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "shouldOverrideUrlLoading"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->SHOULD_OVERRIDE_URL_LOADING:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v6}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_49
    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "shouldOverrideUrlLoading"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$700(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "shouldOverrideUrlLoading"

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$800(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    :cond_63
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "shouldOverrideUrlLoading"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_18
    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "shouldOverrideUrlLoading"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->SHOULD_OVERRIDE_URL_LOADING:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_3a
    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "shouldOverrideUrlLoading"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$700(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "shouldOverrideUrlLoading"

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$800(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    :cond_54
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
