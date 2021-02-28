.class public final Lbsgamesdkhttp/a/b/c;
.super Lbsgamesdkhttp/a/e/n$i;

# interfaces
.implements Lbsgamesdkhttp/i;


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/Reference",
            "<",
            "Lbsgamesdkhttp/a/b/g;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:J

.field private final g:Lbsgamesdkhttp/j;

.field private final h:Lbsgamesdkhttp/aa;

.field private i:Ljava/net/Socket;

.field private j:Ljava/net/Socket;

.field private k:Lbsgamesdkhttp/q;

.field private l:Lbsgamesdkhttp/Protocol;

.field private m:Lbsgamesdkhttp/a/e/n;

.field private n:Lbsgamesdkio/e;

.field private o:Lbsgamesdkio/d;


# direct methods
.method public constructor <init>(Lbsgamesdkhttp/j;Lbsgamesdkhttp/aa;)V
    .registers 5

    invoke-direct {p0}, Lbsgamesdkhttp/a/e/n$i;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lbsgamesdkhttp/a/b/c;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbsgamesdkhttp/a/b/c;->d:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lbsgamesdkhttp/a/b/c;->e:J

    iput-object p1, p0, Lbsgamesdkhttp/a/b/c;->g:Lbsgamesdkhttp/j;

    iput-object p2, p0, Lbsgamesdkhttp/a/b/c;->h:Lbsgamesdkhttp/aa;

    return-void
.end method

.method private a(IILbsgamesdkhttp/w;Lbsgamesdkhttp/HttpUrl;)Lbsgamesdkhttp/w;
    .registers 13

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lbsgamesdkhttp/a/c;->a(Lbsgamesdkhttp/HttpUrl;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1f
    new-instance v4, Lbsgamesdkhttp/a/d/a;

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->n:Lbsgamesdkio/e;

    iget-object v1, p0, Lbsgamesdkhttp/a/b/c;->o:Lbsgamesdkio/d;

    invoke-direct {v4, v2, v2, v0, v1}, Lbsgamesdkhttp/a/d/a;-><init>(Lbsgamesdkhttp/u;Lbsgamesdkhttp/a/b/g;Lbsgamesdkio/e;Lbsgamesdkio/d;)V

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->n:Lbsgamesdkio/e;

    invoke-interface {v0}, Lbsgamesdkio/e;->a()Lbsgamesdkio/q;

    move-result-object v0

    int-to-long v6, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v1}, Lbsgamesdkio/q;->a(JLjava/util/concurrent/TimeUnit;)Lbsgamesdkio/q;

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->o:Lbsgamesdkio/d;

    invoke-interface {v0}, Lbsgamesdkio/d;->a()Lbsgamesdkio/q;

    move-result-object v0

    int-to-long v6, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v1}, Lbsgamesdkio/q;->a(JLjava/util/concurrent/TimeUnit;)Lbsgamesdkio/q;

    invoke-virtual {p3}, Lbsgamesdkhttp/w;->c()Lbsgamesdkhttp/r;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lbsgamesdkhttp/a/d/a;->a(Lbsgamesdkhttp/r;Ljava/lang/String;)V

    invoke-virtual {v4}, Lbsgamesdkhttp/a/d/a;->b()V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lbsgamesdkhttp/a/d/a;->a(Z)Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lbsgamesdkhttp/y$a;->a(Lbsgamesdkhttp/w;)Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/y$a;->a()Lbsgamesdkhttp/y;

    move-result-object v5

    invoke-static {v5}, Lbsgamesdkhttp/a/c/e;->a(Lbsgamesdkhttp/y;)J

    move-result-wide v0

    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_63

    const-wide/16 v0, 0x0

    :cond_63
    invoke-virtual {v4, v0, v1}, Lbsgamesdkhttp/a/d/a;->b(J)Lbsgamesdkio/p;

    move-result-object v0

    const v1, 0x7fffffff

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v4}, Lbsgamesdkhttp/a/c;->b(Lbsgamesdkio/p;ILjava/util/concurrent/TimeUnit;)Z

    invoke-interface {v0}, Lbsgamesdkio/p;->close()V

    invoke-virtual {v5}, Lbsgamesdkhttp/y;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_e2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected response code for CONNECT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lbsgamesdkhttp/y;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_96
    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->n:Lbsgamesdkio/e;

    invoke-interface {v0}, Lbsgamesdkio/e;->c()Lbsgamesdkio/c;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkio/c;->e()Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->o:Lbsgamesdkio/d;

    invoke-interface {v0}, Lbsgamesdkio/d;->c()Lbsgamesdkio/c;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkio/c;->e()Z

    move-result v0

    if-nez v0, :cond_b6

    :cond_ae
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TLS tunnel buffered too many bytes!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b6
    move-object p3, v2

    :goto_b7
    return-object p3

    :sswitch_b8
    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->h:Lbsgamesdkhttp/aa;

    invoke-virtual {v0}, Lbsgamesdkhttp/aa;->a()Lbsgamesdkhttp/a;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/a;->d()Lbsgamesdkhttp/b;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkhttp/a/b/c;->h:Lbsgamesdkhttp/aa;

    invoke-interface {v0, v1, v5}, Lbsgamesdkhttp/b;->a(Lbsgamesdkhttp/aa;Lbsgamesdkhttp/y;)Lbsgamesdkhttp/w;

    move-result-object p3

    if-nez p3, :cond_d2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to authenticate with proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d2
    const-string v0, "close"

    const-string v1, "Connection"

    invoke-virtual {v5, v1}, Lbsgamesdkhttp/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_b7

    nop

    :sswitch_data_e2
    .sparse-switch
        0xc8 -> :sswitch_96
        0x197 -> :sswitch_b8
    .end sparse-switch
