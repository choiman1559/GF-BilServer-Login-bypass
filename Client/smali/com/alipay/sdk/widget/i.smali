.class Lcom/alipay/sdk/widget/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/widget/h;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/widget/h;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/widget/i;->a:Lcom/alipay/sdk/widget/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/sdk/widget/i;->a:Lcom/alipay/sdk/widget/h;

    iget-object v0, v0, Lcom/alipay/sdk/widget/h;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    goto :goto_17
.end method
