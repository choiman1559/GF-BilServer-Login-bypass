.class public final Lbsgamesdkhttp/a/e/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsgamesdkhttp/a/e/d$c;,
        Lbsgamesdkhttp/a/e/d$a;,
        Lbsgamesdkhttp/a/e/d$b;
    }
.end annotation


# static fields
.field static final synthetic i:Z


# instance fields
.field a:J

.field b:J

.field final c:I

.field final d:Lbsgamesdkhttp/a/e/n;

.field final e:Lbsgamesdkhttp/a/e/d$a;

.field final f:Lbsgamesdkhttp/a/e/d$c;

.field final g:Lbsgamesdkhttp/a/e/d$c;

.field h:Lbsgamesdkhttp/a/e/b;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/a/e/j;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/a/e/j;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private final m:Lbsgamesdkhttp/a/e/d$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lbsgamesdkhttp/a/e/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lbsgamesdkhttp/a/e/d;->i:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(ILbsgamesdkhttp/a/e/n;ZZLjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbsgamesdkhttp/a/e/n;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/a/e/j;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbsgamesdkhttp/a/e/d;->a:J

    new-instance v0, Lbsgamesdkhttp/a/e/d$c;

    invoke-direct {v0, p0}, Lbsgamesdkhttp/a/e/d$c;-><init>(Lbsgamesdkhttp/a/e/d;)V

    iput-object v0, p0, Lbsgamesdkhttp/a/e/d;->f:Lbsgamesdkhttp/a/e/d$c;

    new-instance v0, Lbsgamesdkhttp/a/e/d$c;

    invoke-direct {v0, p0}, Lbsgamesdkhttp/a/e/d$c;-><init>(Lbsgamesdkhttp/a/e/d;)V

    iput-object v0, p0, Lbsgamesdkhttp/a/e/d;->g:Lbsgamesdkhttp/a/e/d$c;

    const/4 v0, 0x0

    iput-object v0, p0, Lbsgamesdkhttp/a/e/d;->h:Lbsgamesdkhttp/a/e/b;

    if-nez p2, :cond_22

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    if-nez p5, :cond_2c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    iput p1, p0, Lbsgamesdkhttp/a/e/d;->c:I

    iput-object p2, p0, Lbsgamesdkhttp/a/e/d;->d:Lbsgamesdkhttp/a/e/n;

    iget-object v0, p2, Lbsgamesdkhttp/a/e/n;->m:Lbsgamesdkhttp/a/e/i;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/i;->d()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lbsgamesdkhttp/a/e/d;->b:J

    new-instance v0, Lbsgamesdkhttp/a/e/d$b;

    iget-object v1, p2, Lbsgamesdkhttp/a/e/n;->l:Lbsgamesdkhttp/a/e/i;

    invoke-virtual {v1}, Lbsgamesdkhttp/a/e/i;->d()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, p0, v2, v3}, Lbsgamesdkhttp/a/e/d$b;-><init>(Lbsgamesdkhttp/a/e/d;J)V

    iput-object v0, p0, Lbsgamesdkhttp/a/e/d;->m:Lbsgamesdkhttp/a/e/d$b;

    new-instance v0, Lbsgamesdkhttp/a/e/d$a;

    invoke-direct {v0, p0}, Lbsgamesdkhttp/a/e/d$a;-><init>(Lbsgamesdkhttp/a/e/d;)V

    iput-object v0, p0, Lbsgamesdkhttp/a/e/d;->e:Lbsgamesdkhttp/a/e/d$a;

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->m:Lbsgamesdkhttp/a/e/d$b;

    iput-boolean p4, v0, Lbsgamesdkhttp/a/e/d$b;->b:Z

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->e:Lbsgamesdkhttp/a/e/d$a;

    iput-boolean p3, v0, Lbsgamesdkhttp/a/e/d$a;->b:Z

    iput-object p5, p0, Lbsgamesdkhttp/a/e/d;->j:Ljava/util/List;

    return-void
.end method

