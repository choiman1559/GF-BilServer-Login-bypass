.class Lcom/android/data/sdk/service/BaseService$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/data/sdk/service/BaseService;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/android/data/sdk/service/BaseService;


# direct methods
.method constructor <init>(Lcom/android/data/sdk/service/BaseService;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/data/sdk/service/BaseService$5;->b:Lcom/android/data/sdk/service/BaseService;

    iput-object p2, p0, Lcom/android/data/sdk/service/BaseService$5;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bilibili_data/"

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

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/data/sdk/domain/model/DataUpModel;->getApp_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/data/sdk/domain/model/DataUpModel;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/android/data/sdk/service/BaseService$5;->a:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/data/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_69

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6a

    :cond_69
    :goto_69
    return-void

    :cond_6a
    move v1, v0

    :goto_6b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_69

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$5;->a:Landroid/content/Context;

    invoke-static {v0, v5, v3}, Lcom/android/data/sdk/utils/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-eqz v0, :cond_69

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-eqz v6, :cond_69

    invoke-virtual {v0}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "{"

    const-string v7, "{\""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "}"

    const-string v7, "\"}"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "="

    const-string v7, "\":\""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v6, ", "

    const-string v7, "\",\""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "}\",\"{"

    const-string v7, "},{"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v6, "\n"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "uid"

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/data/sdk/domain/model/DataUpModel;->getUid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "game_id"

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/data/sdk/domain/model/DataUpModel;->getApp_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "ctime"

    const-string v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "appkey"

    invoke-static {}, Lcom/android/data/sdk/service/BaseService;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/data/sdk/domain/model/DataUpModel;->getAppkey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "content"

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService$5;->b:Lcom/android/data/sdk/service/BaseService;

    invoke-static {v0}, Lcom/android/data/sdk/service/BaseService;->g(Lcom/android/data/sdk/service/BaseService;)Lcom/android/data/sdk/api/a;

    move-result-object v0

    iget-object v7, p0, Lcom/android/data/sdk/service/BaseService$5;->a:Landroid/content/Context;

    new-instance v8, Lcom/android/data/sdk/service/BaseService$5$1;

    invoke-direct {v8, p0, v2, v3, v5}, Lcom/android/data/sdk/service/BaseService$5$1;-><init>(Lcom/android/data/sdk/service/BaseService$5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v6, v8}, Lcom/android/data/sdk/api/a;->a(Landroid/content/Context;Ljava/util/HashMap;Lcom/android/data/sdk/api/b;)V
    :try_end_126
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_126} :catch_12b

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_6b

    :catch_12b
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    goto/16 :goto_69
.end method
