.class Lcom/android/data/sdk/service/BaseService$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/data/sdk/service/BaseService;->f()V
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

    iput-object p1, p0, Lcom/android/data/sdk/service/BaseService$3;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :try_start_0
    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/api/c;->t()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bilibili_time/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/data/sdk/domain/model/DataUpModel;->getApp_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/data/sdk/domain/model/DataUpModel;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/data/sdk/domain/model/DataUpModel;->getApp_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/data/sdk/domain/model/DataUpModel;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/data/sdk/domain/model/DataUpModel;->getApp_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/data/sdk/domain/model/DataUpModel;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v3

    iget-object v4, p0, Lcom/android/data/sdk/service/BaseService$3;->a:Lcom/android/data/sdk/service/BaseService;

    const/4 v5, 0x1

    invoke-static {v4, v0, v1, v2, v5}, Lcom/android/data/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/data/sdk/api/c;->b(J)V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v3

    iget-object v4, p0, Lcom/android/data/sdk/service/BaseService$3;->a:Lcom/android/data/sdk/service/BaseService;

    const/4 v5, 0x2

    invoke-static {v4, v0, v1, v2, v5}, Lcom/android/data/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/data/sdk/api/c;->c(J)V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v3

    iget-object v4, p0, Lcom/android/data/sdk/service/BaseService$3;->a:Lcom/android/data/sdk/service/BaseService;

    const/4 v5, 0x3

    invoke-static {v4, v0, v1, v2, v5}, Lcom/android/data/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/data/sdk/api/c;->d(J)V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v3

    iget-object v4, p0, Lcom/android/data/sdk/service/BaseService$3;->a:Lcom/android/data/sdk/service/BaseService;

    const/4 v5, 0x4

    invoke-static {v4, v0, v1, v2, v5}, Lcom/android/data/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/android/data/sdk/api/c;->e(J)V
    :try_end_c6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c6} :catch_c7

    :goto_c6
    return-void

    :catch_c7
    move-exception v0

    goto :goto_c6
.end method
