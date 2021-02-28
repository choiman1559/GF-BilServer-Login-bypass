.class public final Lbsgamesdkio/j;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lbsgamesdkio/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lbsgamesdkio/j;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lbsgamesdkio/o;)Lbsgamesdkio/d;
    .registers 2

    new-instance v0, Lbsgamesdkio/k;

    invoke-direct {v0, p0}, Lbsgamesdkio/k;-><init>(Lbsgamesdkio/o;)V

    return-object v0
.end method

.method public static a(Lbsgamesdkio/p;)Lbsgamesdkio/e;
    .registers 2

    new-instance v0, Lbsgamesdkio/l;

    invoke-direct {v0, p0}, Lbsgamesdkio/l;-><init>(Lbsgamesdkio/p;)V

    return-object v0
.end method

.method private static a(Ljava/io/OutputStream;Lbsgamesdkio/q;)Lbsgamesdkio/o;
    .registers 4

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lbsgamesdkio/j$1;

    invoke-direct {v0, p1, p0}, Lbsgamesdkio/j$1;-><init>(Lbsgamesdkio/q;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static a(Ljava/net/Socket;)Lbsgamesdkio/o;
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {p0}, Lbsgamesdkio/j;->c(Ljava/net/Socket;)Lbsgamesdkio/a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lbsgamesdkio/j;->a(Ljava/io/OutputStream;Lbsgamesdkio/q;)Lbsgamesdkio/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsgamesdkio/a;->a(Lbsgamesdkio/o;)Lbsgamesdkio/o;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lbsgamesdkio/q;)Lbsgamesdkio/p;
    .registers 4

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lbsgamesdkio/j$2;

    invoke-direct {v0, p1, p0}, Lbsgamesdkio/j$2;-><init>(Lbsgamesdkio/q;Ljava/io/InputStream;)V

    return-object v0
.end method

.method static a(Ljava/lang/AssertionError;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static b(Ljava/net/Socket;)Lbsgamesdkio/p;
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {p0}, Lbsgamesdkio/j;->c(Ljava/net/Socket;)Lbsgamesdkio/a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lbsgamesdkio/j;->a(Ljava/io/InputStream;Lbsgamesdkio/q;)Lbsgamesdkio/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsgamesdkio/a;->a(Lbsgamesdkio/p;)Lbsgamesdkio/p;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/net/Socket;)Lbsgamesdkio/a;
    .registers 2

    new-instance v0, Lbsgamesdkio/j$3;

    invoke-direct {v0, p0}, Lbsgamesdkio/j$3;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
