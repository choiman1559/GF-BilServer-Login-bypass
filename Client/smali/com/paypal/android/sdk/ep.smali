.class public Lcom/paypal/android/sdk/ep;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/List;

.field private static b:Ljava/util/regex/Pattern;

.field private static c:Ljava/util/regex/Pattern;

.field private static d:Ljava/util/regex/Pattern;

.field private static e:Ljava/util/regex/Pattern;

.field private static f:Ljava/util/regex/Pattern;

.field private static synthetic g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/paypal/android/sdk/ep;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_72

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/paypal/android/sdk/ep;->g:Z

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "AU"

    aput-object v3, v0, v2

    const-string v2, "BR"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ES"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "FR"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GB"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "MY"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "US"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/ep;->a:Ljava/util/List;

    const-string v0, "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,} *$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/ep;->b:Ljava/util/regex/Pattern;

    const-string v0, "^[0-9]{4,8}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/ep;->c:Ljava/util/regex/Pattern;

    const-string v0, "^\\+?[0-9]{7,14}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/ep;->d:Ljava/util/regex/Pattern;

    const-string v0, "[ .\\-\\(\\)]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/ep;->e:Ljava/util/regex/Pattern;

    const-string v0, "^\\+?0+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/ep;->f:Ljava/util/regex/Pattern;

    return-void

    :cond_72
    move v0, v2

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    sget-boolean v0, Lcom/paypal/android/sdk/ep;->g:Z

    if-nez v0, :cond_c

    if-nez p0, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    sget-object v0, Lcom/paypal/android/sdk/ep;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2

    sget-boolean v0, Lcom/paypal/android/sdk/ep;->g:Z

    if-nez v0, :cond_c

    if-nez p0, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    sget-object v0, Lcom/paypal/android/sdk/ep;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 3

    sget-boolean v0, Lcom/paypal/android/sdk/ep;->g:Z

    if-nez v0, :cond_c

    if-nez p0, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    sget-object v0, Lcom/paypal/android/sdk/ep;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/sdk/ep;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_32

    sget-object v1, Lcom/paypal/android/sdk/ep;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_32

    const/4 v0, 0x1

    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/paypal/android/sdk/ep;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/paypal/android/sdk/d;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    sget-object v0, Lcom/paypal/android/sdk/ep;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method
