.class Lcom/alipay/sdk/widget/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/widget/p;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/widget/p;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/widget/q;->a:Lcom/alipay/sdk/widget/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lcom/alipay/sdk/widget/q;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {v0}, Lcom/alipay/sdk/widget/p;->a(Lcom/alipay/sdk/widget/p;)Lcom/alipay/sdk/widget/p$c;

    move-result-object v0

    if-eqz v0, :cond_27

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {}, Lcom/alipay/sdk/widget/p;->b()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alipay/sdk/widget/r;

    invoke-direct {v2, p0, p1}, Lcom/alipay/sdk/widget/r;-><init>(Lcom/alipay/sdk/widget/q;Landroid/view/View;)V

    const-wide/16 v4, 0x100

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/alipay/sdk/widget/q;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {v1}, Lcom/alipay/sdk/widget/p;->b(Lcom/alipay/sdk/widget/p;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne p1, v1, :cond_28

    iget-object v1, p0, Lcom/alipay/sdk/widget/q;->a:Lcom/alipay/sdk/widget/p;

    invoke-interface {v0, v1}, Lcom/alipay/sdk/widget/p$c;->a(Lcom/alipay/sdk/widget/p;)V

    :cond_27
    :goto_27
    return-void

    :cond_28
    iget-object v1, p0, Lcom/alipay/sdk/widget/q;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {v1}, Lcom/alipay/sdk/widget/p;->c(Lcom/alipay/sdk/widget/p;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne p1, v1, :cond_27

    iget-object v1, p0, Lcom/alipay/sdk/widget/q;->a:Lcom/alipay/sdk/widget/p;

    invoke-interface {v0, v1}, Lcom/alipay/sdk/widget/p$c;->b(Lcom/alipay/sdk/widget/p;)V

    goto :goto_27
.end method
