.class public final Lbsgamesdkhttp/a/b/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsgamesdkhttp/a/b/g$a;
    }
.end annotation


# static fields
.field static final synthetic b:Z


# instance fields
.field public final a:Lbsgamesdkhttp/a;

.field private c:Lbsgamesdkhttp/aa;

.field private final d:Lbsgamesdkhttp/j;

.field private final e:Ljava/lang/Object;

.field private final f:Lbsgamesdkhttp/a/b/e;

.field private g:I

.field private h:Lbsgamesdkhttp/a/b/c;

.field private i:Z

.field private j:Z

.field private k:Lbsgamesdkhttp/a/c/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lbsgamesdkhttp/a/b/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lbsgamesdkhttp/a/b/g;->b:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lbsgamesdkhttp/j;Lbsgamesdkhttp/a;Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsgamesdkhttp/a/b/g;->d:Lbsgamesdkhttp/j;

    iput-object p2, p0, Lbsgamesdkhttp/a/b/g;->a:Lbsgamesdkhttp/a;

    new-instance v0, Lbsgamesdkhttp/a/b/e;

    invoke-direct {p0}, Lbsgamesdkhttp/a/b/g;->f()Lbsgamesdkhttp/a/b/d;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lbsgamesdkhttp/a/b/e;-><init>(Lbsgamesdkhttp/a;Lbsgamesdkhttp/a/b/d;)V

    iput-object v0, p0, Lbsgamesdkhttp/a/b/g;->f:Lbsgamesdkhttp/a/b/e;

    iput-object p3, p0, Lbsgamesdkhttp/a/b/g;->e:Ljava/lang/Object;

    return-void
.end method

