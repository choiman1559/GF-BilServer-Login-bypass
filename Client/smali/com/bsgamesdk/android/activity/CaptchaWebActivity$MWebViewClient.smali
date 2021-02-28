.class Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/activity/CaptchaWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MWebViewClient"
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->i(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->c(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_17
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-static {v0, v2}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;Z)Z

    return-void

    :cond_1d
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->c(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_17
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;Z)Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 16

    :try_start_0
    iget-object v10, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    iget-object v1, v1, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a:Landroid/content/Context;

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    sget-object v3, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    sget-object v4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    const-string v5, ""

    const-string v6, "1"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    sget-object v8, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    const-string v9, "3"

    invoke-direct/range {v0 .. v9}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v10, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->b:Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->b:Lcom/bsgamesdk/android/api/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->h(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p2, p3}, Lcom/bsgamesdk/android/api/h;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "code"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "web_type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->h(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    const-string v1, "onReceivedSslError"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "web_loadurl"

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "actionname"

    const-string v1, "webload"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    const-string v3, "web_load_finish"

    const-string v4, ""

    const-string v5, "1"

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9f} :catch_b5

    :goto_9f
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;Z)Z

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->c(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    :catch_b5
    move-exception v0

    goto :goto_9f
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 15

    :try_start_0
    iget-object v10, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    iget-object v1, v1, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a:Landroid/content/Context;

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    sget-object v3, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    sget-object v4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    const-string v5, ""

    const-string v6, "1"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    sget-object v8, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    const-string v9, "3"

    invoke-direct/range {v0 .. v9}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v10, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->b:Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->b:Lcom/bsgamesdk/android/api/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->h(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v3

    const-string v4, "onReceivedSslError"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/api/h;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "code"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "web_type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->h(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    const-string v1, "onReceivedSslError"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "web_loadurl"

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "actionname"

    const-string v1, "webload"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    const-string v3, "web_load_finish"

    const-string v4, ""

    const-string v5, "1"

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_ad} :catch_f9

    :goto_ad
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->C()Z

    move-result v0

    if-nez v0, :cond_bb

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    :goto_ba
    return-void

    :cond_bb
    :try_start_bb
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_c5} :catch_c6

    goto :goto_ba

    :catch_c6
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->c(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;Z)Z

    goto :goto_ba

    :cond_e0
    :try_start_e0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->c(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;Z)Z
    :try_end_f8
    .catch Ljava/lang/Throwable; {:try_start_e0 .. :try_end_f8} :catch_c6

    goto :goto_ba

    :catch_f9
    move-exception v0

    goto :goto_ad
.end method
