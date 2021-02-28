.class public Lcom/bsgamesdk/android/task/x;
.super Lcom/bsgamesdk/android/task/d;


# instance fields
.field a:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/bsgamesdk/android/task/d;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const-string v0, "0"

    iput-object v0, p0, Lcom/bsgamesdk/android/task/x;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/task/x;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/os/Bundle;
    .registers 10

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/bsgamesdk/android/task/x;->d:Landroid/os/Bundle;

    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bsgamesdk/android/task/x;->d:Landroid/os/Bundle;

    const-string v1, "pwd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bsgamesdk/android/task/x;->d:Landroid/os/Bundle;

    const-string v1, "open_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/bsgamesdk/android/task/x;->d:Landroid/os/Bundle;

    const-string v1, "captchModel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/bsgamesdk/android/model/CaptchModel;

    :try_start_23
    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/task/x;->c:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/bsgamesdk/android/api/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/task/x;->d:Landroid/os/Bundle;

    const-string v2, "code"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bsgamesdk/android/task/x;->d:Landroid/os/Bundle;

    const-string v2, "auth"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->need_captch:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/task/x;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/task/x;->d:Landroid/os/Bundle;

    const-string v1, "need_captch"

    iget-object v2, p0, Lcom/bsgamesdk/android/task/x;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_23 .. :try_end_48} :catch_4b
    .catch Lorg/apache/http/HttpException; {:try_start_23 .. :try_end_48} :catch_91
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_48} :catch_9b

    :goto_48
    iget-object v0, p0, Lcom/bsgamesdk/android/task/x;->d:Landroid/os/Bundle;

    return-object v0

    :catch_4b
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    iget v2, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    iget-object v3, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->newConfig:Lorg/json/JSONObject;

    if-eqz v3, :cond_77

    :try_start_56
    iget-object v0, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->newConfig:Lorg/json/JSONObject;

    const-string v4, "rsaAuthMRsa"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/j;

    iget-object v4, p0, Lcom/bsgamesdk/android/task/x;->d:Landroid/os/Bundle;

    const-string v5, "rsaAuthMRsa"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_67} :catch_a1

    :goto_67
    :try_start_67
    const-string v0, "need_captch"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/task/x;->a:Ljava/lang/String;
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_6f} :catch_9f

    :goto_6f
    :try_start_6f
    const-string v0, "limit_alert_message"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/task/x;->e:Ljava/lang/String;
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_77} :catch_9d

    :cond_77
    :goto_77
    iget-object v0, p0, Lcom/bsgamesdk/android/task/x;->d:Landroid/os/Bundle;

    const-string v3, "need_captch"

    iget-object v4, p0, Lcom/bsgamesdk/android/task/x;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/task/x;->d:Landroid/os/Bundle;

    const-string v3, "limit_alert_message"

    iget-object v4, p0, Lcom/bsgamesdk/android/task/x;->e:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/bsgamesdk/android/task/x;->a(ILjava/lang/String;)V

    goto :goto_48

    :catch_91
    move-exception v0

    :goto_92
    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    const-string v0, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-virtual {p0, v7, v0}, Lcom/bsgamesdk/android/task/x;->a(ILjava/lang/String;)V

    goto :goto_48

    :catch_9b
    move-exception v0

    goto :goto_92

    :catch_9d
    move-exception v0

    goto :goto_77

    :catch_9f
    move-exception v0

    goto :goto_6f

    :catch_a1
    move-exception v0

    goto :goto_67
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/task/x;->a([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
