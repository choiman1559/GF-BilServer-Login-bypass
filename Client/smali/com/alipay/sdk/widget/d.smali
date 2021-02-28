.class Lcom/alipay/sdk/widget/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/widget/a;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/widget/a;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/alipay/sdk/widget/d;->a:Lcom/alipay/sdk/widget/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Lcom/alipay/sdk/widget/d;->a:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    return-void
.end method
