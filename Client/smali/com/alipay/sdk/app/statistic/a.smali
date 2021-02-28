.class public Lcom/alipay/sdk/app/statistic/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/app/statistic/a$b;,
        Lcom/alipay/sdk/app/statistic/a$a;,
        Lcom/alipay/sdk/app/statistic/a$c;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lcom/alipay/sdk/app/statistic/a;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lcom/alipay/sdk/app/statistic/a$b;->a(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-class v1, Lcom/alipay/sdk/app/statistic/a;

    monitor-enter v1

    if-eqz p0, :cond_7

    if-nez p1, :cond_9

    :cond_7
    :goto_7
    monitor-exit v1

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p1, Lcom/alipay/sdk/sys/a;->s:Lcom/alipay/sdk/app/statistic/c;

    invoke-virtual {v0, p2}, Lcom/alipay/sdk/app/statistic/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/alipay/sdk/app/statistic/a$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_13
    .catchall {:try_start_9 .. :try_end_12} :catchall_18

    goto :goto_7

    :catch_13
    move-exception v0

    :try_start_14
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_7

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/alipay/sdk/sys/a;->s:Lcom/alipay/sdk/app/statistic/c;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/sdk/app/statistic/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/alipay/sdk/sys/a;->s:Lcom/alipay/sdk/app/statistic/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/sdk/app/statistic/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/alipay/sdk/sys/a;->s:Lcom/alipay/sdk/app/statistic/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/sdk/app/statistic/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/alipay/sdk/sys/a;->s:Lcom/alipay/sdk/app/statistic/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/sdk/app/statistic/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    if-eqz p0, :cond_a

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/alipay/sdk/sys/a;->s:Lcom/alipay/sdk/app/statistic/c;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/alipay/sdk/app/statistic/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public static declared-synchronized b(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-class v1, Lcom/alipay/sdk/app/statistic/a;

    monitor-enter v1

    if-eqz p0, :cond_7

    if-nez p1, :cond_9

    :cond_7
    :goto_7
    monitor-exit v1

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p1, Lcom/alipay/sdk/sys/a;->s:Lcom/alipay/sdk/app/statistic/c;

    invoke-static {p0, v0, p2, p3}, Lcom/alipay/sdk/app/statistic/a$b;->a(Landroid/content/Context;Lcom/alipay/sdk/app/statistic/c;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    goto :goto_7

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/alipay/sdk/sys/a;->s:Lcom/alipay/sdk/app/statistic/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
