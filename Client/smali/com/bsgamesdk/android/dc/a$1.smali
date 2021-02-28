.class Lcom/bsgamesdk/android/dc/a$1;
.super Lcom/android/data/sdk/PreDefined;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/dc/a;->b(Landroid/app/Activity;)Lcom/android/data/sdk/PreDefined;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/bsgamesdk/android/dc/a;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/dc/a;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/dc/a$1;->b:Lcom/bsgamesdk/android/dc/a;

    iput-object p2, p0, Lcom/bsgamesdk/android/dc/a$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/android/data/sdk/PreDefined;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity1Class()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/bsgamesdk/android/dc/c;->n:Ljava/lang/Class;

    return-object v0
.end method

.method public getCDNUrl()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/bsgamesdk/android/dc/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCurBuvid()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    :try_start_2
    iget-object v1, p0, Lcom/bsgamesdk/android/dc/a$1;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bsgamesdk/android/dc/buvid/b;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/dc/buvid/file/j;

    move-result-object v1

    iget-object v0, v1, Lcom/bsgamesdk/android/dc/buvid/file/j;->d:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_a} :catch_b

    :goto_a
    return-object v0

    :catch_b
    move-exception v1

    goto :goto_a
.end method

.method public getDefaultFreeHttpList()[Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/bsgamesdk/android/dc/c;->g:[Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultFreeHttpsList()[Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/bsgamesdk/android/dc/c;->h:[Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultHttpList()[Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/bsgamesdk/android/dc/c;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultHttpsList()[Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/bsgamesdk/android/dc/c;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfoWithPermission(Landroid/telephony/TelephonyManager;Lorg/json/JSONObject;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission",
            "HardwareIds"
        }
    .end annotation

    return-void
.end method

.method public getEnv()I
    .registers 2

    sget v0, Lcom/bsgamesdk/android/dc/c;->j:I

    return v0
.end method

.method public getIntervalTime()J
    .registers 3

    sget-wide v0, Lcom/bsgamesdk/android/dc/c;->k:J

    return-wide v0
.end method

.method public getMinimumIntervalTime()J
    .registers 3

    sget-wide v0, Lcom/bsgamesdk/android/dc/c;->l:J

    return-wide v0
.end method

.method public getOldBuvid()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    :try_start_2
    iget-object v1, p0, Lcom/bsgamesdk/android/dc/a$1;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bsgamesdk/android/dc/buvid/b;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/dc/buvid/file/j;

    move-result-object v1

    iget-object v0, v1, Lcom/bsgamesdk/android/dc/buvid/file/j;->c:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_a} :catch_b

    :goto_a
    return-object v0

    :catch_b
    move-exception v1

    goto :goto_a
.end method

.method public getSdkVersion()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/bsgamesdk/android/dc/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/bsgamesdk/android/dc/c;->m:Ljava/lang/Class;

    return-object v0
.end method

.method public getStaticData()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "DEFAULT_RELATIVE_APPS"

    sget-object v2, Lcom/bsgamesdk/android/dc/c;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GAME_INFO_URL"

    sget-object v2, Lcom/bsgamesdk/android/dc/c;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GAME_INFO_URL_NET"

    sget-object v2, Lcom/bsgamesdk/android/dc/c;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
