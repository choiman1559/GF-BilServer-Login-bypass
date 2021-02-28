.class public final Lbsgamesdkhttp/a/e/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsgamesdkhttp/a/e/n$i;,
        Lbsgamesdkhttp/a/e/n$j;,
        Lbsgamesdkhttp/a/e/n$h;
    }
.end annotation


# static fields
.field static final a:Ljava/util/concurrent/ExecutorService;

.field static final synthetic s:Z


# instance fields
.field final b:Z

.field final c:Lbsgamesdkhttp/a/e/n$i;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lbsgamesdkhttp/a/e/d;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/lang/String;

.field f:I

.field g:I

.field h:Z

.field final i:Lbsgamesdkhttp/a/e/h;

.field j:J

.field k:J

.field l:Lbsgamesdkhttp/a/e/i;

.field final m:Lbsgamesdkhttp/a/e/i;

.field n:Z

.field final o:Ljava/net/Socket;

.field final p:Lbsgamesdkhttp/a/e/e;

.field final q:Lbsgamesdkhttp/a/e/n$j;

.field final r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/concurrent/ExecutorService;

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lbsgamesdkhttp/a/e/g;",
            ">;"
        }
    .end annotation
.end field

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-class v0, Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_27

    move v0, v8

    :goto_b
    sput-boolean v0, Lbsgamesdkhttp/a/e/n;->s:Z

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp Http2Connection"

    invoke-static {v0, v8}, Lbsgamesdkhttp/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lbsgamesdkhttp/a/e/n;->a:Ljava/util/concurrent/ExecutorService;

    return-void

    :cond_27
    move v0, v2

    goto :goto_b
.end method

