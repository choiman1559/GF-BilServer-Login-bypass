.class public Lcn/sharesdk/system/text/login/b;
.super Ljava/lang/Object;
.source "Protocol.java"


# instance fields
.field private a:Lcom/mob/tools/utils/Hashon;

.field private b:Lcom/mob/tools/utils/DeviceHelper;

.field private c:Lcn/sharesdk/framework/a/a;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "api.share.mob.com:80"

    iput-object v0, p0, Lcn/sharesdk/system/text/login/b;->d:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/system/text/login/b;->a:Lcom/mob/tools/utils/Hashon;

    .line 32
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/b;->c:Lcn/sharesdk/framework/a/a;

    .line 33
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/b;->b:Lcom/mob/tools/utils/DeviceHelper;

    .line 35
    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/system/text/login/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sendCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 131
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 132
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 133
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 134
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 135
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 136
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 137
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 140
    invoke-static {v0, p1}, Lcom/mob/tools/utils/Data;->AES128Encode([BLjava/lang/String;)[B

    move-result-object v1

    .line 143
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 144
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 145
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 146
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 147
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 148
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 151
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/system/text/login/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/verifyCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 157
    const-string v0, "deviceid"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/b;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v0, "duid"

    new-instance v2, Lcom/mob/commons/SHARESDK;

    invoke-direct {v2}, Lcom/mob/commons/SHARESDK;-><init>()V

    invoke-static {v2}, Lcom/mob/commons/authorize/DeviceAuthorizer;->authorize(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v0, "appkey"

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v0, "apppkg"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/b;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v0, "appver"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/b;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v0, "plat"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/b;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getPlatformCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const v0, 0xeaad

    .line 164
    const-string v2, "sdkver"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v0, "factory"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/b;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v0, "model"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/b;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v0, "simserial"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/b;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v0, "carrier"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/b;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v0, "imei"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/b;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v0, "mac"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/b;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :try_start_9e
    const-string v0, "adsid"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/b;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getAdvertisingID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_a9} :catch_aa

    .line 176
    :goto_a9
    return-object v1

    .line 173
    :catch_aa
    move-exception v0

    .line 174
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_a9
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 50
    :try_start_1
    invoke-direct {p0}, Lcn/sharesdk/system/text/login/b;->c()Ljava/util/HashMap;

    move-result-object v0

    .line 51
    const-string v1, "zone"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "phone"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lcn/sharesdk/system/text/login/b;->a:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/system/text/login/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v3, "m"

    invoke-direct {v1, v3, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 60
    const/16 v0, 0x7530

    iput v0, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 61
    const/16 v0, 0x7530

    iput v0, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 64
    iget-object v0, p0, Lcn/sharesdk/system/text/login/b;->c:Lcn/sharesdk/framework/a/a;

    invoke-direct {p0}, Lcn/sharesdk/system/text/login/b;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/framework/a/a;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 66
    iget-object v1, p0, Lcn/sharesdk/system/text/login/b;->a:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_55
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_55} :catch_57
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_55} :catch_61
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_55} :catch_6b

    move-result-object v0

    .line 81
    :goto_56
    return-object v0

    .line 69
    :catch_57
    move-exception v0

    .line 70
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v0, v6

    .line 71
    goto :goto_56

    .line 73
    :catch_61
    move-exception v0

    .line 74
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v0, v6

    .line 75
    goto :goto_56

    .line 77
    :catch_6b
    move-exception v0

    .line 78
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v0, v6

    .line 79
    goto :goto_56

    :cond_75
    move-object v0, v6

    .line 81
    goto :goto_56
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/HashMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 88
    :try_start_1
    invoke-direct {p0}, Lcn/sharesdk/system/text/login/b;->c()Ljava/util/HashMap;

    move-result-object v0

    .line 89
    const-string v1, "zone"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "phone"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "code"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lcn/sharesdk/system/text/login/b;->a:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/system/text/login/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v3, "m"

    invoke-direct {v1, v3, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 99
    const/16 v0, 0x7530

    iput v0, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 100
    const/16 v0, 0x7530

    iput v0, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 103
    iget-object v0, p0, Lcn/sharesdk/system/text/login/b;->c:Lcn/sharesdk/framework/a/a;

    invoke-direct {p0}, Lcn/sharesdk/system/text/login/b;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/framework/a/a;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7a

    .line 105
    iget-object v1, p0, Lcn/sharesdk/system/text/login/b;->a:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_5a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_5a} :catch_5c
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_5a} :catch_66
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5a} :catch_70

    move-result-object v0

    .line 120
    :goto_5b
    return-object v0

    .line 108
    :catch_5c
    move-exception v0

    .line 109
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v0, v6

    .line 110
    goto :goto_5b

    .line 112
    :catch_66
    move-exception v0

    .line 113
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v0, v6

    .line 114
    goto :goto_5b

    .line 116
    :catch_70
    move-exception v0

    .line 117
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v0, v6

    .line 118
    goto :goto_5b

    :cond_7a
    move-object v0, v6

    .line 120
    goto :goto_5b
.end method
