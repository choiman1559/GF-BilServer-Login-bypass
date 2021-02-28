.class Lbsgamesdkhttp/a/e/n$j;
.super Lbsgamesdkhttp/a/b;

# interfaces
.implements Lbsgamesdkhttp/a/e/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/a/e/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field final a:Lbsgamesdkhttp/a/e/c;

.field final synthetic c:Lbsgamesdkhttp/a/e/n;


# direct methods
.method constructor <init>(Lbsgamesdkhttp/a/e/n;Lbsgamesdkhttp/a/e/c;)V
    .registers 7

    iput-object p1, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lbsgamesdkhttp/a/e/n;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lbsgamesdkhttp/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lbsgamesdkhttp/a/e/n$j;->a:Lbsgamesdkhttp/a/e/c;

    return-void
.end method

.method private a(Lbsgamesdkhttp/a/e/i;)V
    .registers 8

    sget-object v0, Lbsgamesdkhttp/a/e/n;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lbsgamesdkhttp/a/e/n$j$c;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    iget-object v5, v5, Lbsgamesdkhttp/a/e/n;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Lbsgamesdkhttp/a/e/n$j$c;-><init>(Lbsgamesdkhttp/a/e/n$j;Ljava/lang/String;[Ljava/lang/Object;Lbsgamesdkhttp/a/e/i;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(IIIZ)V
    .registers 5

    return-void
.end method

.method public a(IILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/a/e/j;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v0, p2, p3}, Lbsgamesdkhttp/a/e/n;->a(ILjava/util/List;)V

    return-void
.end method

.method public a(IJ)V
    .registers 8

    if-nez p1, :cond_16

    iget-object v1, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    iget-wide v2, v0, Lbsgamesdkhttp/a/e/n;->k:J

    add-long/2addr v2, p2

    iput-wide v2, v0, Lbsgamesdkhttp/a/e/n;->k:J

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :cond_12
    :goto_12
    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    :cond_16
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v0, p1}, Lbsgamesdkhttp/a/e/n;->a(I)Lbsgamesdkhttp/a/e/d;

    move-result-object v1

    if-eqz v1, :cond_12

    monitor-enter v1

    :try_start_1f
    invoke-virtual {v1, p2, p3}, Lbsgamesdkhttp/a/e/d;->a(J)V

    monitor-exit v1

    goto :goto_12

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_24

    throw v0
.end method

.method public a(ILbsgamesdkhttp/a/e/b;)V
    .registers 4

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v0, p1}, Lbsgamesdkhttp/a/e/n;->d(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v0, p1, p2}, Lbsgamesdkhttp/a/e/n;->c(ILbsgamesdkhttp/a/e/b;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v0, p1}, Lbsgamesdkhttp/a/e/n;->b(I)Lbsgamesdkhttp/a/e/d;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0, p2}, Lbsgamesdkhttp/a/e/d;->c(Lbsgamesdkhttp/a/e/b;)V

    goto :goto_d
.end method

.method public a(ILbsgamesdkhttp/a/e/b;Lbsgamesdkio/ByteString;)V
    .registers 9

    invoke-virtual {p3}, Lbsgamesdkio/ByteString;->size()I

    move-result v0

    if-lez v0, :cond_6

    :cond_6
    iget-object v1, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/n;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    iget-object v2, v2, Lbsgamesdkhttp/a/e/n;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lbsgamesdkhttp/a/e/d;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbsgamesdkhttp/a/e/d;

    iget-object v2, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lbsgamesdkhttp/a/e/n;->h:Z

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_4a

    array-length v2, v0

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v2, :cond_4d

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lbsgamesdkhttp/a/e/d;->a()I

    move-result v4

    if-le v4, p1, :cond_47

    invoke-virtual {v3}, Lbsgamesdkhttp/a/e/d;->c()Z

    move-result v4

    if-eqz v4, :cond_47

    sget-object v4, Lbsgamesdkhttp/a/e/b;->e:Lbsgamesdkhttp/a/e/b;

    invoke-virtual {v3, v4}, Lbsgamesdkhttp/a/e/d;->c(Lbsgamesdkhttp/a/e/b;)V

    iget-object v4, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v3}, Lbsgamesdkhttp/a/e/d;->a()I

    move-result v3

    invoke-virtual {v4, v3}, Lbsgamesdkhttp/a/e/n;->b(I)Lbsgamesdkhttp/a/e/d;

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0

    :cond_4d
    return-void
.end method

.method public a(ZII)V
    .registers 7

    if-eqz p1, :cond_e

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v0, p2}, Lbsgamesdkhttp/a/e/n;->c(I)Lbsgamesdkhttp/a/e/g;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/g;->b()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p3, v2}, Lbsgamesdkhttp/a/e/n;->a(ZIILbsgamesdkhttp/a/e/g;)V

    goto :goto_d
.end method