.end method

.method private a(II)V
    .registers 7

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->h:Lbsgamesdkhttp/aa;

    invoke-virtual {v0}, Lbsgamesdkhttp/aa;->b()Ljava/net/Proxy;

    move-result-object v1

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->h:Lbsgamesdkhttp/aa;

    invoke-virtual {v0}, Lbsgamesdkhttp/aa;->a()Lbsgamesdkhttp/a;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_1c

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_53

    :cond_1c
    invoke-virtual {v0}, Lbsgamesdkhttp/a;->c()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    :goto_24
    iput-object v0, p0, Lbsgamesdkhttp/a/b/c;->i:Ljava/net/Socket;

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->i:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_2b
    invoke-static {}, Lbsgamesdkhttp/a/g/e;->b()Lbsgamesdkhttp/a/g/e;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkhttp/a/b/c;->i:Ljava/net/Socket;

    iget-object v2, p0, Lbsgamesdkhttp/a/b/c;->h:Lbsgamesdkhttp/aa;

    invoke-virtual {v2}, Lbsgamesdkhttp/aa;->c()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lbsgamesdkhttp/a/g/e;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_3a
    .catch Ljava/net/ConnectException; {:try_start_2b .. :try_end_3a} :catch_59

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->i:Ljava/net/Socket;

    invoke-static {v0}, Lbsgamesdkio/j;->b(Ljava/net/Socket;)Lbsgamesdkio/p;

    move-result-object v0

    invoke-static {v0}, Lbsgamesdkio/j;->a(Lbsgamesdkio/p;)Lbsgamesdkio/e;

    move-result-object v0

    iput-object v0, p0, Lbsgamesdkhttp/a/b/c;->n:Lbsgamesdkio/e;

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->i:Ljava/net/Socket;

    invoke-static {v0}, Lbsgamesdkio/j;->a(Ljava/net/Socket;)Lbsgamesdkio/o;

    move-result-object v0

    invoke-static {v0}, Lbsgamesdkio/j;->a(Lbsgamesdkio/o;)Lbsgamesdkio/d;

    move-result-object v0

    iput-object v0, p0, Lbsgamesdkhttp/a/b/c;->o:Lbsgamesdkio/d;

    return-void

    :cond_53
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_24

    :catch_59
    move-exception v0

    new-instance v1, Ljava/net/ConnectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbsgamesdkhttp/a/b/c;->h:Lbsgamesdkhttp/aa;

    invoke-virtual {v3}, Lbsgamesdkhttp/aa;->c()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method private a(III)V
    .registers 10

    const/4 v5, 0x0

    invoke-direct {p0}, Lbsgamesdkhttp/a/b/c;->e()Lbsgamesdkhttp/w;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/w;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v2

    const/4 v0, 0x0

    const/16 v3, 0x15

    :goto_c
    add-int/lit8 v0, v0, 0x1

    if-le v0, v3, :cond_29

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many tunnel connections attempted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    invoke-direct {p0, p1, p2}, Lbsgamesdkhttp/a/b/c;->a(II)V

    invoke-direct {p0, p2, p3, v1, v2}, Lbsgamesdkhttp/a/b/c;->a(IILbsgamesdkhttp/w;Lbsgamesdkhttp/HttpUrl;)Lbsgamesdkhttp/w;

    move-result-object v1

    if-nez v1, :cond_33

    return-void

    :cond_33
    iget-object v4, p0, Lbsgamesdkhttp/a/b/c;->i:Ljava/net/Socket;

    invoke-static {v4}, Lbsgamesdkhttp/a/c;->a(Ljava/net/Socket;)V

    iput-object v5, p0, Lbsgamesdkhttp/a/b/c;->i:Ljava/net/Socket;

    iput-object v5, p0, Lbsgamesdkhttp/a/b/c;->o:Lbsgamesdkio/d;

    iput-object v5, p0, Lbsgamesdkhttp/a/b/c;->n:Lbsgamesdkio/e;

    goto :goto_c
