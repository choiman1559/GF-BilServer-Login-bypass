.class public final Lbsgamesdkhttp/a/c/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, " +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/c/e;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .registers 4

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_12

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_13

    const/16 v1, 0x9

    if-eq v0, v1, :cond_13

    :cond_12
    return p1

    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_11

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    :cond_11
    return p1

    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static a(Lbsgamesdkhttp/r;)J
    .registers 3

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lbsgamesdkhttp/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsgamesdkhttp/a/c/e;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lbsgamesdkhttp/y;)J
    .registers 3

    invoke-virtual {p0}, Lbsgamesdkhttp/y;->f()Lbsgamesdkhttp/r;

    move-result-object v0

    invoke-static {v0}, Lbsgamesdkhttp/a/c/e;->a(Lbsgamesdkhttp/r;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    :goto_4
    return-wide v0

    :cond_5
    :try_start_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-wide v0

    goto :goto_4

    :catch_a
    move-exception v2

    goto :goto_4
.end method

.method public static a(Lbsgamesdkhttp/m;Lbsgamesdkhttp/HttpUrl;Lbsgamesdkhttp/r;)V
    .registers 5

    sget-object v0, Lbsgamesdkhttp/m;->a:Lbsgamesdkhttp/m;

    if-ne p0, v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-static {p1, p2}, Lbsgamesdkhttp/l;->a(Lbsgamesdkhttp/HttpUrl;Lbsgamesdkhttp/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p0, p1, v0}, Lbsgamesdkhttp/m;->a(Lbsgamesdkhttp/HttpUrl;Ljava/util/List;)V

    goto :goto_4
.end method

.method public static b(Ljava/lang/String;I)I
    .registers 6

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_19

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_f

    const p1, 0x7fffffff

    :goto_e
    return p1

    :cond_f
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_17

    const/4 p1, 0x0

    goto :goto_e

    :cond_17
    long-to-int p1, v0

    goto :goto_e

    :catch_19
    move-exception v0

    goto :goto_e
.end method

.method public static b(Lbsgamesdkhttp/y;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lbsgamesdkhttp/y;->a()Lbsgamesdkhttp/w;

    move-result-object v2

    invoke-virtual {v2}, Lbsgamesdkhttp/w;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    invoke-virtual {p0}, Lbsgamesdkhttp/y;->b()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1f

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_29

    :cond_1f
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_29

    const/16 v3, 0x130

    if-eq v2, v3, :cond_29

    move v0, v1

    goto :goto_12

    :cond_29
    invoke-static {p0}, Lbsgamesdkhttp/a/c/e;->a(Lbsgamesdkhttp/y;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_41

    const-string v2, "chunked"

    const-string v3, "Transfer-Encoding"

    invoke-virtual {p0, v3}, Lbsgamesdkhttp/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_41
    move v0, v1

    goto :goto_12
.end method
