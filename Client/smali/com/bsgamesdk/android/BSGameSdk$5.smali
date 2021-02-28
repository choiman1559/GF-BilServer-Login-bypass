.class Lcom/bsgamesdk/android/BSGameSdk$5;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/BSGameSdk;->createRole(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bsgamesdk/android/BSGameSdk;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/BSGameSdk;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->c:Lcom/bsgamesdk/android/BSGameSdk;

    iput-object p2, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v7, v0

    move v13, v1

    move v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v13

    :goto_d
    const/4 v0, 0x3

    if-ge v7, v0, :cond_15e

    if-eqz v5, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->c:Lcom/bsgamesdk/android/BSGameSdk;

    iget-boolean v0, v0, Lcom/bsgamesdk/android/BSGameSdk;->a:Z

    if-eqz v0, :cond_1e

    const-wide/16 v8, 0x1388

    :try_start_1b
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_cf

    :cond_1e
    :goto_1e
    const-string v6, "1"

    :try_start_20
    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v8, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->c:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v8}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsTouristLogined(Landroid/content/Context;)Z

    move-result v2

    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v8, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->c:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v8}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsLogined(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d5

    new-instance v0, Lcom/bsgamesdk/android/model/m;

    iget-object v8, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->c:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v8}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v4

    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v8, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->c:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v8}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->a:Ljava/lang/String;

    iget-object v10, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->b:Ljava/lang/String;

    invoke-interface {v0, v8, v9, v10}, Lcom/bsgamesdk/android/api/k;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_58
    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->c:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v0}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v0

    const-string v8, "collectApi_create_role"

    const-string v9, "create_role"

    invoke-static {v0, v8, v9}, Lcom/bsgamesdk/android/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0"
    :try_end_67
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_20 .. :try_end_67} :catch_f7
    .catch Lorg/apache/http/HttpException; {:try_start_20 .. :try_end_67} :catch_1b7
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_67} :catch_1ba

    const/4 v8, 0x1

    move v9, v1

    move v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v1, v0

    :goto_6d
    if-eqz v9, :cond_106

    new-instance v2, Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->c:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v0}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v12, :cond_103

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v12, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8e
    invoke-direct {v2, v3, v0}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v1}, Lcom/bsgamesdk/android/api/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "result"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_name"

    iget-object v1, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->a:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_id"

    iget-object v1, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->b:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    const-string v3, "create_role"

    const-string v4, ""

    const-string v5, "1"

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_c0
    :goto_c0
    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->c:Lcom/bsgamesdk/android/BSGameSdk;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bsgamesdk/android/BSGameSdk;->a:Z

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v5, v8

    move v1, v9

    move v2, v10

    move-object v3, v11

    move-object v4, v12

    goto/16 :goto_d

    :catch_cf
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    :cond_d5
    if-eqz v2, :cond_12

    :try_start_d7
    new-instance v0, Lcom/bsgamesdk/android/model/k;

    iget-object v8, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->c:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v8}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/bsgamesdk/android/model/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v3

    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v8, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->c:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v8}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->a:Ljava/lang/String;

    iget-object v10, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->b:Ljava/lang/String;

    invoke-interface {v0, v8, v9, v10}, Lcom/bsgamesdk/android/api/k;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f5
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_d7 .. :try_end_f5} :catch_f7
    .catch Lorg/apache/http/HttpException; {:try_start_d7 .. :try_end_f5} :catch_1b7
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_f5} :catch_1ba

    goto/16 :goto_58

    :catch_f7
    move-exception v0

    :goto_f8
    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    move v8, v5

    move v9, v1

    move v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v1, v6

    goto/16 :goto_6d

    :cond_103
    const-string v0, ""

    goto :goto_8e

    :cond_106
    if-eqz v10, :cond_c0

    new-instance v2, Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->c:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v0}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v11, :cond_15b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v11, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_127
    invoke-direct {v2, v3, v0}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v1}, Lcom/bsgamesdk/android/api/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "result"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_name"

    iget-object v1, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->a:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_id"

    iget-object v1, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->b:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    const-string v3, "create_role"

    const-string v4, ""

    const-string v5, "1"

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_c0

    :cond_15b
    const-string v0, ""

    goto :goto_127

    :cond_15e
    if-nez v5, :cond_12

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->c:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v0}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v0, ""

    if-eqz v1, :cond_19a

    if-eqz v4, :cond_197

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v4, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_183
    :goto_183
    new-instance v1, Lcom/bsgamesdk/android/api/j;

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->c:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/bsgamesdk/android/BSGameSdk$5;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/bsgamesdk/android/api/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/j;->start()V

    goto/16 :goto_12

    :cond_197
    const-string v0, ""

    goto :goto_183

    :cond_19a
    if-eqz v2, :cond_183

    if-eqz v3, :cond_1b4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v3, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_183

    :cond_1b4
    const-string v0, ""

    goto :goto_183

    :catch_1b7
    move-exception v0

    goto/16 :goto_f8

    :catch_1ba
    move-exception v0

    goto/16 :goto_f8
.end method
