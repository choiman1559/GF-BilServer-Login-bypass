.class public Lcom/tencent/tp/q;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(C)C
    .registers 4

    const/16 v2, 0x7a

    const/16 v1, 0x5a

    const/16 v0, 0x61

    if-lt p0, v0, :cond_13

    if-gt p0, v2, :cond_13

    add-int/lit8 v0, p0, 0x5

    int-to-char p0, v0

    if-le p0, v2, :cond_12

    add-int/lit8 v0, p0, -0x1a

    int-to-char p0, v0

    :cond_12
    :goto_12
    return p0

    :cond_13
    const/16 v0, 0x41

    if-lt p0, v0, :cond_12

    if-gt p0, v1, :cond_12

    add-int/lit8 v0, p0, 0x5

    int-to-char p0, v0

    if-le p0, v1, :cond_12

    add-int/lit8 v0, p0, -0x1a

    int-to-char p0, v0

    goto :goto_12
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1e

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/tencent/tp/q;->a(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
