.class Lcom/alipay/sdk/data/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/sys/a;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/alipay/sdk/data/a;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/data/a;Lcom/alipay/sdk/sys/a;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/alipay/sdk/data/b;->c:Lcom/alipay/sdk/data/a;

    iput-object p2, p0, Lcom/alipay/sdk/data/b;->a:Lcom/alipay/sdk/sys/a;

    iput-object p3, p0, Lcom/alipay/sdk/data/b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    new-instance v0, Lcom/alipay/sdk/packet/impl/b;

    invoke-direct {v0}, Lcom/alipay/sdk/packet/impl/b;-><init>()V

    iget-object v1, p0, Lcom/alipay/sdk/data/b;->a:Lcom/alipay/sdk/sys/a;

    iget-object v2, p0, Lcom/alipay/sdk/data/b;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/packet/impl/b;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)Lcom/alipay/sdk/packet/b;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/alipay/sdk/data/b;->c:Lcom/alipay/sdk/data/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/packet/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/sdk/data/a;->a(Lcom/alipay/sdk/data/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/sdk/data/b;->c:Lcom/alipay/sdk/data/a;

    invoke-static {}, Lcom/alipay/sdk/sys/a;->a()Lcom/alipay/sdk/sys/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/data/a;->a(Lcom/alipay/sdk/data/a;Lcom/alipay/sdk/sys/a;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_21} :catch_22

    :cond_21
    :goto_21
    return-void

    :catch_22
    move-exception v0

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_21
.end method
