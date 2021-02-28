.class public Lcom/bsgamesdk/android/utils/udid/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/bsgamesdk/android/utils/udid/c;)[B
    .registers 2

    invoke-static {p0}, Lcom/bsgamesdk/android/utils/udid/b;->b(Lcom/bsgamesdk/android/utils/udid/c;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_7
.end method

.method private static b(Lcom/bsgamesdk/android/utils/udid/c;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/bsgamesdk/android/utils/udid/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
