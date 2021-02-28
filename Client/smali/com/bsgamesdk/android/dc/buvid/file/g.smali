.class public Lcom/bsgamesdk/android/dc/buvid/file/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/locks/ReadWriteLock;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Lcom/bsgamesdk/android/dc/buvid/file/j;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/dc/buvid/file/g;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bsgamesdk/android/dc/buvid/file/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/bsgamesdk/android/dc/buvid/file/j;

    invoke-direct {v0}, Lcom/bsgamesdk/android/dc/buvid/file/j;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/dc/buvid/file/g;->c:Lcom/bsgamesdk/android/dc/buvid/file/j;

    sput-boolean v1, Lcom/bsgamesdk/android/dc/buvid/file/g;->d:Z

    return-void
.end method

.method public static a()V
    .registers 0

    invoke-static {}, Lcom/bsgamesdk/android/dc/buvid/file/g;->d()V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/bsgamesdk/android/dc/buvid/file/g;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    sget-object v0, Lcom/bsgamesdk/android/dc/buvid/file/g;->c:Lcom/bsgamesdk/android/dc/buvid/file/j;

    if-nez v0, :cond_19

    const-string v0, ""
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_1e

    :goto_f
    sget-object v1, Lcom/bsgamesdk/android/dc/buvid/file/g;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_19
    :try_start_19
    sget-object v0, Lcom/bsgamesdk/android/dc/buvid/file/g;->c:Lcom/bsgamesdk/android/dc/buvid/file/j;

    iget-object v0, v0, Lcom/bsgamesdk/android/dc/buvid/file/j;->a:Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_1e

    goto :goto_f

    :catchall_1e
    move-exception v0

    sget-object v1, Lcom/bsgamesdk/android/dc/buvid/file/g;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static c()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/bsgamesdk/android/dc/buvid/file/g;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    sget-object v0, Lcom/bsgamesdk/android/dc/buvid/file/g;->c:Lcom/bsgamesdk/android/dc/buvid/file/j;

    if-nez v0, :cond_19

    const-string v0, ""
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_1e

    :goto_f
    sget-object v1, Lcom/bsgamesdk/android/dc/buvid/file/g;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_19
    :try_start_19
    sget-object v0, Lcom/bsgamesdk/android/dc/buvid/file/g;->c:Lcom/bsgamesdk/android/dc/buvid/file/j;

    iget-object v0, v0, Lcom/bsgamesdk/android/dc/buvid/file/j;->b:Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_1e

    goto :goto_f

    :catchall_1e
    move-exception v0

    sget-object v1, Lcom/bsgamesdk/android/dc/buvid/file/g;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private static d()V
    .registers 1

    sget-object v0, Lcom/bsgamesdk/android/dc/buvid/file/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-static {}, Lcom/bsgamesdk/android/dc/buvid/file/g;->e()V

    goto :goto_8
.end method

.method private static e()V
    .registers 2

    sget-object v0, Lcom/bsgamesdk/android/dc/buvid/file/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-static {}, Lcom/bsgamesdk/android/dc/buvid/file/f;->a()Lcom/bsgamesdk/android/dc/buvid/file/j;

    move-result-object v0

    sget-object v1, Lcom/bsgamesdk/android/dc/buvid/file/g;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-eqz v0, :cond_2d

    :try_start_18
    sput-object v0, Lcom/bsgamesdk/android/dc/buvid/file/g;->c:Lcom/bsgamesdk/android/dc/buvid/file/j;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bsgamesdk/android/dc/buvid/file/g;->d:Z

    :goto_1d
    sget-object v0, Lcom/bsgamesdk/android/dc/buvid/file/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_34

    sget-object v0, Lcom/bsgamesdk/android/dc/buvid/file/g;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_8

    :cond_2d
    const/4 v0, 0x0

    :try_start_2e
    sput-object v0, Lcom/bsgamesdk/android/dc/buvid/file/g;->c:Lcom/bsgamesdk/android/dc/buvid/file/j;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bsgamesdk/android/dc/buvid/file/g;->d:Z
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_34

    goto :goto_1d

    :catchall_34
    move-exception v0

    sget-object v1, Lcom/bsgamesdk/android/dc/buvid/file/g;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
