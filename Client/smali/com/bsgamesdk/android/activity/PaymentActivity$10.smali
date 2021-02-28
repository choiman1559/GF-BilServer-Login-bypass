.class Lcom/bsgamesdk/android/activity/PaymentActivity$10;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/PaymentActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/PaymentActivity;

.field public firstLoadUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/PaymentActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->firstLoadUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->D(Lcom/bsgamesdk/android/activity/PaymentActivity;)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->c(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_17
    const-string v0, "http://bilipaymentresult"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "success"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v2, "bilipayment"

    invoke-virtual {v0, v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onSuccess(Ljava/lang/String;)Z

    :cond_36
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "failure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v2, "error_msg"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13ec

    const-string v3, "bilipayment"

    const-string v4, "-9999"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_55} :catch_56

    :cond_55
    :goto_55
    return-void

    :catch_56
    move-exception v0

    :cond_57
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_55
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->b(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->b(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    :try_start_0
    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/content/Context;

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

    const-string v1, "6"

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

    const-string v1, "6"

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
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6b} :catch_cf

    :goto_6b
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->c(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->e(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v0, Lcom/bsgamesdk/android/model/c;->d:Z

    if-eqz v0, :cond_cc

    sget v0, Lcom/bsgamesdk/android/utils/f$c;->Q:I

    :goto_97
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/bsgamesdk/android/utils/f$f;->d:I

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/bsgamesdk/android/utils/f$f;->t:I

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/bsgamesdk/android/utils/f$f;->e:I

    new-instance v2, Lcom/bsgamesdk/android/activity/PaymentActivity$10$1;

    invoke-direct {v2, p0}, Lcom/bsgamesdk/android/activity/PaymentActivity$10$1;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity$10;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/bsgamesdk/android/activity/PaymentActivity$10$2;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/activity/PaymentActivity$10$2;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity$10;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/bsgamesdk/android/utils/f$f;->O:I

    new-instance v2, Lcom/bsgamesdk/android/activity/PaymentActivity$10$3;

    invoke-direct {v2, p0}, Lcom/bsgamesdk/android/activity/PaymentActivity$10$3;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity$10;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_cc
    sget v0, Lcom/bsgamesdk/android/utils/f$c;->R:I

    goto :goto_97

    :catch_cf
    move-exception v0

    goto :goto_6b
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 14

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    :try_start_3
    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/content/Context;

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

    const-string v1, "6"

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

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->C(Lcom/bsgamesdk/android/activity/PaymentActivity;)I

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
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_93} :catch_94

    :goto_93
    return-void

    :catch_94
    move-exception v0

    goto :goto_93
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 12

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->f(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->c(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    sget-object v0, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    const-string v2, "11"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    const-string v2, "28"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_20
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->firstLoadUrl:Ljava/lang/String;

    if-nez v0, :cond_6f

    iput-object p2, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->firstLoadUrl:Ljava/lang/String;

    :cond_26
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->c(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "http://bilipaymentresult"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->g(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->b(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->h(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "success"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v1, "bilipayment"

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onSuccess(Ljava/lang/String;)Z

    move-result v0

    :goto_6e
    return v0

    :cond_6f
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->firstLoadUrl:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onBackPressed()V

    move v0, v6

    goto :goto_6e

    :cond_7e
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "failure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54a

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v2, "error_msg"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1450

    const-string v3, "bilipayment"

    const-string v4, "-9999"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_6e

    :cond_9f
    const-string v0, "http://quickpay_wechat/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1fc

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->g(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->b(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->h(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v6}, Lcom/bsgamesdk/android/activity/PaymentActivity;->f(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    const-string v0, "http://quickpay_wechat/"

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-nez v2, :cond_e7

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v1, "\u5fae\u4fe1\u652f\u4ed8\u5931\u8d25"

    const/16 v2, 0x14b5

    const-string v3, "quickpay_wechat"

    const-string v4, "-9999"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move v0, v6

    goto :goto_6e

    :cond_e7
    new-instance v2, Lcom/bsgamesdk/android/model/p;

    invoke-direct {v2}, Lcom/bsgamesdk/android/model/p;-><init>()V

    array-length v3, v0

    :goto_ed
    if-ge v1, v3, :cond_19c

    aget-object v4, v0, v1

    const-string v5, "appid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10f

    const-string v5, "appid"

    const-string v7, ""

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    const-string v7, ""

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bsgamesdk/android/model/p;->a(Ljava/lang/String;)V

    :cond_10c
    :goto_10c
    add-int/lit8 v1, v1, 0x1

    goto :goto_ed

    :cond_10f
    const-string v5, "noncestr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12b

    const-string v5, "noncestr"

    const-string v7, ""

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    const-string v7, ""

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bsgamesdk/android/model/p;->d(Ljava/lang/String;)V

    goto :goto_10c

    :cond_12b
    const-string v5, "partnerid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_147

    const-string v5, "partnerid"

    const-string v7, ""

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    const-string v7, ""

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bsgamesdk/android/model/p;->b(Ljava/lang/String;)V

    goto :goto_10c

    :cond_147
    const-string v5, "prepayid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_163

    const-string v5, "prepayid"

    const-string v7, ""

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    const-string v7, ""

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bsgamesdk/android/model/p;->c(Ljava/lang/String;)V

    goto :goto_10c

    :cond_163
    const-string v5, "sign"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17f

    const-string v5, "sign"

    const-string v7, ""

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    const-string v7, ""

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bsgamesdk/android/model/p;->f(Ljava/lang/String;)V

    goto :goto_10c

    :cond_17f
    const-string v5, "timestamp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10c

    const-string v5, "timestamp"

    const-string v7, ""

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    const-string v7, ""

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bsgamesdk/android/model/p;->e(Ljava/lang/String;)V

    goto/16 :goto_10c

    :cond_19c
    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/p;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e2

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/p;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e2

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/p;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e2

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/p;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e2

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/p;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e2

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/p;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e2

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/p;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f4

    :cond_1e2
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v1, "\u5fae\u4fe1\u652f\u4ed8\u5931\u8d25"

    const/16 v2, 0x1519

    const-string v3, "quickpay_wechat"

    const-string v4, "-9999"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move v0, v6

    goto/16 :goto_6e

    :cond_1f4
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Lcom/bsgamesdk/android/activity/PaymentActivity;Lcom/bsgamesdk/android/model/p;)Z

    move-result v0

    goto/16 :goto_6e

    :cond_1fc
    const-string v0, "http://quickpay_paypal/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_248

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->g(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->b(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->h(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    const-string v0, "http://quickpay_paypal/"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_240

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v1, "paypal\u652f\u4ed8\u5931\u8d25"

    const/16 v2, 0x1776

    const-string v3, "quick_paypal"

    const-string v4, "-9999"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move v0, v6

    goto/16 :goto_6e

    :cond_240
    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Lcom/bsgamesdk/android/activity/PaymentActivity;[Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_6e

    :cond_248
    const-string v0, "http://quickpay_alipay/?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2bb

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->g(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->b(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->h(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    const-string v0, "http://quickpay_alipay/?"

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-le v2, v3, :cond_28b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_28b

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_28b
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    const-string v1, ""

    :try_start_291
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_298
    .catch Ljava/lang/Exception; {:try_start_291 .. :try_end_298} :catch_2b0

    :goto_298
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b3

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v1, "\u652f\u4ed8\u5b9d\u4ea4\u6613\u5931\u8d25"

    const/16 v2, 0x157d

    const-string v3, "quickpay_alipay"

    const-string v4, "-9999"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move v0, v6

    goto/16 :goto_6e

    :catch_2b0
    move-exception v0

    move-object v0, v1

    goto :goto_298

    :cond_2b3
    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onAlipay(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_6e

    :cond_2bb
    const-string v0, "http://quickpay_heepay/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3ff

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v6}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->g(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->b(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->h(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    const-string v0, "http://quickpay_heepay/"

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    if-nez v0, :cond_2fa

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v1, "\u5fae\u4fe1\u652f\u4ed8\u5931\u8d25"

    const/16 v2, 0x1bbd

    const-string v3, "quickpay_heepay"

    const-string v4, "-9999"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move v0, v6

    goto/16 :goto_6e

    :cond_2fa
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    new-instance v4, Lcom/bsgamesdk/android/model/f;

    invoke-direct {v4}, Lcom/bsgamesdk/android/model/f;-><init>()V

    invoke-static {v0, v4}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Lcom/bsgamesdk/android/activity/PaymentActivity;Lcom/bsgamesdk/android/model/f;)Lcom/bsgamesdk/android/model/f;

    array-length v4, v3

    move v0, v1

    :goto_306
    if-ge v0, v4, :cond_394

    aget-object v1, v3, v0

    const-string v5, "version"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_32e

    iget-object v5, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->E(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/model/f;

    move-result-object v5

    const-string v7, "version"

    const-string v8, ""

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "="

    const-string v8, ""

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/bsgamesdk/android/model/f;->a(Ljava/lang/String;)V

    :cond_32b
    :goto_32b
    add-int/lit8 v0, v0, 0x1

    goto :goto_306

    :cond_32e
    const-string v5, "agent_id"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_350

    iget-object v5, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->E(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/model/f;

    move-result-object v5

    const-string v7, "agent_id"

    const-string v8, ""

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "="

    const-string v8, ""

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/bsgamesdk/android/model/f;->b(Ljava/lang/String;)V

    goto :goto_32b

    :cond_350
    const-string v5, "agent_bill_id"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_372

    iget-object v5, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->E(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/model/f;

    move-result-object v5

    const-string v7, "agent_bill_id"

    const-string v8, ""

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "="

    const-string v8, ""

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/bsgamesdk/android/model/f;->c(Ljava/lang/String;)V

    goto :goto_32b

    :cond_372
    const-string v5, "agent_bill_time"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_32b

    iget-object v5, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->E(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/model/f;

    move-result-object v5

    const-string v7, "agent_bill_time"

    const-string v8, ""

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "="

    const-string v8, ""

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/bsgamesdk/android/model/f;->d(Ljava/lang/String;)V

    goto :goto_32b

    :cond_394
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->E(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/model/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->E(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/model/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->E(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/model/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->E(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/model/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e6

    :cond_3d4
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v1, "\u5fae\u4fe1\u652f\u4ed8\u5931\u8d25"

    const/16 v2, 0x1c21

    const-string v3, "quickpay_heepay"

    const-string v4, "-9999"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move v0, v6

    goto/16 :goto_6e

    :cond_3e6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://pay.heepay.com/Payment/Index.aspx?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v6

    goto/16 :goto_6e

    :cond_3ff
    const-string v0, "http://quickpay_wechath5/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40f

    const-string v0, "http://quickpay_wechatH5/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d6

    :cond_40f
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->g(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v6}, Lcom/bsgamesdk/android/activity/PaymentActivity;->b(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->h(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    const-string v0, ""

    const-string v0, "http://quickpay_wechatH5/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_454

    const-string v0, "http://quickpay_wechatH5/"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_43a
    const-string v1, "mweb_url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45d

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v1, "\u5fae\u4fe1\u652f\u4ed8\u5931\u8d25"

    const/16 v2, 0x1c85

    const-string v3, "quickpay_wechath5"

    const-string v4, "-9999"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move v0, v6

    goto/16 :goto_6e

    :cond_454
    const-string v0, "http://quickpay_wechath5/"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_43a

    :cond_45d
    :try_start_45d
    const-string v1, "appid=(.*?)&|device_info=(.*?)&|mch_id=(.*?)&"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mweb_url="

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4b2

    const-string v2, "4.4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b2

    const-string v1, "http://wechat-h5.biligame.com"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<script>window.location.href=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\";</script>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4af
    move v0, v6

    goto/16 :goto_6e

    :cond_4b2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Referer"

    const-string v3, "http://wechat-h5.biligame.com"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_4c1
    .catch Ljava/lang/Exception; {:try_start_45d .. :try_end_4c1} :catch_4c2

    goto :goto_4af

    :catch_4c2
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v1, "\u5fae\u4fe1\u652f\u4ed8\u5931\u8d25"

    const/16 v2, 0x1ce9

    const-string v3, "quickpay_wechath5"

    const-string v4, "-9999"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4af

    :cond_4d6
    const-string v0, "weixin:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e4

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_6e

    :cond_4e4
    :try_start_4e4
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->F(Lcom/bsgamesdk/android/activity/PaymentActivity;)Z

    move-result v0

    if-eqz v0, :cond_50d

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->G(Lcom/bsgamesdk/android/activity/PaymentActivity;)Z

    move-result v0

    if-nez v0, :cond_50d

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->g(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_50a
    :goto_50a
    move v0, v6

    goto/16 :goto_6e

    :cond_50d
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->H(Lcom/bsgamesdk/android/activity/PaymentActivity;)Z

    move-result v0

    if-eqz v0, :cond_50a

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->I(Lcom/bsgamesdk/android/activity/PaymentActivity;)Z

    move-result v0

    if-nez v0, :cond_50a

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->h(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_533
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4e4 .. :try_end_533} :catch_534

    goto :goto_50a

    :catch_534
    move-exception v0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v1, "\u8bf7\u68c0\u67e5\u662f\u5426\u5b89\u88c5\u65b0\u7248\u5ba2\u6237\u7aef"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v1, "\u8bf7\u68c0\u67e5\u662f\u5426\u5b89\u88c5\u65b0\u7248\u5ba2\u6237\u7aef"

    const/16 v2, 0x1b5b

    const-string v3, "-9999"

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onWeiPayFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_50a

    :cond_54a
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->A(Lcom/bsgamesdk/android/activity/PaymentActivity;)Z

    move-result v0

    if-nez v0, :cond_555

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_555
    move v0, v6

    goto/16 :goto_6e
.end method
