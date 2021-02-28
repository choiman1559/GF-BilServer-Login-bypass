.class public final Lbsgamesdkhttp/a/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Lbsgamesdkhttp/s;


# instance fields
.field private final a:Lbsgamesdkhttp/u;

.field private final b:Z

.field private c:Lbsgamesdkhttp/a/b/g;

.field private d:Ljava/lang/Object;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lbsgamesdkhttp/u;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsgamesdkhttp/a/c/h;->a:Lbsgamesdkhttp/u;

    iput-boolean p2, p0, Lbsgamesdkhttp/a/c/h;->b:Z

    return-void
.end method

.method private a(Lbsgamesdkhttp/HttpUrl;)Lbsgamesdkhttp/a;
    .registers 15

    const/4 v7, 0x0

    invoke-virtual {p1}, Lbsgamesdkhttp/HttpUrl;->c()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lbsgamesdkhttp/a/c/h;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v0}, Lbsgamesdkhttp/u;->j()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    iget-object v0, p0, Lbsgamesdkhttp/a/c/h;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v0}, Lbsgamesdkhttp/u;->k()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    iget-object v0, p0, Lbsgamesdkhttp/a/c/h;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v0}, Lbsgamesdkhttp/u;->l()Lbsgamesdkhttp/g;

    move-result-object v7

    :goto_19
    new-instance v0, Lbsgamesdkhttp/a;

    invoke-virtual {p1}, Lbsgamesdkhttp/HttpUrl;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lbsgamesdkhttp/HttpUrl;->g()I

    move-result v2

    iget-object v3, p0, Lbsgamesdkhttp/a/c/h;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v3}, Lbsgamesdkhttp/u;->h()Lbsgamesdkhttp/o;

    move-result-object v3

    iget-object v4, p0, Lbsgamesdkhttp/a/c/h;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v4}, Lbsgamesdkhttp/u;->i()Ljavax/net/SocketFactory;

    move-result-object v4

    iget-object v8, p0, Lbsgamesdkhttp/a/c/h;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v8}, Lbsgamesdkhttp/u;->n()Lbsgamesdkhttp/b;

    move-result-object v8

    iget-object v9, p0, Lbsgamesdkhttp/a/c/h;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v9}, Lbsgamesdkhttp/u;->d()Ljava/net/Proxy;

    move-result-object v9

    iget-object v10, p0, Lbsgamesdkhttp/a/c/h;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v10}, Lbsgamesdkhttp/u;->t()Ljava/util/List;

    move-result-object v10

    iget-object v11, p0, Lbsgamesdkhttp/a/c/h;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v11}, Lbsgamesdkhttp/u;->u()Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lbsgamesdkhttp/a/c/h;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v12}, Lbsgamesdkhttp/u;->e()Ljava/net/ProxySelector;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lbsgamesdkhttp/a;-><init>(Ljava/lang/String;ILbsgamesdkhttp/o;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lbsgamesdkhttp/g;Lbsgamesdkhttp/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v0

    :cond_51
    move-object v6, v7

    move-object v5, v7

    goto :goto_19
.end method

.method private a(Lbsgamesdkhttp/y;)Lbsgamesdkhttp/w;
    .registers 8

    const/4 v1, 0x0

    if-nez p1, :cond_9

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_9
    iget-object v0, p0, Lbsgamesdkhttp/a/c/h;->c:Lbsgamesdkhttp/a/b/g;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/b/g;->b()Lbsgamesdkhttp/a/b/c;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-interface {v0}, Lbsgamesdkhttp/i;->a()Lbsgamesdkhttp/aa;

    move-result-object v0

    :goto_15
    invoke-virtual {p1}, Lbsgamesdkhttp/y;->b()I

    move-result v2

    invoke-virtual {p1}, Lbsgamesdkhttp/y;->a()Lbsgamesdkhttp/w;

    move-result-object v3

    invoke-virtual {v3}, Lbsgamesdkhttp/w;->b()Ljava/lang/String;

    move-result-object v3

    sparse-switch v2, :sswitch_data_10a

    :cond_24
    :goto_24
    return-object v1

    :cond_25
    move-object v0, v1

    goto :goto_15

    :sswitch_27
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lbsgamesdkhttp/aa;->b()Ljava/net/Proxy;

    move-result-object v1

    :goto_2d
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_44

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    iget-object v1, p0, Lbsgamesdkhttp/a/c/h;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v1}, Lbsgamesdkhttp/u;->d()Ljava/net/Proxy;

    move-result-object v1

    goto :goto_2d

    :cond_44
    iget-object v1, p0, Lbsgamesdkhttp/a/c/h;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v1}, Lbsgamesdkhttp/u;->n()Lbsgamesdkhttp/b;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lbsgamesdkhttp/b;->a(Lbsgamesdkhttp/aa;Lbsgamesdkhttp/y;)Lbsgamesdkhttp/w;

    move-result-object v1

    goto :goto_24

    :sswitch_4f
    iget-object v1, p0, Lbsgamesdkhttp/a/c/h;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v1}, Lbsgamesdkhttp/u;->m()Lbsgamesdkhttp/b;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lbsgamesdkhttp/b;->a(Lbsgamesdkhttp/aa;Lbsgamesdkhttp/y;)Lbsgamesdkhttp/w;

    move-result-object v1

    goto :goto_24

    :sswitch_5a
    const-string v0, "GET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string v0, "HEAD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_6a
    :sswitch_6a
    iget-object v0, p0, Lbsgamesdkhttp/a/c/h;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v0}, Lbsgamesdkhttp/u;->q()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "Location"

    invoke-virtual {p1, v0}, Lbsgamesdkhttp/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lbsgamesdkhttp/y;->a()Lbsgamesdkhttp/w;

    move-result-object v2

    invoke-virtual {v2}, Lbsgamesdkhttp/w;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lbsgamesdkhttp/HttpUrl;->c(Ljava/lang/String;)Lbsgamesdkhttp/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lbsgamesdkhttp/HttpUrl;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lbsgamesdkhttp/y;->a()Lbsgamesdkhttp/w;

    move-result-object v4

    invoke-virtual {v4}, Lbsgamesdkhttp/w;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lbsgamesdkhttp/HttpUrl;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a6

    iget-object v2, p0, Lbsgamesdkhttp/a/c/h;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v2}, Lbsgamesdkhttp/u;->p()Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_a6
    invoke-virtual {p1}, Lbsgamesdkhttp/y;->a()Lbsgamesdkhttp/w;

    move-result-object v2

    invoke-virtual {v2}, Lbsgamesdkhttp/w;->e()Lbsgamesdkhttp/w$a;

    move-result-object v2

    invoke-static {v3}, Lbsgamesdkhttp/a/c/k;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d4

    invoke-static {v3}, Lbsgamesdkhttp/a/c/k;->d(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v3}, Lbsgamesdkhttp/a/c/k;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e9

    const-string v3, "GET"

    invoke-virtual {v2, v3, v1}, Lbsgamesdkhttp/w$a;->a(Ljava/lang/String;Lbsgamesdkhttp/x;)Lbsgamesdkhttp/w$a;

    :goto_c3
    if-nez v4, :cond_d4

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v2, v1}, Lbsgamesdkhttp/w$a;->b(Ljava/lang/String;)Lbsgamesdkhttp/w$a;

    const-string v1, "Content-Length"

    invoke-virtual {v2, v1}, Lbsgamesdkhttp/w$a;->b(Ljava/lang/String;)Lbsgamesdkhttp/w$a;

    const-string v1, "Content-Type"

    invoke-virtual {v2, v1}, Lbsgamesdkhttp/w$a;->b(Ljava/lang/String;)Lbsgamesdkhttp/w$a;

    :cond_d4
    invoke-direct {p0, p1, v0}, Lbsgamesdkhttp/a/c/h;->a(Lbsgamesdkhttp/y;Lbsgamesdkhttp/HttpUrl;)Z

    move-result v1

    if-nez v1, :cond_df

    const-string v1, "Authorization"

    invoke-virtual {v2, v1}, Lbsgamesdkhttp/w$a;->b(Ljava/lang/String;)Lbsgamesdkhttp/w$a;

    :cond_df
    invoke-virtual {v2, v0}, Lbsgamesdkhttp/w$a;->a(Lbsgamesdkhttp/HttpUrl;)Lbsgamesdkhttp/w$a;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/w$a;->a()Lbsgamesdkhttp/w;

    move-result-object v1

    goto/16 :goto_24

    :cond_e9
    if-eqz v4, :cond_f3

    invoke-virtual {p1}, Lbsgamesdkhttp/y;->a()Lbsgamesdkhttp/w;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/w;->d()Lbsgamesdkhttp/x;

    move-result-object v1

    :cond_f3
    invoke-virtual {v2, v3, v1}, Lbsgamesdkhttp/w$a;->a(Ljava/lang/String;Lbsgamesdkhttp/x;)Lbsgamesdkhttp/w$a;

    goto :goto_c3

    :sswitch_f7
    invoke-virtual {p1}, Lbsgamesdkhttp/y;->a()Lbsgamesdkhttp/w;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/w;->d()Lbsgamesdkhttp/x;

    move-result-object v0

    instance-of v0, v0, Lbsgamesdkhttp/a/c/j;

    if-nez v0, :cond_24

    invoke-virtual {p1}, Lbsgamesdkhttp/y;->a()Lbsgamesdkhttp/w;

    move-result-object v1

    goto/16 :goto_24

    nop

    :sswitch_data_10a
    .sparse-switch
        0x12c -> :sswitch_6a
        0x12d -> :sswitch_6a
        0x12e -> :sswitch_6a
        0x12f -> :sswitch_6a
        0x133 -> :sswitch_5a
        0x134 -> :sswitch_5a
        0x191 -> :sswitch_4f
        0x197 -> :sswitch_27
        0x198 -> :sswitch_f7
    .end sparse-switch
