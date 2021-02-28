.class public Lcom/alipay/sdk/interior/Log;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/interior/Log$ISdkLogCallback;
    }
.end annotation


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/sdk/interior/Log;->a:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forcedLogReport(Landroid/content/Context;)Z
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alipay/sdk/sys/b;->a(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sget-wide v4, Lcom/alipay/sdk/interior/Log;->a:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x258

    cmp-long v1, v4, v6

    if-gez v1, :cond_1a

    :goto_19
    return v0

    :cond_1a
    sput-wide v2, Lcom/alipay/sdk/interior/Log;->a:J

    invoke-static {p0}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_21

    const/4 v0, 0x1

    goto :goto_19

    :catch_21
    move-exception v1

    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_19
.end method

.method public static setupLogCallback(Lcom/alipay/sdk/interior/Log$ISdkLogCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/alipay/sdk/util/c;->a(Lcom/alipay/sdk/interior/Log$ISdkLogCallback;)V

    return-void
.end method
