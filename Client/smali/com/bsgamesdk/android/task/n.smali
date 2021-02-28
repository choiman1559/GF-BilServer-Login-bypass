.class public Lcom/bsgamesdk/android/task/n;
.super Lcom/bsgamesdk/android/task/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/bsgamesdk/android/task/d;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/os/Bundle;
    .registers 12

    const-wide/16 v8, 0x1

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    const-string v1, "accessKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    const-string v2, "needRefreshToken"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iget-object v0, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    const-string v3, "isTourist"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-object v0, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    const-string v4, "captchModel"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/CaptchModel;

    :try_start_25
    sget-object v4, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v5, p0, Lcom/bsgamesdk/android/task/n;->c:Landroid/content/Context;

    invoke-interface {v4, v5, v1, v0}, Lcom/bsgamesdk/android/api/k;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    const-string v4, "code"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    const-string v4, "auth"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_3c
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_25 .. :try_end_3c} :catch_3f
    .catch Lorg/apache/http/HttpException; {:try_start_25 .. :try_end_3c} :catch_eb
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_3c} :catch_1a2

    :goto_3c
    iget-object v0, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    :goto_3e
    return-object v0

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    :try_start_46
    iget-object v4, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    const-string v5, "limit_alert_message"

    iget-object v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->newConfig:Lorg/json/JSONObject;

    const-string v6, "limit_alert_message"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_55} :catch_1a5

    :goto_55
    const v0, 0xea66

    if-eq v2, v0, :cond_5f

    const v0, 0xea65

    if-ne v2, v0, :cond_e6

    :cond_5f
    if-eqz v3, :cond_a4

    new-instance v0, Lcom/bsgamesdk/android/model/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/task/n;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/model/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v0

    if-eqz v0, :cond_7c

    iget-wide v2, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    cmp-long v1, v2, v8

    if-gez v1, :cond_7c

    const-string v0, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-virtual {p0, v7, v0}, Lcom/bsgamesdk/android/task/n;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    goto :goto_3e

    :cond_7c
    if-nez v0, :cond_86

    const-string v0, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-virtual {p0, v7, v0}, Lcom/bsgamesdk/android/task/n;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    goto :goto_3e

    :cond_86
    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mergeTouristUserinfoCacheWithUser(Lcom/bsgamesdk/android/model/TouristUserParceable;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    const-string v2, "code"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    const-string v2, "auth"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    const-string v1, "demotion"

    const-string v2, "tourist_demotion"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a1
    iget-object v0, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    goto :goto_3e

    :cond_a4
    new-instance v0, Lcom/bsgamesdk/android/model/m;

    iget-object v1, p0, Lcom/bsgamesdk/android/task/n;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    if-eqz v0, :cond_bf

    iget-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    cmp-long v1, v2, v8

    if-gez v1, :cond_bf

    const-string v0, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-virtual {p0, v7, v0}, Lcom/bsgamesdk/android/task/n;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    goto :goto_3e

    :cond_bf
    if-nez v0, :cond_ca

    const-string v0, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-virtual {p0, v7, v0}, Lcom/bsgamesdk/android/task/n;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    goto/16 :goto_3e

    :cond_ca
    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mergeMyUserinfoCache(Lcom/bsgamesdk/android/model/UserParcelable;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    const-string v2, "code"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    const-string v2, "auth"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    const-string v1, "demotion"

    const-string v2, "other_demotion"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a1

    :cond_e6
    invoke-virtual {p0, v2, v1}, Lcom/bsgamesdk/android/task/n;->a(ILjava/lang/String;)V

    goto/16 :goto_3c

    :catch_eb
    move-exception v0

    :goto_ec
    if-nez v2, :cond_19b

    if-eqz v3, :cond_147

    new-instance v0, Lcom/bsgamesdk/android/model/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/task/n;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/model/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v0

    invoke-static {}, Lcom/bsgamesdk/android/task/v;->a()V

    new-instance v1, Lcom/bsgamesdk/android/api/r;

    iget-object v2, p0, Lcom/bsgamesdk/android/task/n;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/bsgamesdk/android/api/r;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/model/TouristUserParceable;)V

    sput-object v1, Lcom/bsgamesdk/android/task/v;->c:Ljava/lang/Thread;

    sget-object v1, Lcom/bsgamesdk/android/task/v;->c:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    if-eqz v0, :cond_11d

    iget-wide v2, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    cmp-long v1, v2, v8

    if-gez v1, :cond_11d

    const-string v0, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-virtual {p0, v7, v0}, Lcom/bsgamesdk/android/task/n;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    goto/16 :goto_3e

    :cond_11d
    if-nez v0, :cond_128

    const-string v0, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-virtual {p0, v7, v0}, Lcom/bsgamesdk/android/task/n;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    goto/16 :goto_3e

    :cond_128
    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mergeTouristUserinfoCacheWithUser(Lcom/bsgamesdk/android/model/TouristUserParceable;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    const-string v2, "code"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    const-string v2, "auth"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    const-string v1, "demotion"

    const-string v2, "tourist_demotion"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_143
    iget-object v0, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    goto/16 :goto_3e

    :cond_147
    new-instance v0, Lcom/bsgamesdk/android/model/m;

    iget-object v1, p0, Lcom/bsgamesdk/android/task/n;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    invoke-static {}, Lcom/bsgamesdk/android/task/v;->a()V

    new-instance v1, Lcom/bsgamesdk/android/api/o;

    iget-object v2, p0, Lcom/bsgamesdk/android/task/n;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/bsgamesdk/android/api/o;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/model/UserParcelable;)V

    sput-object v1, Lcom/bsgamesdk/android/task/v;->a:Ljava/lang/Thread;

    sget-object v1, Lcom/bsgamesdk/android/task/v;->a:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    if-eqz v0, :cond_174

    iget-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    cmp-long v1, v2, v8

    if-gez v1, :cond_174

    const-string v0, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-virtual {p0, v7, v0}, Lcom/bsgamesdk/android/task/n;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    goto/16 :goto_3e

    :cond_174
    if-nez v0, :cond_17f

    const-string v0, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-virtual {p0, v7, v0}, Lcom/bsgamesdk/android/task/n;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    goto/16 :goto_3e

    :cond_17f
    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mergeMyUserinfoCache(Lcom/bsgamesdk/android/model/UserParcelable;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    const-string v2, "code"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    const-string v2, "auth"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/task/n;->d:Landroid/os/Bundle;

    const-string v1, "demotion"

    const-string v2, "other_demotion"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_143

    :cond_19b
    const-string v0, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-virtual {p0, v7, v0}, Lcom/bsgamesdk/android/task/n;->a(ILjava/lang/String;)V

    goto/16 :goto_3c

    :catch_1a2
    move-exception v0

    goto/16 :goto_ec

    :catch_1a5
    move-exception v0

    goto/16 :goto_55
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/task/n;->a([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