.method private d(Lbsgamesdkhttp/a/e/b;)Z
    .registers 4

    const/4 v0, 0x0

    sget-boolean v1, Lbsgamesdkhttp/a/e/d;->i:Z

    if-nez v1, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    monitor-enter p0

    :try_start_12
    iget-object v1, p0, Lbsgamesdkhttp/a/e/d;->h:Lbsgamesdkhttp/a/e/b;

    if-eqz v1, :cond_18

    monitor-exit p0

    :goto_17
    return v0

    :cond_18
    iget-object v1, p0, Lbsgamesdkhttp/a/e/d;->m:Lbsgamesdkhttp/a/e/d$b;

    iget-boolean v1, v1, Lbsgamesdkhttp/a/e/d$b;->b:Z

    if-eqz v1, :cond_29

    iget-object v1, p0, Lbsgamesdkhttp/a/e/d;->e:Lbsgamesdkhttp/a/e/d$a;

    iget-boolean v1, v1, Lbsgamesdkhttp/a/e/d$a;->b:Z

    if-eqz v1, :cond_29

    monitor-exit p0

    goto :goto_17

    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_26

    throw v0

    :cond_29
    :try_start_29
    iput-object p1, p0, Lbsgamesdkhttp/a/e/d;->h:Lbsgamesdkhttp/a/e/b;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_26

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->d:Lbsgamesdkhttp/a/e/n;

    iget v1, p0, Lbsgamesdkhttp/a/e/d;->c:I

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/a/e/n;->b(I)Lbsgamesdkhttp/a/e/d;

    const/4 v0, 0x1

    goto :goto_17
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lbsgamesdkhttp/a/e/d;->c:I

    return v0
.end method

.method a(J)V
    .registers 6

    iget-wide v0, p0, Lbsgamesdkhttp/a/e/d;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lbsgamesdkhttp/a/e/d;->b:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_e
    return-void
.end method

.method public a(Lbsgamesdkhttp/a/e/b;)V
    .registers 4

    invoke-direct {p0, p1}, Lbsgamesdkhttp/a/e/d;->d(Lbsgamesdkhttp/a/e/b;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->d:Lbsgamesdkhttp/a/e/n;

    iget v1, p0, Lbsgamesdkhttp/a/e/d;->c:I

    invoke-virtual {v0, v1, p1}, Lbsgamesdkhttp/a/e/n;->b(ILbsgamesdkhttp/a/e/b;)V

    goto :goto_6
.end method

.method a(Lbsgamesdkio/e;I)V
    .registers 7

    sget-boolean v0, Lbsgamesdkhttp/a/e/d;->i:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->m:Lbsgamesdkhttp/a/e/d$b;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lbsgamesdkhttp/a/e/d$b;->a(Lbsgamesdkio/e;J)V

    return-void
.end method

.method a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/a/e/j;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    sget-boolean v1, Lbsgamesdkhttp/a/e/d;->i:Z

    if-nez v1, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_13
    iput-boolean v1, p0, Lbsgamesdkhttp/a/e/d;->l:Z

    iget-object v1, p0, Lbsgamesdkhttp/a/e/d;->k:Ljava/util/List;

    if-nez v1, :cond_2d

    iput-object p1, p0, Lbsgamesdkhttp/a/e/d;->k:Ljava/util/List;

    invoke-virtual {p0}, Lbsgamesdkhttp/a/e/d;->b()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :goto_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_41

    if-nez v0, :cond_2c

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->d:Lbsgamesdkhttp/a/e/n;

    iget v1, p0, Lbsgamesdkhttp/a/e/d;->c:I

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/a/e/n;->b(I)Lbsgamesdkhttp/a/e/d;

    :cond_2c
    return-void

    :cond_2d
    :try_start_2d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lbsgamesdkhttp/a/e/d;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v1, p0, Lbsgamesdkhttp/a/e/d;->k:Ljava/util/List;

    goto :goto_22

    :catchall_41
    move-exception v0

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_2d .. :try_end_43} :catchall_41

    throw v0
.end method

