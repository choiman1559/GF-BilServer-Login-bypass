.class Lcom/alipay/sdk/widget/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/widget/j;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/widget/j;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/widget/k;->a:Lcom/alipay/sdk/widget/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/widget/k;->a:Lcom/alipay/sdk/widget/j;

    iget-object v0, v0, Lcom/alipay/sdk/widget/j;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