.end method

.method private a(Lbsgamesdkhttp/a/b/b;)V
    .registers 7

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->h:Lbsgamesdkhttp/aa;

    invoke-virtual {v0}, Lbsgamesdkhttp/aa;->a()Lbsgamesdkhttp/a;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_15

    sget-object v0, Lbsgamesdkhttp/Protocol;->HTTP_1_1:Lbsgamesdkhttp/Protocol;

    iput-object v0, p0, Lbsgamesdkhttp/a/b/c;->l:Lbsgamesdkhttp/Protocol;

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->i:Ljava/net/Socket;

    iput-object v0, p0, Lbsgamesdkhttp/a/b/c;->j:Ljava/net/Socket;

    :cond_14
    :goto_14
    return-void

    :cond_15
    invoke-direct {p0, p1}, Lbsgamesdkhttp/a/b/c;->b(Lbsgamesdkhttp/a/b/b;)V

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->l:Lbsgamesdkhttp/Protocol;

    sget-object v1, Lbsgamesdkhttp/Protocol;->HTTP_2:Lbsgamesdkhttp/Protocol;

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->j:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v0, Lbsgamesdkhttp/a/e/n$h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbsgamesdkhttp/a/e/n$h;-><init>(Z)V

    iget-object v1, p0, Lbsgamesdkhttp/a/b/c;->j:Ljava/net/Socket;

    iget-object v2, p0, Lbsgamesdkhttp/a/b/c;->h:Lbsgamesdkhttp/aa;

    invoke-virtual {v2}, Lbsgamesdkhttp/aa;->a()Lbsgamesdkhttp/a;

    move-result-object v2

    invoke-virtual {v2}, Lbsgamesdkhttp/a;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lbsgamesdkhttp/HttpUrl;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbsgamesdkhttp/a/b/c;->n:Lbsgamesdkio/e;

    iget-object v4, p0, Lbsgamesdkhttp/a/b/c;->o:Lbsgamesdkio/d;

    invoke-virtual {v0, v1, v2, v3, v4}, Lbsgamesdkhttp/a/e/n$h;->a(Ljava/net/Socket;Ljava/lang/String;Lbsgamesdkio/e;Lbsgamesdkio/d;)Lbsgamesdkhttp/a/e/n$h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbsgamesdkhttp/a/e/n$h;->a(Lbsgamesdkhttp/a/e/n$i;)Lbsgamesdkhttp/a/e/n$h;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/n$h;->a()Lbsgamesdkhttp/a/e/n;

    move-result-object v0

    iput-object v0, p0, Lbsgamesdkhttp/a/b/c;->m:Lbsgamesdkhttp/a/e/n;

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->m:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/n;->c()V

    goto :goto_14
