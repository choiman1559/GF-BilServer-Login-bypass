.class final Lcom/alipay/sdk/app/statistic/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/alipay/sdk/app/statistic/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/sdk/app/statistic/b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/alipay/sdk/app/statistic/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/alipay/sdk/app/statistic/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/sdk/app/statistic/b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/sdk/app/statistic/a$b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    return-void

    :cond_13
    const/4 v0, 0x0

    :goto_14
    const/4 v1, 0x4

    if-ge v0, v1, :cond_12

    iget-object v1, p0, Lcom/alipay/sdk/app/statistic/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/sdk/app/statistic/a$a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/alipay/sdk/app/statistic/b;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/alipay/sdk/app/statistic/a$b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method
