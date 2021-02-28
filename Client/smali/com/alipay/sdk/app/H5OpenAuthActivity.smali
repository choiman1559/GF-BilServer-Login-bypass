.class public Lcom/alipay/sdk/app/H5OpenAuthActivity;
.super Lcom/alipay/sdk/app/H5PayActivity;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/alipay/sdk/app/H5PayActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/app/H5OpenAuthActivity;->a:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method protected onDestroy()V
    .registers 4

    iget-boolean v0, p0, Lcom/alipay/sdk/app/H5OpenAuthActivity;->a:Z

    if-eqz v0, :cond_15

    :try_start_4
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5OpenAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/sys/a$a;->a(Landroid/content/Intent;)Lcom/alipay/sdk/sys/a;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v1, ""

    iget-object v2, v0, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/alipay/sdk/app/statistic/a;->b(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_15} :catch_19

    :cond_15
    :goto_15
    invoke-super {p0}, Lcom/alipay/sdk/app/H5PayActivity;->onDestroy()V

    return-void

    :catch_19
    move-exception v0

    goto :goto_15
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 7

    :try_start_0
    invoke-static {p1}, Lcom/alipay/sdk/sys/a$a;->a(Landroid/content/Intent;)Lcom/alipay/sdk/sys/a;

    move-result-object v1

    if-nez v1, :cond_f

    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5OpenAuthActivity;->finish()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5OpenAuthActivity;->finish()V

    goto :goto_9

    :cond_f
    :try_start_f
    invoke-super {p0, p1}, Lcom/alipay/sdk/app/H5PayActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_12} :catch_2a

    if-eqz p1, :cond_49

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    :goto_18
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alipays://platformapi/startapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5OpenAuthActivity;->finish()V

    goto :goto_9

    :catch_2a
    move-exception v2

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3b
    const-string v3, "biz"

    const-string v4, "StartActivityEx"

    invoke-static {v1, v3, v4, v2, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/app/H5OpenAuthActivity;->a:Z

    throw v2

    :cond_46
    const-string v0, "null"

    goto :goto_3b

    :cond_49
    const/4 v0, 0x0

    goto :goto_18
.end method