.end method

.method private b(Lbsgamesdkhttp/a/b/b;)V
    .registers 11

    const/4 v1, 0x0

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->h:Lbsgamesdkhttp/aa;

    invoke-virtual {v0}, Lbsgamesdkhttp/aa;->a()Lbsgamesdkhttp/a;

    move-result-object v2

    invoke-virtual {v2}, Lbsgamesdkhttp/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    :try_start_b
    iget-object v3, p0, Lbsgamesdkhttp/a/b/c;->i:Ljava/net/Socket;

    invoke-virtual {v2}, Lbsgamesdkhttp/a;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lbsgamesdkhttp/HttpUrl;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lbsgamesdkhttp/a;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lbsgamesdkhttp/HttpUrl;->g()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;
    :try_end_24
    .catch Ljava/lang/AssertionError; {:try_start_b .. :try_end_24} :catch_132
    .catchall {:try_start_b .. :try_end_24} :catchall_cc

    :try_start_24
    invoke-virtual {p1, v0}, Lbsgamesdkhttp/a/b/b;->a(Ljavax/net/ssl/SSLSocket;)Lbsgamesdkhttp/k;

    move-result-object v3

    invoke-virtual {v3}, Lbsgamesdkhttp/k;->d()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-static {}, Lbsgamesdkhttp/a/g/e;->b()Lbsgamesdkhttp/a/g/e;

    move-result-object v4

    invoke-virtual {v2}, Lbsgamesdkhttp/a;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lbsgamesdkhttp/HttpUrl;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lbsgamesdkhttp/a;->e()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Lbsgamesdkhttp/a/g/e;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_41
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-static {v4}, Lbsgamesdkhttp/q;->a(Ljavax/net/ssl/SSLSession;)Lbsgamesdkhttp/q;

    move-result-object v4

    invoke-virtual {v2}, Lbsgamesdkhttp/a;->j()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-virtual {v2}, Lbsgamesdkhttp/a;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lbsgamesdkhttp/HttpUrl;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v5

    if-nez v5, :cond_da

    invoke-virtual {v4}, Lbsgamesdkhttp/q;->b()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hostname "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lbsgamesdkhttp/a;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lbsgamesdkhttp/HttpUrl;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " not verified:\n    certificate: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lbsgamesdkhttp/g;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n    DN: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n    subjectAltNames: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lbsgamesdkhttp/a/h/d;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_bc
    .catch Ljava/lang/AssertionError; {:try_start_24 .. :try_end_bc} :catch_bc
    .catchall {:try_start_24 .. :try_end_bc} :catchall_12d

    :catch_bc
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_c0
    :try_start_c0
    invoke-static {v0}, Lbsgamesdkhttp/a/c;->a(Ljava/lang/AssertionError;)Z

    move-result v2

    if-eqz v2, :cond_12c

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_cc
    .catchall {:try_start_c0 .. :try_end_cc} :catchall_cc

    :catchall_cc
    move-exception v0

    :goto_cd
    if-eqz v1, :cond_d6

    invoke-static {}, Lbsgamesdkhttp/a/g/e;->b()Lbsgamesdkhttp/a/g/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbsgamesdkhttp/a/g/e;->b(Ljavax/net/ssl/SSLSocket;)V

    :cond_d6
    invoke-static {v1}, Lbsgamesdkhttp/a/c;->a(Ljava/net/Socket;)V

    throw v0

    :cond_da
    :try_start_da
    invoke-virtual {v2}, Lbsgamesdkhttp/a;->k()Lbsgamesdkhttp/g;

    move-result-object v5

    invoke-virtual {v2}, Lbsgamesdkhttp/a;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lbsgamesdkhttp/HttpUrl;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lbsgamesdkhttp/q;->b()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lbsgamesdkhttp/g;->a(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3}, Lbsgamesdkhttp/k;->d()Z

    move-result v2

    if-eqz v2, :cond_fb

    invoke-static {}, Lbsgamesdkhttp/a/g/e;->b()Lbsgamesdkhttp/a/g/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbsgamesdkhttp/a/g/e;->a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v1

    :cond_fb
    iput-object v0, p0, Lbsgamesdkhttp/a/b/c;->j:Ljava/net/Socket;

    iget-object v2, p0, Lbsgamesdkhttp/a/b/c;->j:Ljava/net/Socket;

    invoke-static {v2}, Lbsgamesdkio/j;->b(Ljava/net/Socket;)Lbsgamesdkio/p;

    move-result-object v2

    invoke-static {v2}, Lbsgamesdkio/j;->a(Lbsgamesdkio/p;)Lbsgamesdkio/e;

    move-result-object v2

    iput-object v2, p0, Lbsgamesdkhttp/a/b/c;->n:Lbsgamesdkio/e;

    iget-object v2, p0, Lbsgamesdkhttp/a/b/c;->j:Ljava/net/Socket;

    invoke-static {v2}, Lbsgamesdkio/j;->a(Ljava/net/Socket;)Lbsgamesdkio/o;

    move-result-object v2

    invoke-static {v2}, Lbsgamesdkio/j;->a(Lbsgamesdkio/o;)Lbsgamesdkio/d;

    move-result-object v2

    iput-object v2, p0, Lbsgamesdkhttp/a/b/c;->o:Lbsgamesdkio/d;

    iput-object v4, p0, Lbsgamesdkhttp/a/b/c;->k:Lbsgamesdkhttp/q;

    if-eqz v1, :cond_129

    invoke-static {v1}, Lbsgamesdkhttp/Protocol;->get(Ljava/lang/String;)Lbsgamesdkhttp/Protocol;

    move-result-object v1

    :goto_11d
    iput-object v1, p0, Lbsgamesdkhttp/a/b/c;->l:Lbsgamesdkhttp/Protocol;
    :try_end_11f
    .catch Ljava/lang/AssertionError; {:try_start_da .. :try_end_11f} :catch_bc
    .catchall {:try_start_da .. :try_end_11f} :catchall_12d

    if-eqz v0, :cond_128

    invoke-static {}, Lbsgamesdkhttp/a/g/e;->b()Lbsgamesdkhttp/a/g/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbsgamesdkhttp/a/g/e;->b(Ljavax/net/ssl/SSLSocket;)V

    :cond_128
    return-void

    :cond_129
    :try_start_129
    sget-object v1, Lbsgamesdkhttp/Protocol;->HTTP_1_1:Lbsgamesdkhttp/Protocol;
    :try_end_12b
    .catch Ljava/lang/AssertionError; {:try_start_129 .. :try_end_12b} :catch_bc
    .catchall {:try_start_129 .. :try_end_12b} :catchall_12d

    goto :goto_11d

    :cond_12c
    :try_start_12c
    throw v0
    :try_end_12d
    .catchall {:try_start_12c .. :try_end_12d} :catchall_cc

    :catchall_12d
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_cd

    :catch_132
    move-exception v0

    goto :goto_c0
