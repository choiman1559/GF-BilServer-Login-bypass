.class public final Lbsgamesdkhttp/a/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B

.field public static final b:[Ljava/lang/String;

.field public static final c:Lbsgamesdkhttp/z;

.field public static final d:Lbsgamesdkhttp/x;

.field public static final e:Ljava/nio/charset/Charset;

.field public static final f:Ljava/util/TimeZone;

.field private static final g:Lbsgamesdkio/ByteString;

.field private static final h:Lbsgamesdkio/ByteString;

.field private static final i:Lbsgamesdkio/ByteString;

.field private static final j:Lbsgamesdkio/ByteString;

.field private static final k:Lbsgamesdkio/ByteString;

.field private static final l:Ljava/nio/charset/Charset;

.field private static final m:Ljava/nio/charset/Charset;

.field private static final n:Ljava/nio/charset/Charset;

.field private static final o:Ljava/nio/charset/Charset;

.field private static final p:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-array v0, v1, [B

    sput-object v0, Lbsgamesdkhttp/a/c;->a:[B

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lbsgamesdkhttp/a/c;->b:[Ljava/lang/String;

    sget-object v0, Lbsgamesdkhttp/a/c;->a:[B

    invoke-static {v2, v0}, Lbsgamesdkhttp/z;->a(Lbsgamesdkhttp/t;[B)Lbsgamesdkhttp/z;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/c;->c:Lbsgamesdkhttp/z;

    sget-object v0, Lbsgamesdkhttp/a/c;->a:[B

    invoke-static {v2, v0}, Lbsgamesdkhttp/x;->a(Lbsgamesdkhttp/t;[B)Lbsgamesdkhttp/x;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/c;->d:Lbsgamesdkhttp/x;

    const-string v0, "efbbbf"

    invoke-static {v0}, Lbsgamesdkio/ByteString;->decodeHex(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/c;->g:Lbsgamesdkio/ByteString;

    const-string v0, "feff"

    invoke-static {v0}, Lbsgamesdkio/ByteString;->decodeHex(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/c;->h:Lbsgamesdkio/ByteString;

    const-string v0, "fffe"

    invoke-static {v0}, Lbsgamesdkio/ByteString;->decodeHex(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/c;->i:Lbsgamesdkio/ByteString;

    const-string v0, "0000ffff"

    invoke-static {v0}, Lbsgamesdkio/ByteString;->decodeHex(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/c;->j:Lbsgamesdkio/ByteString;

    const-string v0, "ffff0000"

    invoke-static {v0}, Lbsgamesdkio/ByteString;->decodeHex(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/c;->k:Lbsgamesdkio/ByteString;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/c;->e:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/c;->l:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/c;->m:Ljava/nio/charset/Charset;

    const-string v0, "UTF-32BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/c;->n:Ljava/nio/charset/Charset;

    const-string v0, "UTF-32LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/c;->o:Ljava/nio/charset/Charset;

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/c;->f:Ljava/util/TimeZone;

    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/c;->p:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;II)I
    .registers 5

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_b

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_10

    move p2, v0

    :cond_b
    return p2

    :sswitch_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    nop

    :sswitch_data_10
    .sparse-switch
        0x9 -> :sswitch_c
        0xa -> :sswitch_c
        0xc -> :sswitch_c
        0xd -> :sswitch_c
        0x20 -> :sswitch_c
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;IIC)I
    .registers 6

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_a

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_b

    move p2, v0

    :cond_a
    return p2

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;IILjava/lang/String;)I
    .registers 7

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_f

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    move p2, v0

    :cond_f
    return p2

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static a([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p0

    :goto_2
    if-ge v0, v1, :cond_10

    aget-object v2, p0, v0

    invoke-static {v2, p1}, Lbsgamesdkhttp/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :goto_c
    return v0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_10
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public static a(Lbsgamesdkhttp/HttpUrl;Z)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lbsgamesdkhttp/HttpUrl;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lbsgamesdkhttp/HttpUrl;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_29
    if-nez p1, :cond_39

    invoke-virtual {p0}, Lbsgamesdkhttp/HttpUrl;->g()I

    move-result v1

    invoke-virtual {p0}, Lbsgamesdkhttp/HttpUrl;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbsgamesdkhttp/HttpUrl;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_54

    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lbsgamesdkhttp/HttpUrl;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_54
    return-object v0

    :cond_55
    invoke-virtual {p0}, Lbsgamesdkhttp/HttpUrl;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_29
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    :goto_11
    return-object v0

    :cond_12
    invoke-static {v1}, Lbsgamesdkhttp/a/c;->d(Ljava/lang/String;)Z
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_15} :catch_1a

    move-result v2

    if-nez v2, :cond_11

    move-object v0, v1

    goto :goto_11

    :catch_1a
    move-exception v1

    goto :goto_11
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lbsgamesdkio/e;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .registers 6

    const-wide/16 v2, 0x0

    sget-object v0, Lbsgamesdkhttp/a/c;->g:Lbsgamesdkio/ByteString;

    invoke-interface {p0, v2, v3, v0}, Lbsgamesdkio/e;->a(JLbsgamesdkio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lbsgamesdkhttp/a/c;->g:Lbsgamesdkio/ByteString;

    invoke-virtual {v0}, Lbsgamesdkio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lbsgamesdkio/e;->g(J)V

    sget-object p1, Lbsgamesdkhttp/a/c;->e:Ljava/nio/charset/Charset;

    :cond_16
    :goto_16
    return-object p1

    :cond_17
    sget-object v0, Lbsgamesdkhttp/a/c;->h:Lbsgamesdkio/ByteString;

    invoke-interface {p0, v2, v3, v0}, Lbsgamesdkio/e;->a(JLbsgamesdkio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lbsgamesdkhttp/a/c;->h:Lbsgamesdkio/ByteString;

    invoke-virtual {v0}, Lbsgamesdkio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lbsgamesdkio/e;->g(J)V

    sget-object p1, Lbsgamesdkhttp/a/c;->l:Ljava/nio/charset/Charset;

    goto :goto_16

    :cond_2c
    sget-object v0, Lbsgamesdkhttp/a/c;->i:Lbsgamesdkio/ByteString;

    invoke-interface {p0, v2, v3, v0}, Lbsgamesdkio/e;->a(JLbsgamesdkio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_41

    sget-object v0, Lbsgamesdkhttp/a/c;->i:Lbsgamesdkio/ByteString;

    invoke-virtual {v0}, Lbsgamesdkio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lbsgamesdkio/e;->g(J)V

    sget-object p1, Lbsgamesdkhttp/a/c;->m:Ljava/nio/charset/Charset;

    goto :goto_16

    :cond_41
    sget-object v0, Lbsgamesdkhttp/a/c;->j:Lbsgamesdkio/ByteString;

    invoke-interface {p0, v2, v3, v0}, Lbsgamesdkio/e;->a(JLbsgamesdkio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_56

    sget-object v0, Lbsgamesdkhttp/a/c;->j:Lbsgamesdkio/ByteString;

    invoke-virtual {v0}, Lbsgamesdkio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lbsgamesdkio/e;->g(J)V

    sget-object p1, Lbsgamesdkhttp/a/c;->n:Ljava/nio/charset/Charset;

    goto :goto_16

    :cond_56
    sget-object v0, Lbsgamesdkhttp/a/c;->k:Lbsgamesdkio/ByteString;

    invoke-interface {p0, v2, v3, v0}, Lbsgamesdkio/e;->a(JLbsgamesdkio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lbsgamesdkhttp/a/c;->k:Lbsgamesdkio/ByteString;

    invoke-virtual {v0}, Lbsgamesdkio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lbsgamesdkio/e;->g(J)V

    sget-object p1, Lbsgamesdkhttp/a/c;->o:Ljava/nio/charset/Charset;

    goto :goto_16
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, p0

    move v2, v1

    :goto_8
    if-ge v2, v4, :cond_22

    aget-object v5, p0, v2

    array-length v6, p1

    move v0, v1

    :goto_e
    if-ge v0, v6, :cond_1b

    aget-object v7, p1, v0

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_22
    return-object v3
.end method

.method public static a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .registers 3

    new-instance v0, Lbsgamesdkhttp/a/c$a;

    invoke-direct {v0, p0, p1}, Lbsgamesdkhttp/a/c$a;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static a(JJJ)V
    .registers 10

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    cmp-long v0, p2, p0

    if-gtz v0, :cond_12

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_18

    :cond_12
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_18
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    throw v0

    :catch_8
    move-exception v0

    goto :goto_5
.end method

.method public static a(Ljava/net/Socket;)V
    .registers 3

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_10

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-static {v0}, Lbsgamesdkhttp/a/c;->a(Ljava/lang/AssertionError;)Z

    move-result v1

    if-nez v1, :cond_5

    throw v0

    :catch_e
    move-exception v0

    throw v0

    :catch_10
    move-exception v0

    goto :goto_5
.end method

.method public static a(Lbsgamesdkio/p;ILjava/util/concurrent/TimeUnit;)Z
    .registers 4

    :try_start_0
    invoke-static {p0, p1, p2}, Lbsgamesdkhttp/a/c;->b(Lbsgamesdkio/p;ILjava/util/concurrent/TimeUnit;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static a(Ljava/lang/AssertionError;)Z
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

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_a

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[TT;[TT;)[TT;"
        }
    .end annotation

    invoke-static {p1, p2}, Lbsgamesdkhttp/a/c;->a([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    return-object v0
.end method

.method public static b(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_5
    if-ge v0, v1, :cond_17

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_13

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_17
    const/4 v0, -0x1

    goto :goto_13
.end method

.method public static b(Ljava/lang/String;II)I
    .registers 5

    add-int/lit8 v0, p2, -0x1

    :goto_2
    if-lt v0, p1, :cond_d

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_12

    add-int/lit8 p1, v0, 0x1

    :cond_d
    return p1

    :sswitch_e
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    nop

    :sswitch_data_12
    .sparse-switch
        0x9 -> :sswitch_e
        0xa -> :sswitch_e
        0xc -> :sswitch_e
        0xd -> :sswitch_e
        0x20 -> :sswitch_e
    .end sparse-switch
.end method

.method public static b(Lbsgamesdkio/p;ILjava/util/concurrent/TimeUnit;)Z
    .registers 15

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-interface {p0}, Lbsgamesdkio/p;->a()Lbsgamesdkio/q;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkio/q;->c_()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p0}, Lbsgamesdkio/p;->a()Lbsgamesdkio/q;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkio/q;->d()J

    move-result-wide v0

    sub-long/2addr v0, v6

    :goto_1c
    invoke-interface {p0}, Lbsgamesdkio/p;->a()Lbsgamesdkio/q;

    move-result-object v4

    int-to-long v8, p1

    invoke-virtual {p2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {v4, v8, v9}, Lbsgamesdkio/q;->a(J)Lbsgamesdkio/q;

    :try_start_2d
    new-instance v4, Lbsgamesdkio/c;

    invoke-direct {v4}, Lbsgamesdkio/c;-><init>()V

    :goto_32
    const-wide/16 v8, 0x2000

    invoke-interface {p0, v4, v8, v9}, Lbsgamesdkio/p;->a(Lbsgamesdkio/c;J)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-eqz v5, :cond_53

    invoke-virtual {v4}, Lbsgamesdkio/c;->q()V
    :try_end_41
    .catch Ljava/io/InterruptedIOException; {:try_start_2d .. :try_end_41} :catch_42
    .catchall {:try_start_2d .. :try_end_41} :catchall_73

    goto :goto_32

    :catch_42
    move-exception v4

    const/4 v4, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_6a

    invoke-interface {p0}, Lbsgamesdkio/p;->a()Lbsgamesdkio/q;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkio/q;->e_()Lbsgamesdkio/q;

    :goto_4f
    move v0, v4

    :goto_50
    return v0

    :cond_51
    move-wide v0, v2

    goto :goto_1c

    :cond_53
    const/4 v4, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_61

    invoke-interface {p0}, Lbsgamesdkio/p;->a()Lbsgamesdkio/q;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkio/q;->e_()Lbsgamesdkio/q;

    :goto_5f
    move v0, v4

    goto :goto_50

    :cond_61
    invoke-interface {p0}, Lbsgamesdkio/p;->a()Lbsgamesdkio/q;

    move-result-object v2

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lbsgamesdkio/q;->a(J)Lbsgamesdkio/q;

    goto :goto_5f

    :cond_6a
    invoke-interface {p0}, Lbsgamesdkio/p;->a()Lbsgamesdkio/q;

    move-result-object v2

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lbsgamesdkio/q;->a(J)Lbsgamesdkio/q;

    goto :goto_4f

    :catchall_73
    move-exception v4

    cmp-long v2, v0, v2

    if-nez v2, :cond_80

    invoke-interface {p0}, Lbsgamesdkio/p;->a()Lbsgamesdkio/q;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkio/q;->e_()Lbsgamesdkio/q;

    :goto_7f
    throw v4

    :cond_80
    invoke-interface {p0}, Lbsgamesdkio/p;->a()Lbsgamesdkio/q;

    move-result-object v2

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lbsgamesdkio/q;->a(J)Lbsgamesdkio/q;

    goto :goto_7f
.end method

.method public static c(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5

    invoke-static {p0, p1, p2}, Lbsgamesdkhttp/a/c;->a(Ljava/lang/String;II)I

    move-result v0

    invoke-static {p0, v0, p2}, Lbsgamesdkhttp/a/c;->b(Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lbsgamesdkhttp/a/c;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private static d(Ljava/lang/String;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_16

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x1f

    if-le v3, v4, :cond_15

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_17

    :cond_15
    move v1, v2

    :cond_16
    :goto_16
    return v1

    :cond_17
    const-string v4, " #%/:?@[\\]"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_22

    move v1, v2

    goto :goto_16

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
