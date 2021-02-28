.class Lbsgamesdkhttp/a/e/d$c;
.super Lbsgamesdkio/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/a/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lbsgamesdkhttp/a/e/d;


# direct methods
.method constructor <init>(Lbsgamesdkhttp/a/e/d;)V
    .registers 2

    iput-object p1, p0, Lbsgamesdkhttp/a/e/d$c;->a:Lbsgamesdkhttp/a/e/d;

    invoke-direct {p0}, Lbsgamesdkio/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_c
    return-object v0
.end method

.method protected a()V
    .registers 3

    iget-object v0, p0, Lbsgamesdkhttp/a/e/d$c;->a:Lbsgamesdkhttp/a/e/d;

    sget-object v1, Lbsgamesdkhttp/a/e/b;->f:Lbsgamesdkhttp/a/e/b;

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/a/e/d;->b(Lbsgamesdkhttp/a/e/b;)V

    return-void
.end method

.method public b()V
    .registers 2

    invoke-virtual {p0}, Lbsgamesdkhttp/a/e/d$c;->a_()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsgamesdkhttp/a/e/d$c;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_c
    return-void
.end method
