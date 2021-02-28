.class Lcom/alipay/sdk/widget/t;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/widget/p;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/widget/p;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/widget/t;->a:Lcom/alipay/sdk/widget/p;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/alipay/sdk/widget/t;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {v0}, Lcom/alipay/sdk/widget/p;->f(Lcom/alipay/sdk/widget/p;)Lcom/alipay/sdk/widget/p$b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/widget/t;->a:Lcom/alipay/sdk/widget/p;

    invoke-interface {v0, v1, p2}, Lcom/alipay/sdk/widget/p$b;->c(Lcom/alipay/sdk/widget/p;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/alipay/sdk/widget/t;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {v0}, Lcom/alipay/sdk/widget/p;->f(Lcom/alipay/sdk/widget/p;)Lcom/alipay/sdk/widget/p$b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/widget/t;->a:Lcom/alipay/sdk/widget/p;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/alipay/sdk/widget/p$b;->a(Lcom/alipay/sdk/widget/p;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 6

    iget-object v0, p0, Lcom/alipay/sdk/widget/t;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {v0}, Lcom/alipay/sdk/widget/p;->f(Lcom/alipay/sdk/widget/p;)Lcom/alipay/sdk/widget/p$b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/widget/t;->a:Lcom/alipay/sdk/widget/p;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/sdk/widget/p$b;->a(Lcom/alipay/sdk/widget/p;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    :cond_11
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/alipay/sdk/widget/t;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {v0}, Lcom/alipay/sdk/widget/p;->f(Lcom/alipay/sdk/widget/p;)Lcom/alipay/sdk/widget/p$b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/widget/t;->a:Lcom/alipay/sdk/widget/p;

    invoke-interface {v0, v1, p2}, Lcom/alipay/sdk/widget/p$b;->b(Lcom/alipay/sdk/widget/p;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12
.end method
