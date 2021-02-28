.class Lcom/android/data/sdk/service/BaseService$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/data/sdk/service/BaseService;->e()V
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

    iput-object p1, p0, Lcom/android/data/sdk/service/BaseService$2;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bilibili_data/"

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

    const-string v2, "data_"

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

    const-string v3, "data_"

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

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/data/sdk/api/c;->f()J

    move-result-wide v4

    const-string v3, "yyyyMMdd"

    invoke-static {v4, v5, v3}, Lcom/android/data/sdk/utils/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "systemTimestamp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/data/sdk/api/c;->f()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "appId"

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/data/sdk/domain/model/DataUpModel;->getApp_id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "uid"

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/data/sdk/domain/model/DataUpModel;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "buvid"

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/data/sdk/domain/model/DataUpModel;->getCur_buvid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "timeInterval"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/data/sdk/domain/model/DataUpModel;->getInterval_time()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "sdkVer"

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/data/sdk/domain/model/DataUpModel;->getSdk_ver()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "clientRequestId"

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/data/sdk/api/c;->g()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "client_request_udid"

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/data/sdk/api/c;->h()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "isUpload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/data/sdk/service/BaseService$2;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-static {v6}, Lcom/android/data/sdk/service/BaseService;->c(Lcom/android/data/sdk/service/BaseService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/data/sdk/service/BaseService$2;->a:Lcom/android/data/sdk/service/BaseService;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/data/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/data/sdk/domain/model/DataUpModel;->getClient_request_uuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/api/c;->b(Ljava/lang/String;)V
    :try_end_164
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_164} :catch_165

    :goto_164
    return-void

    :catch_165
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    goto :goto_164
.end method
