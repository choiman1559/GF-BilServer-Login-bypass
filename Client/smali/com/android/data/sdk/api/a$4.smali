.class Lcom/android/data/sdk/api/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/data/sdk/api/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/data/sdk/api/a;->a(Lcom/android/data/sdk/domain/model/DataUpModel;Lcom/android/data/sdk/PreDefined;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/data/sdk/domain/model/DataUpModel;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/android/data/sdk/PreDefined;

.field final synthetic d:Lcom/android/data/sdk/api/a;


# direct methods
.method constructor <init>(Lcom/android/data/sdk/api/a;Lcom/android/data/sdk/domain/model/DataUpModel;Landroid/content/Context;Lcom/android/data/sdk/PreDefined;)V
    .registers 5

    iput-object p1, p0, Lcom/android/data/sdk/api/a$4;->d:Lcom/android/data/sdk/api/a;

    iput-object p2, p0, Lcom/android/data/sdk/api/a$4;->a:Lcom/android/data/sdk/domain/model/DataUpModel;

    iput-object p3, p0, Lcom/android/data/sdk/api/a$4;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/data/sdk/api/a$4;->c:Lcom/android/data/sdk/PreDefined;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 12

    :try_start_0
    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/api/c;->c(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/api/c;->d(Lorg/json/JSONObject;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bilibili_time/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/data/sdk/api/a$4;->a:Lcom/android/data/sdk/domain/model/DataUpModel;

    invoke-virtual {v1}, Lcom/android/data/sdk/domain/model/DataUpModel;->getApp_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/data/sdk/api/a$4;->a:Lcom/android/data/sdk/domain/model/DataUpModel;

    invoke-virtual {v1}, Lcom/android/data/sdk/domain/model/DataUpModel;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/data/sdk/api/a$4;->a:Lcom/android/data/sdk/domain/model/DataUpModel;

    invoke-virtual {v2}, Lcom/android/data/sdk/domain/model/DataUpModel;->getApp_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/data/sdk/api/a$4;->a:Lcom/android/data/sdk/domain/model/DataUpModel;

    invoke-virtual {v2}, Lcom/android/data/sdk/domain/model/DataUpModel;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/data/sdk/api/a$4;->a:Lcom/android/data/sdk/domain/model/DataUpModel;

    invoke-virtual {v3}, Lcom/android/data/sdk/domain/model/DataUpModel;->getApp_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/data/sdk/api/a$4;->a:Lcom/android/data/sdk/domain/model/DataUpModel;

    invoke-virtual {v3}, Lcom/android/data/sdk/domain/model/DataUpModel;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/data/sdk/api/a$4;->b:Landroid/content/Context;

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/data/sdk/api/c;->u()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/data/sdk/api/c;->u()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static/range {v0 .. v7}, Lcom/android/data/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_ae} :catch_bd

    :goto_ae
    iget-object v0, p0, Lcom/android/data/sdk/api/a$4;->d:Lcom/android/data/sdk/api/a;

    iget-object v1, p0, Lcom/android/data/sdk/api/a$4;->b:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/android/data/sdk/api/a;->a(Lcom/android/data/sdk/api/a;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/data/sdk/api/a$4;->d:Lcom/android/data/sdk/api/a;

    iget-object v1, p0, Lcom/android/data/sdk/api/a$4;->c:Lcom/android/data/sdk/PreDefined;

    invoke-static {v0, p1, v1}, Lcom/android/data/sdk/api/a;->a(Lcom/android/data/sdk/api/a;Ljava/lang/String;Lcom/android/data/sdk/PreDefined;)V

    return-void

    :catch_bd
    move-exception v0

    goto :goto_ae
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 10

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bilibili_time/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/data/sdk/api/a$4;->a:Lcom/android/data/sdk/domain/model/DataUpModel;

    invoke-virtual {v1}, Lcom/android/data/sdk/domain/model/DataUpModel;->getApp_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/data/sdk/api/a$4;->a:Lcom/android/data/sdk/domain/model/DataUpModel;

    invoke-virtual {v1}, Lcom/android/data/sdk/domain/model/DataUpModel;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/data/sdk/api/a$4;->a:Lcom/android/data/sdk/domain/model/DataUpModel;

    invoke-virtual {v2}, Lcom/android/data/sdk/domain/model/DataUpModel;->getApp_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/data/sdk/api/a$4;->a:Lcom/android/data/sdk/domain/model/DataUpModel;

    invoke-virtual {v2}, Lcom/android/data/sdk/domain/model/DataUpModel;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/data/sdk/api/a$4;->a:Lcom/android/data/sdk/domain/model/DataUpModel;

    invoke-virtual {v3}, Lcom/android/data/sdk/domain/model/DataUpModel;->getApp_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/data/sdk/api/a$4;->a:Lcom/android/data/sdk/domain/model/DataUpModel;

    invoke-virtual {v3}, Lcom/android/data/sdk/domain/model/DataUpModel;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/data/sdk/api/a$4;->b:Landroid/content/Context;

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/data/sdk/api/c;->u()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/data/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8d} :catch_8e

    :goto_8d
    return-void

    :catch_8e
    move-exception v0

    goto :goto_8d
.end method
