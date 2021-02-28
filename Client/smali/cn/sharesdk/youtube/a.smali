.class public Lcn/sharesdk/youtube/a;
.super Ljava/lang/Object;
.source "YoutebeUtil.java"


# direct methods
.method public static a([Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 71
    if-nez p0, :cond_5

    .line 72
    const-string v0, " "

    .line 78
    :goto_4
    return-object v0

    .line 74
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    const/4 v0, 0x0

    :goto_b
    array-length v2, p0

    if-gt v0, v2, :cond_16

    .line 76
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 78
    :cond_16
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method