.method constructor <init>(Lbsgamesdkhttp/a/e/n$h;)V
    .registers 13

    const/4 v10, 0x7

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lbsgamesdkhttp/a/e/n;->d:Ljava/util/Map;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lbsgamesdkhttp/a/e/n;->j:J

    new-instance v0, Lbsgamesdkhttp/a/e/i;

    invoke-direct {v0}, Lbsgamesdkhttp/a/e/i;-><init>()V

    iput-object v0, p0, Lbsgamesdkhttp/a/e/n;->l:Lbsgamesdkhttp/a/e/i;

    new-instance v0, Lbsgamesdkhttp/a/e/i;

    invoke-direct {v0}, Lbsgamesdkhttp/a/e/i;-><init>()V

    iput-object v0, p0, Lbsgamesdkhttp/a/e/n;->m:Lbsgamesdkhttp/a/e/i;

    iput-boolean v2, p0, Lbsgamesdkhttp/a/e/n;->n:Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lbsgamesdkhttp/a/e/n;->r:Ljava/util/Set;

    iget-object v0, p1, Lbsgamesdkhttp/a/e/n$h;->f:Lbsgamesdkhttp/a/e/h;

    iput-object v0, p0, Lbsgamesdkhttp/a/e/n;->i:Lbsgamesdkhttp/a/e/h;

    iget-boolean v0, p1, Lbsgamesdkhttp/a/e/n$h;->g:Z

    iput-boolean v0, p0, Lbsgamesdkhttp/a/e/n;->b:Z

    iget-object v0, p1, Lbsgamesdkhttp/a/e/n$h;->e:Lbsgamesdkhttp/a/e/n$i;

    iput-object v0, p0, Lbsgamesdkhttp/a/e/n;->c:Lbsgamesdkhttp/a/e/n$i;

    iget-boolean v0, p1, Lbsgamesdkhttp/a/e/n$h;->g:Z

    if-eqz v0, :cond_b5

    move v0, v3

    :goto_3a
    iput v0, p0, Lbsgamesdkhttp/a/e/n;->g:I

    iget-boolean v0, p1, Lbsgamesdkhttp/a/e/n$h;->g:Z

    if-eqz v0, :cond_46

    iget v0, p0, Lbsgamesdkhttp/a/e/n;->g:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lbsgamesdkhttp/a/e/n;->g:I

    :cond_46
    iget-boolean v0, p1, Lbsgamesdkhttp/a/e/n$h;->g:Z

    if-eqz v0, :cond_4b

    move v1, v3

    :cond_4b
    iput v1, p0, Lbsgamesdkhttp/a/e/n;->v:I

    iget-boolean v0, p1, Lbsgamesdkhttp/a/e/n$h;->g:Z

    if-eqz v0, :cond_58

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n;->l:Lbsgamesdkhttp/a/e/i;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v10, v1}, Lbsgamesdkhttp/a/e/i;->a(II)Lbsgamesdkhttp/a/e/i;

    :cond_58
    iget-object v0, p1, Lbsgamesdkhttp/a/e/n$h;->b:Ljava/lang/String;

    iput-object v0, p0, Lbsgamesdkhttp/a/e/n;->e:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp %s Push Observer"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lbsgamesdkhttp/a/e/n;->e:Ljava/lang/String;

    aput-object v9, v8, v2

    invoke-static {v0, v8}, Lbsgamesdkhttp/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lbsgamesdkhttp/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lbsgamesdkhttp/a/e/n;->t:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n;->m:Lbsgamesdkhttp/a/e/i;

    const v1, 0xffff

    invoke-virtual {v0, v10, v1}, Lbsgamesdkhttp/a/e/i;->a(II)Lbsgamesdkhttp/a/e/i;

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n;->m:Lbsgamesdkhttp/a/e/i;

    const/4 v1, 0x5

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lbsgamesdkhttp/a/e/i;->a(II)Lbsgamesdkhttp/a/e/i;

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n;->m:Lbsgamesdkhttp/a/e/i;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/i;->d()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lbsgamesdkhttp/a/e/n;->k:J

    iget-object v0, p1, Lbsgamesdkhttp/a/e/n$h;->a:Ljava/net/Socket;

    iput-object v0, p0, Lbsgamesdkhttp/a/e/n;->o:Ljava/net/Socket;

    new-instance v0, Lbsgamesdkhttp/a/e/e;

    iget-object v1, p1, Lbsgamesdkhttp/a/e/n$h;->d:Lbsgamesdkio/d;

    iget-boolean v2, p0, Lbsgamesdkhttp/a/e/n;->b:Z

    invoke-direct {v0, v1, v2}, Lbsgamesdkhttp/a/e/e;-><init>(Lbsgamesdkio/d;Z)V

    iput-object v0, p0, Lbsgamesdkhttp/a/e/n;->p:Lbsgamesdkhttp/a/e/e;

    new-instance v0, Lbsgamesdkhttp/a/e/n$j;

    new-instance v1, Lbsgamesdkhttp/a/e/c;

    iget-object v2, p1, Lbsgamesdkhttp/a/e/n$h;->c:Lbsgamesdkio/e;

    iget-boolean v3, p0, Lbsgamesdkhttp/a/e/n;->b:Z

    invoke-direct {v1, v2, v3}, Lbsgamesdkhttp/a/e/c;-><init>(Lbsgamesdkio/e;Z)V

    invoke-direct {v0, p0, v1}, Lbsgamesdkhttp/a/e/n$j;-><init>(Lbsgamesdkhttp/a/e/n;Lbsgamesdkhttp/a/e/c;)V

    iput-object v0, p0, Lbsgamesdkhttp/a/e/n;->q:Lbsgamesdkhttp/a/e/n$j;

    return-void

    :cond_b5
    move v0, v1

    goto :goto_3a
.end method

