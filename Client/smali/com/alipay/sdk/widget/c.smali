.class Lcom/alipay/sdk/widget/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/widget/a;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/widget/a;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/widget/c;->a:Lcom/alipay/sdk/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/alipay/sdk/widget/c;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v0}, Lcom/alipay/sdk/widget/a;->c(Lcom/alipay/sdk/widget/a;)Lcom/alipay/sdk/widget/a$a;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/alipay/sdk/widget/c;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v0}, Lcom/alipay/sdk/widget/a;->c(Lcom/alipay/sdk/widget/a;)Lcom/alipay/sdk/widget/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a$a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_27

    :try_start_14
    iget-object v0, p0, Lcom/alipay/sdk/widget/c;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v0}, Lcom/alipay/sdk/widget/a;->e(Lcom/alipay/sdk/widget/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/c;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v0}, Lcom/alipay/sdk/widget/a;->c(Lcom/alipay/sdk/widget/a;)Lcom/alipay/sdk/widget/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a$a;->dismiss()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_27} :catch_28

    :cond_27
    :goto_27
    return-void

    :catch_28
    move-exception v0

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_27
.end method
