.class public final Lbsgamesdkhttp/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field final a:Lbsgamesdkhttp/a/a/e;

.field final b:Lbsgamesdkhttp/a/a/d;


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/c;->b:Lbsgamesdkhttp/a/a/d;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/a/d;->close()V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/c;->b:Lbsgamesdkhttp/a/a/d;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/a/d;->flush()V

    return-void
.end method
