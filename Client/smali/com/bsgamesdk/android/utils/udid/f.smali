.class public Lcom/bsgamesdk/android/utils/udid/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/locks/ReadWriteLock;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Lcom/bsgamesdk/android/utils/udid/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/utils/udid/f;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bsgamesdk/android/utils/udid/f;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/bsgamesdk/android/utils/udid/c;

    invoke-direct {v0}, Lcom/bsgamesdk/android/utils/udid/c;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/utils/udid/f;->c:Lcom/bsgamesdk/android/utils/udid/c;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/bsgamesdk/android/utils/udid/f;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    sget-object v0, Lcom/bsgamesdk/android/utils/udid/f;->c:Lcom/bsgamesdk/android/utils/udid/c;

    if-nez v0, :cond_19

    const-string v0, ""
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_1e

    :goto_f
    sget-object v1, Lcom/bsgamesdk/android/utils/udid/f;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_19
    :try_start_19
    sget-object v0, Lcom/bsgamesdk/android/utils/udid/f;->c:Lcom/bsgamesdk/android/utils/udid/c;

    iget-object v0, v0, Lcom/bsgamesdk/android/utils/udid/c;->a:Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_1e

    goto :goto_f

    :catchall_1e
    move-exception v0

    sget-object v1, Lcom/bsgamesdk/android/utils/udid/f;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/bsgamesdk/android/utils/udid/f;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/bsgamesdk/android/utils/udid/f;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    sget-object v0, Lcom/bsgamesdk/android/utils/udid/f;->c:Lcom/bsgamesdk/android/utils/udid/c;

    if-nez v0, :cond_14

    new-instance v0, Lcom/bsgamesdk/android/utils/udid/c;

    invoke-direct {v0}, Lcom/bsgamesdk/android/utils/udid/c;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/utils/udid/f;->c:Lcom/bsgamesdk/android/utils/udid/c;

    :cond_14
    sget-object v0, Lcom/bsgamesdk/android/utils/udid/f;->c:Lcom/bsgamesdk/android/utils/udid/c;

    iput-object p0, v0, Lcom/bsgamesdk/android/utils/udid/c;->a:Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_22

    sget-object v0, Lcom/bsgamesdk/android/utils/udid/f;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_22
    move-exception v0

    sget-object v1, Lcom/bsgamesdk/android/utils/udid/f;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private static b(Landroid/content/Context;)V
    .registers 2

    sget-object v0, Lcom/bsgamesdk/android/utils/udid/f;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-static {p0}, Lcom/bsgamesdk/android/utils/udid/f;->c(Landroid/content/Context;)V

    goto :goto_8
.end method

.method private static c(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/bsgamesdk/android/utils/udid/f;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-static {p0}, Lcom/bsgamesdk/android/utils/udid/e;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/utils/udid/c;

    move-result-object v0

    sget-object v1, Lcom/bsgamesdk/android/utils/udid/f;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-eqz v0, :cond_2a

    :try_start_18
    sput-object v0, Lcom/bsgamesdk/android/utils/udid/f;->c:Lcom/bsgamesdk/android/utils/udid/c;

    :goto_1a
    sget-object v0, Lcom/bsgamesdk/android/utils/udid/f;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_2e

    sget-object v0, Lcom/bsgamesdk/android/utils/udid/f;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_8

    :cond_2a
    const/4 v0, 0x0

    :try_start_2b
    sput-object v0, Lcom/bsgamesdk/android/utils/udid/f;->c:Lcom/bsgamesdk/android/utils/udid/c;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_2e

    goto :goto_1a

    :catchall_2e
    move-exception v0

    sget-object v1, Lcom/bsgamesdk/android/utils/udid/f;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
