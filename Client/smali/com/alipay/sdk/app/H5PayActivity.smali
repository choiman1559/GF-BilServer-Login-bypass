.class public Lcom/alipay/sdk/app/H5PayActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/alipay/sdk/widget/g;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private b()V
    .registers 2

    const/4 v0, 0x1

    :try_start_1
    invoke-super {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_5

    :goto_4
    return-void

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_4
.end method


# virtual methods
.method public a()V
    .registers 3

    sget-object v1, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_b
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    :goto_6
    :try_start_6
    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_8

    throw v0

    :catch_b
    move-exception v0

    goto :goto_6
.end method

.method public finish()V
    .registers 1

    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->a()V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Lcom/alipay/sdk/widget/g;

    instance-of v0, v0, Lcom/alipay/sdk/widget/h;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Lcom/alipay/sdk/widget/g;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/g;->b()Z

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Lcom/alipay/sdk/widget/g;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/g;->b()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_17
    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/app/j;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    goto :goto_b
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-direct {p0}, Lcom/alipay/sdk/app/H5PayActivity;->b()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_6
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/sys/a$a;->a(Landroid/content/Intent;)Lcom/alipay/sdk/sys/a;

    move-result-object v1

    if-nez v1, :cond_19

    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    goto :goto_13

    :cond_19
    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/data/a;->b()Z

    move-result v0

    if-nez v0, :cond_49

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/sdk/app/H5PayActivity;->setRequestedOrientation(I)V

    :goto_27
    :try_start_27
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "url"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/sdk/util/n;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_43} :catch_44

    goto :goto_13

    :catch_44
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    goto :goto_13

    :cond_49
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alipay/sdk/app/H5PayActivity;->setRequestedOrientation(I)V

    goto :goto_27

    :cond_4e
    :try_start_4e
    const-string v2, "cookie"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/sdk/app/H5PayActivity;->d:Ljava/lang/String;

    const-string v2, "method"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/sdk/app/H5PayActivity;->c:Ljava/lang/String;

    const-string v2, "title"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/sdk/app/H5PayActivity;->e:Ljava/lang/String;

    const-string v2, "version"

    const-string v3, "v1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/sdk/app/H5PayActivity;->g:Ljava/lang/String;

    const-string v2, "backisexit"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->f:Z
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_7c} :catch_44

    :try_start_7c
    const-string v0, "v2"

    iget-object v2, p0, Lcom/alipay/sdk/app/H5PayActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    new-instance v0, Lcom/alipay/sdk/widget/j;

    invoke-direct {v0, p0, v1}, Lcom/alipay/sdk/widget/j;-><init>(Landroid/app/Activity;Lcom/alipay/sdk/sys/a;)V

    invoke-virtual {p0, v0}, Lcom/alipay/sdk/app/H5PayActivity;->setContentView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/alipay/sdk/app/H5PayActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/sdk/app/H5PayActivity;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/alipay/sdk/app/H5PayActivity;->f:Z

    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/sdk/widget/j;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/sdk/widget/j;->a(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Lcom/alipay/sdk/widget/g;
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_9e} :catch_a0

    goto/16 :goto_13

    :catch_a0
    move-exception v0

    const-string v2, "biz"

    const-string v3, "GetInstalledAppEx"

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    goto/16 :goto_13

    :cond_ad
    :try_start_ad
    new-instance v0, Lcom/alipay/sdk/widget/h;

    invoke-direct {v0, p0, v1}, Lcom/alipay/sdk/widget/h;-><init>(Landroid/app/Activity;Lcom/alipay/sdk/sys/a;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Lcom/alipay/sdk/widget/g;

    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Lcom/alipay/sdk/widget/g;

    invoke-virtual {p0, v0}, Lcom/alipay/sdk/app/H5PayActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Lcom/alipay/sdk/widget/g;

    iget-object v2, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/sdk/app/H5PayActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/sdk/widget/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Lcom/alipay/sdk/widget/g;

    iget-object v2, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/sdk/widget/g;->a(Ljava/lang/String;)V
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_c9} :catch_a0

    goto/16 :goto_13
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Lcom/alipay/sdk/widget/g;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Lcom/alipay/sdk/widget/g;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/g;->a()V

    :cond_c
    return-void
.end method

.method public setRequestedOrientation(I)V
    .registers 6

    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    :try_start_5
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/sys/a$a;->a(Landroid/content/Intent;)Lcom/alipay/sdk/sys/a;

    move-result-object v1

    const-string v2, "biz"

    const-string v3, "H5PayDataAnalysisError"

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_3

    :catch_15
    move-exception v0

    goto :goto_3
.end method
