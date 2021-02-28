.class public Lcom/android/data/sdk/service/BaseService$a;
.super Landroid/os/Binder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/data/sdk/service/BaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/data/sdk/service/BaseService;


# direct methods
.method public constructor <init>(Lcom/android/data/sdk/service/BaseService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/service/BaseService$a;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$a;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-static {v0, v1}, Lcom/android/data/sdk/service/BaseService;->a(Lcom/android/data/sdk/service/BaseService;Z)Z

    :try_start_6
    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$a;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-static {v0}, Lcom/android/data/sdk/service/BaseService;->i(Lcom/android/data/sdk/service/BaseService;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$a;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-static {v0}, Lcom/android/data/sdk/service/BaseService;->i(Lcom/android/data/sdk/service/BaseService;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$a;->a:Lcom/android/data/sdk/service/BaseService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/data/sdk/service/BaseService;->a(Lcom/android/data/sdk/service/BaseService;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1e} :catch_1f

    :cond_1e
    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    goto :goto_1e
.end method

.method public a(Lcom/android/data/sdk/domain/model/DataUpModel;Lcom/android/data/sdk/PreDefined;)V
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$a;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-static {v0, p2}, Lcom/android/data/sdk/service/BaseService;->a(Lcom/android/data/sdk/service/BaseService;Lcom/android/data/sdk/PreDefined;)Lcom/android/data/sdk/PreDefined;

    invoke-static {p1}, Lcom/android/data/sdk/service/BaseService;->a(Lcom/android/data/sdk/domain/model/DataUpModel;)Lcom/android/data/sdk/domain/model/DataUpModel;

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$a;->a:Lcom/android/data/sdk/service/BaseService;

    new-instance v1, Lcom/android/data/sdk/api/a;

    invoke-direct {v1, p2}, Lcom/android/data/sdk/api/a;-><init>(Lcom/android/data/sdk/PreDefined;)V

    invoke-static {v0, v1}, Lcom/android/data/sdk/service/BaseService;->a(Lcom/android/data/sdk/service/BaseService;Lcom/android/data/sdk/api/a;)Lcom/android/data/sdk/api/a;

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$a;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-static {v0}, Lcom/android/data/sdk/service/BaseService;->j(Lcom/android/data/sdk/service/BaseService;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/data/sdk/service/BaseService;->a(J)J

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$a;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-static {v0}, Lcom/android/data/sdk/service/BaseService;->k(Lcom/android/data/sdk/service/BaseService;)Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/domain/model/DataUpModel;->newReport_time()V

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/domain/model/DataUpModel;->newRequest_uuid()V

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v0

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/data/sdk/domain/model/DataUpModel;->setInterval_time(J)V

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$a;->a:Lcom/android/data/sdk/service/BaseService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/data/sdk/service/BaseService;->a(Lcom/android/data/sdk/service/BaseService;Z)Z

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$a;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/data/sdk/service/BaseService;->a(Lcom/android/data/sdk/service/BaseService;Lcom/android/data/sdk/domain/model/DataUpModel;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_54} :catch_5a

    :cond_54
    :goto_54
    const-string v0, "transData"

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void

    :catch_5a
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_54
.end method

.method public b()Lcom/android/data/sdk/domain/model/DataUpModel;
    .registers 2

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .registers 3

    const-string v0, "start"

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$a;->a:Lcom/android/data/sdk/service/BaseService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/data/sdk/service/BaseService;->b(Lcom/android/data/sdk/service/BaseService;Z)Z

    return-void
.end method

.method public d()V
    .registers 3

    const-string v0, "stop"

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$a;->a:Lcom/android/data/sdk/service/BaseService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/data/sdk/service/BaseService;->b(Lcom/android/data/sdk/service/BaseService;Z)Z

    return-void
.end method
