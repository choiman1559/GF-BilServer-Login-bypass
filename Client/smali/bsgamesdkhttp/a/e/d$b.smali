.class final Lbsgamesdkhttp/a/e/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Lbsgamesdkio/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/a/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# static fields
.field static final synthetic c:Z


# instance fields
.field a:Z

.field b:Z

.field final synthetic d:Lbsgamesdkhttp/a/e/d;

.field private final e:Lbsgamesdkio/c;

.field private final f:Lbsgamesdkio/c;

.field private final g:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lbsgamesdkhttp/a/e/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lbsgamesdkhttp/a/e/d$b;->c:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lbsgamesdkhttp/a/e/d;J)V
    .registers 6

    iput-object p1, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbsgamesdkio/c;

    invoke-direct {v0}, Lbsgamesdkio/c;-><init>()V

    iput-object v0, p0, Lbsgamesdkhttp/a/e/d$b;->e:Lbsgamesdkio/c;

    new-instance v0, Lbsgamesdkio/c;

    invoke-direct {v0}, Lbsgamesdkio/c;-><init>()V

    iput-object v0, p0, Lbsgamesdkhttp/a/e/d$b;->f:Lbsgamesdkio/c;

    iput-wide p2, p0, Lbsgamesdkhttp/a/e/d$b;->g:J

    return-void
.end method

.method private b()V
    .registers 5

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/d;->f:Lbsgamesdkhttp/a/e/d$c;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/d$c;->c()V

    :goto_7
    :try_start_7
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$b;->f:Lbsgamesdkio/c;

    invoke-virtual {v0}, Lbsgamesdkio/c;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lbsgamesdkhttp/a/e/d$b;->b:Z

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lbsgamesdkhttp/a/e/d$b;->a:Z

    if-nez v0, :cond_30

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/d;->h:Lbsgamesdkhttp/a/e/b;

    if-nez v0, :cond_30

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/d;->l()V
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_27

    goto :goto_7

    :catchall_27
    move-exception v0

    iget-object v1, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v1, v1, Lbsgamesdkhttp/a/e/d;->f:Lbsgamesdkhttp/a/e/d$c;

    invoke-virtual {v1}, Lbsgamesdkhttp/a/e/d$c;->b()V

    throw v0

    :cond_30
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/d;->f:Lbsgamesdkhttp/a/e/d$c;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/d$c;->b()V

    return-void
.end method

.method private c()V
    .registers 3

    iget-boolean v0, p0, Lbsgamesdkhttp/a/e/d$b;->a:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/d;->h:Lbsgamesdkhttp/a/e/b;

    if-eqz v0, :cond_1c

    new-instance v0, Lbsgamesdkhttp/a/e/am;

    iget-object v1, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v1, v1, Lbsgamesdkhttp/a/e/d;->h:Lbsgamesdkhttp/a/e/b;

    invoke-direct {v0, v1}, Lbsgamesdkhttp/a/e/am;-><init>(Lbsgamesdkhttp/a/e/b;)V

    throw v0

    :cond_1c
    return-void
.end method


# virtual methods
.method public a(Lbsgamesdkio/c;J)J
    .registers 12

    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-gez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v2, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    monitor-enter v2

    :try_start_22
    invoke-direct {p0}, Lbsgamesdkhttp/a/e/d$b;->b()V

    invoke-direct {p0}, Lbsgamesdkhttp/a/e/d$b;->c()V

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$b;->f:Lbsgamesdkio/c;

    invoke-virtual {v0}, Lbsgamesdkio/c;->b()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_36

    const-wide/16 v0, -0x1

    monitor-exit v2

    :goto_35
    return-wide v0

    :cond_36
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$b;->f:Lbsgamesdkio/c;

    iget-object v1, p0, Lbsgamesdkhttp/a/e/d$b;->f:Lbsgamesdkio/c;

    invoke-virtual {v1}, Lbsgamesdkio/c;->b()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v0, p1, v4, v5}, Lbsgamesdkio/c;->a(Lbsgamesdkio/c;J)J

    move-result-wide v0

    iget-object v3, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    iget-wide v4, v3, Lbsgamesdkhttp/a/e/d;->a:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lbsgamesdkhttp/a/e/d;->a:J

    iget-object v3, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    iget-wide v4, v3, Lbsgamesdkhttp/a/e/d;->a:J

    iget-object v3, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v3, v3, Lbsgamesdkhttp/a/e/d;->d:Lbsgamesdkhttp/a/e/n;

    iget-object v3, v3, Lbsgamesdkhttp/a/e/n;->l:Lbsgamesdkhttp/a/e/i;

    invoke-virtual {v3}, Lbsgamesdkhttp/a/e/i;->d()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_77

    iget-object v3, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v3, v3, Lbsgamesdkhttp/a/e/d;->d:Lbsgamesdkhttp/a/e/n;

    iget-object v4, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    iget v4, v4, Lbsgamesdkhttp/a/e/d;->c:I

    iget-object v5, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    iget-wide v6, v5, Lbsgamesdkhttp/a/e/d;->a:J

    invoke-virtual {v3, v4, v6, v7}, Lbsgamesdkhttp/a/e/n;->a(IJ)V

    iget-object v3, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lbsgamesdkhttp/a/e/d;->a:J

    :cond_77
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_22 .. :try_end_78} :catchall_b8

    iget-object v2, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v2, v2, Lbsgamesdkhttp/a/e/d;->d:Lbsgamesdkhttp/a/e/n;

    monitor-enter v2

    :try_start_7d
    iget-object v3, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v3, v3, Lbsgamesdkhttp/a/e/d;->d:Lbsgamesdkhttp/a/e/n;

    iget-wide v4, v3, Lbsgamesdkhttp/a/e/n;->j:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lbsgamesdkhttp/a/e/n;->j:J

    iget-object v3, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v3, v3, Lbsgamesdkhttp/a/e/d;->d:Lbsgamesdkhttp/a/e/n;

    iget-wide v4, v3, Lbsgamesdkhttp/a/e/n;->j:J

    iget-object v3, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v3, v3, Lbsgamesdkhttp/a/e/d;->d:Lbsgamesdkhttp/a/e/n;

    iget-object v3, v3, Lbsgamesdkhttp/a/e/n;->l:Lbsgamesdkhttp/a/e/i;

    invoke-virtual {v3}, Lbsgamesdkhttp/a/e/i;->d()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_b3

    iget-object v3, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v3, v3, Lbsgamesdkhttp/a/e/d;->d:Lbsgamesdkhttp/a/e/n;

    const/4 v4, 0x0

    iget-object v5, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v5, v5, Lbsgamesdkhttp/a/e/d;->d:Lbsgamesdkhttp/a/e/n;

    iget-wide v6, v5, Lbsgamesdkhttp/a/e/n;->j:J

    invoke-virtual {v3, v4, v6, v7}, Lbsgamesdkhttp/a/e/n;->a(IJ)V

    iget-object v3, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v3, v3, Lbsgamesdkhttp/a/e/d;->d:Lbsgamesdkhttp/a/e/n;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lbsgamesdkhttp/a/e/n;->j:J

    :cond_b3
    monitor-exit v2

    goto :goto_35

    :catchall_b5
    move-exception v0

    monitor-exit v2
    :try_end_b7
    .catchall {:try_start_7d .. :try_end_b7} :catchall_b5

    throw v0

    :catchall_b8
    move-exception v0

    :try_start_b9
    monitor-exit v2
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw v0
.end method

