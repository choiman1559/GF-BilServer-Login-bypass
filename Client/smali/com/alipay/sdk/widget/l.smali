.class Lcom/alipay/sdk/widget/l;
.super Lcom/alipay/sdk/widget/j$a;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/widget/p;

.field final synthetic b:Lcom/alipay/sdk/widget/j;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/widget/j;Lcom/alipay/sdk/widget/p;)V
    .registers 4

    iput-object p1, p0, Lcom/alipay/sdk/widget/l;->b:Lcom/alipay/sdk/widget/j;

    iput-object p2, p0, Lcom/alipay/sdk/widget/l;->a:Lcom/alipay/sdk/widget/p;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/sdk/widget/j$a;-><init>(Lcom/alipay/sdk/widget/j;Lcom/alipay/sdk/widget/k;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/alipay/sdk/widget/l;->a:Lcom/alipay/sdk/widget/p;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/p;->a()V

    iget-object v0, p0, Lcom/alipay/sdk/widget/l;->b:Lcom/alipay/sdk/widget/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/sdk/widget/j;->a(Lcom/alipay/sdk/widget/j;Z)Z

    return-void
.end method
