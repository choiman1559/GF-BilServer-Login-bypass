.class Lcom/alipay/sdk/util/h;
.super Lcom/alipay/android/app/IRemoteServiceCallback$Stub;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/util/e;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/util/e;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/util/h;->a:Lcom/alipay/sdk/util/e;

    invoke-direct {p0}, Lcom/alipay/android/app/IRemoteServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isHideLoadingScreen()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public payEnd(ZLjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-nez p4, :cond_f

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_f
    :try_start_f
    const-string v0, "CallingPid"

    invoke-virtual {p4, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_5f

    :goto_17
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1a
    iget-object v0, p0, Lcom/alipay/sdk/util/h;->a:Lcom/alipay/sdk/util/e;

    invoke-static {v0}, Lcom/alipay/sdk/util/e;->c(Lcom/alipay/sdk/util/e;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/alipay/sdk/util/h;->a:Lcom/alipay/sdk/util/e;

    invoke-static {v0}, Lcom/alipay/sdk/util/e;->c(Lcom/alipay/sdk/util/e;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/sdk/util/h;->a:Lcom/alipay/sdk/util/e;

    invoke-static {v0}, Lcom/alipay/sdk/util/e;->a(Lcom/alipay/sdk/util/e;)Lcom/alipay/sdk/sys/a;

    move-result-object v0

    const-string v1, "biz"

    const-string v4, "stAct2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v4, v2}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_55} :catch_8d

    :cond_55
    :goto_55
    iget-object v0, p0, Lcom/alipay/sdk/util/h;->a:Lcom/alipay/sdk/util/e;

    invoke-static {v0}, Lcom/alipay/sdk/util/e;->d(Lcom/alipay/sdk/util/e;)Lcom/alipay/sdk/util/e$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/sdk/util/e$a;->b()V

    return-void

    :catch_5f
    move-exception v0

    iget-object v2, p0, Lcom/alipay/sdk/util/h;->a:Lcom/alipay/sdk/util/e;

    invoke-static {v2}, Lcom/alipay/sdk/util/e;->a(Lcom/alipay/sdk/util/e;)Lcom/alipay/sdk/sys/a;

    move-result-object v2

    const-string v3, "biz"

    const-string v4, "ErrIntentEx"

    invoke-static {v2, v3, v4, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17

    :cond_6e
    :try_start_6e
    iget-object v0, p0, Lcom/alipay/sdk/util/h;->a:Lcom/alipay/sdk/util/e;

    invoke-static {v0}, Lcom/alipay/sdk/util/e;->a(Lcom/alipay/sdk/util/e;)Lcom/alipay/sdk/sys/a;

    move-result-object v0

    const-string v2, "biz"

    const-string v3, "ErrActNull"

    const-string v4, ""

    invoke-static {v0, v2, v3, v4}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/sdk/util/h;->a:Lcom/alipay/sdk/util/e;

    invoke-static {v0}, Lcom/alipay/sdk/util/e;->a(Lcom/alipay/sdk/util/e;)Lcom/alipay/sdk/sys/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/sys/a;->b()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_8c} :catch_8d

    goto :goto_55

    :catch_8d
    move-exception v0

    iget-object v1, p0, Lcom/alipay/sdk/util/h;->a:Lcom/alipay/sdk/util/e;

    invoke-static {v1}, Lcom/alipay/sdk/util/e;->a(Lcom/alipay/sdk/util/e;)Lcom/alipay/sdk/sys/a;

    move-result-object v1

    const-string v2, "biz"

    const-string v3, "ErrActNull"

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
