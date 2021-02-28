.class public Lcom/bsgamesdk/android/dc/buvid/file/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;I)Lcom/bsgamesdk/android/dc/buvid/file/j;
    .registers 5

    :try_start_0
    new-instance v0, Lcom/bsgamesdk/android/dc/buvid/file/j;

    invoke-direct {v0}, Lcom/bsgamesdk/android/dc/buvid/file/j;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "buvid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bsgamesdk/android/dc/buvid/file/j;->a:Ljava/lang/String;

    const-string v2, "buvid2"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bsgamesdk/android/dc/buvid/file/j;->b:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_1b

    :goto_1a
    return-object v0

    :catch_1b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static a([BI)Lcom/bsgamesdk/android/dc/buvid/file/j;
    .registers 6

    const/4 v0, 0x0

    const/16 v3, 0x8

    if-eqz p0, :cond_8

    array-length v1, p0

    if-gt v1, v3, :cond_9

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    const/4 v1, 0x0

    invoke-static {p0, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    array-length v2, p0

    invoke-static {p0, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2, v1}, Lcom/bsgamesdk/android/dc/buvid/file/c;->a([B[B)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v2, p1}, Lcom/bsgamesdk/android/dc/buvid/file/c;->b([BI)Lcom/bsgamesdk/android/dc/buvid/file/j;

    move-result-object v0

    goto :goto_8
.end method

.method private static a([B[B)Z
    .registers 3

    invoke-static {p0}, Lcom/bsgamesdk/android/dc/buvid/file/b;->a([B)[B

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method private static b([BI)Lcom/bsgamesdk/android/dc/buvid/file/j;
    .registers 3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, p1}, Lcom/bsgamesdk/android/dc/buvid/file/c;->a(Ljava/lang/String;I)Lcom/bsgamesdk/android/dc/buvid/file/j;

    move-result-object v0

    return-object v0
.end method
