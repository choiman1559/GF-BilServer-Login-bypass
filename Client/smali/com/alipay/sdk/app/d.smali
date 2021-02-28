.class Lcom/alipay/sdk/app/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/c;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/c;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/app/d;->a:Lcom/alipay/sdk/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/alipay/sdk/app/d;->a:Lcom/alipay/sdk/app/c;

    iget-object v0, v0, Lcom/alipay/sdk/app/c;->b:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    iget-object v0, p0, Lcom/alipay/sdk/app/d;->a:Lcom/alipay/sdk/app/c;

    iget-object v0, v0, Lcom/alipay/sdk/app/c;->c:Lcom/alipay/sdk/app/b;

    invoke-static {v0}, Lcom/alipay/sdk/app/b;->a(Lcom/alipay/sdk/app/b;)Lcom/alipay/sdk/sys/a;

    move-result-object v0

    const-string v1, "net"

    const-string v2, "SSLDenied"

    const-string v3, "1"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/app/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/sdk/app/d;->a:Lcom/alipay/sdk/app/c;

    iget-object v0, v0, Lcom/alipay/sdk/app/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
