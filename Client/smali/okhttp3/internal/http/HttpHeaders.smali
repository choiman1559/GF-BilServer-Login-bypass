.class public final Lokhttp3/internal/http/HttpHeaders;
.super Ljava/lang/Object;


# static fields
.field private static final PARAMETER:Ljava/util/regex/Pattern;

.field private static final QUOTED_STRING:Ljava/lang/String; = "\"([^\"]*)\""

.field private static final TOKEN:Ljava/lang/String; = "([^ \"=]*)"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, " +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/HttpHeaders;->PARAMETER:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentLength(Lokhttp3/Headers;)J
    .registers 3

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->stringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static contentLength(Lokhttp3/Response;)J
    .registers 3

    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasBody(Lokhttp3/Response;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

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
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_41

    const-string v2, "chunked"

    const-string v3, "Transfer-Encoding"

    invoke-virtual {p0, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_41
    move v0, v1

    goto :goto_12
.end method

.method public static hasVaryAll(Lokhttp3/Headers;)Z
    .registers 3

    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasVaryAll(Lokhttp3/Response;)Z
    .registers 2

    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->hasVaryAll(Lokhttp3/Headers;)Z

    move-result v0

    return v0
.end method

.method public static parseChallenges(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Challenge;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v4, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_f
    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v2, -0x1

    if-eq v6, v2, :cond_f

    sget-object v2, Lokhttp3/internal/http/HttpHeaders;->PARAMETER:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    move v2, v6

    :goto_2b
    invoke-virtual {v9, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v9, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v2

    const-string v3, "realm"

    const/4 v5, 0x5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v9, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_52

    new-instance v0, Lokhttp3/Challenge;

    invoke-direct {v0, v2, v3}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_52
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    goto :goto_2b

    :cond_57
    return-object v7
.end method

.method public static parseSeconds(Ljava/lang/String;I)I
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

.method public static receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V
    .registers 5

    sget-object v0, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    if-ne p0, v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-static {p1, p2}, Lokhttp3/Cookie;->parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p0, p1, v0}, Lokhttp3/CookieJar;->saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V

    goto :goto_4
.end method

.method public static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
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

.method public static skipWhitespace(Ljava/lang/String;I)I
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

.method private static stringToLong(Ljava/lang/String;)J
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

.method public static varyFields(Lokhttp3/Headers;)Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v4

    move v1, v2

    :goto_a
    if-ge v1, v4, :cond_42

    const-string v3, "Vary"

    invoke-virtual {p0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1b
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2c

    new-instance v0, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    :cond_2c
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_34
    if-ge v3, v6, :cond_18

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_42
    return-object v0
.end method

.method private static varyFields(Lokhttp3/Response;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static varyHeaders(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;
    .registers 8

    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    :goto_13
    return-object v0

    :cond_14
    new-instance v2, Lokhttp3/Headers$Builder;

    invoke-direct {v2}, Lokhttp3/Headers$Builder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v3

    :goto_1e
    if-ge v0, v3, :cond_34

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_34
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    goto :goto_13
.end method

.method public static varyHeaders(Lokhttp3/Response;)Lokhttp3/Headers;
    .registers 3

    invoke-virtual {p0}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/internal/http/HttpHeaders;->varyHeaders(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public static varyMatches(Lokhttp3/Response;Lokhttp3/Headers;Lokhttp3/Request;)Z
    .registers 6

    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Response;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v0}, Lokhttp3/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x1

    goto :goto_23
.end method
