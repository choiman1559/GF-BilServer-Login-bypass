.class public abstract Lbsgamesdkhttp/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lbsgamesdkhttp/t;JLbsgamesdkio/e;)Lbsgamesdkhttp/z;
    .registers 7

    if-nez p3, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lbsgamesdkhttp/z$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lbsgamesdkhttp/z$1;-><init>(Lbsgamesdkhttp/t;JLbsgamesdkio/e;)V

    return-object v0
.end method

.method public static a(Lbsgamesdkhttp/t;[B)Lbsgamesdkhttp/z;
    .registers 6

    new-instance v0, Lbsgamesdkio/c;

    invoke-direct {v0}, Lbsgamesdkio/c;-><init>()V

    invoke-virtual {v0, p1}, Lbsgamesdkio/c;->b([B)Lbsgamesdkio/c;

    move-result-object v0

    array-length v1, p1

    int-to-long v2, v1

    invoke-static {p0, v2, v3, v0}, Lbsgamesdkhttp/z;->a(Lbsgamesdkhttp/t;JLbsgamesdkio/e;)Lbsgamesdkhttp/z;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/nio/charset/Charset;
    .registers 3

    invoke-virtual {p0}, Lbsgamesdkhttp/z;->a()Lbsgamesdkhttp/t;

    move-result-object v0

    if-eqz v0, :cond_d

    sget-object v1, Lbsgamesdkhttp/a/c;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/t;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lbsgamesdkhttp/a/c;->e:Ljava/nio/charset/Charset;

    goto :goto_c
.end method


# virtual methods
.method public abstract a()Lbsgamesdkhttp/t;
.end method

.method public abstract b()J
.end method

.method public abstract c()Lbsgamesdkio/e;
.end method

.method public close()V
    .registers 2

    invoke-virtual {p0}, Lbsgamesdkhttp/z;->c()Lbsgamesdkio/e;

    move-result-object v0

    invoke-static {v0}, Lbsgamesdkhttp/a/c;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lbsgamesdkhttp/z;->c()Lbsgamesdkio/e;

    move-result-object v1

    :try_start_4
    invoke-direct {p0}, Lbsgamesdkhttp/z;->e()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v1, v0}, Lbsgamesdkhttp/a/c;->a(Lbsgamesdkio/e;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-interface {v1, v0}, Lbsgamesdkio/e;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_14

    move-result-object v0

    invoke-static {v1}, Lbsgamesdkhttp/a/c;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_14
    move-exception v0

    invoke-static {v1}, Lbsgamesdkhttp/a/c;->a(Ljava/io/Closeable;)V

    throw v0
.end method