.method public b(Lbsgamesdkhttp/a/e/b;)V
    .registers 4

    invoke-direct {p0, p1}, Lbsgamesdkhttp/a/e/d;->d(Lbsgamesdkhttp/a/e/b;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->d:Lbsgamesdkhttp/a/e/n;

    iget v1, p0, Lbsgamesdkhttp/a/e/d;->c:I

    invoke-virtual {v0, v1, p1}, Lbsgamesdkhttp/a/e/n;->a(ILbsgamesdkhttp/a/e/b;)V

    goto :goto_6
.end method

.method public declared-synchronized b()Z
    .registers 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lbsgamesdkhttp/a/e/d;->h:Lbsgamesdkhttp/a/e/b;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_26

    if-eqz v1, :cond_8

    :cond_6
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v1, p0, Lbsgamesdkhttp/a/e/d;->m:Lbsgamesdkhttp/a/e/d$b;

    iget-boolean v1, v1, Lbsgamesdkhttp/a/e/d$b;->b:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Lbsgamesdkhttp/a/e/d;->m:Lbsgamesdkhttp/a/e/d$b;

    iget-boolean v1, v1, Lbsgamesdkhttp/a/e/d$b;->a:Z

    if-eqz v1, :cond_24

    :cond_14
    iget-object v1, p0, Lbsgamesdkhttp/a/e/d;->e:Lbsgamesdkhttp/a/e/d$a;

    iget-boolean v1, v1, Lbsgamesdkhttp/a/e/d$a;->b:Z

    if-nez v1, :cond_20

    iget-object v1, p0, Lbsgamesdkhttp/a/e/d;->e:Lbsgamesdkhttp/a/e/d$a;

    iget-boolean v1, v1, Lbsgamesdkhttp/a/e/d$a;->a:Z

    if-eqz v1, :cond_24

    :cond_20
    iget-boolean v1, p0, Lbsgamesdkhttp/a/e/d;->l:Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_26

    if-nez v1, :cond_6

    :cond_24
    const/4 v0, 0x1

    goto :goto_6

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(Lbsgamesdkhttp/a/e/b;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->h:Lbsgamesdkhttp/a/e/b;

    if-nez v0, :cond_a

    iput-object p1, p0, Lbsgamesdkhttp/a/e/d;->h:Lbsgamesdkhttp/a/e/b;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lbsgamesdkhttp/a/e/d;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    move v0, v1

    :goto_9
    iget-object v3, p0, Lbsgamesdkhttp/a/e/d;->d:Lbsgamesdkhttp/a/e/n;

    iget-boolean v3, v3, Lbsgamesdkhttp/a/e/n;->b:Z

    if-ne v3, v0, :cond_12

    :goto_f
    return v1

    :cond_10
    move v0, v2

    goto :goto_9

    :cond_12
    move v1, v2

    goto :goto_f
.end method

.method public declared-synchronized d()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/a/e/j;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lbsgamesdkhttp/a/e/d;->c()Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "servers cannot read response headers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_12
    :try_start_12
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->f:Lbsgamesdkhttp/a/e/d$c;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/d$c;->c()V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_f

    :goto_17
    :try_start_17
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->k:Ljava/util/List;

    if-nez v0, :cond_2a

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->h:Lbsgamesdkhttp/a/e/b;

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lbsgamesdkhttp/a/e/d;->l()V
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_23

    goto :goto_17

    :catchall_23
    move-exception v0

    :try_start_24
    iget-object v1, p0, Lbsgamesdkhttp/a/e/d;->f:Lbsgamesdkhttp/a/e/d$c;

    invoke-virtual {v1}, Lbsgamesdkhttp/a/e/d$c;->b()V

    throw v0

    :cond_2a
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->f:Lbsgamesdkhttp/a/e/d$c;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/d$c;->b()V

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->k:Ljava/util/List;

    if-eqz v0, :cond_38

    const/4 v1, 0x0

    iput-object v1, p0, Lbsgamesdkhttp/a/e/d;->k:Ljava/util/List;
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_f

    monitor-exit p0

    return-object v0

    :cond_38
    :try_start_38
    new-instance v0, Lbsgamesdkhttp/a/e/am;

    iget-object v1, p0, Lbsgamesdkhttp/a/e/d;->h:Lbsgamesdkhttp/a/e/b;

    invoke-direct {v0, v1}, Lbsgamesdkhttp/a/e/am;-><init>(Lbsgamesdkhttp/a/e/b;)V

    throw v0
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_f
.end method

.method public e()Lbsgamesdkio/q;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->f:Lbsgamesdkhttp/a/e/d$c;

    return-object v0
.end method

.method public f()Lbsgamesdkio/q;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->g:Lbsgamesdkhttp/a/e/d$c;

    return-object v0
.end method

.method public g()Lbsgamesdkio/p;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->m:Lbsgamesdkhttp/a/e/d$b;

    return-object v0
.end method

.method public h()Lbsgamesdkio/o;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lbsgamesdkhttp/a/e/d;->l:Z

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lbsgamesdkhttp/a/e/d;->c()Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0

    :cond_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_13

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->e:Lbsgamesdkhttp/a/e/d$a;

    return-object v0
.end method

.method i()V
    .registers 3

    sget-boolean v0, Lbsgamesdkhttp/a/e/d;->i:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    monitor-enter p0

    :try_start_11
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->m:Lbsgamesdkhttp/a/e/d$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbsgamesdkhttp/a/e/d$b;->b:Z

    invoke-virtual {p0}, Lbsgamesdkhttp/a/e/d;->b()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_28

    if-nez v0, :cond_27

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->d:Lbsgamesdkhttp/a/e/n;

    iget v1, p0, Lbsgamesdkhttp/a/e/d;->c:I

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/a/e/n;->b(I)Lbsgamesdkhttp/a/e/d;

    :cond_27
    return-void

    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method j()V
    .registers 3

    sget-boolean v0, Lbsgamesdkhttp/a/e/d;->i:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    monitor-enter p0

    :try_start_11
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->m:Lbsgamesdkhttp/a/e/d$b;

    iget-boolean v0, v0, Lbsgamesdkhttp/a/e/d$b;->b:Z

    if-nez v0, :cond_37

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->m:Lbsgamesdkhttp/a/e/d$b;

    iget-boolean v0, v0, Lbsgamesdkhttp/a/e/d$b;->a:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->e:Lbsgamesdkhttp/a/e/d$a;

    iget-boolean v0, v0, Lbsgamesdkhttp/a/e/d$a;->b:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->e:Lbsgamesdkhttp/a/e/d$a;

    iget-boolean v0, v0, Lbsgamesdkhttp/a/e/d$a;->a:Z

    if-eqz v0, :cond_37

    :cond_29
    const/4 v0, 0x1

    :goto_2a
    invoke-virtual {p0}, Lbsgamesdkhttp/a/e/d;->b()Z

    move-result v1

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_39

    if-eqz v0, :cond_3c

    sget-object v0, Lbsgamesdkhttp/a/e/b;->f:Lbsgamesdkhttp/a/e/b;

    invoke-virtual {p0, v0}, Lbsgamesdkhttp/a/e/d;->a(Lbsgamesdkhttp/a/e/b;)V

    :cond_36
    :goto_36
    return-void

    :cond_37
    const/4 v0, 0x0

    goto :goto_2a

    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0

    :cond_3c
    if-nez v1, :cond_36

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->d:Lbsgamesdkhttp/a/e/n;

    iget v1, p0, Lbsgamesdkhttp/a/e/d;->c:I

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/a/e/n;->b(I)Lbsgamesdkhttp/a/e/d;

    goto :goto_36
.end method

.method k()V
    .registers 3

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->e:Lbsgamesdkhttp/a/e/d$a;

    iget-boolean v0, v0, Lbsgamesdkhttp/a/e/d$a;->a:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->e:Lbsgamesdkhttp/a/e/d$a;

    iget-boolean v0, v0, Lbsgamesdkhttp/a/e/d$a;->b:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iget-object v0, p0, Lbsgamesdkhttp/a/e/d;->h:Lbsgamesdkhttp/a/e/b;

    if-eqz v0, :cond_28

    new-instance v0, Lbsgamesdkhttp/a/e/am;

    iget-object v1, p0, Lbsgamesdkhttp/a/e/d;->h:Lbsgamesdkhttp/a/e/b;

    invoke-direct {v0, v1}, Lbsgamesdkhttp/a/e/am;-><init>(Lbsgamesdkhttp/a/e/b;)V

    throw v0

    :cond_28
    return-void
.end method

.method l()V
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method