.method public a()Lbsgamesdkio/q;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/d;->f:Lbsgamesdkhttp/a/e/d$c;

    return-object v0
.end method

.method a(Lbsgamesdkio/e;J)V
    .registers 16

    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lbsgamesdkhttp/a/e/d$b;->c:Z

    if-nez v0, :cond_34

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_16
    sub-long/2addr p2, v4

    iget-object v3, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    monitor-enter v3

    :try_start_1a
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$b;->f:Lbsgamesdkio/c;

    invoke-virtual {v0}, Lbsgamesdkio/c;->b()J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-nez v0, :cond_76

    move v0, v1

    :goto_25
    iget-object v4, p0, Lbsgamesdkhttp/a/e/d$b;->f:Lbsgamesdkio/c;

    iget-object v5, p0, Lbsgamesdkhttp/a/e/d$b;->e:Lbsgamesdkio/c;

    invoke-virtual {v4, v5}, Lbsgamesdkio/c;->a(Lbsgamesdkio/p;)J

    if-eqz v0, :cond_33

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_78

    :cond_34
    cmp-long v0, p2, v10

    if-lez v0, :cond_58

    iget-object v3, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    monitor-enter v3

    :try_start_3b
    iget-boolean v4, p0, Lbsgamesdkhttp/a/e/d$b;->b:Z

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$b;->f:Lbsgamesdkio/c;

    invoke-virtual {v0}, Lbsgamesdkio/c;->b()J

    move-result-wide v6

    add-long/2addr v6, p2

    iget-wide v8, p0, Lbsgamesdkhttp/a/e/d$b;->g:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_59

    move v0, v1

    :goto_4b
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_3b .. :try_end_4c} :catchall_5b

    if-eqz v0, :cond_5e

    invoke-interface {p1, p2, p3}, Lbsgamesdkio/e;->g(J)V

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    sget-object v1, Lbsgamesdkhttp/a/e/b;->d:Lbsgamesdkhttp/a/e/b;

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/a/e/d;->b(Lbsgamesdkhttp/a/e/b;)V

    :cond_58
    :goto_58
    return-void

    :cond_59
    move v0, v2

    goto :goto_4b

    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0

    :cond_5e
    if-eqz v4, :cond_64

    invoke-interface {p1, p2, p3}, Lbsgamesdkio/e;->g(J)V

    goto :goto_58

    :cond_64
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$b;->e:Lbsgamesdkio/c;

    invoke-interface {p1, v0, p2, p3}, Lbsgamesdkio/e;->a(Lbsgamesdkio/c;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_16

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_76
    move v0, v2

    goto :goto_25

    :catchall_78
    move-exception v0

    :try_start_79
    monitor-exit v3
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v0
.end method

.method public close()V
    .registers 3

    iget-object v1, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lbsgamesdkhttp/a/e/d$b;->a:Z

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$b;->f:Lbsgamesdkio/c;

    invoke-virtual {v0}, Lbsgamesdkio/c;->q()V

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_17

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$b;->d:Lbsgamesdkhttp/a/e/d;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/d;->j()V

    return-void

    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method