.end method

.method private a(Lbsgamesdkhttp/y;Lbsgamesdkhttp/HttpUrl;)Z
    .registers 6

    invoke-virtual {p1}, Lbsgamesdkhttp/y;->a()Lbsgamesdkhttp/w;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/w;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/HttpUrl;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lbsgamesdkhttp/HttpUrl;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Lbsgamesdkhttp/HttpUrl;->g()I

    move-result v1

    invoke-virtual {p2}, Lbsgamesdkhttp/HttpUrl;->g()I

    move-result v2

    if-ne v1, v2, :cond_30

    invoke-virtual {v0}, Lbsgamesdkhttp/HttpUrl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lbsgamesdkhttp/HttpUrl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method private a(Ljava/io/IOException;Z)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Ljava/net/ProtocolException;

    if-eqz v2, :cond_7

    :cond_6
    :goto_6
    return v1

    :cond_7
    instance-of v2, p1, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_15

    instance-of v2, p1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_13

    if-nez p2, :cond_13

    :goto_11
    move v1, v0

    goto :goto_6

    :cond_13
    move v0, v1

    goto :goto_11

    :cond_15
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_21

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-nez v2, :cond_6

    :cond_21
    instance-of v2, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_6

    move v1, v0

    goto :goto_6
.end method

.method private a(Ljava/io/IOException;ZLbsgamesdkhttp/w;)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lbsgamesdkhttp/a/c/h;->c:Lbsgamesdkhttp/a/b/g;

    invoke-virtual {v1, p1}, Lbsgamesdkhttp/a/b/g;->a(Ljava/io/IOException;)V

    iget-object v1, p0, Lbsgamesdkhttp/a/c/h;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v1}, Lbsgamesdkhttp/u;->r()Z

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    if-eqz p2, :cond_19

    invoke-virtual {p3}, Lbsgamesdkhttp/w;->d()Lbsgamesdkhttp/x;

    move-result-object v1

    instance-of v1, v1, Lbsgamesdkhttp/a/c/j;

    if-nez v1, :cond_e

    :cond_19
    invoke-direct {p0, p1, p2}, Lbsgamesdkhttp/a/c/h;->a(Ljava/io/IOException;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lbsgamesdkhttp/a/c/h;->c:Lbsgamesdkhttp/a/b/g;

    invoke-virtual {v1}, Lbsgamesdkhttp/a/b/g;->e()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    goto :goto_e
.end method


# virtual methods
.method public a(Lbsgamesdkhttp/s$a;)Lbsgamesdkhttp/y;
    .registers 12

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-interface {p1}, Lbsgamesdkhttp/s$a;->a()Lbsgamesdkhttp/w;

    move-result-object v1

    new-instance v2, Lbsgamesdkhttp/a/b/g;

    iget-object v4, p0, Lbsgamesdkhttp/a/c/h;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v4}, Lbsgamesdkhttp/u;->o()Lbsgamesdkhttp/j;

    move-result-object v4

    invoke-virtual {v1}, Lbsgamesdkhttp/w;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v6

    invoke-direct {p0, v6}, Lbsgamesdkhttp/a/c/h;->a(Lbsgamesdkhttp/HttpUrl;)Lbsgamesdkhttp/a;

    move-result-object v6

    iget-object v7, p0, Lbsgamesdkhttp/a/c/h;->d:Ljava/lang/Object;

    invoke-direct {v2, v4, v6, v7}, Lbsgamesdkhttp/a/b/g;-><init>(Lbsgamesdkhttp/j;Lbsgamesdkhttp/a;Ljava/lang/Object;)V

    iput-object v2, p0, Lbsgamesdkhttp/a/c/h;->c:Lbsgamesdkhttp/a/b/g;

    move-object v2, v3

    move v4, v5

    move-object v6, v1

    :cond_20
    :goto_20
    iget-boolean v1, p0, Lbsgamesdkhttp/a/c/h;->e:Z

    if-eqz v1, :cond_31

    iget-object v1, p0, Lbsgamesdkhttp/a/c/h;->c:Lbsgamesdkhttp/a/b/g;

    invoke-virtual {v1}, Lbsgamesdkhttp/a/b/g;->c()V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_31
    :try_start_31
    move-object v0, p1

    check-cast v0, Lbsgamesdkhttp/a/c/f;

    move-object v1, v0

    iget-object v7, p0, Lbsgamesdkhttp/a/c/h;->c:Lbsgamesdkhttp/a/b/g;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v7, v8, v9}, Lbsgamesdkhttp/a/c/f;->a(Lbsgamesdkhttp/w;Lbsgamesdkhttp/a/b/g;Lbsgamesdkhttp/a/c/c;Lbsgamesdkhttp/i;)Lbsgamesdkhttp/y;
    :try_end_3c
    .catch Lbsgamesdkhttp/a/b/f; {:try_start_31 .. :try_end_3c} :catch_67
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3c} :catch_84
    .catchall {:try_start_31 .. :try_end_3c} :catchall_78

    move-result-object v1

    if-eqz v2, :cond_57

    invoke-virtual {v1}, Lbsgamesdkhttp/y;->h()Lbsgamesdkhttp/y$a;

    move-result-object v1

    invoke-virtual {v2}, Lbsgamesdkhttp/y;->h()Lbsgamesdkhttp/y$a;

    move-result-object v2

    invoke-virtual {v2, v3}, Lbsgamesdkhttp/y$a;->a(Lbsgamesdkhttp/z;)Lbsgamesdkhttp/y$a;

    move-result-object v2

    invoke-virtual {v2}, Lbsgamesdkhttp/y$a;->a()Lbsgamesdkhttp/y;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbsgamesdkhttp/y$a;->c(Lbsgamesdkhttp/y;)Lbsgamesdkhttp/y$a;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/y$a;->a()Lbsgamesdkhttp/y;

    move-result-object v1

    :cond_57
    invoke-direct {p0, v1}, Lbsgamesdkhttp/a/c/h;->a(Lbsgamesdkhttp/y;)Lbsgamesdkhttp/w;

    move-result-object v6

    if-nez v6, :cond_93

    iget-boolean v2, p0, Lbsgamesdkhttp/a/c/h;->b:Z

    if-nez v2, :cond_66

    iget-object v2, p0, Lbsgamesdkhttp/a/c/h;->c:Lbsgamesdkhttp/a/b/g;

    invoke-virtual {v2}, Lbsgamesdkhttp/a/b/g;->c()V

    :cond_66
    return-object v1

    :catch_67
    move-exception v1

    :try_start_68
    invoke-virtual {v1}, Lbsgamesdkhttp/a/b/f;->a()Ljava/io/IOException;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8, v6}, Lbsgamesdkhttp/a/c/h;->a(Ljava/io/IOException;ZLbsgamesdkhttp/w;)Z

    move-result v7

    if-nez v7, :cond_20

    invoke-virtual {v1}, Lbsgamesdkhttp/a/b/f;->a()Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_78
    .catchall {:try_start_68 .. :try_end_78} :catchall_78

    :catchall_78
    move-exception v1

    iget-object v2, p0, Lbsgamesdkhttp/a/c/h;->c:Lbsgamesdkhttp/a/b/g;

    invoke-virtual {v2, v3}, Lbsgamesdkhttp/a/b/g;->a(Ljava/io/IOException;)V

    iget-object v2, p0, Lbsgamesdkhttp/a/c/h;->c:Lbsgamesdkhttp/a/b/g;

    invoke-virtual {v2}, Lbsgamesdkhttp/a/b/g;->c()V

    throw v1

    :catch_84
    move-exception v1

    :try_start_85
    instance-of v7, v1, Lbsgamesdkhttp/a/e/a;

    if-nez v7, :cond_91

    const/4 v7, 0x1

    :goto_8a
    invoke-direct {p0, v1, v7, v6}, Lbsgamesdkhttp/a/c/h;->a(Ljava/io/IOException;ZLbsgamesdkhttp/w;)Z

    move-result v7

    if-nez v7, :cond_20

    throw v1
    :try_end_91
    .catchall {:try_start_85 .. :try_end_91} :catchall_78

    :cond_91
    move v7, v5

    goto :goto_8a

    :cond_93
    invoke-virtual {v1}, Lbsgamesdkhttp/y;->g()Lbsgamesdkhttp/z;

    move-result-object v2

    invoke-static {v2}, Lbsgamesdkhttp/a/c;->a(Ljava/io/Closeable;)V

    add-int/lit8 v2, v4, 0x1

    const/16 v4, 0x14

    if-le v2, v4, :cond_be

    iget-object v1, p0, Lbsgamesdkhttp/a/c/h;->c:Lbsgamesdkhttp/a/b/g;

    invoke-virtual {v1}, Lbsgamesdkhttp/a/b/g;->c()V

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many follow-up requests: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_be
    invoke-virtual {v6}, Lbsgamesdkhttp/w;->d()Lbsgamesdkhttp/x;

    move-result-object v4

    instance-of v4, v4, Lbsgamesdkhttp/a/c/j;

    if-eqz v4, :cond_d7

    iget-object v2, p0, Lbsgamesdkhttp/a/c/h;->c:Lbsgamesdkhttp/a/b/g;

    invoke-virtual {v2}, Lbsgamesdkhttp/a/b/g;->c()V

    new-instance v2, Ljava/net/HttpRetryException;

    const-string v3, "Cannot retry streamed HTTP body"

    invoke-virtual {v1}, Lbsgamesdkhttp/y;->b()I

    move-result v1

    invoke-direct {v2, v3, v1}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_d7
    invoke-virtual {v6}, Lbsgamesdkhttp/w;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lbsgamesdkhttp/a/c/h;->a(Lbsgamesdkhttp/y;Lbsgamesdkhttp/HttpUrl;)Z

    move-result v4

    if-nez v4, :cond_101

    iget-object v4, p0, Lbsgamesdkhttp/a/c/h;->c:Lbsgamesdkhttp/a/b/g;

    invoke-virtual {v4}, Lbsgamesdkhttp/a/b/g;->c()V

    new-instance v4, Lbsgamesdkhttp/a/b/g;

    iget-object v7, p0, Lbsgamesdkhttp/a/c/h;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v7}, Lbsgamesdkhttp/u;->o()Lbsgamesdkhttp/j;

    move-result-object v7

    invoke-virtual {v6}, Lbsgamesdkhttp/w;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v8

    invoke-direct {p0, v8}, Lbsgamesdkhttp/a/c/h;->a(Lbsgamesdkhttp/HttpUrl;)Lbsgamesdkhttp/a;

    move-result-object v8

    iget-object v9, p0, Lbsgamesdkhttp/a/c/h;->d:Ljava/lang/Object;

    invoke-direct {v4, v7, v8, v9}, Lbsgamesdkhttp/a/b/g;-><init>(Lbsgamesdkhttp/j;Lbsgamesdkhttp/a;Ljava/lang/Object;)V

    iput-object v4, p0, Lbsgamesdkhttp/a/c/h;->c:Lbsgamesdkhttp/a/b/g;

    :cond_fd
    move v4, v2

    move-object v2, v1

    goto/16 :goto_20

    :cond_101
    iget-object v4, p0, Lbsgamesdkhttp/a/c/h;->c:Lbsgamesdkhttp/a/b/g;

    invoke-virtual {v4}, Lbsgamesdkhttp/a/b/g;->a()Lbsgamesdkhttp/a/c/c;

    move-result-object v4

    if-eqz v4, :cond_fd

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing the body of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lbsgamesdkhttp/a/c/h;->d:Ljava/lang/Object;

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lbsgamesdkhttp/a/c/h;->e:Z

    return v0
.end method
