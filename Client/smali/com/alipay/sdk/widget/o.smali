.class Lcom/alipay/sdk/widget/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/widget/n;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/widget/n;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/widget/o;->a:Lcom/alipay/sdk/widget/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/alipay/sdk/widget/o;->a:Lcom/alipay/sdk/widget/n;

    iget-object v0, v0, Lcom/alipay/sdk/widget/n;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    iget-object v0, p0, Lcom/alipay/sdk/widget/o;->a:Lcom/alipay/sdk/widget/n;

    iget-object v0, v0, Lcom/alipay/sdk/widget/n;->b:Lcom/alipay/sdk/widget/j;

    invoke-static {v0}, Lcom/alipay/sdk/widget/j;->b(Lcom/alipay/sdk/widget/j;)Lcom/alipay/sdk/sys/a;

    move-result-object v0

    const-string v1, "net"

    const-string v2, "SSLDenied"

    const-string v3, "2"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/app/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/o;->a:Lcom/alipay/sdk/widget/n;

    iget-object v0, v0, Lcom/alipay/sdk/widget/n;->b:Lcom/alipay/sdk/widget/j;

    iget-object v0, v0, Lcom/alipay/sdk/widget/j;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
