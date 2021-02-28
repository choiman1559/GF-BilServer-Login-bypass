.class public Lcom/alipay/sdk/app/b;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Z

.field private final c:Lcom/alipay/sdk/sys/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/sdk/sys/a;)V
    .registers 3

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/alipay/sdk/app/b;->c:Lcom/alipay/sdk/sys/a;

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/app/b;)Lcom/alipay/sdk/sys/a;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/b;->c:Lcom/alipay/sdk/sys/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alipay/sdk/app/b;->b:Z

    return v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/alipay/sdk/app/b;->c:Lcom/alipay/sdk/sys/a;

    const-string v1, "biz"

    const-string v2, "h5ldd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/alipay/sdk/util/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 10

    iget-object v0, p0, Lcom/alipay/sdk/app/b;->c:Lcom/alipay/sdk/sys/a;

    const-string v1, "biz"

    const-string v2, "h5ld"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/alipay/sdk/util/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/app/b;->b:Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 10

    iget-object v0, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/alipay/sdk/app/b;->c:Lcom/alipay/sdk/sys/a;

    const-string v2, "net"

    const-string v3, "SSLError"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/sdk/app/c;

    invoke-direct {v1, p0, v0, p2}, Lcom/alipay/sdk/app/c;-><init>(Lcom/alipay/sdk/app/b;Landroid/app/Activity;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/alipay/sdk/app/b;->c:Lcom/alipay/sdk/sys/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p2, v1}, Lcom/alipay/sdk/util/n;->a(Lcom/alipay/sdk/sys/a;Landroid/webkit/WebView;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method