.end method

.method private e()Lbsgamesdkhttp/w;
    .registers 5

    new-instance v0, Lbsgamesdkhttp/w$a;

    invoke-direct {v0}, Lbsgamesdkhttp/w$a;-><init>()V

    iget-object v1, p0, Lbsgamesdkhttp/a/b/c;->h:Lbsgamesdkhttp/aa;

    invoke-virtual {v1}, Lbsgamesdkhttp/aa;->a()Lbsgamesdkhttp/a;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/a;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/w$a;->a(Lbsgamesdkhttp/HttpUrl;)Lbsgamesdkhttp/w$a;

    move-result-object v0

    const-string v1, "Host"

    iget-object v2, p0, Lbsgamesdkhttp/a/b/c;->h:Lbsgamesdkhttp/aa;

    invoke-virtual {v2}, Lbsgamesdkhttp/aa;->a()Lbsgamesdkhttp/a;

    move-result-object v2

    invoke-virtual {v2}, Lbsgamesdkhttp/a;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lbsgamesdkhttp/a/c;->a(Lbsgamesdkhttp/HttpUrl;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbsgamesdkhttp/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbsgamesdkhttp/w$a;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lbsgamesdkhttp/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbsgamesdkhttp/w$a;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-static {}, Lbsgamesdkhttp/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbsgamesdkhttp/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbsgamesdkhttp/w$a;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/w$a;->a()Lbsgamesdkhttp/w;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lbsgamesdkhttp/u;Lbsgamesdkhttp/a/b/g;)Lbsgamesdkhttp/a/c/c;
    .registers 7

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->m:Lbsgamesdkhttp/a/e/n;

    if-eqz v0, :cond_c

    new-instance v0, Lbsgamesdkhttp/a/e/m;

    iget-object v1, p0, Lbsgamesdkhttp/a/b/c;->m:Lbsgamesdkhttp/a/e/n;

    invoke-direct {v0, p1, p2, v1}, Lbsgamesdkhttp/a/e/m;-><init>(Lbsgamesdkhttp/u;Lbsgamesdkhttp/a/b/g;Lbsgamesdkhttp/a/e/n;)V

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {p1}, Lbsgamesdkhttp/u;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->n:Lbsgamesdkio/e;

    invoke-interface {v0}, Lbsgamesdkio/e;->a()Lbsgamesdkio/q;

    move-result-object v0

    invoke-virtual {p1}, Lbsgamesdkhttp/u;->b()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lbsgamesdkio/q;->a(JLjava/util/concurrent/TimeUnit;)Lbsgamesdkio/q;

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->o:Lbsgamesdkio/d;

    invoke-interface {v0}, Lbsgamesdkio/d;->a()Lbsgamesdkio/q;

    move-result-object v0

    invoke-virtual {p1}, Lbsgamesdkhttp/u;->c()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lbsgamesdkio/q;->a(JLjava/util/concurrent/TimeUnit;)Lbsgamesdkio/q;

    new-instance v0, Lbsgamesdkhttp/a/d/a;

    iget-object v1, p0, Lbsgamesdkhttp/a/b/c;->n:Lbsgamesdkio/e;

    iget-object v2, p0, Lbsgamesdkhttp/a/b/c;->o:Lbsgamesdkio/d;

    invoke-direct {v0, p1, p2, v1, v2}, Lbsgamesdkhttp/a/d/a;-><init>(Lbsgamesdkhttp/u;Lbsgamesdkhttp/a/b/g;Lbsgamesdkio/e;Lbsgamesdkio/d;)V

    goto :goto_b
