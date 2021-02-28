.class final Lcom/alipay/sdk/app/statistic/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/app/statistic/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)V
    .registers 4

    const-class v0, Lcom/alipay/sdk/app/statistic/a$b;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_5
    invoke-static {p0, v1, v2}, Lcom/alipay/sdk/app/statistic/a$b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized a(Landroid/content/Context;Lcom/alipay/sdk/app/statistic/c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-class v1, Lcom/alipay/sdk/app/statistic/a$b;

    monitor-enter v1

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    if-nez p2, :cond_b

    :cond_9
    :goto_9
    monitor-exit v1

    return-void

    :cond_b
    :try_start_b
    invoke-virtual {p1, p2}, Lcom/alipay/sdk/app/statistic/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/alipay/sdk/app/statistic/a$b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    goto :goto_9

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-class v1, Lcom/alipay/sdk/app/statistic/a$b;

    monitor-enter v1

    if-nez p0, :cond_7

    :goto_5
    monitor-exit v1

    return-void

    :cond_7
    :try_start_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p0, p1, p2}, Lcom/alipay/sdk/app/statistic/a$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_10
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/sdk/app/statistic/b;

    invoke-direct {v2, p1, p0}, Lcom/alipay/sdk/app/statistic/b;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1e

    goto :goto_5

    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/alipay/sdk/app/statistic/a$b;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x0

    const-class v2, Lcom/alipay/sdk/app/statistic/a$b;

    monitor-enter v2

    :try_start_4
    const-string v0, "mspl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stat sub "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/data/a;->g()Z

    move-result v0

    if-eqz v0, :cond_38

    new-instance v0, Lcom/alipay/sdk/packet/impl/d;

    invoke-direct {v0}, Lcom/alipay/sdk/packet/impl/d;-><init>()V
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_3e

    :goto_2b
    const/4 v3, 0x0

    :try_start_2c
    invoke-virtual {v0, v3, p0, p1}, Lcom/alipay/sdk/packet/e;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-static {p0, p1}, Lcom/alipay/sdk/app/statistic/a$a;->a(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_35} :catch_43
    .catchall {:try_start_2c .. :try_end_35} :catchall_3e

    const/4 v0, 0x1

    :goto_36
    monitor-exit v2

    return v0

    :cond_38
    :try_start_38
    new-instance v0, Lcom/alipay/sdk/packet/impl/e;

    invoke-direct {v0}, Lcom/alipay/sdk/packet/impl/e;-><init>()V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_3e

    goto :goto_2b

    :catchall_3e
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_41
    move v0, v1

    goto :goto_36

    :catch_43
    move-exception v0

    :try_start_44
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_3e

    move v0, v1

    goto :goto_36
.end method
