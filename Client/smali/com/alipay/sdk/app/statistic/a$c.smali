.class final Lcom/alipay/sdk/app/statistic/a$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/app/statistic/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "alipay_cashier_statistic_v"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)J
    .registers 7

    const-class v2, Lcom/alipay/sdk/app/statistic/a$c;

    monitor-enter v2

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :try_start_6
    const-string v4, "alipay_cashier_statistic_v"

    const/4 v5, 0x0

    invoke-static {v3, p0, v4, v5}, Lcom/alipay/sdk/util/j;->b(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_16} :catch_2b
    .catchall {:try_start_6 .. :try_end_16} :catchall_26

    move-result-wide v0

    :cond_17
    :goto_17
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    const/4 v3, 0x0

    :try_start_1b
    const-string v4, "alipay_cashier_statistic_v"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, p0, v4, v5}, Lcom/alipay/sdk/util/j;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_24} :catch_29
    .catchall {:try_start_1b .. :try_end_24} :catchall_26

    :goto_24
    monitor-exit v2

    return-wide v0

    :catchall_26
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_29
    move-exception v3

    goto :goto_24

    :catch_2b
    move-exception v3

    goto :goto_17
.end method
