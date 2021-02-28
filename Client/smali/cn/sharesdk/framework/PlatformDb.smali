.class public Lcn/sharesdk/framework/PlatformDb;
.super Ljava/lang/Object;
.source "PlatformDb.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "cn_sharesdk_weibodb"


# instance fields
.field private platformNname:Ljava/lang/String;

.field private platformVersion:I

.field private sp:Lcom/mob/tools/utils/SharePrefrenceHelper;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    .line 25
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cn_sharesdk_weibodb_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;I)V

    .line 26
    iput-object p1, p0, Lcn/sharesdk/framework/PlatformDb;->platformNname:Ljava/lang/String;

    .line 27
    iput p2, p0, Lcn/sharesdk/framework/PlatformDb;->platformVersion:I

    .line 28
    return-void
.end method


# virtual methods
.method public exportData()Ljava/lang/String;
    .registers 3

    .prologue
    .line 128
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 129
    iget-object v1, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getAll()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 130
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v0

    .line 134
    :goto_17
    return-object v0

    .line 131
    :catch_18
    move-exception v0

    .line 132
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 134
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpiresIn()J
    .registers 3

    .prologue
    .line 60
    .line 62
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "expiresIn"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide v0

    .line 70
    :goto_8
    return-wide v0

    .line 63
    :catch_9
    move-exception v0

    .line 65
    :try_start_a
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "expiresIn"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getInt(Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_11} :catch_14

    move-result v0

    int-to-long v0, v0

    goto :goto_8

    .line 66
    :catch_14
    move-exception v0

    .line 67
    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method public getExpiresTime()J
    .registers 7

    .prologue
    .line 81
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "expiresTime"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 82
    invoke-virtual {p0}, Lcn/sharesdk/framework/PlatformDb;->getExpiresIn()J

    move-result-wide v2

    .line 83
    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getPlatformNname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->platformNname:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformVersion()I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, Lcn/sharesdk/framework/PlatformDb;->platformVersion:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 3

    .prologue
    .line 40
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "token"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenSecret()Ljava/lang/String;
    .registers 3

    .prologue
    .line 50
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "secret"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserGender()Ljava/lang/String;
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "gender"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 171
    const-string v0, "m"

    .line 175
    :goto_12
    return-object v0

    .line 172
    :cond_13
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 173
    const-string v0, "f"

    goto :goto_12

    .line 175
    :cond_1e
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getUserIcon()Ljava/lang/String;
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "icon"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "userID"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 105
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "weibo"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_16
    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "nickname"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public importData(Ljava/lang/String;)V
    .registers 4
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 140
    :try_start_0
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_10

    .line 142
    iget-object v1, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putAll(Ljava/util/HashMap;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    .line 147
    :cond_10
    :goto_10
    return-void

    .line 144
    :catch_11
    move-exception v0

    .line 145
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public isValid()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    invoke-virtual {p0}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 156
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_10

    :cond_e
    move v0, v1

    .line 164
    :cond_f
    :goto_f
    return v0

    .line 160
    :cond_10
    invoke-virtual {p0}, Lcn/sharesdk/framework/PlatformDb;->getExpiresIn()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    .line 164
    invoke-virtual {p0}, Lcn/sharesdk/framework/PlatformDb;->getExpiresTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_f

    move v0, v1

    goto :goto_f
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public putExpiresIn(J)V
    .registers 8
    .param p1, "expires"    # J

    .prologue
    .line 75
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "expiresIn"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 76
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "expiresTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 77
    return-void
.end method

.method public putToken(Ljava/lang/String;)V
    .registers 4
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "token"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public putTokenSecret(Ljava/lang/String;)V
    .registers 4
    .param p1, "secret"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "secret"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public putUserId(Ljava/lang/String;)V
    .registers 4
    .param p1, "platformId"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "userID"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public removeAccount()V
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->clear()V

    .line 123
    return-void
.end method
