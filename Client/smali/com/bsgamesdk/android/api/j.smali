.class public Lcom/bsgamesdk/android/api/j;
.super Ljava/lang/Thread;


# instance fields
.field public a:Z

.field final b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bsgamesdk/android/api/j;->a:Z

    const-string v0, "collectApi_create_role"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/j;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/bsgamesdk/android/api/j;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/bsgamesdk/android/api/j;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/bsgamesdk/android/api/j;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/api/j;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const/4 v1, 0x1

    const/4 v8, 0x0

    move v7, v8

    move v0, v8

    :goto_4
    iget-boolean v2, p0, Lcom/bsgamesdk/android/api/j;->a:Z

    if-eqz v2, :cond_1c

    :try_start_8
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->J()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_14} :catch_1d

    :goto_14
    if-eqz v0, :cond_18

    iput-boolean v8, p0, Lcom/bsgamesdk/android/api/j;->a:Z

    :cond_18
    iget-boolean v2, p0, Lcom/bsgamesdk/android/api/j;->a:Z

    if-nez v2, :cond_22

    :cond_1c
    return-void

    :catch_1d
    move-exception v2

    invoke-static {v2}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_14

    :cond_22
    const-string v3, "1"

    :try_start_24
    sget-object v2, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v4, p0, Lcom/bsgamesdk/android/api/j;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/bsgamesdk/android/api/j;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/bsgamesdk/android/api/j;->e:Ljava/lang/String;

    invoke-interface {v2, v4, v5, v6}, Lcom/bsgamesdk/android/api/k;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bsgamesdk/android/api/j;->c:Landroid/content/Context;

    const-string v4, "collectApi_create_role"

    const-string v5, "create_role"

    invoke-static {v2, v4, v5}, Lcom/bsgamesdk/android/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0"
    :try_end_3a
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_24 .. :try_end_3a} :catch_8b
    .catch Lorg/apache/http/HttpException; {:try_start_24 .. :try_end_3a} :catch_92
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_3a} :catch_99

    move v9, v1

    :goto_3b
    new-instance v2, Lcom/bsgamesdk/android/api/h;

    iget-object v3, p0, Lcom/bsgamesdk/android/api/j;->c:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/bsgamesdk/android/api/j;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bsgamesdk/android/api/j;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/bsgamesdk/android/api/j;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0}, Lcom/bsgamesdk/android/api/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v2, "result"

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_name"

    iget-object v2, p0, Lcom/bsgamesdk/android/api/j;->d:Ljava/lang/String;

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_id"

    iget-object v2, p0, Lcom/bsgamesdk/android/api/j;->e:Ljava/lang/String;

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const-string v2, ""

    const-string v3, "create_role"

    const-string v4, ""

    const-string v5, "1"

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v0, v9

    goto/16 :goto_4

    :catch_8b
    move-exception v2

    invoke-static {v2}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    move v9, v0

    move-object v0, v3

    goto :goto_3b

    :catch_92
    move-exception v2

    :goto_93
    invoke-static {v2}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    move v9, v0

    move-object v0, v3

    goto :goto_3b

    :catch_99
    move-exception v2

    goto :goto_93
.end method