.method private b(ILjava/util/List;Z)Lbsgamesdkhttp/a/e/d;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/a/e/j;",
            ">;Z)",
            "Lbsgamesdkhttp/a/e/d;"
        }
    .end annotation

    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez p3, :cond_1c

    move v3, v6

    :goto_7
    const/4 v4, 0x0

    iget-object v8, p0, Lbsgamesdkhttp/a/e/n;->p:Lbsgamesdkhttp/a/e/e;

    monitor-enter v8

    :try_start_b
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_19

    :try_start_c
    iget-boolean v0, p0, Lbsgamesdkhttp/a/e/n;->h:Z

    if-eqz v0, :cond_1e

    new-instance v0, Lbsgamesdkhttp/a/e/a;

    invoke-direct {v0}, Lbsgamesdkhttp/a/e/a;-><init>()V

    throw v0

    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    :try_start_18
    throw v0

    :catchall_19
    move-exception v0

    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    move v3, v7

    goto :goto_7

    :cond_1e
    :try_start_1e
    iget v1, p0, Lbsgamesdkhttp/a/e/n;->g:I

    iget v0, p0, Lbsgamesdkhttp/a/e/n;->g:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lbsgamesdkhttp/a/e/n;->g:I

    new-instance v0, Lbsgamesdkhttp/a/e/d;

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbsgamesdkhttp/a/e/d;-><init>(ILbsgamesdkhttp/a/e/n;ZZLjava/util/List;)V

    if-eqz p3, :cond_3b

    iget-wide v4, p0, Lbsgamesdkhttp/a/e/n;->k:J

    cmp-long v2, v4, v10

    if-eqz v2, :cond_3b

    iget-wide v4, v0, Lbsgamesdkhttp/a/e/d;->b:J

    cmp-long v2, v4, v10

    if-nez v2, :cond_3c

    :cond_3b
    move v7, v6

    :cond_3c
    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/d;->b()Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lbsgamesdkhttp/a/e/n;->d:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_1e .. :try_end_4c} :catchall_16

    if-nez p1, :cond_5c

    :try_start_4e
    iget-object v2, p0, Lbsgamesdkhttp/a/e/n;->p:Lbsgamesdkhttp/a/e/e;

    invoke-virtual {v2, v3, v1, p1, p2}, Lbsgamesdkhttp/a/e/e;->a(ZIILjava/util/List;)V

    :goto_53
    monitor-exit v8
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_19

    if-eqz v7, :cond_5b

    iget-object v1, p0, Lbsgamesdkhttp/a/e/n;->p:Lbsgamesdkhttp/a/e/e;

    invoke-virtual {v1}, Lbsgamesdkhttp/a/e/e;->b()V

    :cond_5b
    return-object v0

    :cond_5c
    :try_start_5c
    iget-boolean v2, p0, Lbsgamesdkhttp/a/e/n;->b:Z

    if-eqz v2, :cond_68

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_68
    iget-object v2, p0, Lbsgamesdkhttp/a/e/n;->p:Lbsgamesdkhttp/a/e/e;

    invoke-virtual {v2, p1, v1, p2}, Lbsgamesdkhttp/a/e/e;->a(IILjava/util/List;)V
    :try_end_6d
    .catchall {:try_start_5c .. :try_end_6d} :catchall_19

    goto :goto_53
.end method


# virtual methods
.method public declared-synchronized a()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n;->m:Lbsgamesdkhttp/a/e/i;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/a/e/i;->c(I)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(I)Lbsgamesdkhttp/a/e/d;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsgamesdkhttp/a/e/d;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/List;Z)Lbsgamesdkhttp/a/e/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/a/e/j;",
            ">;Z)",
            "Lbsgamesdkhttp/a/e/d;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lbsgamesdkhttp/a/e/n;->b(ILjava/util/List;Z)Lbsgamesdkhttp/a/e/d;

    move-result-object v0

    return-object v0
.end method

