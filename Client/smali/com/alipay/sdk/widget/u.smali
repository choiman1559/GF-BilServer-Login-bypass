.class public Lcom/alipay/sdk/widget/u;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/alipay/sdk/widget/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/sdk/widget/u;->a:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public a()Lcom/alipay/sdk/widget/p;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/widget/u;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/widget/p;

    return-object v0
.end method

.method public a(Lcom/alipay/sdk/widget/p;)V
    .registers 3

    iget-object v0, p0, Lcom/alipay/sdk/widget/u;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/widget/u;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public c()V
    .registers 3

    invoke-virtual {p0}, Lcom/alipay/sdk/widget/u;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/alipay/sdk/widget/u;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/widget/p;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/p;->a()V

    goto :goto_d

    :cond_1d
    iget-object v0, p0, Lcom/alipay/sdk/widget/u;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_6
.end method
