.class final Lbsgamesdkhttp/a/e/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;

.field private b:J

.field private c:J


# direct methods
.method constructor <init>()V
    .registers 5

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lbsgamesdkhttp/a/e/g;->a:Ljava/util/concurrent/CountDownLatch;

    iput-wide v2, p0, Lbsgamesdkhttp/a/e/g;->b:J

    iput-wide v2, p0, Lbsgamesdkhttp/a/e/g;->c:J

    return-void
.end method


# virtual methods
.method a()V
    .registers 5

    iget-wide v0, p0, Lbsgamesdkhttp/a/e/g;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lbsgamesdkhttp/a/e/g;->b:J

    return-void
.end method

.method b()V
    .registers 5

    const-wide/16 v2, -0x1

    iget-wide v0, p0, Lbsgamesdkhttp/a/e/g;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    iget-wide v0, p0, Lbsgamesdkhttp/a/e/g;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lbsgamesdkhttp/a/e/g;->c:J

    iget-object v0, p0, Lbsgamesdkhttp/a/e/g;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method c()V
    .registers 5

    const-wide/16 v2, -0x1

    iget-wide v0, p0, Lbsgamesdkhttp/a/e/g;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    iget-wide v0, p0, Lbsgamesdkhttp/a/e/g;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_14
    iget-wide v0, p0, Lbsgamesdkhttp/a/e/g;->b:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lbsgamesdkhttp/a/e/g;->c:J

    iget-object v0, p0, Lbsgamesdkhttp/a/e/g;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