.method public a(ZIILjava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/a/e/j;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v0, p2}, Lbsgamesdkhttp/a/e/n;->d(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v0, p2, p4, p1}, Lbsgamesdkhttp/a/e/n;->a(ILjava/util/List;Z)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v6, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    monitor-enter v6

    :try_start_11
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    iget-boolean v0, v0, Lbsgamesdkhttp/a/e/n;->h:Z

    if-eqz v0, :cond_1c

    monitor-exit v6

    goto :goto_d

    :catchall_19
    move-exception v0

    monitor-exit v6
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v0, p2}, Lbsgamesdkhttp/a/e/n;->a(I)Lbsgamesdkhttp/a/e/d;

    move-result-object v0

    if-nez v0, :cond_71

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    iget v0, v0, Lbsgamesdkhttp/a/e/n;->f:I

    if-gt p2, v0, :cond_2c

    monitor-exit v6

    goto :goto_d

    :cond_2c
    rem-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    iget v1, v1, Lbsgamesdkhttp/a/e/n;->g:I

    rem-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_38

    monitor-exit v6

    goto :goto_d

    :cond_38
    new-instance v0, Lbsgamesdkhttp/a/e/d;

    iget-object v2, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    const/4 v3, 0x0

    move v1, p2

    move v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lbsgamesdkhttp/a/e/d;-><init>(ILbsgamesdkhttp/a/e/n;ZZLjava/util/List;)V

    iget-object v1, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    iput p2, v1, Lbsgamesdkhttp/a/e/n;->f:I

    iget-object v1, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    iget-object v1, v1, Lbsgamesdkhttp/a/e/n;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsgamesdkhttp/a/e/n;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lbsgamesdkhttp/a/e/n$j$a;

    const-string v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    iget-object v7, v7, Lbsgamesdkhttp/a/e/n;->e:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, Lbsgamesdkhttp/a/e/n$j$a;-><init>(Lbsgamesdkhttp/a/e/n$j;Ljava/lang/String;[Ljava/lang/Object;Lbsgamesdkhttp/a/e/d;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v6

    goto :goto_d

    :cond_71
    monitor-exit v6
    :try_end_72
    .catchall {:try_start_1c .. :try_end_72} :catchall_19

    invoke-virtual {v0, p4}, Lbsgamesdkhttp/a/e/d;->a(Ljava/util/List;)V

    if-eqz p1, :cond_d

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/d;->i()V

    goto :goto_d
.end method

.method public a(ZILbsgamesdkio/e;I)V
    .registers 7

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v0, p2}, Lbsgamesdkhttp/a/e/n;->d(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v0, p2, p3, p4, p1}, Lbsgamesdkhttp/a/e/n;->a(ILbsgamesdkio/e;IZ)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v0, p2}, Lbsgamesdkhttp/a/e/n;->a(I)Lbsgamesdkhttp/a/e/d;

    move-result-object v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    sget-object v1, Lbsgamesdkhttp/a/e/b;->b:Lbsgamesdkhttp/a/e/b;

    invoke-virtual {v0, p2, v1}, Lbsgamesdkhttp/a/e/n;->a(ILbsgamesdkhttp/a/e/b;)V

    int-to-long v0, p4

    invoke-interface {p3, v0, v1}, Lbsgamesdkio/e;->g(J)V

    goto :goto_d

    :cond_22
    invoke-virtual {v0, p3, p4}, Lbsgamesdkhttp/a/e/d;->a(Lbsgamesdkio/e;I)V

    if-eqz p1, :cond_d

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/d;->i()V

    goto :goto_d
.end method