.method private a(IIIZ)Lbsgamesdkhttp/a/b/c;
    .registers 11

    iget-object v1, p0, Lbsgamesdkhttp/a/b/g;->d:Lbsgamesdkhttp/j;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lbsgamesdkhttp/a/b/g;->i:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "released"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    :cond_12
    :try_start_12
    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->k:Lbsgamesdkhttp/a/c/c;

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "codec != null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iget-boolean v0, p0, Lbsgamesdkhttp/a/b/g;->j:Z

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->h:Lbsgamesdkhttp/a/b/c;

    if-eqz v0, :cond_34

    iget-boolean v2, v0, Lbsgamesdkhttp/a/b/c;->a:Z

    if-nez v2, :cond_34

    monitor-exit v1

    :goto_33
    return-object v0

    :cond_34
    sget-object v0, Lbsgamesdkhttp/a/a;->a:Lbsgamesdkhttp/a/a;

    iget-object v2, p0, Lbsgamesdkhttp/a/b/g;->d:Lbsgamesdkhttp/j;

    iget-object v3, p0, Lbsgamesdkhttp/a/b/g;->a:Lbsgamesdkhttp/a;

    invoke-virtual {v0, v2, v3, p0}, Lbsgamesdkhttp/a/a;->a(Lbsgamesdkhttp/j;Lbsgamesdkhttp/a;Lbsgamesdkhttp/a/b/g;)Lbsgamesdkhttp/a/b/c;

    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->h:Lbsgamesdkhttp/a/b/c;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->h:Lbsgamesdkhttp/a/b/c;

    monitor-exit v1

    goto :goto_33

    :cond_45
    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->c:Lbsgamesdkhttp/aa;

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_12 .. :try_end_48} :catchall_f

    if-nez v0, :cond_50

    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->f:Lbsgamesdkhttp/a/b/e;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/b/e;->b()Lbsgamesdkhttp/aa;

    move-result-object v0

    :cond_50
    iget-object v2, p0, Lbsgamesdkhttp/a/b/g;->d:Lbsgamesdkhttp/j;

    monitor-enter v2

    :try_start_53
    iput-object v0, p0, Lbsgamesdkhttp/a/b/g;->c:Lbsgamesdkhttp/aa;

    const/4 v1, 0x0

    iput v1, p0, Lbsgamesdkhttp/a/b/g;->g:I

    new-instance v1, Lbsgamesdkhttp/a/b/c;

    iget-object v3, p0, Lbsgamesdkhttp/a/b/g;->d:Lbsgamesdkhttp/j;

    invoke-direct {v1, v3, v0}, Lbsgamesdkhttp/a/b/c;-><init>(Lbsgamesdkhttp/j;Lbsgamesdkhttp/aa;)V

    invoke-virtual {p0, v1}, Lbsgamesdkhttp/a/b/g;->a(Lbsgamesdkhttp/a/b/c;)V

    iget-boolean v0, p0, Lbsgamesdkhttp/a/b/g;->j:Z

    if-eqz v0, :cond_71

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_6e
    move-exception v0

    monitor-exit v2
    :try_end_70
    .catchall {:try_start_53 .. :try_end_70} :catchall_6e

    throw v0

    :cond_71
    :try_start_71
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_6e

    invoke-virtual {v1, p1, p2, p3, p4}, Lbsgamesdkhttp/a/b/c;->a(IIIZ)V

    invoke-direct {p0}, Lbsgamesdkhttp/a/b/g;->f()Lbsgamesdkhttp/a/b/d;

    move-result-object v0

    invoke-virtual {v1}, Lbsgamesdkhttp/a/b/c;->a()Lbsgamesdkhttp/aa;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbsgamesdkhttp/a/b/d;->b(Lbsgamesdkhttp/aa;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lbsgamesdkhttp/a/b/g;->d:Lbsgamesdkhttp/j;

    monitor-enter v2

    :try_start_84
    sget-object v3, Lbsgamesdkhttp/a/a;->a:Lbsgamesdkhttp/a/a;

    iget-object v4, p0, Lbsgamesdkhttp/a/b/g;->d:Lbsgamesdkhttp/j;

    invoke-virtual {v3, v4, v1}, Lbsgamesdkhttp/a/a;->b(Lbsgamesdkhttp/j;Lbsgamesdkhttp/a/b/c;)V

    invoke-virtual {v1}, Lbsgamesdkhttp/a/b/c;->d()Z

    move-result v3

    if-eqz v3, :cond_a8

    sget-object v0, Lbsgamesdkhttp/a/a;->a:Lbsgamesdkhttp/a/a;

    iget-object v1, p0, Lbsgamesdkhttp/a/b/g;->d:Lbsgamesdkhttp/j;

    iget-object v3, p0, Lbsgamesdkhttp/a/b/g;->a:Lbsgamesdkhttp/a;

    invoke-virtual {v0, v1, v3, p0}, Lbsgamesdkhttp/a/a;->b(Lbsgamesdkhttp/j;Lbsgamesdkhttp/a;Lbsgamesdkhttp/a/b/g;)Ljava/net/Socket;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkhttp/a/b/g;->h:Lbsgamesdkhttp/a/b/c;

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_a0
    monitor-exit v2
    :try_end_a1
    .catchall {:try_start_84 .. :try_end_a1} :catchall_a5

    invoke-static {v1}, Lbsgamesdkhttp/a/c;->a(Ljava/net/Socket;)V

    goto :goto_33

    :catchall_a5
    move-exception v0

    :try_start_a6
    monitor-exit v2
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw v0

    :cond_a8
    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_a0
.end method

.method private a(IIIZZ)Lbsgamesdkhttp/a/b/c;
    .registers 9

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lbsgamesdkhttp/a/b/g;->a(IIIZ)Lbsgamesdkhttp/a/b/c;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkhttp/a/b/g;->d:Lbsgamesdkhttp/j;

    monitor-enter v1

    :try_start_7
    iget v2, v0, Lbsgamesdkhttp/a/b/c;->b:I

    if-nez v2, :cond_d

    monitor-exit v1

    :cond_c
    return-object v0

    :cond_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_18

    invoke-virtual {v0, p5}, Lbsgamesdkhttp/a/b/c;->a(Z)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p0}, Lbsgamesdkhttp/a/b/g;->d()V

    goto :goto_0

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private a(ZZZ)Ljava/net/Socket;
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lbsgamesdkhttp/a/b/g;->b:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->d:Lbsgamesdkhttp/j;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    if-eqz p3, :cond_18

    iput-object v1, p0, Lbsgamesdkhttp/a/b/g;->k:Lbsgamesdkhttp/a/c/c;

    :cond_18
    if-eqz p2, :cond_1c

    iput-boolean v2, p0, Lbsgamesdkhttp/a/b/g;->i:Z

    :cond_1c
    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->h:Lbsgamesdkhttp/a/b/c;

    if-eqz v0, :cond_60

    if-eqz p1, :cond_26

    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->h:Lbsgamesdkhttp/a/b/c;

    iput-boolean v2, v0, Lbsgamesdkhttp/a/b/c;->a:Z

    :cond_26
    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->k:Lbsgamesdkhttp/a/c/c;

    if-nez v0, :cond_60

    iget-boolean v0, p0, Lbsgamesdkhttp/a/b/g;->i:Z

    if-nez v0, :cond_34

    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->h:Lbsgamesdkhttp/a/b/c;

    iget-boolean v0, v0, Lbsgamesdkhttp/a/b/c;->a:Z

    if-eqz v0, :cond_60

    :cond_34
    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->h:Lbsgamesdkhttp/a/b/c;

    invoke-direct {p0, v0}, Lbsgamesdkhttp/a/b/g;->c(Lbsgamesdkhttp/a/b/c;)V

    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->h:Lbsgamesdkhttp/a/b/c;

    iget-object v0, v0, Lbsgamesdkhttp/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->h:Lbsgamesdkhttp/a/b/c;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Lbsgamesdkhttp/a/b/c;->e:J

    sget-object v0, Lbsgamesdkhttp/a/a;->a:Lbsgamesdkhttp/a/a;

    iget-object v2, p0, Lbsgamesdkhttp/a/b/g;->d:Lbsgamesdkhttp/j;

    iget-object v3, p0, Lbsgamesdkhttp/a/b/g;->h:Lbsgamesdkhttp/a/b/c;

    invoke-virtual {v0, v2, v3}, Lbsgamesdkhttp/a/a;->a(Lbsgamesdkhttp/j;Lbsgamesdkhttp/a/b/c;)Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->h:Lbsgamesdkhttp/a/b/c;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/b/c;->b()Ljava/net/Socket;

    move-result-object v0

    :goto_5d
    iput-object v1, p0, Lbsgamesdkhttp/a/b/g;->h:Lbsgamesdkhttp/a/b/c;

    move-object v1, v0

    :cond_60
    return-object v1

    :cond_61
    move-object v0, v1

    goto :goto_5d
