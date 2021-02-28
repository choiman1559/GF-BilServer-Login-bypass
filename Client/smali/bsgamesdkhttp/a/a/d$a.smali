.class public final Lbsgamesdkhttp/a/a/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final a:Lbsgamesdkhttp/a/a/d$b;

.field final b:[Z

.field final synthetic c:Lbsgamesdkhttp/a/a/d;

.field private d:Z


# virtual methods
.method a()V
    .registers 4

    iget-object v0, p0, Lbsgamesdkhttp/a/a/d$a;->a:Lbsgamesdkhttp/a/a/d$b;

    iget-object v0, v0, Lbsgamesdkhttp/a/a/d$b;->f:Lbsgamesdkhttp/a/a/d$a;

    if-ne v0, p0, :cond_22

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lbsgamesdkhttp/a/a/d$a;->c:Lbsgamesdkhttp/a/a/d;

    iget v1, v1, Lbsgamesdkhttp/a/a/d;->c:I

    if-ge v0, v1, :cond_1d

    :try_start_d
    iget-object v1, p0, Lbsgamesdkhttp/a/a/d$a;->c:Lbsgamesdkhttp/a/a/d;

    iget-object v1, v1, Lbsgamesdkhttp/a/a/d;->b:Lbsgamesdkhttp/a/f/a;

    iget-object v2, p0, Lbsgamesdkhttp/a/a/d$a;->a:Lbsgamesdkhttp/a/a/d$b;

    iget-object v2, v2, Lbsgamesdkhttp/a/a/d$b;->d:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lbsgamesdkhttp/a/f/a;->a(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a} :catch_23

    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1d
    iget-object v0, p0, Lbsgamesdkhttp/a/a/d$a;->a:Lbsgamesdkhttp/a/a/d$b;

    const/4 v1, 0x0

    iput-object v1, v0, Lbsgamesdkhttp/a/a/d$b;->f:Lbsgamesdkhttp/a/a/d$a;

    :cond_22
    return-void

    :catch_23
    move-exception v1

    goto :goto_1a
.end method

.method public b()V
    .registers 4

    iget-object v1, p0, Lbsgamesdkhttp/a/a/d$a;->c:Lbsgamesdkhttp/a/a/d;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lbsgamesdkhttp/a/a/d$a;->d:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Lbsgamesdkhttp/a/a/d$a;->a:Lbsgamesdkhttp/a/a/d$b;

    iget-object v0, v0, Lbsgamesdkhttp/a/a/d$b;->f:Lbsgamesdkhttp/a/a/d$a;

    if-ne v0, p0, :cond_1c

    iget-object v0, p0, Lbsgamesdkhttp/a/a/d$a;->c:Lbsgamesdkhttp/a/a/d;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lbsgamesdkhttp/a/a/d;->a(Lbsgamesdkhttp/a/a/d$a;Z)V

    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsgamesdkhttp/a/a/d$a;->d:Z

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_d

    return-void
.end method
