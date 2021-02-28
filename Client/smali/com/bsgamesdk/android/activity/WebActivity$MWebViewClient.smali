.class Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/activity/WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MWebViewClient"
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/WebActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/WebActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 16

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/WebActivity;->g(Lcom/bsgamesdk/android/activity/WebActivity;)Z

    move-result v0

    if-nez v0, :cond_d6

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/WebActivity;->c(Lcom/bsgamesdk/android/activity/WebActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v0, "result"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    iput-boolean v3, v0, Lcom/bsgamesdk/android/activity/WebActivity;->f:Z

    :goto_24
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-static {v0, v2}, Lcom/bsgamesdk/android/activity/WebActivity;->a(Lcom/bsgamesdk/android/activity/WebActivity;Z)Z

    :try_start_29
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/bsgamesdk/android/activity/WebActivity;->b(Lcom/bsgamesdk/android/activity/WebActivity;J)J

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/WebActivity;->h(Lcom/bsgamesdk/android/activity/WebActivity;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/WebActivity;->i(Lcom/bsgamesdk/android/activity/WebActivity;)J
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_3d} :catch_e1

    move-result-wide v2

    sub-long v10, v0, v2

    const-wide/16 v0, 0x7d0

    cmp-long v0, v10, v0

    if-lez v0, :cond_cf

    :try_start_46
    iget-object v12, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    iget-object v1, v1, Lcom/bsgamesdk/android/activity/WebActivity;->a:Landroid/content/Context;

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    sget-object v3, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    sget-object v4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    const-string v5, ""

    const-string v6, "1"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    sget-object v8, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    const-string v9, "3"

    invoke-direct/range {v0 .. v9}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v12, Lcom/bsgamesdk/android/activity/WebActivity;->g:Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/WebActivity;->g:Lcom/bsgamesdk/android/api/h;

    const-string v1, "0"

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HttpTimeOut_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/api/h;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "code"

    const-string v1, "2"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "web_type"

    const-string v1, "0"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpTimeOut_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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

    const-string v2, "WebActivity"

    const-string v3, "web_load_finish"

    const-string v4, ""

    const-string v5, "1"

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_cf
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_cf} :catch_e3

    :cond_cf
    :goto_cf
    return-void

    :cond_d0
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    iput-boolean v2, v0, Lcom/bsgamesdk/android/activity/WebActivity;->f:Z

    goto/16 :goto_24

    :cond_d6
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/WebActivity;->c(Lcom/bsgamesdk/android/activity/WebActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_24

    :catch_e1
    move-exception v0

    goto :goto_cf

    :catch_e3
    move-exception v0

    goto :goto_cf
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 8

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/WebActivity;->a(Lcom/bsgamesdk/android/activity/WebActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/bsgamesdk/android/activity/WebActivity;->a(Lcom/bsgamesdk/android/activity/WebActivity;J)J

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 16

    const/4 v0, -0x2

    if-eq p2, v0, :cond_9

    const/4 v0, -0x6

    if-eq p2, v0, :cond_9

    const/4 v0, -0x8

    if-ne p2, v0, :cond_e

    :cond_9
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/WebActivity;->f(Lcom/bsgamesdk/android/activity/WebActivity;)V

    :cond_e
    :try_start_e
    iget-object v10, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    iget-object v1, v1, Lcom/bsgamesdk/android/activity/WebActivity;->a:Landroid/content/Context;

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    sget-object v3, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    sget-object v4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    const-string v5, ""

    const-string v6, "1"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    sget-object v8, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    const-string v9, "3"

    invoke-direct/range {v0 .. v9}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v10, Lcom/bsgamesdk/android/activity/WebActivity;->g:Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/WebActivity;->g:Lcom/bsgamesdk/android/api/h;

    const-string v1, "0"

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

    const-string v1, "0"

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

    const-string v2, "WebActivity"

    const-string v3, "web_load_finish"

    const-string v4, ""

    const-string v5, "1"

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_7f} :catch_95

    :goto_7f
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/WebActivity;->a(Lcom/bsgamesdk/android/activity/WebActivity;Z)Z

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/WebActivity;->c(Lcom/bsgamesdk/android/activity/WebActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    :catch_95
    move-exception v0

    goto :goto_7f
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 15

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_96

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x194

    if-eq v1, v0, :cond_12

    const/16 v1, 0x1f4

    if-ne v1, v0, :cond_17

    :cond_12
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/WebActivity;->f(Lcom/bsgamesdk/android/activity/WebActivity;)V

    :cond_17
    :try_start_17
    iget-object v10, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    iget-object v1, v1, Lcom/bsgamesdk/android/activity/WebActivity;->a:Landroid/content/Context;

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    sget-object v3, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    sget-object v4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    const-string v5, ""

    const-string v6, "1"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    sget-object v8, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    const-string v9, "3"

    invoke-direct/range {v0 .. v9}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v10, Lcom/bsgamesdk/android/activity/WebActivity;->g:Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/WebActivity;->g:Lcom/bsgamesdk/android/api/h;

    const-string v1, "0"

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v3

    const-string v4, "onReceivedHttpError"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/api/h;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "code"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

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

    const-string v1, "0"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    const-string v1, "onReceivedHttpError"

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

    const-string v2, "WebActivity"

    const-string v3, "web_load_finish"

    const-string v4, ""

    const-string v5, "1"

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_96} :catch_9a

    :cond_96
    :goto_96
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void

    :catch_9a
    move-exception v0

    goto :goto_96
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 15

    :try_start_0
    iget-object v10, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    iget-object v1, v1, Lcom/bsgamesdk/android/activity/WebActivity;->a:Landroid/content/Context;

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    sget-object v3, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    sget-object v4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    const-string v5, ""

    const-string v6, "1"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    sget-object v8, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    const-string v9, "3"

    invoke-direct/range {v0 .. v9}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v10, Lcom/bsgamesdk/android/activity/WebActivity;->g:Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/WebActivity;->g:Lcom/bsgamesdk/android/api/h;

    const-string v1, "0"

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

    const-string v1, "0"

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

    const-string v2, "WebActivity"

    const-string v3, "web_load_finish"

    const-string v4, ""

    const-string v5, "1"

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7f} :catch_cb

    :goto_7f
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->D()Z

    move-result v0

    if-nez v0, :cond_8d

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    :goto_8c
    return-void

    :cond_8d
    :try_start_8d
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b2

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_97} :catch_98

    goto :goto_8c

    :catch_98
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/WebActivity;->c(Lcom/bsgamesdk/android/activity/WebActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/WebActivity;->a(Lcom/bsgamesdk/android/activity/WebActivity;Z)Z

    goto :goto_8c

    :cond_b2
    :try_start_b2
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/WebActivity;->c(Lcom/bsgamesdk/android/activity/WebActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/WebActivity;->a(Lcom/bsgamesdk/android/activity/WebActivity;Z)Z
    :try_end_ca
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_ca} :catch_98

    goto :goto_8c

    :catch_cb
    move-exception v0

    goto :goto_7f
.end method
