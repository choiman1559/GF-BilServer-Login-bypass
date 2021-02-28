.class public Lcom/bsgamesdk/android/api/r;
.super Lcom/bsgamesdk/android/api/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bsgamesdk/android/model/TouristUserParceable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bsgamesdk/android/api/g;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/model/TouristUserParceable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    const/4 v13, 0x1

    const/4 v11, 0x0

    move v10, v11

    :goto_3
    iget-boolean v0, p0, Lcom/bsgamesdk/android/api/r;->b:Z

    if-eqz v0, :cond_11

    const-wide/32 v0, 0xea60

    :try_start_a
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_12

    :goto_d
    iget-boolean v0, p0, Lcom/bsgamesdk/android/api/r;->b:Z

    if-nez v0, :cond_17

    :cond_11
    return-void

    :catch_12
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_d

    :cond_17
    :try_start_17
    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/r;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/r;->j:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v2, v2, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    iget-object v3, p0, Lcom/bsgamesdk/android/api/r;->i:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/api/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bsgamesdk/android/api/r;->b:Z

    iget-object v1, p0, Lcom/bsgamesdk/android/api/r;->j:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v2, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    iput-object v2, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->nickname:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/r;->j:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v2, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    iput-object v2, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->avatar:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/r;->j:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v2, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mBig_Avatar:Ljava/lang/String;

    iput-object v2, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->s_avatar:Ljava/lang/String;

    iget-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Lcom/bsgamesdk/android/api/r;->j:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v2, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    :cond_4d
    iget-object v1, p0, Lcom/bsgamesdk/android/api/r;->j:Lcom/bsgamesdk/android/model/TouristUserParceable;

    invoke-virtual {p0, v1, v0}, Lcom/bsgamesdk/android/api/r;->a(Lcom/bsgamesdk/android/model/TouristUserParceable;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)V
    :try_end_52
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_17 .. :try_end_52} :catch_56
    .catch Lorg/apache/http/HttpException; {:try_start_17 .. :try_end_52} :catch_f4
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_52} :catch_fa

    :cond_52
    :goto_52
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_3

    :catch_56
    move-exception v0

    move-object v12, v0

    invoke-static {v12}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    iget v0, v12, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const/16 v1, -0x65

    if-eq v0, v1, :cond_68

    iget v0, v12, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v1, 0x7a122

    if-ne v0, v1, :cond_52

    :cond_68
    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/r;->d:Landroid/content/Context;

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    sget-object v3, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    sget-object v4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    const-string v5, ""

    const-string v6, "1"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    sget-object v8, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    const-string v9, "3"

    invoke-direct/range {v0 .. v9}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/api/r;->g:Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/r;->g:Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/r;->j:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v1, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->nickname:Ljava/lang/String;

    iget v2, v12, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-virtual {v12}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v13, v1, v2, v3}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;ILjava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "code"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v12, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "result"

    const-string v1, "1"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "account"

    iget-object v1, p0, Lcom/bsgamesdk/android/api/r;->j:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v1, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->nickname:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    invoke-virtual {v12}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "actionname"

    const-string v1, "login"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postion"

    const-string v1, "TouristLoginCheckedThread"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const-string v2, "TouristLoginCheckedThread"

    const-string v3, "login"

    const-string v4, ""

    const-string v5, "1"

    move v1, v13

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/r;->d:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/dynamic/IUtils;->loginoutTourist(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/api/r;->a()V

    iput-boolean v11, p0, Lcom/bsgamesdk/android/api/r;->b:Z

    goto/16 :goto_52

    :catch_f4
    move-exception v0

    :goto_f5
    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto/16 :goto_52

    :catch_fa
    move-exception v0

    goto :goto_f5
.end method
