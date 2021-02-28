.class public Lcom/alipay/sdk/tid/TidHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/alipay/sdk/tid/b;)Lcom/alipay/sdk/tid/Tid;
    .registers 8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/alipay/sdk/tid/b;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/alipay/sdk/tid/Tid;

    invoke-virtual {p1}, Lcom/alipay/sdk/tid/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/sdk/tid/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/sdk/tid/b;->i()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/alipay/sdk/tid/Tid;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_9
.end method

.method private static a(Landroid/content/Context;)V
    .registers 2

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/sdk/sys/b;->a(Landroid/content/Context;)V

    goto :goto_2
.end method

.method private static b(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/alipay/sdk/packet/impl/c;

    invoke-direct {v1}, Lcom/alipay/sdk/packet/impl/c;-><init>()V

    invoke-static {}, Lcom/alipay/sdk/sys/a;->a()Lcom/alipay/sdk/sys/a;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/alipay/sdk/packet/impl/c;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)Lcom/alipay/sdk/packet/b;

    move-result-object v1

    if-eqz v1, :cond_3c

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/alipay/sdk/packet/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/alipay/sdk/tid/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/b;

    move-result-object v1

    const-string v3, "tid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "client_key"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_38

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_38

    invoke-virtual {v1, v3, v2}, Lcom/alipay/sdk/tid/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    invoke-static {p0, v1}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;Lcom/alipay/sdk/tid/b;)Lcom/alipay/sdk/tid/Tid;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3b} :catch_3d

    move-result-object v0

    :cond_3c
    :goto_3c
    return-object v0

    :catch_3d
    move-exception v1

    goto :goto_3c
.end method

.method public static clearTID(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/alipay/sdk/tid/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/tid/b;->g()V

    return-void
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/util/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/util/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getTIDValue(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-class v1, Lcom/alipay/sdk/tid/TidHelper;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->loadOrCreateTID(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/tid/Tid;->isEmpty(Lcom/alipay/sdk/tid/Tid;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v0, ""
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_16

    :goto_f
    monitor-exit v1

    return-object v0

    :cond_11
    :try_start_11
    invoke-virtual {v0}, Lcom/alipay/sdk/tid/Tid;->getTid()Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_16

    move-result-object v0

    goto :goto_f

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getVirtualImei(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/sdk/data/c;->b()Lcom/alipay/sdk/data/c;

    invoke-static {}, Lcom/alipay/sdk/data/c;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVirtualImsi(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/sdk/data/c;->b()Lcom/alipay/sdk/data/c;

    invoke-static {}, Lcom/alipay/sdk/data/c;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadLocalTid(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;
    .registers 7

    invoke-static {p0}, Lcom/alipay/sdk/tid/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/tid/b;->h()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/alipay/sdk/tid/Tid;

    invoke-virtual {v1}, Lcom/alipay/sdk/tid/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/sdk/tid/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alipay/sdk/tid/b;->i()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/alipay/sdk/tid/Tid;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_b
.end method

.method public static declared-synchronized loadOrCreateTID(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;
    .registers 5

    const-class v1, Lcom/alipay/sdk/tid/TidHelper;

    monitor-enter v1

    :try_start_3
    const-string v0, "mspl"

    const-string v2, "load_create_tid"

    invoke-static {v0, v2}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->loadTID(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/tid/Tid;->isEmpty(Lcom/alipay/sdk/tid/Tid;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2b

    move-result-object v3

    if-ne v2, v3, :cond_24

    const/4 v0, 0x0

    :cond_22
    :goto_22
    monitor-exit v1

    return-object v0

    :cond_24
    :try_start_24
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->b(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_29
    .catchall {:try_start_24 .. :try_end_27} :catchall_2b

    move-result-object v0

    goto :goto_22

    :catch_29
    move-exception v2

    goto :goto_22

    :catchall_2b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static loadTID(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;
    .registers 4

    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/alipay/sdk/tid/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/b;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;Lcom/alipay/sdk/tid/b;)Lcom/alipay/sdk/tid/Tid;

    move-result-object v0

    if-nez v0, :cond_14

    const-string v1, "mspl"

    const-string v2, "load_tid null"

    invoke-static {v1, v2}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return-object v0
.end method

.method public static resetTID(Landroid/content/Context;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "mspl"

    const-string v1, "reset_tid"

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_19

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Must be called on worker thread"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->clearTID(Landroid/content/Context;)V

    const/4 v0, 0x0

    :try_start_20
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->b(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_23} :catch_2e

    move-result-object v0

    :goto_24
    invoke-static {v0}, Lcom/alipay/sdk/tid/Tid;->isEmpty(Lcom/alipay/sdk/tid/Tid;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x1

    goto :goto_2b

    :catch_2e
    move-exception v1

    goto :goto_24
.end method
