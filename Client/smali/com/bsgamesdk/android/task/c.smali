.class public Lcom/bsgamesdk/android/task/c;
.super Lcom/bsgamesdk/android/task/d;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/bsgamesdk/android/task/d;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/task/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8

    iget-object v0, p0, Lcom/bsgamesdk/android/task/c;->d:Landroid/os/Bundle;

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bsgamesdk/android/task/c;->d:Landroid/os/Bundle;

    const-string v1, "real_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bsgamesdk/android/task/c;->d:Landroid/os/Bundle;

    const-string v1, "id_card"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/bsgamesdk/android/task/c;->d:Landroid/os/Bundle;

    const-string v1, "captchModel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/bsgamesdk/android/model/CaptchModel;

    :try_start_22
    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/task/c;->c:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/bsgamesdk/android/api/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/task/c;->d:Landroid/os/Bundle;

    const-string v1, "code"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_31
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_22 .. :try_end_31} :catch_34

    :goto_31
    iget-object v0, p0, Lcom/bsgamesdk/android/task/c;->d:Landroid/os/Bundle;

    return-object v0

    :catch_34
    move-exception v0

    iget-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->newConfig:Lorg/json/JSONObject;

    if-eqz v1, :cond_41

    :try_start_39
    const-string v2, "limit_alert_message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/task/c;->a:Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_41} :catch_6a

    :cond_41
    :goto_41
    iget-object v1, p0, Lcom/bsgamesdk/android/task/c;->d:Landroid/os/Bundle;

    const-string v2, "limit_alert_message"

    iget-object v3, p0, Lcom/bsgamesdk/android/task/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    iget v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5b9e\u540d\u8ba4\u8bc1\u5931\u8d25:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/bsgamesdk/android/task/c;->a(ILjava/lang/String;)V

    goto :goto_31

    :catch_6a
    move-exception v1

    goto :goto_41
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/task/c;->a([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
