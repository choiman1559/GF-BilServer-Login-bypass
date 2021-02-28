.class public abstract Lcom/android/data/sdk/PreDefined;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/android/data/sdk/constant/a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/data/sdk/PreDefined;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b()Ljava/lang/String;
    .registers 2

    sget v0, Lcom/android/data/sdk/constant/b;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getActivity1Class()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getCDNUrl()Ljava/lang/String;
.end method

.method public getCoreThreadPoolSize()I
    .registers 2

    sget v0, Lcom/android/data/sdk/constant/c;->a:I

    return v0
.end method

.method public abstract getCurBuvid()Ljava/lang/String;
.end method

.method public getDefaultCommoConnTimeout()J
    .registers 3

    sget-wide v0, Lcom/android/data/sdk/constant/ConstantTime;->DEFAULT_COMMON_CONNECT_TIMEOUT:J

    return-wide v0
.end method

.method public getDefaultCommoReadTimeout()J
    .registers 3

    sget-wide v0, Lcom/android/data/sdk/constant/ConstantTime;->DEFAULT_COMMON_READ_TIMEOUT:J

    return-wide v0
.end method

.method public abstract getDefaultFreeHttpList()[Ljava/lang/String;
.end method

.method public abstract getDefaultFreeHttpsList()[Ljava/lang/String;
.end method

.method public abstract getDefaultHttpList()[Ljava/lang/String;
.end method

.method public abstract getDefaultHttpsList()[Ljava/lang/String;
.end method

.method public getDefaultSniffConnTimeout()J
    .registers 3

    sget-wide v0, Lcom/android/data/sdk/constant/ConstantTime;->DEFAULT_SNIFF_CONNECT_TIMEOUT:J

    return-wide v0
.end method

.method public getDefaultSniffReadTimeout()J
    .registers 3

    sget-wide v0, Lcom/android/data/sdk/constant/ConstantTime;->DEFAULT_SNIFF_READ_TIMEOUT:J

    return-wide v0
.end method

.method public getDeviceInfoWithPermission(Landroid/telephony/TelephonyManager;Lorg/json/JSONObject;)V
    .registers 3

    return-void
.end method

.method public abstract getEnv()I
.end method

.method public abstract getIntervalTime()J
.end method

.method public getKeepAliveTime()J
    .registers 3

    sget-wide v0, Lcom/android/data/sdk/constant/ConstantTime;->DEFAULT_THREAD_POOL_KEEP_ALIVE_TIME:J

    return-wide v0
.end method

.method public getMaxThreadPoolSize()I
    .registers 2

    sget v0, Lcom/android/data/sdk/constant/c;->b:I

    return v0
.end method

.method public abstract getMinimumIntervalTime()J
.end method

.method public abstract getOldBuvid()Ljava/lang/String;
.end method

.method public abstract getSdkVersion()Ljava/lang/String;
.end method

.method public abstract getServiceClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getStaticData()Ljava/util/Map;
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
.end method
