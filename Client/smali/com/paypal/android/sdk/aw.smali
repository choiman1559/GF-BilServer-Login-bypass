.class public final Lcom/paypal/android/sdk/aw;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/sdk/aw;->a:Ljava/lang/String;

    sput-wide v2, Lcom/paypal/android/sdk/aw;->b:J

    sput-wide v2, Lcom/paypal/android/sdk/aw;->c:J

    return-void
.end method

.method public static declared-synchronized a()V
    .registers 4

    const-class v1, Lcom/paypal/android/sdk/aw;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/paypal/android/sdk/bm;->b(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/aw;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/paypal/android/sdk/aw;->b:J
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(J)V
    .registers 4

    const-class v0, Lcom/paypal/android/sdk/aw;

    monitor-enter v0

    :try_start_3
    sput-wide p0, Lcom/paypal/android/sdk/aw;->c:J
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .registers 2

    const-class v1, Lcom/paypal/android/sdk/aw;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/paypal/android/sdk/aw;->a:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/paypal/android/sdk/aw;->a()V

    :cond_a
    sget-object v0, Lcom/paypal/android/sdk/aw;->a:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method
