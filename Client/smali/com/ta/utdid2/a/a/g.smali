.class public Lcom/ta/utdid2/a/a/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "([\t\r\n])+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/a/a/g;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_c
    array-length v3, v2

    if-ge v0, v3, :cond_18

    mul-int/lit8 v1, v1, 0x1f

    aget-char v3, v2, v0

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_17
    move v1, v0

    :cond_18
    return v1
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method
