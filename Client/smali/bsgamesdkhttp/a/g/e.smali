.class public Lbsgamesdkhttp/a/g/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lbsgamesdkhttp/a/g/e;

.field private static final b:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lbsgamesdkhttp/a/g/e;->a()Lbsgamesdkhttp/a/g/e;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/g/e;->a:Lbsgamesdkhttp/a/g/e;

    const-class v0, Lbsgamesdkhttp/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/g/e;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lbsgamesdkhttp/a/g/e;
    .registers 1

    invoke-static {}, Lbsgamesdkhttp/a/g/a;->a()Lbsgamesdkhttp/a/g/e;

    move-result-object v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    invoke-static {}, Lbsgamesdkhttp/a/g/b;->a()Lbsgamesdkhttp/a/g/b;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {}, Lbsgamesdkhttp/a/g/c;->a()Lbsgamesdkhttp/a/g/e;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Lbsgamesdkhttp/a/g/e;

    invoke-direct {v0}, Lbsgamesdkhttp/a/g/e;-><init>()V

    goto :goto_6
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/Protocol;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_f
    if-ge v1, v3, :cond_27

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsgamesdkhttp/Protocol;

    sget-object v4, Lbsgamesdkhttp/Protocol;->HTTP_1_0:Lbsgamesdkhttp/Protocol;

    if-ne v0, v4, :cond_1f

    :goto_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_1f
    invoke-virtual {v0}, Lbsgamesdkhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_27
    return-object v2
.end method

.method public static b()Lbsgamesdkhttp/a/g/e;
    .registers 1

    sget-object v0, Lbsgamesdkhttp/a/g/e;->a:Lbsgamesdkhttp/a/g/e;

    return-object v0
.end method

.method static b(Ljava/util/List;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/Protocol;",
            ">;)[B"
        }
    .end annotation

    new-instance v2, Lbsgamesdkio/c;

    invoke-direct {v2}, Lbsgamesdkio/c;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_2e

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsgamesdkhttp/Protocol;

    sget-object v4, Lbsgamesdkhttp/Protocol;->HTTP_1_0:Lbsgamesdkhttp/Protocol;

    if-ne v0, v4, :cond_1b

    :goto_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_1b
    invoke-virtual {v0}, Lbsgamesdkhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Lbsgamesdkio/c;->b(I)Lbsgamesdkio/c;

    invoke-virtual {v0}, Lbsgamesdkhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbsgamesdkio/c;->a(Ljava/lang/String;)Lbsgamesdkio/c;

    goto :goto_17

    :cond_2e
    invoke-virtual {v2}, Lbsgamesdkio/c;->p()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/X509TrustManager;)Lbsgamesdkhttp/a/h/b;
    .registers 4

    new-instance v0, Lbsgamesdkhttp/a/h/a;

    invoke-static {p1}, Lbsgamesdkhttp/a/h/e;->a(Ljavax/net/ssl/X509TrustManager;)Lbsgamesdkhttp/a/h/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsgamesdkhttp/a/h/a;-><init>(Lbsgamesdkhttp/a/h/e;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lbsgamesdkhttp/a/g/e;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    const/4 v0, 0x5

    if-ne p1, v0, :cond_b

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    :goto_5
    sget-object v1, Lbsgamesdkhttp/a/g/e;->b:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_5
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    if-nez p2, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_15
    const/4 v0, 0x5

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, p1, p2}, Lbsgamesdkhttp/a/g/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .registers 4

    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/Protocol;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)V
    .registers 2

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method
