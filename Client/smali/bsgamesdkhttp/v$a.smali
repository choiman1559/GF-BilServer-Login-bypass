.class final Lbsgamesdkhttp/v$a;
.super Lbsgamesdkhttp/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lbsgamesdkhttp/v;

.field private final c:Lbsgamesdkhttp/f;


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/v$a;->a:Lbsgamesdkhttp/v;

    iget-object v0, v0, Lbsgamesdkhttp/v;->c:Lbsgamesdkhttp/w;

    invoke-virtual {v0}, Lbsgamesdkhttp/w;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/HttpUrl;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_2
    iget-object v0, p0, Lbsgamesdkhttp/v$a;->a:Lbsgamesdkhttp/v;

    invoke-virtual {v0}, Lbsgamesdkhttp/v;->f()Lbsgamesdkhttp/y;

    move-result-object v0

    iget-object v3, p0, Lbsgamesdkhttp/v$a;->a:Lbsgamesdkhttp/v;

    iget-object v3, v3, Lbsgamesdkhttp/v;->b:Lbsgamesdkhttp/a/c/h;

    invoke-virtual {v3}, Lbsgamesdkhttp/a/c/h;->a()Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_79
    .catchall {:try_start_2 .. :try_end_f} :catchall_6c

    move-result v2

    if-eqz v2, :cond_2c

    :try_start_12
    iget-object v0, p0, Lbsgamesdkhttp/v$a;->c:Lbsgamesdkhttp/f;

    iget-object v2, p0, Lbsgamesdkhttp/v$a;->a:Lbsgamesdkhttp/v;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lbsgamesdkhttp/f;->a(Lbsgamesdkhttp/e;Ljava/io/IOException;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_20} :catch_34
    .catchall {:try_start_12 .. :try_end_20} :catchall_6c

    :goto_20
    iget-object v0, p0, Lbsgamesdkhttp/v$a;->a:Lbsgamesdkhttp/v;

    iget-object v0, v0, Lbsgamesdkhttp/v;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v0}, Lbsgamesdkhttp/u;->s()Lbsgamesdkhttp/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbsgamesdkhttp/n;->a(Lbsgamesdkhttp/v$a;)V

    :goto_2b
    return-void

    :cond_2c
    :try_start_2c
    iget-object v2, p0, Lbsgamesdkhttp/v$a;->c:Lbsgamesdkhttp/f;

    iget-object v3, p0, Lbsgamesdkhttp/v$a;->a:Lbsgamesdkhttp/v;

    invoke-interface {v2, v3, v0}, Lbsgamesdkhttp/f;->a(Lbsgamesdkhttp/e;Lbsgamesdkhttp/y;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_33} :catch_34
    .catchall {:try_start_2c .. :try_end_33} :catchall_6c

    goto :goto_20

    :catch_34
    move-exception v0

    :goto_35
    if-eqz v1, :cond_64

    :try_start_37
    invoke-static {}, Lbsgamesdkhttp/a/g/e;->b()Lbsgamesdkhttp/a/g/e;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbsgamesdkhttp/v$a;->a:Lbsgamesdkhttp/v;

    invoke-virtual {v4}, Lbsgamesdkhttp/v;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lbsgamesdkhttp/a/g/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_58
    .catchall {:try_start_37 .. :try_end_58} :catchall_6c

    :goto_58
    iget-object v0, p0, Lbsgamesdkhttp/v$a;->a:Lbsgamesdkhttp/v;

    iget-object v0, v0, Lbsgamesdkhttp/v;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v0}, Lbsgamesdkhttp/u;->s()Lbsgamesdkhttp/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbsgamesdkhttp/n;->a(Lbsgamesdkhttp/v$a;)V

    goto :goto_2b

    :cond_64
    :try_start_64
    iget-object v1, p0, Lbsgamesdkhttp/v$a;->c:Lbsgamesdkhttp/f;

    iget-object v2, p0, Lbsgamesdkhttp/v$a;->a:Lbsgamesdkhttp/v;

    invoke-interface {v1, v2, v0}, Lbsgamesdkhttp/f;->a(Lbsgamesdkhttp/e;Ljava/io/IOException;)V
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_6c

    goto :goto_58

    :catchall_6c
    move-exception v0

    iget-object v1, p0, Lbsgamesdkhttp/v$a;->a:Lbsgamesdkhttp/v;

    iget-object v1, v1, Lbsgamesdkhttp/v;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v1}, Lbsgamesdkhttp/u;->s()Lbsgamesdkhttp/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lbsgamesdkhttp/n;->a(Lbsgamesdkhttp/v$a;)V

    throw v0

    :catch_79
    move-exception v0

    move v1, v2

    goto :goto_35
.end method
