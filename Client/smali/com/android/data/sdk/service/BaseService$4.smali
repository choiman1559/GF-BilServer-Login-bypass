.class Lcom/android/data/sdk/service/BaseService$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/data/sdk/service/BaseService;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/data/sdk/service/BaseService;


# direct methods
.method constructor <init>(Lcom/android/data/sdk/service/BaseService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/service/BaseService$4;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const-wide/16 v8, 0x3e8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$4;->a:Lcom/android/data/sdk/service/BaseService;

    iget-object v0, v0, Lcom/android/data/sdk/service/BaseService;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    :try_start_b
    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/data/sdk/api/c;->a(I)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_12} :catch_147

    :goto_12
    int-to-long v0, v0

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/data/sdk/api/c;->u()J

    move-result-wide v2

    div-long/2addr v2, v8

    cmp-long v0, v0, v2

    if-nez v0, :cond_13b

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$4;->a:Lcom/android/data/sdk/service/BaseService;

    iget-object v0, v0, Lcom/android/data/sdk/service/BaseService;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$4;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-static {v0}, Lcom/android/data/sdk/service/BaseService;->d(Lcom/android/data/sdk/service/BaseService;)Z

    move-result v0

    if-eqz v0, :cond_13b

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$4;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-static {v0}, Lcom/android/data/sdk/service/BaseService;->e(Lcom/android/data/sdk/service/BaseService;)Z

    move-result v0

    if-eqz v0, :cond_13b

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$4;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-static {v0, v6}, Lcom/android/data/sdk/service/BaseService;->a(Lcom/android/data/sdk/service/BaseService;I)I

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/api/c;->j()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/data/sdk/api/c;->u()J

    move-result-wide v2

    div-long/2addr v2, v8

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/data/sdk/api/c;->k()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/data/sdk/api/c;->w()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_13c

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/api/c;->w()J

    move-result-wide v0

    :goto_6f
    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/data/sdk/api/c;->v()Z

    move-result v4

    if-eqz v4, :cond_7d

    cmp-long v0, v2, v0

    if-ltz v0, :cond_128

    :cond_7d
    const-string v0, "heartBeat"

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$4;->a:Lcom/android/data/sdk/service/BaseService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/data/sdk/service/BaseService;->a(Lcom/android/data/sdk/service/BaseService;I)I

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/domain/model/DataUpModel;->newReport_time()V

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/domain/model/DataUpModel;->newRequest_uuid()V

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/domain/model/DataUpModel;->clientCountIncrease()V

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v0

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/data/sdk/api/c;->u()J

    move-result-wide v2

    div-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Lcom/android/data/sdk/domain/model/DataUpModel;->setInterval_time(J)V

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/data/sdk/api/c;->r()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/domain/model/DataUpModel;->setTotal_count(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/data/sdk/api/c;->p()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/domain/model/DataUpModel;->setTotal_success_time(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/data/sdk/api/c;->n()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/domain/model/DataUpModel;->setTotal_time(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$4;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-static {v0}, Lcom/android/data/sdk/service/BaseService;->g(Lcom/android/data/sdk/service/BaseService;)Lcom/android/data/sdk/api/a;

    move-result-object v0

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/data/sdk/service/BaseService$4;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-static {v2}, Lcom/android/data/sdk/service/BaseService;->f(Lcom/android/data/sdk/service/BaseService;)Lcom/android/data/sdk/PreDefined;

    move-result-object v2

    iget-object v3, p0, Lcom/android/data/sdk/service/BaseService$4;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/data/sdk/api/a;->a(Lcom/android/data/sdk/domain/model/DataUpModel;Lcom/android/data/sdk/PreDefined;Landroid/content/Context;)V

    :cond_128
    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$4;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-static {v0}, Lcom/android/data/sdk/service/BaseService;->h(Lcom/android/data/sdk/service/BaseService;)V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/data/sdk/api/c;->c(I)V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/data/sdk/api/c;->b(I)V

    :cond_13b
    return-void

    :cond_13c
    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/api/c;->u()J

    move-result-wide v0

    div-long/2addr v0, v8

    goto/16 :goto_6f

    :catch_147
    move-exception v1

    goto/16 :goto_12
.end method
