.class public final Lbsgamesdkhttp/j;
.super Ljava/lang/Object;


# static fields
.field static final synthetic c:Z

.field private static final d:Ljava/util/concurrent/Executor;


# instance fields
.field final a:Lbsgamesdkhttp/a/b/d;

.field b:Z

.field private final e:I

.field private final f:J

.field private final g:Ljava/lang/Runnable;

.field private final h:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lbsgamesdkhttp/a/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-class v0, Lbsgamesdkhttp/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_27

    move v0, v8

    :goto_b
    sput-boolean v0, Lbsgamesdkhttp/j;->c:Z

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp ConnectionPool"

    invoke-static {v0, v8}, Lbsgamesdkhttp/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lbsgamesdkhttp/j;->d:Ljava/util/concurrent/Executor;

    return-void

    :cond_27
    move v0, v2

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v0, 0x5

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v2, v3, v1}, Lbsgamesdkhttp/j;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbsgamesdkhttp/j$1;

    invoke-direct {v0, p0}, Lbsgamesdkhttp/j$1;-><init>(Lbsgamesdkhttp/j;)V

    iput-object v0, p0, Lbsgamesdkhttp/j;->g:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lbsgamesdkhttp/j;->h:Ljava/util/Deque;

    new-instance v0, Lbsgamesdkhttp/a/b/d;

    invoke-direct {v0}, Lbsgamesdkhttp/a/b/d;-><init>()V

    iput-object v0, p0, Lbsgamesdkhttp/j;->a:Lbsgamesdkhttp/a/b/d;

    iput p1, p0, Lbsgamesdkhttp/j;->e:I

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lbsgamesdkhttp/j;->f:J

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_3f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keepAliveDuration <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    return-void
.end method

.method private a(Lbsgamesdkhttp/a/b/c;J)I
    .registers 10

    const/4 v2, 0x0

    iget-object v3, p1, Lbsgamesdkhttp/a/b/c;->d:Ljava/util/List;

    move v1, v2

    :cond_4
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5d

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1a

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_1a
    check-cast v0, Lbsgamesdkhttp/a/b/g$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lbsgamesdkhttp/a/b/c;->a()Lbsgamesdkhttp/aa;

    move-result-object v5

    invoke-virtual {v5}, Lbsgamesdkhttp/aa;->a()Lbsgamesdkhttp/a;

    move-result-object v5

    invoke-virtual {v5}, Lbsgamesdkhttp/a;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lbsgamesdkhttp/a/g/e;->b()Lbsgamesdkhttp/a/g/e;

    move-result-object v5

    iget-object v0, v0, Lbsgamesdkhttp/a/b/g$a;->a:Ljava/lang/Object;

    invoke-virtual {v5, v4, v0}, Lbsgamesdkhttp/a/g/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lbsgamesdkhttp/a/b/c;->a:Z

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lbsgamesdkhttp/j;->f:J

    sub-long v0, p2, v0

    iput-wide v0, p1, Lbsgamesdkhttp/a/b/c;->e:J

    :goto_5c
    return v2

    :cond_5d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_5c
.end method


