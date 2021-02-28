.class Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MWebViewClient"
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->h(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->b(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_17
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v0, v2}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->a(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;Z)Z

    return-void

    :cond_1d
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->b(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_17
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->a(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;Z)Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 16

    :try_start_0
    iget-object v10, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    sget-object v3, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    sget-object v4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    const-string v5, ""

    const-string v6, "1"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    sget-object v8, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    const-string v9, "3"

    invoke-direct/range {v0 .. v9}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v10, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->b:Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->b:Lcom/bsgamesdk/android/api/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->g(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->g(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    invoke-interface {v6, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "web_loadurl"

    invoke-interface {v6, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9b} :catch_bc

    :goto_9b
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->e(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->a(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;Z)Z

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->b(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :catch_bc
    move-exception v0

    goto :goto_9b
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 15

    :try_start_0
    iget-object v10, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    sget-object v3, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    sget-object v4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    const-string v5, ""

    const-string v6, "1"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    sget-object v8, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    const-string v9, "3"

    invoke-direct/range {v0 .. v9}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v10, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->b:Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->b:Lcom/bsgamesdk/android/api/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->g(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->g(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_af} :catch_fb

    :goto_af
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->C()Z

    move-result v0

    if-nez v0, :cond_bd

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    :goto_bc
    return-void

    :cond_bd
    :try_start_bd
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e2

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_bd .. :try_end_c7} :catch_c8

    goto :goto_bc

    :catch_c8
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->b(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->a(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;Z)Z

    goto :goto_bc

    :cond_e2
    :try_start_e2
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->b(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->a(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;Z)Z
    :try_end_fa
    .catch Ljava/lang/Throwable; {:try_start_e2 .. :try_end_fa} :catch_c8

    goto :goto_bc

    :catch_fb
    move-exception v0

    goto :goto_af
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v6, 0x1

    :try_start_2
    iget-object v1, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    iget-object v1, v1, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const-string v1, "#"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-le v2, v6, :cond_6c

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_1b
    array-length v2, v1

    if-ge v0, v2, :cond_3c

    aget-object v2, v1, v0

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    iget-object v3, v3, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->c:Ljava/util/HashMap;

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_3c
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->c:Ljava/util/HashMap;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    const-string v1, "user_cancelled_authorize"

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->c:Ljava/util/HashMap;

    const-string v2, "error"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->finish()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u82f9\u679c\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_6c} :catch_c1

    :cond_6c
    :goto_6c
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v6

    :cond_70
    :try_start_70
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->c:Ljava/util/HashMap;

    const-string v1, "code"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->c:Ljava/util/HashMap;

    const-string v1, "code"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d3

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "apple_code"

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->c:Ljava/util/HashMap;

    const-string v4, "code"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    sget v2, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->APPLE_LOGIN_CODE:I

    invoke-virtual {v0, v2, v1}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->finish()V
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_c0} :catch_c1

    goto :goto_6c

    :catch_c1
    move-exception v0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->finish()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u82f9\u679c\u767b\u5f55\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6c

    :cond_d3
    :try_start_d3
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->finish()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;->a:Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u82f9\u679c\u767b\u5f55\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_e3
    .catch Ljava/lang/Throwable; {:try_start_d3 .. :try_end_e3} :catch_c1

    goto :goto_6c
.end method
