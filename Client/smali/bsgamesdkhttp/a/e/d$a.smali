.class final Lbsgamesdkhttp/a/e/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lbsgamesdkio/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/a/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# static fields
.field static final synthetic c:Z


# instance fields
.field a:Z

.field b:Z

.field final synthetic d:Lbsgamesdkhttp/a/e/d;

.field private final e:Lbsgamesdkio/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lbsgamesdkhttp/a/e/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lbsgamesdkhttp/a/e/d$a;->c:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lbsgamesdkhttp/a/e/d;)V
    .registers 3

    iput-object p1, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbsgamesdkio/c;

    invoke-direct {v0}, Lbsgamesdkio/c;-><init>()V

    iput-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->e:Lbsgamesdkio/c;

    return-void
.end method

.method private a(Z)V
    .registers 8

    iget-object v1, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/d;->g:Lbsgamesdkhttp/a/e/d$c;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/d$c;->c()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_31

    :goto_a
    :try_start_a
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    iget-wide v2, v0, Lbsgamesdkhttp/a/e/d;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_34

    iget-boolean v0, p0, Lbsgamesdkhttp/a/e/d$a;->b:Z

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lbsgamesdkhttp/a/e/d$a;->a:Z

    if-nez v0, :cond_34

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/d;->h:Lbsgamesdkhttp/a/e/b;

    if-nez v0, :cond_34

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/d;->l()V
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_28

    goto :goto_a

    :catchall_28
    move-exception v0

    :try_start_29
    iget-object v2, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v2, v2, Lbsgamesdkhttp/a/e/d;->g:Lbsgamesdkhttp/a/e/d$c;

    invoke-virtual {v2}, Lbsgamesdkhttp/a/e/d$c;->b()V

    throw v0

    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_31

    throw v0

    :cond_34
    :try_start_34
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/d;->g:Lbsgamesdkhttp/a/e/d$c;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/d$c;->b()V

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/d;->k()V

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    iget-wide v2, v0, Lbsgamesdkhttp/a/e/d;->b:J

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->e:Lbsgamesdkio/c;

    invoke-virtual {v0}, Lbsgamesdkio/c;->b()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    iget-wide v2, v0, Lbsgamesdkhttp/a/e/d;->b:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lbsgamesdkhttp/a/e/d;->b:J

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_34 .. :try_end_56} :catchall_31

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/d;->g:Lbsgamesdkhttp/a/e/d$c;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/d$c;->c()V

    :try_start_5d
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/d;->d:Lbsgamesdkhttp/a/e/n;

    iget-object v1, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    iget v1, v1, Lbsgamesdkhttp/a/e/d;->c:I

    if-eqz p1, :cond_7f

    iget-object v2, p0, Lbsgamesdkhttp/a/e/d$a;->e:Lbsgamesdkio/c;

    invoke-virtual {v2}, Lbsgamesdkio/c;->b()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_7f

    const/4 v2, 0x1

    :goto_72
    iget-object v3, p0, Lbsgamesdkhttp/a/e/d$a;->e:Lbsgamesdkio/c;

    invoke-virtual/range {v0 .. v5}, Lbsgamesdkhttp/a/e/n;->a(IZLbsgamesdkio/c;J)V
    :try_end_77
    .catchall {:try_start_5d .. :try_end_77} :catchall_81

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/d;->g:Lbsgamesdkhttp/a/e/d$c;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/d$c;->b()V

    return-void

    :cond_7f
    const/4 v2, 0x0

    goto :goto_72

    :catchall_81
    move-exception v0

    iget-object v1, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v1, v1, Lbsgamesdkhttp/a/e/d;->g:Lbsgamesdkhttp/a/e/d$c;

    invoke-virtual {v1}, Lbsgamesdkhttp/a/e/d$c;->b()V

    throw v0
.end method


# virtual methods
.method public a()Lbsgamesdkio/q;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/d;->g:Lbsgamesdkhttp/a/e/d$c;

    return-object v0
.end method

.method public a_(Lbsgamesdkio/c;J)V
    .registers 8

    sget-boolean v0, Lbsgamesdkhttp/a/e/d$a;->c:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->e:Lbsgamesdkio/c;

    invoke-virtual {v0, p1, p2, p3}, Lbsgamesdkio/c;->a_(Lbsgamesdkio/c;J)V

    :goto_17
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->e:Lbsgamesdkio/c;

    invoke-virtual {v0}, Lbsgamesdkio/c;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_28

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbsgamesdkhttp/a/e/d$a;->a(Z)V

    goto :goto_17

    :cond_28
    return-void
.end method

.method public close()V
    .registers 7

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    sget-boolean v0, Lbsgamesdkhttp/a/e/d$a;->c:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_15
    iget-object v1, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    monitor-enter v1

    :try_start_18
    iget-boolean v0, p0, Lbsgamesdkhttp/a/e/d$a;->a:Z

    if-eqz v0, :cond_1e

    monitor-exit v1

    :goto_1d
    return-void

    :cond_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_3f

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/d;->e:Lbsgamesdkhttp/a/e/d$a;

    iget-boolean v0, v0, Lbsgamesdkhttp/a/e/d$a;->b:Z

    if-nez v0, :cond_4e

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->e:Lbsgamesdkio/c;

    invoke-virtual {v0}, Lbsgamesdkio/c;->b()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_42

    :goto_31
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->e:Lbsgamesdkio/c;

    invoke-virtual {v0}, Lbsgamesdkio/c;->b()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_4e

    invoke-direct {p0, v2}, Lbsgamesdkhttp/a/e/d$a;->a(Z)V

    goto :goto_31

    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0

    :cond_42
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/d;->d:Lbsgamesdkhttp/a/e/n;

    iget-object v1, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    iget v1, v1, Lbsgamesdkhttp/a/e/d;->c:I

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lbsgamesdkhttp/a/e/n;->a(IZLbsgamesdkio/c;J)V

    :cond_4e
    iget-object v1, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_52
    iput-boolean v0, p0, Lbsgamesdkhttp/a/e/d$a;->a:Z

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_62

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/d;->d:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/n;->b()V

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/d;->j()V

    goto :goto_1d

    :catchall_62
    move-exception v0

    :try_start_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v0
.end method

.method public flush()V
    .registers 5

    sget-boolean v0, Lbsgamesdkhttp/a/e/d$a;->c:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    iget-object v1, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    monitor-enter v1

    :try_start_15
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/d;->k()V

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_33

    :goto_1b
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->e:Lbsgamesdkio/c;

    invoke-virtual {v0}, Lbsgamesdkio/c;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_36

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbsgamesdkhttp/a/e/d$a;->a(Z)V

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$a;->d:Lbsgamesdkhttp/a/e/d;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/d;->d:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/n;->b()V

    goto :goto_1b

    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0

    :cond_36
    return-void
.end method