.method a(IJ)V
    .registers 12

    sget-object v0, Lbsgamesdkhttp/a/e/n;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lbsgamesdkhttp/a/e/n$b;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lbsgamesdkhttp/a/e/n;->e:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lbsgamesdkhttp/a/e/n$b;-><init>(Lbsgamesdkhttp/a/e/n;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(ILbsgamesdkhttp/a/e/b;)V
    .registers 10

    sget-object v6, Lbsgamesdkhttp/a/e/n;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lbsgamesdkhttp/a/e/n$a;

    const-string v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lbsgamesdkhttp/a/e/n;->e:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbsgamesdkhttp/a/e/n$a;-><init>(Lbsgamesdkhttp/a/e/n;Ljava/lang/String;[Ljava/lang/Object;ILbsgamesdkhttp/a/e/b;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(ILbsgamesdkio/e;IZ)V
    .registers 14

    new-instance v5, Lbsgamesdkio/c;

    invoke-direct {v5}, Lbsgamesdkio/c;-><init>()V

    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lbsgamesdkio/e;->a(J)V

    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, Lbsgamesdkio/e;->a(Lbsgamesdkio/c;J)J

    invoke-virtual {v5}, Lbsgamesdkio/c;->b()J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_37

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lbsgamesdkio/c;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    iget-object v8, p0, Lbsgamesdkhttp/a/e/n;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lbsgamesdkhttp/a/e/n$f;

    const-string v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lbsgamesdkhttp/a/e/n;->e:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lbsgamesdkhttp/a/e/n$f;-><init>(Lbsgamesdkhttp/a/e/n;Ljava/lang/String;[Ljava/lang/Object;ILbsgamesdkio/c;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(ILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/a/e/j;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n;->r:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lbsgamesdkhttp/a/e/b;->b:Lbsgamesdkhttp/a/e/b;

    invoke-virtual {p0, p1, v0}, Lbsgamesdkhttp/a/e/n;->a(ILbsgamesdkhttp/a/e/b;)V

    monitor-exit p0

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n;->r:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_3d

    iget-object v6, p0, Lbsgamesdkhttp/a/e/n;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lbsgamesdkhttp/a/e/n$d;

    const-string v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lbsgamesdkhttp/a/e/n;->e:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbsgamesdkhttp/a/e/n$d;-><init>(Lbsgamesdkhttp/a/e/n;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_13

    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method a(ILjava/util/List;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/a/e/j;",
            ">;Z)V"
        }
    .end annotation

    iget-object v7, p0, Lbsgamesdkhttp/a/e/n;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lbsgamesdkhttp/a/e/n$e;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lbsgamesdkhttp/a/e/n;->e:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lbsgamesdkhttp/a/e/n$e;-><init>(Lbsgamesdkhttp/a/e/n;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(IZLbsgamesdkio/c;J)V
    .registers 16

    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    cmp-long v0, p4, v8

    if-nez v0, :cond_33

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n;->p:Lbsgamesdkhttp/a/e/e;

    invoke-virtual {v0, p2, p1, p3, v1}, Lbsgamesdkhttp/a/e/e;->a(ZILbsgamesdkio/c;I)V

    :cond_c
    return-void

    :cond_d
    :try_start_d
    iget-wide v2, p0, Lbsgamesdkhttp/a/e/n;->k:J

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    iget-object v2, p0, Lbsgamesdkhttp/a/e/n;->p:Lbsgamesdkhttp/a/e/e;

    invoke-virtual {v2}, Lbsgamesdkhttp/a/e/e;->c()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-wide v4, p0, Lbsgamesdkhttp/a/e/n;->k:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lbsgamesdkhttp/a/e/n;->k:J

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_59

    int-to-long v4, v2

    sub-long/2addr p4, v4

    iget-object v3, p0, Lbsgamesdkhttp/a/e/n;->p:Lbsgamesdkhttp/a/e/e;

    if-eqz p2, :cond_60

    cmp-long v0, p4, v8

    if-nez v0, :cond_60

    const/4 v0, 0x1

    :goto_30
    invoke-virtual {v3, v0, p1, p3, v2}, Lbsgamesdkhttp/a/e/e;->a(ZILbsgamesdkio/c;I)V

    :cond_33
    cmp-long v0, p4, v8

    if-lez v0, :cond_c

    monitor-enter p0

    :goto_38
    :try_start_38
    iget-wide v2, p0, Lbsgamesdkhttp/a/e/n;->k:J

    cmp-long v0, v2, v8

    if-gtz v0, :cond_d

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_52} :catch_52
    .catchall {:try_start_38 .. :try_end_52} :catchall_59

    :catch_52
    move-exception v0

    :try_start_53
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :catchall_59
    move-exception v0

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_59

    throw v0

    :cond_5c
    :try_start_5c
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_5f} :catch_52
    .catchall {:try_start_5c .. :try_end_5f} :catchall_59

    goto :goto_38

    :cond_60
    move v0, v1

    goto :goto_30
.end method

.method a(J)V
    .registers 6

    iget-wide v0, p0, Lbsgamesdkhttp/a/e/n;->k:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lbsgamesdkhttp/a/e/n;->k:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_e
    return-void
.end method

.method public a(Lbsgamesdkhttp/a/e/b;)V
    .registers 6

    iget-object v1, p0, Lbsgamesdkhttp/a/e/n;->p:Lbsgamesdkhttp/a/e/e;

    monitor-enter v1

    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1a

    :try_start_4
    iget-boolean v0, p0, Lbsgamesdkhttp/a/e/n;->h:Z

    if-eqz v0, :cond_b

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_1d

    :try_start_9
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_1a

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x1

    :try_start_c
    iput-boolean v0, p0, Lbsgamesdkhttp/a/e/n;->h:Z

    iget v0, p0, Lbsgamesdkhttp/a/e/n;->f:I

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1d

    :try_start_11
    iget-object v2, p0, Lbsgamesdkhttp/a/e/n;->p:Lbsgamesdkhttp/a/e/e;

    sget-object v3, Lbsgamesdkhttp/a/c;->a:[B

    invoke-virtual {v2, v0, p1, v3}, Lbsgamesdkhttp/a/e/e;->a(ILbsgamesdkhttp/a/e/b;[B)V

    monitor-exit v1

    goto :goto_a

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1a

    throw v0

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1a
.end method

.method a(Lbsgamesdkhttp/a/e/b;Lbsgamesdkhttp/a/e/b;)V
    .registers 10

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-boolean v0, Lbsgamesdkhttp/a/e/n;->s:Z

    if-nez v0, :cond_12

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    :try_start_12
    invoke-virtual {p0, p1}, Lbsgamesdkhttp/a/e/n;->a(Lbsgamesdkhttp/a/e/b;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_66

    move-object v1, v2

    :goto_16
    monitor-enter p0

    :try_start_17
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_98

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lbsgamesdkhttp/a/e/n;->d:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lbsgamesdkhttp/a/e/d;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbsgamesdkhttp/a/e/d;

    iget-object v4, p0, Lbsgamesdkhttp/a/e/n;->d:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    move-object v5, v0

    :goto_39
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n;->u:Ljava/util/Map;

    if-eqz v0, :cond_96

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lbsgamesdkhttp/a/e/n;->u:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lbsgamesdkhttp/a/e/g;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbsgamesdkhttp/a/e/g;

    const/4 v2, 0x0

    iput-object v2, p0, Lbsgamesdkhttp/a/e/n;->u:Ljava/util/Map;

    move-object v4, v0

    :goto_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_17 .. :try_end_56} :catchall_69

    if-eqz v5, :cond_72

    array-length v6, v5

    move v2, v3

    move-object v0, v1

    :goto_5b
    if-ge v2, v6, :cond_71

    aget-object v1, v5, v2

    :try_start_5f
    invoke-virtual {v1, p2}, Lbsgamesdkhttp/a/e/d;->a(Lbsgamesdkhttp/a/e/b;)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_6c

    :cond_62
    :goto_62
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5b

    :catch_66
    move-exception v0

    move-object v1, v0

    goto :goto_16

    :catchall_69
    move-exception v0

    :try_start_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v0

    :catch_6c
    move-exception v1

    if-eqz v0, :cond_62

    move-object v0, v1

    goto :goto_62

    :cond_71
    move-object v1, v0

    :cond_72
    if-eqz v4, :cond_80

    array-length v2, v4

    move v0, v3

    :goto_76
    if-ge v0, v2, :cond_80

    aget-object v3, v4, v0

    invoke-virtual {v3}, Lbsgamesdkhttp/a/e/g;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    :cond_80
    :try_start_80
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n;->p:Lbsgamesdkhttp/a/e/e;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/e;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_85} :catch_8e

    move-object v0, v1

    :cond_86
    :goto_86
    :try_start_86
    iget-object v1, p0, Lbsgamesdkhttp/a/e/n;->o:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8b} :catch_94

    :goto_8b
    if-eqz v0, :cond_93

    throw v0

    :catch_8e
    move-exception v0

    if-eqz v1, :cond_86

    move-object v0, v1

    goto :goto_86

    :cond_93
    return-void

    :catch_94
    move-exception v0

    goto :goto_8b

    :cond_96
    move-object v4, v2

    goto :goto_55

    :cond_98
    move-object v5, v2

    goto :goto_39
.end method

.method a(Z)V
    .registers 8

    const v3, 0xffff

    if-eqz p1, :cond_21

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n;->p:Lbsgamesdkhttp/a/e/e;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/e;->a()V

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n;->p:Lbsgamesdkhttp/a/e/e;

    iget-object v1, p0, Lbsgamesdkhttp/a/e/n;->l:Lbsgamesdkhttp/a/e/i;

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/a/e/e;->b(Lbsgamesdkhttp/a/e/i;)V

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n;->l:Lbsgamesdkhttp/a/e/i;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/i;->d()I

    move-result v0

    if-eq v0, v3, :cond_21

    iget-object v1, p0, Lbsgamesdkhttp/a/e/n;->p:Lbsgamesdkhttp/a/e/e;

    const/4 v2, 0x0

    sub-int/2addr v0, v3

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lbsgamesdkhttp/a/e/e;->a(IJ)V

    :cond_21
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lbsgamesdkhttp/a/e/n;->q:Lbsgamesdkhttp/a/e/n$j;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method a(ZIILbsgamesdkhttp/a/e/g;)V
    .registers 14

    sget-object v8, Lbsgamesdkhttp/a/e/n;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lbsgamesdkhttp/a/e/n$c;

    const-string v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lbsgamesdkhttp/a/e/n;->e:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lbsgamesdkhttp/a/e/n$c;-><init>(Lbsgamesdkhttp/a/e/n;Ljava/lang/String;[Ljava/lang/Object;ZIILbsgamesdkhttp/a/e/g;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method declared-synchronized b(I)Lbsgamesdkhttp/a/e/d;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsgamesdkhttp/a/e/d;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n;->p:Lbsgamesdkhttp/a/e/e;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/e;->b()V

    return-void
.end method

.method b(ILbsgamesdkhttp/a/e/b;)V
    .registers 4

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n;->p:Lbsgamesdkhttp/a/e/e;

    invoke-virtual {v0, p1, p2}, Lbsgamesdkhttp/a/e/e;->a(ILbsgamesdkhttp/a/e/b;)V

    return-void
.end method

.method b(ZIILbsgamesdkhttp/a/e/g;)V
    .registers 7

    iget-object v1, p0, Lbsgamesdkhttp/a/e/n;->p:Lbsgamesdkhttp/a/e/e;

    monitor-enter v1

    if-eqz p4, :cond_8

    :try_start_5
    invoke-virtual {p4}, Lbsgamesdkhttp/a/e/g;->a()V

    :cond_8
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n;->p:Lbsgamesdkhttp/a/e/e;

    invoke-virtual {v0, p1, p2, p3}, Lbsgamesdkhttp/a/e/e;->a(ZII)V

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v0
.end method

.method declared-synchronized c(I)Lbsgamesdkhttp/a/e/g;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n;->u:Ljava/util/Map;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n;->u:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsgamesdkhttp/a/e/g;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbsgamesdkhttp/a/e/n;->a(Z)V

    return-void
.end method

.method c(ILbsgamesdkhttp/a/e/b;)V
    .registers 10

    iget-object v6, p0, Lbsgamesdkhttp/a/e/n;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lbsgamesdkhttp/a/e/n$g;

    const-string v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lbsgamesdkhttp/a/e/n;->e:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbsgamesdkhttp/a/e/n$g;-><init>(Lbsgamesdkhttp/a/e/n;Ljava/lang/String;[Ljava/lang/Object;ILbsgamesdkhttp/a/e/b;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public close()V
    .registers 3

    sget-object v0, Lbsgamesdkhttp/a/e/b;->a:Lbsgamesdkhttp/a/e/b;

    sget-object v1, Lbsgamesdkhttp/a/e/b;->f:Lbsgamesdkhttp/a/e/b;

    invoke-virtual {p0, v0, v1}, Lbsgamesdkhttp/a/e/n;->a(Lbsgamesdkhttp/a/e/b;Lbsgamesdkhttp/a/e/b;)V

    return-void
.end method

.method public declared-synchronized d()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lbsgamesdkhttp/a/e/n;->h:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d(I)Z
    .registers 3

    if-eqz p1, :cond_8

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
