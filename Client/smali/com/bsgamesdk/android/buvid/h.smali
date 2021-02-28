.class public Lcom/bsgamesdk/android/buvid/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Landroid/os/Handler;

.field private static final b:[Ljava/lang/String;

.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x4

    new-array v0, v3, [Landroid/os/Handler;

    sput-object v0, Lcom/bsgamesdk/android/buvid/h;->a:[Landroid/os/Handler;

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "thread_ui"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "thread_report"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_background"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "thread_back_io"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bsgamesdk/android/buvid/h;->b:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/buvid/h;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/bsgamesdk/android/buvid/h;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static a(I)Landroid/os/Handler;
    .registers 5

    if-ltz p0, :cond_5

    const/4 v0, 0x4

    if-lt p0, v0, :cond_b

    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_b
    sget-object v0, Lcom/bsgamesdk/android/buvid/h;->a:[Landroid/os/Handler;

    aget-object v0, v0, p0

    if-nez v0, :cond_24

    sget-object v1, Lcom/bsgamesdk/android/buvid/h;->a:[Landroid/os/Handler;

    monitor-enter v1

    if-nez p0, :cond_29

    :try_start_16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_1f
    sget-object v2, Lcom/bsgamesdk/android/buvid/h;->a:[Landroid/os/Handler;

    aput-object v0, v2, p0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_40

    :cond_24
    sget-object v0, Lcom/bsgamesdk/android/buvid/h;->a:[Landroid/os/Handler;

    aget-object v0, v0, p0

    return-object v0

    :cond_29
    :try_start_29
    new-instance v2, Landroid/os/HandlerThread;

    sget-object v0, Lcom/bsgamesdk/android/buvid/h;->b:[Ljava/lang/String;

    aget-object v0, v0, p0

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_1f

    :catchall_40
    move-exception v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_29 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public static a(ILjava/lang/Runnable;)V
    .registers 3

    invoke-static {p0}, Lcom/bsgamesdk/android/buvid/h;->a(I)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static b(ILjava/lang/Runnable;)V
    .registers 5

    invoke-static {p0}, Lcom/bsgamesdk/android/buvid/h;->b(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_9
    return-void

    :cond_a
    new-instance v0, Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/buvid/h;->a(ILjava/lang/Runnable;)V

    :try_start_13
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_9

    :catch_17
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception occured while waiting for runnable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(I)Z
    .registers 3

    invoke-static {p0}, Lcom/bsgamesdk/android/buvid/h;->a(I)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