.end method

.method public a()Lbsgamesdkhttp/aa;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->h:Lbsgamesdkhttp/aa;

    return-object v0
.end method

.method public a(IIIZ)V
    .registers 10

    const/4 v2, 0x0

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->l:Lbsgamesdkhttp/Protocol;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->h:Lbsgamesdkhttp/aa;

    invoke-virtual {v0}, Lbsgamesdkhttp/aa;->a()Lbsgamesdkhttp/a;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/a;->f()Ljava/util/List;

    move-result-object v0

    new-instance v3, Lbsgamesdkhttp/a/b/b;

    invoke-direct {v3, v0}, Lbsgamesdkhttp/a/b/b;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lbsgamesdkhttp/a/b/c;->h:Lbsgamesdkhttp/aa;

    invoke-virtual {v1}, Lbsgamesdkhttp/aa;->a()Lbsgamesdkhttp/a;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_79

    sget-object v1, Lbsgamesdkhttp/k;->c:Lbsgamesdkhttp/k;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    new-instance v0, Lbsgamesdkhttp/a/b/f;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lbsgamesdkhttp/a/b/f;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_3d
    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->h:Lbsgamesdkhttp/aa;

    invoke-virtual {v0}, Lbsgamesdkhttp/aa;->a()Lbsgamesdkhttp/a;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/a;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/HttpUrl;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbsgamesdkhttp/a/g/e;->b()Lbsgamesdkhttp/a/g/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbsgamesdkhttp/a/g/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_79

    new-instance v1, Lbsgamesdkhttp/a/b/f;

    new-instance v2, Ljava/net/UnknownServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEARTEXT communication to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " not permitted by network security policy"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lbsgamesdkhttp/a/b/f;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_79
    move-object v1, v2

    :cond_7a
    :try_start_7a
    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->h:Lbsgamesdkhttp/aa;

    invoke-virtual {v0}, Lbsgamesdkhttp/aa;->d()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-direct {p0, p1, p2, p3}, Lbsgamesdkhttp/a/b/c;->a(III)V

    :goto_85
    invoke-direct {p0, v3}, Lbsgamesdkhttp/a/b/c;->a(Lbsgamesdkhttp/a/b/b;)V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_88} :catch_9d

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->m:Lbsgamesdkhttp/a/e/n;

    if-eqz v0, :cond_98

    iget-object v1, p0, Lbsgamesdkhttp/a/b/c;->g:Lbsgamesdkhttp/j;

    monitor-enter v1

    :try_start_8f
    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->m:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/n;->a()I

    move-result v0

    iput v0, p0, Lbsgamesdkhttp/a/b/c;->c:I

    monitor-exit v1
    :try_end_98
    .catchall {:try_start_8f .. :try_end_98} :catchall_ca

    :cond_98
    return-void

    :cond_99
    :try_start_99
    invoke-direct {p0, p1, p2}, Lbsgamesdkhttp/a/b/c;->a(II)V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    goto :goto_85

    :catch_9d
    move-exception v0

    iget-object v4, p0, Lbsgamesdkhttp/a/b/c;->j:Ljava/net/Socket;

    invoke-static {v4}, Lbsgamesdkhttp/a/c;->a(Ljava/net/Socket;)V

    iget-object v4, p0, Lbsgamesdkhttp/a/b/c;->i:Ljava/net/Socket;

    invoke-static {v4}, Lbsgamesdkhttp/a/c;->a(Ljava/net/Socket;)V

    iput-object v2, p0, Lbsgamesdkhttp/a/b/c;->j:Ljava/net/Socket;

    iput-object v2, p0, Lbsgamesdkhttp/a/b/c;->i:Ljava/net/Socket;

    iput-object v2, p0, Lbsgamesdkhttp/a/b/c;->n:Lbsgamesdkio/e;

    iput-object v2, p0, Lbsgamesdkhttp/a/b/c;->o:Lbsgamesdkio/d;

    iput-object v2, p0, Lbsgamesdkhttp/a/b/c;->k:Lbsgamesdkhttp/q;

    iput-object v2, p0, Lbsgamesdkhttp/a/b/c;->l:Lbsgamesdkhttp/Protocol;

    iput-object v2, p0, Lbsgamesdkhttp/a/b/c;->m:Lbsgamesdkhttp/a/e/n;

    if-nez v1, :cond_c6

    new-instance v1, Lbsgamesdkhttp/a/b/f;

    invoke-direct {v1, v0}, Lbsgamesdkhttp/a/b/f;-><init>(Ljava/io/IOException;)V

    :goto_bd
    if-eqz p4, :cond_c5

    invoke-virtual {v3, v0}, Lbsgamesdkhttp/a/b/b;->a(Ljava/io/IOException;)Z

    move-result v0

    if-nez v0, :cond_7a

    :cond_c5
    throw v1

    :cond_c6
    invoke-virtual {v1, v0}, Lbsgamesdkhttp/a/b/f;->a(Ljava/io/IOException;)V

    goto :goto_bd

    :catchall_ca
    move-exception v0

    :try_start_cb
    monitor-exit v1
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ca

    throw v0
