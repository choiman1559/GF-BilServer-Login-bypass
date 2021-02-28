.class public Lcom/bsgamesdk/android/utils/udid/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/bsgamesdk/android/utils/udid/c;
    .registers 4

    :try_start_0
    new-instance v0, Lcom/bsgamesdk/android/utils/udid/c;

    invoke-direct {v0}, Lcom/bsgamesdk/android/utils/udid/c;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "udid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bsgamesdk/android/utils/udid/c;->a:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13

    :goto_12
    return-object v0

    :catch_13
    move-exception v0

    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static a([B)Lcom/bsgamesdk/android/utils/udid/c;
    .registers 2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/udid/a;->a(Ljava/lang/String;)Lcom/bsgamesdk/android/utils/udid/c;

    move-result-object v0

    return-object v0
.end method
