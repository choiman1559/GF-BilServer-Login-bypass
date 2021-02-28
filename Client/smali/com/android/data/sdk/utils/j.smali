.class public Lcom/android/data/sdk/utils/j;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/android/data/sdk/utils/j;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/android/data/sdk/utils/j;
    .registers 2

    sget-object v0, Lcom/android/data/sdk/utils/j;->a:Lcom/android/data/sdk/utils/j;

    if-nez v0, :cond_13

    const-class v1, Lcom/android/data/sdk/utils/j;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/android/data/sdk/utils/j;->a:Lcom/android/data/sdk/utils/j;

    if-nez v0, :cond_12

    new-instance v0, Lcom/android/data/sdk/utils/j;

    invoke-direct {v0}, Lcom/android/data/sdk/utils/j;-><init>()V

    sput-object v0, Lcom/android/data/sdk/utils/j;->a:Lcom/android/data/sdk/utils/j;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/android/data/sdk/utils/j;->a:Lcom/android/data/sdk/utils/j;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 3

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/data/sdk/utils/j;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Landroid/os/Handler;
    .registers 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-object v0
.end method

.method public b(Ljava/lang/Runnable;)V
    .registers 3

    invoke-static {}, Lcom/android/data/sdk/net/c;->a()Lcom/android/data/sdk/net/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/data/sdk/net/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method