.end method

.method public a(Lbsgamesdkhttp/a/e/d;)V
    .registers 3

    sget-object v0, Lbsgamesdkhttp/a/e/b;->e:Lbsgamesdkhttp/a/e/b;

    invoke-virtual {p1, v0}, Lbsgamesdkhttp/a/e/d;->a(Lbsgamesdkhttp/a/e/b;)V

    return-void
.end method

.method public a(Lbsgamesdkhttp/a/e/n;)V
    .registers 4

    iget-object v1, p0, Lbsgamesdkhttp/a/b/c;->g:Lbsgamesdkhttp/j;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p1}, Lbsgamesdkhttp/a/e/n;->a()I

    move-result v0

    iput v0, p0, Lbsgamesdkhttp/a/b/c;->c:I

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public a(Lbsgamesdkhttp/a;)Z
    .registers 4

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lbsgamesdkhttp/a/b/c;->c:I

    if-ge v0, v1, :cond_1e

    invoke-virtual {p0}, Lbsgamesdkhttp/a/b/c;->a()Lbsgamesdkhttp/aa;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/aa;->a()Lbsgamesdkhttp/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbsgamesdkhttp/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lbsgamesdkhttp/a/b/c;->a:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public a(Z)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lbsgamesdkhttp/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lbsgamesdkhttp/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lbsgamesdkhttp/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1a
    move v0, v1

    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    iget-object v2, p0, Lbsgamesdkhttp/a/b/c;->m:Lbsgamesdkhttp/a/e/n;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lbsgamesdkhttp/a/b/c;->m:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v2}, Lbsgamesdkhttp/a/e/n;->d()Z

    move-result v2

    if-eqz v2, :cond_1b

    move v0, v1

    goto :goto_1b

    :cond_2a
    if-eqz p1, :cond_1b

    :try_start_2c
    iget-object v2, p0, Lbsgamesdkhttp/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_31
    .catch Ljava/net/SocketTimeoutException; {:try_start_2c .. :try_end_31} :catch_4d
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_31} :catch_56

    move-result v3

    :try_start_32
    iget-object v2, p0, Lbsgamesdkhttp/a/b/c;->j:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v2, p0, Lbsgamesdkhttp/a/b/c;->n:Lbsgamesdkio/e;

    invoke-interface {v2}, Lbsgamesdkio/e;->e()Z
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_4f

    move-result v2

    if-eqz v2, :cond_47

    :try_start_40
    iget-object v2, p0, Lbsgamesdkhttp/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, v1

    goto :goto_1b

    :cond_47
    iget-object v2, p0, Lbsgamesdkhttp/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_1b

    :catch_4d
    move-exception v1

    goto :goto_1b

    :catchall_4f
    move-exception v2

    iget-object v4, p0, Lbsgamesdkhttp/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
    :try_end_56
    .catch Ljava/net/SocketTimeoutException; {:try_start_40 .. :try_end_56} :catch_4d
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_56} :catch_56

    :catch_56
    move-exception v0

    move v0, v1

    goto :goto_1b
