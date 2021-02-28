.class public Lcom/tencent/tp/w;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;ZZZZLjava/lang/String;)V
    .registers 13

    new-instance v0, Lcom/tencent/tp/x;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tp/x;-><init>(Landroid/content/Context;ZZZZLjava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tp/x;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static a(ZZZZLjava/lang/String;)V
    .registers 11

    invoke-static {}, Lcom/tencent/tp/v;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_e

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/tp/w;->a(Landroid/content/Context;ZZZZLjava/lang/String;)V

    :cond_e
    return-void
.end method