# virtual methods
.method a(J)J
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/high16 v4, -0x8000000000000000L

    monitor-enter p0

    :try_start_5
    iget-object v2, p0, Lbsgamesdkhttp/j;->h:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v0

    move v7, v0

    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsgamesdkhttp/a/b/c;

    invoke-direct {p0, v0, p1, p2}, Lbsgamesdkhttp/j;->a(Lbsgamesdkhttp/a/b/c;J)I

    move-result v3

    if-lez v3, :cond_23

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_d

    :cond_23
    add-int/lit8 v6, v2, 0x1

    iget-wide v2, v0, Lbsgamesdkhttp/a/b/c;->e:J

    sub-long v2, p1, v2

    cmp-long v9, v2, v4

    if-lez v9, :cond_65

    move-wide v10, v2

    move-object v2, v0

    move-wide v0, v10

    :goto_30
    move-wide v4, v0

    move-object v1, v2

    move v2, v6

    goto :goto_d

    :cond_34
    iget-wide v8, p0, Lbsgamesdkhttp/j;->f:J

    cmp-long v0, v4, v8

    if-gez v0, :cond_3e

    iget v0, p0, Lbsgamesdkhttp/j;->e:I

    if-le v2, v0, :cond_4e

    :cond_3e
    iget-object v0, p0, Lbsgamesdkhttp/j;->h:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_55

    invoke-virtual {v1}, Lbsgamesdkhttp/a/b/c;->b()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lbsgamesdkhttp/a/c;->a(Ljava/net/Socket;)V

    const-wide/16 v0, 0x0

    :goto_4d
    return-wide v0

    :cond_4e
    if-lez v2, :cond_58

    :try_start_50
    iget-wide v0, p0, Lbsgamesdkhttp/j;->f:J

    sub-long/2addr v0, v4

    monitor-exit p0

    goto :goto_4d

    :catchall_55
    move-exception v0

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_55

    throw v0

    :cond_58
    if-lez v7, :cond_5e

    :try_start_5a
    iget-wide v0, p0, Lbsgamesdkhttp/j;->f:J

    monitor-exit p0

    goto :goto_4d

    :cond_5e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsgamesdkhttp/j;->b:Z

    const-wide/16 v0, -0x1

    monitor-exit p0
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_55

    goto :goto_4d

    :cond_65
    move-object v2, v1

    move-wide v0, v4

    goto :goto_30
.end method

.method a(Lbsgamesdkhttp/a;Lbsgamesdkhttp/a/b/g;)Lbsgamesdkhttp/a/b/c;
    .registers 6

    sget-boolean v0, Lbsgamesdkhttp/j;->c:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, Lbsgamesdkhttp/j;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsgamesdkhttp/a/b/c;

    invoke-virtual {v0, p1}, Lbsgamesdkhttp/a/b/c;->a(Lbsgamesdkhttp/a;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p2, v0}, Lbsgamesdkhttp/a/b/g;->a(Lbsgamesdkhttp/a/b/c;)V

    :goto_2b
    return-object v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method a(Lbsgamesdkhttp/a/b/c;)V
    .registers 4

    sget-boolean v0, Lbsgamesdkhttp/j;->c:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iget-boolean v0, p0, Lbsgamesdkhttp/j;->b:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsgamesdkhttp/j;->b:Z

    sget-object v0, Lbsgamesdkhttp/j;->d:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lbsgamesdkhttp/j;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1e
    iget-object v0, p0, Lbsgamesdkhttp/j;->h:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Lbsgamesdkhttp/a;Lbsgamesdkhttp/a/b/g;)Ljava/net/Socket;
    .registers 6

    sget-boolean v0, Lbsgamesdkhttp/j;->c:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, Lbsgamesdkhttp/j;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsgamesdkhttp/a/b/c;

    invoke-virtual {v0, p1}, Lbsgamesdkhttp/a/b/c;->a(Lbsgamesdkhttp/a;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v0}, Lbsgamesdkhttp/a/b/c;->d()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p2}, Lbsgamesdkhttp/a/b/g;->b()Lbsgamesdkhttp/a/b/c;

    move-result-object v2

    if-eq v0, v2, :cond_16

    invoke-virtual {p2, v0}, Lbsgamesdkhttp/a/b/g;->b(Lbsgamesdkhttp/a/b/c;)Ljava/net/Socket;

    move-result-object v0

    :goto_38
    return-object v0

    :cond_39
    const/4 v0, 0x0

    goto :goto_38
.end method

.method b(Lbsgamesdkhttp/a/b/c;)Z
    .registers 3

    sget-boolean v0, Lbsgamesdkhttp/j;->c:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iget-boolean v0, p1, Lbsgamesdkhttp/a/b/c;->a:Z

    if-nez v0, :cond_18

    iget v0, p0, Lbsgamesdkhttp/j;->e:I

    if-nez v0, :cond_1f

    :cond_18
    iget-object v0, p0, Lbsgamesdkhttp/j;->h:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 v0, 0x0

    goto :goto_1e
.end method
