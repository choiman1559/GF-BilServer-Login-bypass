.class public abstract Lcom/bsgamesdk/android/api/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;

.field private d:Z

.field private e:Lcom/bsgamesdk/android/utils/SecurePreferences;

.field private final f:I

.field private final g:J

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const/16 v3, 0x14

    const/4 v2, 0x5

    const/4 v9, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v7, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/bsgamesdk/android/api/p;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/api/p;->c:Ljava/lang/Object;

    iput-boolean v9, p0, Lcom/bsgamesdk/android/api/p;->d:Z

    iput v2, p0, Lcom/bsgamesdk/android/api/p;->f:I

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/bsgamesdk/android/api/p;->g:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/api/p;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/bsgamesdk/android/api/p;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/p;->e:Lcom/bsgamesdk/android/utils/SecurePreferences;

    if-nez v0, :cond_58

    invoke-static {}, Lcom/bsgamesdk/android/utils/ab;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v0, Lcom/bsgamesdk/android/model/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/o;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/utils/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/utils/o;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->e:Ljava/lang/String;

    sget-object v0, Lcom/bsgamesdk/android/model/c;->e:Ljava/lang/String;

    :cond_4d
    new-instance v2, Lcom/bsgamesdk/android/utils/SecurePreferences;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1, p1, v0, v9}, Lcom/bsgamesdk/android/utils/SecurePreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/bsgamesdk/android/api/p;->e:Lcom/bsgamesdk/android/utils/SecurePreferences;

    :cond_58
    invoke-direct {p0}, Lcom/bsgamesdk/android/api/p;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/v;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object v0, p0, Lcom/bsgamesdk/android/api/p;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/p;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_6f

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/api/p;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    :cond_6f
    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/api/p;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bsgamesdk/android/api/p;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/bsgamesdk/android/api/p;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bsgamesdk/android/api/p;->d:Z

    return p1
.end method

.method private b()V
    .registers 5

    iget-object v1, p0, Lcom/bsgamesdk/android/api/p;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/bsgamesdk/android/api/p;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/bsgamesdk/android/api/p;->e:Lcom/bsgamesdk/android/utils/SecurePreferences;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/p;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bsgamesdk/android/utils/SecurePreferences;->d(Ljava/lang/String;)V

    :goto_12
    monitor-exit v1

    return-void

    :cond_14
    iget-object v0, p0, Lcom/bsgamesdk/android/api/p;->e:Lcom/bsgamesdk/android/utils/SecurePreferences;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/p;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/bsgamesdk/android/api/p;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v3}, Lcom/bsgamesdk/android/utils/v;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/bsgamesdk/android/utils/SecurePreferences;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v0
.end method

.method private c()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Lcom/bsgamesdk/android/api/p;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/bsgamesdk/android/api/p;->e:Lcom/bsgamesdk/android/utils/SecurePreferences;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/p;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bsgamesdk/android/utils/SecurePreferences;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method private e(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/bsgamesdk/android/api/p;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/bsgamesdk/android/api/p$1;

    invoke-direct {v1, p0, p1}, Lcom/bsgamesdk/android/api/p$1;-><init>(Lcom/bsgamesdk/android/api/p;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bsgamesdk/android/api/p;->d:Z

    iget-object v0, p0, Lcom/bsgamesdk/android/api/p;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bsgamesdk/android/api/p;->e(Ljava/lang/Object;)V

    goto :goto_9

    :cond_17
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/bsgamesdk/android/api/p;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/bsgamesdk/android/api/p;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/bsgamesdk/android/api/p;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/api/p;->d:Z

    :cond_15
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/bsgamesdk/android/api/p;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/api/p;->e(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/bsgamesdk/android/api/p;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bsgamesdk/android/api/p;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/bsgamesdk/android/api/p;->b()V

    :cond_12
    return-void
.end method

.method public abstract d(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation
.end method