.end method

.method private c(Lbsgamesdkhttp/a/b/c;)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p1, Lbsgamesdkhttp/a/b/c;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_22

    iget-object v0, p1, Lbsgamesdkhttp/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1e

    iget-object v0, p1, Lbsgamesdkhttp/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private f()Lbsgamesdkhttp/a/b/d;
    .registers 3

    sget-object v0, Lbsgamesdkhttp/a/a;->a:Lbsgamesdkhttp/a/a;

    iget-object v1, p0, Lbsgamesdkhttp/a/b/g;->d:Lbsgamesdkhttp/j;

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/a/a;->a(Lbsgamesdkhttp/j;)Lbsgamesdkhttp/a/b/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lbsgamesdkhttp/a/c/c;
    .registers 3

    iget-object v1, p0, Lbsgamesdkhttp/a/b/g;->d:Lbsgamesdkhttp/j;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->k:Lbsgamesdkhttp/a/c/c;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public a(Lbsgamesdkhttp/u;Z)Lbsgamesdkhttp/a/c/c;
    .registers 9

    invoke-virtual {p1}, Lbsgamesdkhttp/u;->a()I

    move-result v1

    invoke-virtual {p1}, Lbsgamesdkhttp/u;->b()I

    move-result v2

    invoke-virtual {p1}, Lbsgamesdkhttp/u;->c()I

    move-result v3

    invoke-virtual {p1}, Lbsgamesdkhttp/u;->r()Z

    move-result v4

    move-object v0, p0

    move v5, p2

    :try_start_12
    invoke-direct/range {v0 .. v5}, Lbsgamesdkhttp/a/b/g;->a(IIIZZ)Lbsgamesdkhttp/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lbsgamesdkhttp/a/b/c;->a(Lbsgamesdkhttp/u;Lbsgamesdkhttp/a/b/g;)Lbsgamesdkhttp/a/c/c;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkhttp/a/b/g;->d:Lbsgamesdkhttp/j;

    monitor-enter v1
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_24

    :try_start_1d
    iput-object v0, p0, Lbsgamesdkhttp/a/b/g;->k:Lbsgamesdkhttp/a/c/c;

    monitor-exit v1

    return-object v0

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_21

    :try_start_23
    throw v0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_24} :catch_24

    :catch_24
    move-exception v0

    new-instance v1, Lbsgamesdkhttp/a/b/f;

    invoke-direct {v1, v0}, Lbsgamesdkhttp/a/b/f;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public a(Lbsgamesdkhttp/a/b/c;)V
    .registers 5

    sget-boolean v0, Lbsgamesdkhttp/a/b/g;->b:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->d:Lbsgamesdkhttp/j;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->h:Lbsgamesdkhttp/a/b/c;

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1c
    iput-object p1, p0, Lbsgamesdkhttp/a/b/g;->h:Lbsgamesdkhttp/a/b/c;

    iget-object v0, p1, Lbsgamesdkhttp/a/b/c;->d:Ljava/util/List;

    new-instance v1, Lbsgamesdkhttp/a/b/g$a;

    iget-object v2, p0, Lbsgamesdkhttp/a/b/g;->e:Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lbsgamesdkhttp/a/b/g$a;-><init>(Lbsgamesdkhttp/a/b/g;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/io/IOException;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lbsgamesdkhttp/a/b/g;->d:Lbsgamesdkhttp/j;

    monitor-enter v2

    :try_start_5
    instance-of v3, p1, Lbsgamesdkhttp/a/e/am;

    if-eqz v3, :cond_30

    check-cast p1, Lbsgamesdkhttp/a/e/am;

    iget-object v3, p1, Lbsgamesdkhttp/a/e/am;->a:Lbsgamesdkhttp/a/e/b;

    sget-object v4, Lbsgamesdkhttp/a/e/b;->e:Lbsgamesdkhttp/a/e/b;

    if-ne v3, v4, :cond_17

    iget v3, p0, Lbsgamesdkhttp/a/b/g;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lbsgamesdkhttp/a/b/g;->g:I

    :cond_17
    iget-object v3, p1, Lbsgamesdkhttp/a/e/am;->a:Lbsgamesdkhttp/a/e/b;

    sget-object v4, Lbsgamesdkhttp/a/e/b;->e:Lbsgamesdkhttp/a/e/b;

    if-ne v3, v4, :cond_21

    iget v3, p0, Lbsgamesdkhttp/a/b/g;->g:I

    if-le v3, v1, :cond_25

    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, Lbsgamesdkhttp/a/b/g;->c:Lbsgamesdkhttp/aa;

    :cond_24
    :goto_24
    move v0, v1

    :cond_25
    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3}, Lbsgamesdkhttp/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v0

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_57

    invoke-static {v0}, Lbsgamesdkhttp/a/c;->a(Ljava/net/Socket;)V

    return-void

    :cond_30
    :try_start_30
    iget-object v3, p0, Lbsgamesdkhttp/a/b/g;->h:Lbsgamesdkhttp/a/b/c;

    if-eqz v3, :cond_25

    iget-object v3, p0, Lbsgamesdkhttp/a/b/g;->h:Lbsgamesdkhttp/a/b/c;

    invoke-virtual {v3}, Lbsgamesdkhttp/a/b/c;->d()Z

    move-result v3

    if-eqz v3, :cond_40

    instance-of v3, p1, Lbsgamesdkhttp/a/e/a;

    if-eqz v3, :cond_25

    :cond_40
    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->h:Lbsgamesdkhttp/a/b/c;

    iget v0, v0, Lbsgamesdkhttp/a/b/c;->b:I

    if-nez v0, :cond_24

    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->c:Lbsgamesdkhttp/aa;

    if-eqz v0, :cond_53

    if-eqz p1, :cond_53

    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->f:Lbsgamesdkhttp/a/b/e;

    iget-object v3, p0, Lbsgamesdkhttp/a/b/g;->c:Lbsgamesdkhttp/aa;

    invoke-virtual {v0, v3, p1}, Lbsgamesdkhttp/a/b/e;->a(Lbsgamesdkhttp/aa;Ljava/io/IOException;)V

    :cond_53
    const/4 v0, 0x0

    iput-object v0, p0, Lbsgamesdkhttp/a/b/g;->c:Lbsgamesdkhttp/aa;

    goto :goto_24

    :catchall_57
    move-exception v0

    monitor-exit v2
    :try_end_59
    .catchall {:try_start_30 .. :try_end_59} :catchall_57

    throw v0
