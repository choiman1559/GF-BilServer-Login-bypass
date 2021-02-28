.class Lcom/alipay/sdk/widget/s;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/widget/p;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/widget/p;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/p;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 12

    iget-object v0, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {v0}, Lcom/alipay/sdk/widget/p;->e(Lcom/alipay/sdk/widget/p;)Lcom/alipay/sdk/widget/p$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/p;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alipay/sdk/widget/p$a;->a(Lcom/alipay/sdk/widget/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5

    const/4 v1, 0x4

    const/16 v0, 0x64

    if-ne p2, v0, :cond_f

    iget-object v0, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {v0}, Lcom/alipay/sdk/widget/p;->d(Lcom/alipay/sdk/widget/p;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {v0}, Lcom/alipay/sdk/widget/p;->d(Lcom/alipay/sdk/widget/p;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v1, v0, :cond_25

    iget-object v0, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {v0}, Lcom/alipay/sdk/widget/p;->d(Lcom/alipay/sdk/widget/p;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_25
    iget-object v0, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {v0}, Lcom/alipay/sdk/widget/p;->d(Lcom/alipay/sdk/widget/p;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_e
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {v0}, Lcom/alipay/sdk/widget/p;->e(Lcom/alipay/sdk/widget/p;)Lcom/alipay/sdk/widget/p$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/p;

    invoke-interface {v0, v1, p2}, Lcom/alipay/sdk/widget/p$a;->a(Lcom/alipay/sdk/widget/p;Ljava/lang/String;)V

    return-void
.end method
