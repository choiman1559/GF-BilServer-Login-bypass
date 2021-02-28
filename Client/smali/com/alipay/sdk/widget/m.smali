.class Lcom/alipay/sdk/widget/m;
.super Lcom/alipay/sdk/widget/j$a;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/widget/p;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/sdk/widget/j;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/widget/j;Lcom/alipay/sdk/widget/p;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/alipay/sdk/widget/m;->c:Lcom/alipay/sdk/widget/j;

    iput-object p2, p0, Lcom/alipay/sdk/widget/m;->a:Lcom/alipay/sdk/widget/p;

    iput-object p3, p0, Lcom/alipay/sdk/widget/m;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/sdk/widget/j$a;-><init>(Lcom/alipay/sdk/widget/j;Lcom/alipay/sdk/widget/k;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/alipay/sdk/widget/m;->c:Lcom/alipay/sdk/widget/j;

    iget-object v1, p0, Lcom/alipay/sdk/widget/m;->a:Lcom/alipay/sdk/widget/p;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/widget/j;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/m;->c:Lcom/alipay/sdk/widget/j;

    invoke-static {v0}, Lcom/alipay/sdk/widget/j;->a(Lcom/alipay/sdk/widget/j;)Lcom/alipay/sdk/widget/p;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/widget/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/widget/p;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/m;->c:Lcom/alipay/sdk/widget/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/sdk/widget/j;->a(Lcom/alipay/sdk/widget/j;Z)Z

    return-void
.end method
