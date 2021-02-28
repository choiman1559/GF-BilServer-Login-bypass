.class final Lcom/bsgamesdk/android/api/i$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/i;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    move v7, v0

    :goto_3
    const/4 v0, 0x3

    if-ge v7, v0, :cond_76

    const-string v0, "collectApi_activate"

    invoke-static {}, Lcom/bsgamesdk/android/api/i;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "collectApi_activate"

    invoke-static {v0, v2}, Lcom/bsgamesdk/android/utils/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    :cond_18
    :goto_18
    return-void

    :cond_19
    sget-boolean v0, Lcom/bsgamesdk/android/api/i;->a:Z

    if-eqz v0, :cond_22

    const-wide/16 v2, 0x1388

    :try_start_1f
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_22} :catch_65

    :cond_22
    :goto_22
    const-string v2, "1"

    :try_start_24
    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    invoke-static {}, Lcom/bsgamesdk/android/api/i;->a()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/bsgamesdk/android/api/k;->e(Landroid/content/Context;)V

    invoke-static {}, Lcom/bsgamesdk/android/api/i;->a()Landroid/content/Context;

    move-result-object v0

    const-string v3, "collectApi_activate"

    const-string v4, "activate"

    invoke-static {v0, v3, v4}, Lcom/bsgamesdk/android/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0"
    :try_end_3a
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_24 .. :try_end_3a} :catch_6a
    .catch Lorg/apache/http/HttpException; {:try_start_24 .. :try_end_3a} :catch_70
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_3a} :catch_9c

    :goto_3a
    new-instance v2, Lcom/bsgamesdk/android/api/h;

    invoke-static {}, Lcom/bsgamesdk/android/api/i;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/bsgamesdk/android/api/h;->b(Ljava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v2, "result"

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const-string v2, ""

    const-string v3, "game_active"

    const-string v4, ""

    const-string v5, "1"

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sput-boolean v1, Lcom/bsgamesdk/android/api/i;->a:Z

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_3

    :catch_65
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_22

    :catch_6a
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    move-object v0, v2

    goto :goto_3a

    :catch_70
    move-exception v0

    :goto_71
    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    move-object v0, v2

    goto :goto_3a

    :cond_76
    const-string v0, "collectApi_activate"

    invoke-static {}, Lcom/bsgamesdk/android/api/i;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "collectApi_activate"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/bsgamesdk/android/api/i;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/bsgamesdk/android/api/a;

    invoke-static {}, Lcom/bsgamesdk/android/api/i;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/a;->start()V

    goto/16 :goto_18

    :catch_9c
    move-exception v0

    goto :goto_71
.end method
