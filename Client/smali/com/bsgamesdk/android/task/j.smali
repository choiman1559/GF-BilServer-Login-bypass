.class public Lcom/bsgamesdk/android/task/j;
.super Lcom/bsgamesdk/android/task/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/bsgamesdk/android/task/d;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/os/Bundle;
    .registers 10

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/bsgamesdk/android/task/j;->d:Landroid/os/Bundle;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/UserParcelable;

    if-eqz v0, :cond_34

    iget-object v0, v0, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    move-object v1, v0

    :goto_10
    iget-object v0, p0, Lcom/bsgamesdk/android/task/j;->d:Landroid/os/Bundle;

    const-string v2, "captchModel"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/CaptchModel;

    :try_start_1a
    sget-object v2, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v3, p0, Lcom/bsgamesdk/android/task/j;->c:Landroid/content/Context;

    invoke-interface {v2, v3, v1, v0}, Lcom/bsgamesdk/android/api/k;->c(Landroid/content/Context;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    iget-object v2, p0, Lcom/bsgamesdk/android/task/j;->d:Landroid/os/Bundle;

    const-string v3, "code"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/bsgamesdk/android/task/j;->d:Landroid/os/Bundle;

    const-string v3, "auth"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_31
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_1a .. :try_end_31} :catch_38
    .catch Lorg/apache/http/HttpException; {:try_start_1a .. :try_end_31} :catch_52
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_31} :catch_ac

    :goto_31
    iget-object v0, p0, Lcom/bsgamesdk/android/task/j;->d:Landroid/os/Bundle;

    return-object v0

    :cond_34
    const-string v0, ""

    move-object v1, v0

    goto :goto_10

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    :try_start_3d
    iget-object v2, p0, Lcom/bsgamesdk/android/task/j;->d:Landroid/os/Bundle;

    const-string v3, "limit_alert_message"

    iget-object v4, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->newConfig:Lorg/json/JSONObject;

    const-string v5, "limit_alert_message"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_4c} :catch_ae

    :goto_4c
    iget v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-virtual {p0, v0, v1}, Lcom/bsgamesdk/android/task/j;->a(ILjava/lang/String;)V

    goto :goto_31

    :catch_52
    move-exception v0

    :goto_53
    :try_start_53
    new-instance v2, Lcom/bsgamesdk/android/api/h;

    iget-object v3, p0, Lcom/bsgamesdk/android/task/j;->c:Landroid/content/Context;

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;ILjava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v2, "code"

    const-string v3, "-1"

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "result"

    const-string v3, "1"

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "account"

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "actionname"

    const-string v1, "login"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postion"

    const-string v1, "loginFail"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "Login_RegActivity"

    const-string v3, "login"

    const-string v4, ""

    const-string v5, "1"

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_a4} :catch_aa

    :goto_a4
    const-string v0, "\u767b\u5f55\u5931\u8d25: \u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-virtual {p0, v7, v0}, Lcom/bsgamesdk/android/task/j;->a(ILjava/lang/String;)V

    goto :goto_31

    :catch_aa
    move-exception v0

    goto :goto_a4

    :catch_ac
    move-exception v0

    goto :goto_53

    :catch_ae
    move-exception v2

    goto :goto_4c
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/task/j;->a([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
