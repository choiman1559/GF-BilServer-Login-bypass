.class public final Lbsgamesdkhttp/t;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/t;->a:Ljava/util/regex/Pattern;

    const-string v0, ";\\s*(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)|\"([^\"]*)\"))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/t;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsgamesdkhttp/t;->c:Ljava/lang/String;

    iput-object p2, p0, Lbsgamesdkhttp/t;->d:Ljava/lang/String;

    iput-object p3, p0, Lbsgamesdkhttp/t;->e:Ljava/lang/String;

    iput-object p4, p0, Lbsgamesdkhttp/t;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lbsgamesdkhttp/t;
    .registers 10

    const/4 v2, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    sget-object v0, Lbsgamesdkhttp/t;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-nez v1, :cond_10

    :cond_f
    :goto_f
    return-object v2

    :cond_10
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lbsgamesdkhttp/t;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    move v1, v0

    move-object v0, v2

    :goto_30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_a5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_51

    const-string v6, "charset"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_56

    :cond_51
    :goto_51
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    goto :goto_30

    :cond_56
    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9d

    const-string v6, "\'"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7c

    const-string v6, "\'"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_7c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_7c
    :goto_7c
    if-eqz v0, :cond_a3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple different charsets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9d
    const/4 v1, 0x3

    invoke-virtual {v5, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7c

    :cond_a3
    move-object v0, v1

    goto :goto_51

    :cond_a5
    new-instance v2, Lbsgamesdkhttp/t;

    invoke-direct {v2, p0, v3, v4, v0}, Lbsgamesdkhttp/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f
.end method


# virtual methods
.method public a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .registers 3

    iget-object v0, p0, Lbsgamesdkhttp/t;->f:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lbsgamesdkhttp/t;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    :cond_a
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lbsgamesdkhttp/t;

    if-eqz v0, :cond_12

    check-cast p1, Lbsgamesdkhttp/t;

    iget-object v0, p1, Lbsgamesdkhttp/t;->c:Ljava/lang/String;

    iget-object v1, p0, Lbsgamesdkhttp/t;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/t;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/t;->c:Ljava/lang/String;

    return-object v0
.end method
