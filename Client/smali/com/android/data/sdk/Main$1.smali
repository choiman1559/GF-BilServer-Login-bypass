.class final Lcom/android/data/sdk/Main$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/data/sdk/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const-string v0, "onServiceConnected"

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->e(Ljava/lang/String;)V

    check-cast p2, Lcom/android/data/sdk/service/BaseService$a;

    invoke-static {p2}, Lcom/android/data/sdk/Main;->a(Lcom/android/data/sdk/service/BaseService$a;)Lcom/android/data/sdk/service/BaseService$a;

    :try_start_a
    invoke-static {}, Lcom/android/data/sdk/Main;->c()Lcom/android/data/sdk/service/BaseService$a;

    move-result-object v0

    invoke-static {}, Lcom/android/data/sdk/Main;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/data/sdk/domain/model/DataUpModel;->clone()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v1

    invoke-static {}, Lcom/android/data/sdk/Main;->b()Lcom/android/data/sdk/PreDefined;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/data/sdk/service/BaseService$a;->a(Lcom/android/data/sdk/domain/model/DataUpModel;Lcom/android/data/sdk/PreDefined;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_1e

    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_1d
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/data/sdk/Main;->a(Lcom/android/data/sdk/service/BaseService$a;)Lcom/android/data/sdk/service/BaseService$a;

    const-string v0, "onServiceDisconnected"

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method
