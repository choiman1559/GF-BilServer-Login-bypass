.class public final Lokhttp3/Cookie;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cookie$Builder;
    }
.end annotation


# static fields
.field private static final DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final YEAR_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final domain:Ljava/lang/String;

.field private final expiresAt:J

.field private final hostOnly:Z

.field private final httpOnly:Z

.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final persistent:Z

.field private final secure:Z

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "(\\d{2,4})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    iput-wide p3, p0, Lokhttp3/Cookie;->expiresAt:J

    iput-object p5, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    iput-object p6, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    iput-boolean p7, p0, Lokhttp3/Cookie;->secure:Z

    iput-boolean p8, p0, Lokhttp3/Cookie;->httpOnly:Z

    iput-boolean p9, p0, Lokhttp3/Cookie;->hostOnly:Z

    iput-boolean p10, p0, Lokhttp3/Cookie;->persistent:Z

    return-void
.end method

.method constructor <init>(Lokhttp3/Cookie$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "builder.name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "builder.value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "builder.domain == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    iget-wide v0, p1, Lokhttp3/Cookie$Builder;->expiresAt:J

    iput-wide v0, p0, Lokhttp3/Cookie;->expiresAt:J

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->secure:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->secure:Z

    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->httpOnly:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->httpOnly:Z

    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->persistent:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->persistent:Z

    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->hostOnly:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->hostOnly:Z

    return-void
.end method

.method private static dateCharacterOffset(Ljava/lang/String;IIZ)I
    .registers 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v0, p1

    :goto_3
    if-ge v0, p2, :cond_38

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x20

    if-ge v1, v4, :cond_11

    const/16 v4, 0x9

    if-ne v1, v4, :cond_31

    :cond_11
    const/16 v4, 0x7f

    if-ge v1, v4, :cond_31

    const/16 v4, 0x30

    if-lt v1, v4, :cond_1d

    const/16 v4, 0x39

    if-le v1, v4, :cond_31

    :cond_1d
    const/16 v4, 0x61

    if-lt v1, v4, :cond_25

    const/16 v4, 0x7a

    if-le v1, v4, :cond_31

    :cond_25
    const/16 v4, 0x41

    if-lt v1, v4, :cond_2d

    const/16 v4, 0x5a

    if-le v1, v4, :cond_31

    :cond_2d
    const/16 v4, 0x3a

    if-ne v1, v4, :cond_39

    :cond_31
    move v4, v2

    :goto_32
    if-nez p3, :cond_3b

    move v1, v2

    :goto_35
    if-ne v4, v1, :cond_3d

    move p2, v0

    :cond_38
    return p2

    :cond_39
    move v4, v3

    goto :goto_32

    :cond_3b
    move v1, v3

    goto :goto_35

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private static domainMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2b

    invoke-static {v1}, Lokhttp3/internal/Util;->verifyAsIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_2b
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static parse(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .registers 24

    const/4 v2, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v3, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-static {v0, v2, v1, v3}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v3

    const/16 v4, 0x3d

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3, v4}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v5

    if-ne v5, v3, :cond_1b

    const/4 v3, 0x0

    :goto_1a
    return-object v3

    :cond_1b
    move-object/from16 v0, p3

    invoke-static {v0, v2, v5}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-static {v4}, Lokhttp3/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_30

    :cond_2e
    const/4 v3, 0x0

    goto :goto_1a

    :cond_30
    add-int/lit8 v2, v5, 0x1

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lokhttp3/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_41

    const/4 v3, 0x0

    goto :goto_1a

    :cond_41
    const-wide v14, 0xe677d21fdbffL

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    add-int/lit8 v3, v3, 0x1

    :goto_50
    move/from16 v0, v16

    if-ge v3, v0, :cond_f9

    const/16 v9, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-static {v0, v3, v1, v9}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v17

    const/16 v9, 0x3d

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v3, v1, v9}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v9

    move-object/from16 v0, p3

    invoke-static {v0, v3, v9}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v17

    if-ge v9, v0, :cond_9d

    add-int/lit8 v3, v9, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v3, v1}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    :goto_7c
    const-string v9, "expires"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a4

    const/4 v9, 0x0

    :try_start_87
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-static {v3, v9, v0}, Lokhttp3/Cookie;->parseExpires(Ljava/lang/String;II)J
    :try_end_90
    .catch Ljava/lang/IllegalArgumentException; {:try_start_87 .. :try_end_90} :catch_a0

    move-result-wide v14

    const/4 v13, 0x1

    move-object v3, v8

    move-wide v8, v14

    :goto_94
    add-int/lit8 v14, v17, 0x1

    move-object/from16 v19, v3

    move v3, v14

    move-wide v14, v8

    move-object/from16 v8, v19

    goto :goto_50

    :cond_9d
    const-string v3, ""

    goto :goto_7c

    :catch_a0
    move-exception v3

    move-object v3, v8

    move-wide v8, v14

    goto :goto_94

    :cond_a4
    const-string v9, "max-age"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ba

    :try_start_ae
    invoke-static {v3}, Lokhttp3/Cookie;->parseMaxAge(Ljava/lang/String;)J
    :try_end_b1
    .catch Ljava/lang/NumberFormatException; {:try_start_ae .. :try_end_b1} :catch_b6

    move-result-wide v6

    const/4 v13, 0x1

    move-object v3, v8

    move-wide v8, v14

    goto :goto_94

    :catch_b6
    move-exception v3

    move-object v3, v8

    move-wide v8, v14

    goto :goto_94

    :cond_ba
    const-string v9, "domain"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_cf

    :try_start_c4
    invoke-static {v3}, Lokhttp3/Cookie;->parseDomain(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c4 .. :try_end_c7} :catch_cb

    move-result-object v3

    const/4 v12, 0x0

    move-wide v8, v14

    goto :goto_94

    :catch_cb
    move-exception v3

    move-object v3, v8

    move-wide v8, v14

    goto :goto_94

    :cond_cf
    const-string v9, "path"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_dd

    move-object v2, v3

    move-object v3, v8

    move-wide v8, v14

    goto :goto_94

    :cond_dd
    const-string v3, "secure"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_eb

    const/4 v10, 0x1

    move-object v3, v8

    move-wide v8, v14

    goto :goto_94

    :cond_eb
    const-string v3, "httponly"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_169

    const/4 v11, 0x1

    move-object v3, v8

    move-wide v8, v14

    goto :goto_94

    :cond_f9
    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v3, v6, v16

    if-nez v3, :cond_12a

    const-wide/high16 v6, -0x8000000000000000L

    :cond_101
    :goto_101
    if-nez v8, :cond_157

    invoke-virtual/range {p2 .. p2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v8

    :cond_107
    if-eqz v2, :cond_111

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_165

    :cond_111
    invoke-virtual/range {p2 .. p2}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-eqz v3, :cond_162

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_122
    move-object v9, v2

    :goto_123
    new-instance v3, Lokhttp3/Cookie;

    invoke-direct/range {v3 .. v13}, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    goto/16 :goto_1a

    :cond_12a
    const-wide/16 v16, -0x1

    cmp-long v3, v6, v16

    if-eqz v3, :cond_167

    const-wide v14, 0x20c49ba5e353f7L

    cmp-long v3, v6, v14

    if-gtz v3, :cond_151

    const-wide/16 v14, 0x3e8

    mul-long/2addr v6, v14

    :goto_13c
    add-long v6, v6, p0

    cmp-long v3, v6, p0

    if-ltz v3, :cond_14b

    const-wide v14, 0xe677d21fdbffL

    cmp-long v3, v6, v14

    if-lez v3, :cond_101

    :cond_14b
    const-wide v6, 0xe677d21fdbffL

    goto :goto_101

    :cond_151
    const-wide v6, 0x7fffffffffffffffL

    goto :goto_13c

    :cond_157
    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lokhttp3/Cookie;->domainMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_107

    const/4 v3, 0x0

    goto/16 :goto_1a

    :cond_162
    const-string v2, "/"

    goto :goto_122

    :cond_165
    move-object v9, v2

    goto :goto_123

    :cond_167
    move-wide v6, v14

    goto :goto_101

    :cond_169
    move-object v3, v8

    move-wide v8, v14

    goto/16 :goto_94
.end method

.method public static parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lokhttp3/Cookie;->parse(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object v0

    return-object v0
.end method

.method public static parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    const-string v0, "Set-Cookie"

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    :goto_d
    if-ge v2, v4, :cond_2b

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lokhttp3/Cookie;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object v5

    if-nez v5, :cond_1f

    :goto_1b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    :cond_1f
    if-nez v1, :cond_37

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_26
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    goto :goto_1b

    :cond_2b
    if-eqz v1, :cond_32

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_31
    return-object v0

    :cond_32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_31

    :cond_37
    move-object v0, v1

    goto :goto_26
.end method

.method private static parseDomain(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_e
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1b
    invoke-static {p0}, Lokhttp3/internal/Util;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_27
    return-object v0
.end method

.method private static parseExpires(Ljava/lang/String;II)J
    .registers 13

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v6

    const/4 v5, -0x1

    const/4 v4, -0x1

    const/4 v3, -0x1

    const/4 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, -0x1

    sget-object v7, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    :goto_11
    if-ge v6, p2, :cond_a8

    add-int/lit8 v8, v6, 0x1

    const/4 v9, 0x1

    invoke-static {p0, v8, p2, v9}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v8

    invoke-virtual {v7, v6, v8}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4f

    sget-object v6, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_4f

    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v3, 0x2

    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v3, 0x3

    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_47
    :goto_47
    add-int/lit8 v6, v8, 0x1

    const/4 v8, 0x0

    invoke-static {p0, v6, p2, v8}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v6

    goto :goto_11

    :cond_4f
    const/4 v6, -0x1

    if-ne v2, v6, :cond_68

    sget-object v6, Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_68

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_47

    :cond_68
    const/4 v6, -0x1

    if-ne v1, v6, :cond_8f

    sget-object v6, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_8f

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    goto :goto_47

    :cond_8f
    const/4 v6, -0x1

    if-ne v0, v6, :cond_47

    sget-object v6, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_47

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_47

    :cond_a8
    const/16 v6, 0x46

    if-lt v0, v6, :cond_b2

    const/16 v6, 0x63

    if-gt v0, v6, :cond_b2

    add-int/lit16 v0, v0, 0x76c

    :cond_b2
    if-ltz v0, :cond_ba

    const/16 v6, 0x45

    if-gt v0, v6, :cond_ba

    add-int/lit16 v0, v0, 0x7d0

    :cond_ba
    const/16 v6, 0x641

    if-ge v0, v6, :cond_c4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_c4
    const/4 v6, -0x1

    if-ne v1, v6, :cond_cd

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_cd
    const/4 v6, 0x1

    if-lt v2, v6, :cond_d4

    const/16 v6, 0x1f

    if-le v2, v6, :cond_da

    :cond_d4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_da
    if-ltz v5, :cond_e0

    const/16 v6, 0x17

    if-le v5, v6, :cond_e6

    :cond_e0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_e6
    if-ltz v4, :cond_ec

    const/16 v6, 0x3b

    if-le v4, v6, :cond_f2

    :cond_ec
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_f2
    if-ltz v3, :cond_f8

    const/16 v6, 0x3b

    if-le v3, v6, :cond_fe

    :cond_f8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_fe
    new-instance v6, Ljava/util/GregorianCalendar;

    sget-object v7, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-direct {v6, v7}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->setLenient(Z)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {v6, v0, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xb

    invoke-virtual {v6, v0, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {v6, v0, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {v6, v0, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private static parseMaxAge(Ljava/lang/String;)J
    .registers 7

    const-wide/high16 v0, -0x8000000000000000L

    :try_start_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_5} :catch_f

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_d

    :cond_c
    :goto_c
    return-wide v0

    :cond_d
    move-wide v0, v2

    goto :goto_c

    :catch_f
    move-exception v2

    const-string v3, "-?\\d+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_c

    :cond_26
    throw v2
.end method

.method private static pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_b

    :cond_26
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public domain()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    instance-of v1, p1, Lokhttp3/Cookie;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lokhttp3/Cookie;

    iget-object v1, p1, Lokhttp3/Cookie;->name:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lokhttp3/Cookie;->value:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lokhttp3/Cookie;->path:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v2, p1, Lokhttp3/Cookie;->expiresAt:J

    iget-wide v4, p0, Lokhttp3/Cookie;->expiresAt:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    iget-boolean v1, p1, Lokhttp3/Cookie;->secure:Z

    iget-boolean v2, p0, Lokhttp3/Cookie;->secure:Z

    if-ne v1, v2, :cond_5

    iget-boolean v1, p1, Lokhttp3/Cookie;->httpOnly:Z

    iget-boolean v2, p0, Lokhttp3/Cookie;->httpOnly:Z

    if-ne v1, v2, :cond_5

    iget-boolean v1, p1, Lokhttp3/Cookie;->persistent:Z

    iget-boolean v2, p0, Lokhttp3/Cookie;->persistent:Z

    if-ne v1, v2, :cond_5

    iget-boolean v1, p1, Lokhttp3/Cookie;->hostOnly:Z

    iget-boolean v2, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public expiresAt()J
    .registers 3

    iget-wide v0, p0, Lokhttp3/Cookie;->expiresAt:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lokhttp3/Cookie;->expiresAt:J

    iget-wide v6, p0, Lokhttp3/Cookie;->expiresAt:J

    const/16 v3, 0x20

    ushr-long/2addr v6, v3

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lokhttp3/Cookie;->secure:Z

    if-eqz v0, :cond_51

    move v0, v1

    :goto_38
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lokhttp3/Cookie;->httpOnly:Z

    if-eqz v0, :cond_53

    move v0, v1

    :goto_40
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lokhttp3/Cookie;->persistent:Z

    if-eqz v0, :cond_55

    move v0, v1

    :goto_48
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-eqz v3, :cond_57

    :goto_4f
    add-int/2addr v0, v1

    return v0

    :cond_51
    move v0, v2

    goto :goto_38

    :cond_53
    move v0, v2

    goto :goto_40

    :cond_55
    move v0, v2

    goto :goto_48

    :cond_57
    move v1, v2

    goto :goto_4f
.end method

.method public hostOnly()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/Cookie;->hostOnly:Z

    return v0
.end method

.method public httpOnly()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/Cookie;->httpOnly:Z

    return v0
.end method

.method public matches(Lokhttp3/HttpUrl;)Z
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-eqz v1, :cond_12

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_f
    if-nez v1, :cond_19

    :cond_11
    :goto_11
    return v0

    :cond_12
    iget-object v1, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-static {p1, v1}, Lokhttp3/Cookie;->domainMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result v1

    goto :goto_f

    :cond_19
    iget-object v1, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-static {p1, v1}, Lokhttp3/Cookie;->pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lokhttp3/Cookie;->secure:Z

    if-eqz v1, :cond_2b

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_2b
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public path()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public persistent()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/Cookie;->persistent:Z

    return v0
.end method

.method public secure()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/Cookie;->secure:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/Cookie;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Z)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lokhttp3/Cookie;->persistent:Z

    if-eqz v1, :cond_25

    iget-wide v2, p0, Lokhttp3/Cookie;->expiresAt:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_5c

    const-string v1, "; max-age=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    :goto_25
    iget-boolean v1, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-nez v1, :cond_3a

    const-string v1, "; domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_35

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    iget-object v1, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3a
    const-string v1, "; path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lokhttp3/Cookie;->secure:Z

    if-eqz v1, :cond_4e

    const-string v1, "; secure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4e
    iget-boolean v1, p0, Lokhttp3/Cookie;->httpOnly:Z

    if-eqz v1, :cond_57

    const-string v1, "; httponly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5c
    const-string v1, "; expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lokhttp3/Cookie;->expiresAt:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lokhttp3/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25
.end method

.method public value()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    return-object v0
.end method
