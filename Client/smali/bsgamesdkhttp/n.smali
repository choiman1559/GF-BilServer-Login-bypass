.class public final Lbsgamesdkhttp/n;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Runnable;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private final e:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lbsgamesdkhttp/v$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lbsgamesdkhttp/v$a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lbsgamesdkhttp/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    iput v0, p0, Lbsgamesdkhttp/n;->a:I

    const/4 v0, 0x5

    iput v0, p0, Lbsgamesdkhttp/n;->b:I

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lbsgamesdkhttp/n;->e:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lbsgamesdkhttp/n;->f:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lbsgamesdkhttp/n;->g:Ljava/util/Deque;

    return-void
.end method

.method private a(Ljava/util/Deque;Ljava/lang/Object;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque",
            "<TT;>;TT;Z)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-interface {p1, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Call wasn\'t in-flight!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0

    :cond_12
    if-eqz p3, :cond_17

    :try_start_14
    invoke-direct {p0}, Lbsgamesdkhttp/n;->c()V

    :cond_17
    invoke-virtual {p0}, Lbsgamesdkhttp/n;->b()I

    move-result v0

    iget-object v1, p0, Lbsgamesdkhttp/n;->c:Ljava/lang/Runnable;

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_f

    if-nez v0, :cond_25

    if-eqz v1, :cond_25

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_25
    return-void
.end method

.method private b(Lbsgamesdkhttp/v$a;)I
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lbsgamesdkhttp/n;->f:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsgamesdkhttp/v$a;

    invoke-virtual {v0}, Lbsgamesdkhttp/v$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lbsgamesdkhttp/v$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    add-int/lit8 v0, v1, 0x1

    :goto_24
    move v1, v0

    goto :goto_8

    :cond_26
    return v1

    :cond_27
    move v0, v1

    goto :goto_24
.end method

.method private c()V
    .registers 5

    iget-object v0, p0, Lbsgamesdkhttp/n;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lbsgamesdkhttp/n;->a:I

    if-lt v0, v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lbsgamesdkhttp/n;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lbsgamesdkhttp/n;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsgamesdkhttp/v$a;

    invoke-direct {p0, v0}, Lbsgamesdkhttp/n;->b(Lbsgamesdkhttp/v$a;)I

    move-result v2

    iget v3, p0, Lbsgamesdkhttp/n;->b:I

    if-ge v2, v3, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v2, p0, Lbsgamesdkhttp/n;->f:Ljava/util/Deque;

    invoke-interface {v2, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lbsgamesdkhttp/n;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_3c
    iget-object v0, p0, Lbsgamesdkhttp/n;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v2, p0, Lbsgamesdkhttp/n;->a:I

    if-lt v0, v2, :cond_19

    goto :goto_a
.end method


# virtual methods
.method public declared-synchronized a()Ljava/util/concurrent/ExecutorService;
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lbsgamesdkhttp/n;->d:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_20

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp Dispatcher"

    const/4 v8, 0x0

    invoke-static {v0, v8}, Lbsgamesdkhttp/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lbsgamesdkhttp/n;->d:Ljava/util/concurrent/ExecutorService;

    :cond_20
    iget-object v0, p0, Lbsgamesdkhttp/n;->d:Ljava/util/concurrent/ExecutorService;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-object v0

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lbsgamesdkhttp/v$a;)V
    .registers 4

    iget-object v0, p0, Lbsgamesdkhttp/n;->f:Ljava/util/Deque;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lbsgamesdkhttp/n;->a(Ljava/util/Deque;Ljava/lang/Object;Z)V

    return-void
.end method

.method declared-synchronized a(Lbsgamesdkhttp/v;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lbsgamesdkhttp/n;->g:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lbsgamesdkhttp/n;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p0, Lbsgamesdkhttp/n;->g:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_10

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Lbsgamesdkhttp/v;)V
    .registers 4

    iget-object v0, p0, Lbsgamesdkhttp/n;->g:Ljava/util/Deque;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lbsgamesdkhttp/n;->a(Ljava/util/Deque;Ljava/lang/Object;Z)V

    return-void
.end method