.end method

.method public b()Ljava/net/Socket;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->j:Ljava/net/Socket;

    return-object v0
.end method

.method public c()Lbsgamesdkhttp/q;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->k:Lbsgamesdkhttp/q;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->m:Lbsgamesdkhttp/a/e/n;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkhttp/a/b/c;->h:Lbsgamesdkhttp/aa;

    invoke-virtual {v1}, Lbsgamesdkhttp/aa;->a()Lbsgamesdkhttp/a;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/a;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/HttpUrl;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkhttp/a/b/c;->h:Lbsgamesdkhttp/aa;

    invoke-virtual {v1}, Lbsgamesdkhttp/aa;->a()Lbsgamesdkhttp/a;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/a;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/HttpUrl;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkhttp/a/b/c;->h:Lbsgamesdkhttp/aa;

    invoke-virtual {v1}, Lbsgamesdkhttp/aa;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkhttp/a/b/c;->h:Lbsgamesdkhttp/aa;

    invoke-virtual {v1}, Lbsgamesdkhttp/aa;->c()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->k:Lbsgamesdkhttp/q;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lbsgamesdkhttp/a/b/c;->k:Lbsgamesdkhttp/q;

    invoke-virtual {v0}, Lbsgamesdkhttp/q;->a()Lbsgamesdkhttp/h;

    move-result-object v0

    :goto_65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkhttp/a/b/c;->l:Lbsgamesdkhttp/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_80
    const-string v0, "none"

    goto :goto_65
.end method
