.class public Lcom/bsgamesdk/android/utils/t;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_c

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_1d
    if-ltz v0, :cond_27

    aget-char v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    :cond_27
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method
