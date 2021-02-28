.class Lcom/alipay/sdk/util/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/util/e;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/util/e;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/util/f;->a:Lcom/alipay/sdk/util/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Lcom/alipay/sdk/util/e;

    invoke-static {v0}, Lcom/alipay/sdk/util/e;->a(Lcom/alipay/sdk/util/e;)Lcom/alipay/sdk/sys/a;

    move-result-object v0

    const-string v1, "biz"

    const-string v2, "srvCon"

    invoke-static {v0, v1, v2}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Lcom/alipay/sdk/util/e;

    invoke-static {v0}, Lcom/alipay/sdk/util/e;->b(Lcom/alipay/sdk/util/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_14
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Lcom/alipay/sdk/util/e;

    invoke-static {p2}, Lcom/alipay/android/app/IAlixPay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IAlixPay;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/sdk/util/e;->a(Lcom/alipay/sdk/util/e;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;

    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Lcom/alipay/sdk/util/e;

    invoke-static {v0}, Lcom/alipay/sdk/util/e;->b(Lcom/alipay/sdk/util/e;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Lcom/alipay/sdk/util/e;

    invoke-static {v0}, Lcom/alipay/sdk/util/e;->a(Lcom/alipay/sdk/util/e;)Lcom/alipay/sdk/sys/a;

    move-result-object v0

    const-string v1, "biz"

    const-string v2, "srvDis"

    invoke-static {v0, v1, v2}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Lcom/alipay/sdk/util/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/e;->a(Lcom/alipay/sdk/util/e;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;

    return-void
.end method
