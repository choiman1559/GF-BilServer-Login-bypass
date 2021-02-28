.class final Lbsgamesdkhttp/u$1;
.super Lbsgamesdkhttp/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lbsgamesdkhttp/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbsgamesdkhttp/y$a;)I
    .registers 3

    iget v0, p1, Lbsgamesdkhttp/y$a;->c:I

    return v0
.end method

.method public a(Lbsgamesdkhttp/j;Lbsgamesdkhttp/a;Lbsgamesdkhttp/a/b/g;)Lbsgamesdkhttp/a/b/c;
    .registers 5

    invoke-virtual {p1, p2, p3}, Lbsgamesdkhttp/j;->a(Lbsgamesdkhttp/a;Lbsgamesdkhttp/a/b/g;)Lbsgamesdkhttp/a/b/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lbsgamesdkhttp/j;)Lbsgamesdkhttp/a/b/d;
    .registers 3

    iget-object v0, p1, Lbsgamesdkhttp/j;->a:Lbsgamesdkhttp/a/b/d;

    return-object v0
.end method

.method public a(Lbsgamesdkhttp/k;Ljavax/net/ssl/SSLSocket;Z)V
    .registers 4

    invoke-virtual {p1, p2, p3}, Lbsgamesdkhttp/k;->a(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public a(Lbsgamesdkhttp/r$a;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1, p2}, Lbsgamesdkhttp/r$a;->a(Ljava/lang/String;)Lbsgamesdkhttp/r$a;

    return-void
.end method

.method public a(Lbsgamesdkhttp/r$a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1, p2, p3}, Lbsgamesdkhttp/r$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbsgamesdkhttp/r$a;

    return-void
.end method

.method public a(Lbsgamesdkhttp/j;Lbsgamesdkhttp/a/b/c;)Z
    .registers 4

    invoke-virtual {p1, p2}, Lbsgamesdkhttp/j;->b(Lbsgamesdkhttp/a/b/c;)Z

    move-result v0

    return v0
.end method

.method public b(Lbsgamesdkhttp/j;Lbsgamesdkhttp/a;Lbsgamesdkhttp/a/b/g;)Ljava/net/Socket;
    .registers 5

    invoke-virtual {p1, p2, p3}, Lbsgamesdkhttp/j;->b(Lbsgamesdkhttp/a;Lbsgamesdkhttp/a/b/g;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public b(Lbsgamesdkhttp/j;Lbsgamesdkhttp/a/b/c;)V
    .registers 3

    invoke-virtual {p1, p2}, Lbsgamesdkhttp/j;->a(Lbsgamesdkhttp/a/b/c;)V

    return-void
.end method