.method public a(ZLbsgamesdkhttp/a/e/i;)V
    .registers 16

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v8, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    monitor-enter v8

    :try_start_7
    iget-object v2, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    iget-object v2, v2, Lbsgamesdkhttp/a/e/n;->m:Lbsgamesdkhttp/a/e/i;

    invoke-virtual {v2}, Lbsgamesdkhttp/a/e/i;->d()I

    move-result v2

    if-eqz p1, :cond_18

    iget-object v3, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    iget-object v3, v3, Lbsgamesdkhttp/a/e/n;->m:Lbsgamesdkhttp/a/e/i;

    invoke-virtual {v3}, Lbsgamesdkhttp/a/e/i;->a()V

    :cond_18
    iget-object v3, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    iget-object v3, v3, Lbsgamesdkhttp/a/e/n;->m:Lbsgamesdkhttp/a/e/i;

    invoke-virtual {v3, p2}, Lbsgamesdkhttp/a/e/i;->a(Lbsgamesdkhttp/a/e/i;)V

    invoke-direct {p0, p2}, Lbsgamesdkhttp/a/e/n$j;->a(Lbsgamesdkhttp/a/e/i;)V

    iget-object v3, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    iget-object v3, v3, Lbsgamesdkhttp/a/e/n;->m:Lbsgamesdkhttp/a/e/i;

    invoke-virtual {v3}, Lbsgamesdkhttp/a/e/i;->d()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_9b

    if-eq v3, v2, :cond_9b

    sub-int v2, v3, v2

    int-to-long v2, v2

    iget-object v4, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    iget-boolean v4, v4, Lbsgamesdkhttp/a/e/n;->n:Z

    if-nez v4, :cond_42

    iget-object v4, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v4, v2, v3}, Lbsgamesdkhttp/a/e/n;->a(J)V

    iget-object v4, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lbsgamesdkhttp/a/e/n;->n:Z

    :cond_42
    iget-object v4, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    iget-object v4, v4, Lbsgamesdkhttp/a/e/n;->d:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_98

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/n;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    iget-object v4, v4, Lbsgamesdkhttp/a/e/n;->d:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lbsgamesdkhttp/a/e/d;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbsgamesdkhttp/a/e/d;

    move-wide v4, v2

    move-object v2, v0

    :goto_66
    sget-object v0, Lbsgamesdkhttp/a/e/n;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lbsgamesdkhttp/a/e/n$j$b;

    const-string v9, "OkHttp %s settings"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    iget-object v12, v12, Lbsgamesdkhttp/a/e/n;->e:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-direct {v3, p0, v9, v10}, Lbsgamesdkhttp/a/e/n$j$b;-><init>(Lbsgamesdkhttp/a/e/n$j;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v8
    :try_end_7d
    .catchall {:try_start_7 .. :try_end_7d} :catchall_91

    if-eqz v2, :cond_97

    cmp-long v0, v4, v6

    if-eqz v0, :cond_97

    array-length v3, v2

    move v0, v1

    :goto_85
    if-ge v0, v3, :cond_97

    aget-object v1, v2, v0

    monitor-enter v1

    :try_start_8a
    invoke-virtual {v1, v4, v5}, Lbsgamesdkhttp/a/e/d;->a(J)V

    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_94

    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    :catchall_91
    move-exception v0

    :try_start_92
    monitor-exit v8
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v0

    :catchall_94
    move-exception v0

    :try_start_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw v0

    :cond_97
    return-void

    :cond_98
    move-wide v4, v2

    move-object v2, v0

    goto :goto_66

    :cond_9b
    move-object v2, v0

    move-wide v4, v6

    goto :goto_66
.end method

.method protected b()V
    .registers 6

    sget-object v0, Lbsgamesdkhttp/a/e/b;->c:Lbsgamesdkhttp/a/e/b;

    sget-object v2, Lbsgamesdkhttp/a/e/b;->c:Lbsgamesdkhttp/a/e/b;

    :try_start_4
    iget-object v1, p0, Lbsgamesdkhttp/a/e/n$j;->a:Lbsgamesdkhttp/a/e/c;

    invoke-virtual {v1, p0}, Lbsgamesdkhttp/a/e/c;->a(Lbsgamesdkhttp/a/e/c$a;)V

    :cond_9
    iget-object v1, p0, Lbsgamesdkhttp/a/e/n$j;->a:Lbsgamesdkhttp/a/e/c;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p0}, Lbsgamesdkhttp/a/e/c;->a(ZLbsgamesdkhttp/a/e/c$a;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v0, Lbsgamesdkhttp/a/e/b;->a:Lbsgamesdkhttp/a/e/b;

    sget-object v1, Lbsgamesdkhttp/a/e/b;->f:Lbsgamesdkhttp/a/e/b;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_16} :catch_21
    .catchall {:try_start_4 .. :try_end_16} :catchall_31

    :try_start_16
    iget-object v2, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v2, v0, v1}, Lbsgamesdkhttp/a/e/n;->a(Lbsgamesdkhttp/a/e/b;Lbsgamesdkhttp/a/e/b;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_46

    :goto_1b
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j;->a:Lbsgamesdkhttp/a/e/c;

    invoke-static {v0}, Lbsgamesdkhttp/a/c;->a(Ljava/io/Closeable;)V

    :goto_20
    return-void

    :catch_21
    move-exception v1

    :try_start_22
    sget-object v1, Lbsgamesdkhttp/a/e/b;->b:Lbsgamesdkhttp/a/e/b;
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_31

    :try_start_24
    sget-object v0, Lbsgamesdkhttp/a/e/b;->b:Lbsgamesdkhttp/a/e/b;
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_42

    :try_start_26
    iget-object v2, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v2, v1, v0}, Lbsgamesdkhttp/a/e/n;->a(Lbsgamesdkhttp/a/e/b;Lbsgamesdkhttp/a/e/b;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_44

    :goto_2b
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j;->a:Lbsgamesdkhttp/a/e/c;

    invoke-static {v0}, Lbsgamesdkhttp/a/c;->a(Ljava/io/Closeable;)V

    goto :goto_20

    :catchall_31
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_35
    :try_start_35
    iget-object v3, p0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v3, v1, v2}, Lbsgamesdkhttp/a/e/n;->a(Lbsgamesdkhttp/a/e/b;Lbsgamesdkhttp/a/e/b;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3a} :catch_40

    :goto_3a
    iget-object v1, p0, Lbsgamesdkhttp/a/e/n$j;->a:Lbsgamesdkhttp/a/e/c;

    invoke-static {v1}, Lbsgamesdkhttp/a/c;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_40
    move-exception v1

    goto :goto_3a

    :catchall_42
    move-exception v0

    goto :goto_35

    :catch_44
    move-exception v0

    goto :goto_2b

    :catch_46
    move-exception v0

    goto :goto_1b
.end method