.end method

.method public a(ZLbsgamesdkhttp/a/c/c;)V
    .registers 7

    iget-object v1, p0, Lbsgamesdkhttp/a/b/g;->d:Lbsgamesdkhttp/j;

    monitor-enter v1

    if-eqz p2, :cond_9

    :try_start_5
    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->k:Lbsgamesdkhttp/a/c/c;

    if-eq p2, v0, :cond_31

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbsgamesdkhttp/a/b/g;->k:Lbsgamesdkhttp/a/c/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_2e

    throw v0

    :cond_31
    if-nez p1, :cond_3b

    :try_start_33
    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->h:Lbsgamesdkhttp/a/b/c;

    iget v2, v0, Lbsgamesdkhttp/a/b/c;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lbsgamesdkhttp/a/b/c;->b:I

    :cond_3b
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2}, Lbsgamesdkhttp/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_2e

    invoke-static {v0}, Lbsgamesdkhttp/a/c;->a(Ljava/net/Socket;)V

    return-void
.end method

.method public declared-synchronized b()Lbsgamesdkhttp/a/b/c;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->h:Lbsgamesdkhttp/a/b/c;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lbsgamesdkhttp/a/b/c;)Ljava/net/Socket;
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lbsgamesdkhttp/a/b/g;->b:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->d:Lbsgamesdkhttp/j;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->k:Lbsgamesdkhttp/a/c/c;

    if-nez v0, :cond_22

    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->h:Lbsgamesdkhttp/a/b/c;

    iget-object v0, v0, Lbsgamesdkhttp/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v2, :cond_28

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_28
    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->h:Lbsgamesdkhttp/a/b/c;

    iget-object v0, v0, Lbsgamesdkhttp/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-direct {p0, v2, v1, v1}, Lbsgamesdkhttp/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    iput-object p1, p0, Lbsgamesdkhttp/a/b/g;->h:Lbsgamesdkhttp/a/b/c;

    iget-object v2, p1, Lbsgamesdkhttp/a/b/c;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public c()V
    .registers 5

    iget-object v1, p0, Lbsgamesdkhttp/a/b/g;->d:Lbsgamesdkhttp/j;

    monitor-enter v1

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_6
    invoke-direct {p0, v0, v2, v3}, Lbsgamesdkhttp/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    invoke-static {v0}, Lbsgamesdkhttp/a/c;->a(Ljava/net/Socket;)V

    return-void

    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public d()V
    .registers 5

    iget-object v1, p0, Lbsgamesdkhttp/a/b/g;->d:Lbsgamesdkhttp/j;

    monitor-enter v1

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_6
    invoke-direct {p0, v0, v2, v3}, Lbsgamesdkhttp/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    invoke-static {v0}, Lbsgamesdkhttp/a/c;->a(Ljava/net/Socket;)V

    return-void

    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->c:Lbsgamesdkhttp/aa;

    if-nez v0, :cond_c

    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->f:Lbsgamesdkhttp/a/b/e;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/b/e;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lbsgamesdkhttp/a/b/g;->b()Lbsgamesdkhttp/a/b/c;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lbsgamesdkhttp/a/b/c;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lbsgamesdkhttp/a/b/g;->a:Lbsgamesdkhttp/a;

    invoke-virtual {v0}, Lbsgamesdkhttp/a;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
