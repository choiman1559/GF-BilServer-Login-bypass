.class public final Lcom/alipay/android/phone/mrpc/core/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/phone/mrpc/core/ab;


# static fields
.field private static b:Lcom/alipay/android/phone/mrpc/core/l;

.field private static final i:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field a:Landroid/content/Context;

.field private c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private d:Lcom/alipay/android/phone/mrpc/core/b;

.field private e:J

.field private f:J

.field private g:J

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/l;->b:Lcom/alipay/android/phone/mrpc/core/l;

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/n;

    invoke-direct {v0}, Lcom/alipay/android/phone/mrpc/core/n;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/l;->i:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 13

    const/4 v10, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/l;->a:Landroid/content/Context;

    const-string v0, "android"

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/b;->a(Ljava/lang/String;)Lcom/alipay/android/phone/mrpc/core/b;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/l;->d:Lcom/alipay/android/phone/mrpc/core/b;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x14

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sget-object v8, Lcom/alipay/android/phone/mrpc/core/l;->i:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/alipay/android/phone/mrpc/core/l;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    :try_start_2b
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/l;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_31} :catch_3e

    :goto_31
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/l;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    return-void

    :catch_3e
    move-exception v0

    goto :goto_31
.end method

.method public static final a(Landroid/content/Context;)Lcom/alipay/android/phone/mrpc/core/l;
    .registers 2

    sget-object v0, Lcom/alipay/android/phone/mrpc/core/l;->b:Lcom/alipay/android/phone/mrpc/core/l;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/alipay/android/phone/mrpc/core/l;->b:Lcom/alipay/android/phone/mrpc/core/l;

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0}, Lcom/alipay/android/phone/mrpc/core/l;->b(Landroid/content/Context;)Lcom/alipay/android/phone/mrpc/core/l;

    move-result-object v0

    goto :goto_6
.end method

.method private static final declared-synchronized b(Landroid/content/Context;)Lcom/alipay/android/phone/mrpc/core/l;
    .registers 3

    const-class v1, Lcom/alipay/android/phone/mrpc/core/l;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/alipay/android/phone/mrpc/core/l;->b:Lcom/alipay/android/phone/mrpc/core/l;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/alipay/android/phone/mrpc/core/l;->b:Lcom/alipay/android/phone/mrpc/core/l;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    :goto_9
    monitor-exit v1

    return-object v0

    :cond_b
    :try_start_b
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/l;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mrpc/core/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/l;->b:Lcom/alipay/android/phone/mrpc/core/l;
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    goto :goto_9

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Lcom/alipay/android/phone/mrpc/core/b;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/l;->d:Lcom/alipay/android/phone/mrpc/core/b;

    return-object v0
.end method

.method public final a(Lcom/alipay/android/phone/mrpc/core/t;)Ljava/util/concurrent/Future;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/mrpc/core/t;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/alipay/android/phone/mrpc/core/u;",
            ">;"
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/s;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpManager"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Active Task = %d, Completed Task = %d, All Task = %d,Avarage Speed = %d KB/S, Connetct Time = %d ms, All data size = %d bytes, All enqueueConnect time = %d ms, All socket time = %d ms, All request times = %d times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x9

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/l;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/l;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/l;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v6, 0x3

    iget-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/l;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a1

    move-wide v0, v2

    :goto_56
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x4

    iget v1, p0, Lcom/alipay/android/phone/mrpc/core/l;->h:I

    if-nez v1, :cond_ad

    :goto_61
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/alipay/android/phone/mrpc/core/l;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/alipay/android/phone/mrpc/core/l;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x7

    iget-wide v2, p0, Lcom/alipay/android/phone/mrpc/core/l;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/16 v0, 0x8

    iget v1, p0, Lcom/alipay/android/phone/mrpc/core/l;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_8f
    check-cast p1, Lcom/alipay/android/phone/mrpc/core/o;

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/q;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/mrpc/core/q;-><init>(Lcom/alipay/android/phone/mrpc/core/l;Lcom/alipay/android/phone/mrpc/core/o;)V

    new-instance v1, Lcom/alipay/android/phone/mrpc/core/m;

    invoke-direct {v1, p0, v0, v0}, Lcom/alipay/android/phone/mrpc/core/m;-><init>(Lcom/alipay/android/phone/mrpc/core/l;Ljava/util/concurrent/Callable;Lcom/alipay/android/phone/mrpc/core/q;)V

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/l;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-object v1

    :cond_a1
    iget-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/l;->e:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v0, v8

    iget-wide v8, p0, Lcom/alipay/android/phone/mrpc/core/l;->g:J

    div-long/2addr v0, v8

    const/16 v7, 0xa

    shr-long/2addr v0, v7

    goto :goto_56

    :cond_ad
    iget-wide v2, p0, Lcom/alipay/android/phone/mrpc/core/l;->f:J

    iget v1, p0, Lcom/alipay/android/phone/mrpc/core/l;->h:I

    int-to-long v6, v1

    div-long/2addr v2, v6

    goto :goto_61
.end method

.method public final a(J)V
    .registers 6

    iget-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/l;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/l;->e:J

    return-void
.end method

.method public final b(J)V
    .registers 6

    iget-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/l;->f:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/l;->f:J

    iget v0, p0, Lcom/alipay/android/phone/mrpc/core/l;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/phone/mrpc/core/l;->h:I

    return-void
.end method

.method public final c(J)V
    .registers 6

    iget-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/l;->g:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/l;->g:J

    return-void
.end method
