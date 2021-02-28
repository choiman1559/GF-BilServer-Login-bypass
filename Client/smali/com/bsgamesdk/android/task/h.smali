.class public Lcom/bsgamesdk/android/task/h;
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

    iget-object v0, p0, Lcom/bsgamesdk/android/task/h;->d:Landroid/os/Bundle;

    const-string v1, "tel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bsgamesdk/android/task/h;->d:Landroid/os/Bundle;

    const-string v1, "captcha"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/bsgamesdk/android/task/h;->d:Landroid/os/Bundle;

    const-string v1, "country_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bsgamesdk/android/task/h;->d:Landroid/os/Bundle;

    const-string v1, "captchModel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/bsgamesdk/android/model/CaptchModel;

    if-eqz v7, :cond_48

    invoke-virtual {v7}, Lcom/bsgamesdk/android/model/CaptchModel;->getCaptcha_type()Ljava/lang/String;

    move-result-object v5

    :goto_28
    if-eqz v7, :cond_4b

    invoke-virtual {v7}, Lcom/bsgamesdk/android/model/CaptchModel;->getCtoken()Ljava/lang/String;

    move-result-object v6

    :goto_2e
    :try_start_2e
    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/task/h;->c:Landroid/content/Context;

    invoke-interface/range {v0 .. v7}, Lcom/bsgamesdk/android/api/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/task/h;->d:Landroid/os/Bundle;

    const-string v2, "code"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bsgamesdk/android/task/h;->d:Landroid/os/Bundle;

    const-string v2, "captcha_key"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_2e .. :try_end_45} :catch_4e

    :goto_45
    iget-object v0, p0, Lcom/bsgamesdk/android/task/h;->d:Landroid/os/Bundle;

    return-object v0

    :cond_48
    const-string v5, ""

    goto :goto_28

    :cond_4b
    const-string v6, ""

    goto :goto_2e

    :catch_4e
    move-exception v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-virtual {p0, v0, v1}, Lcom/bsgamesdk/android/task/h;->a(ILjava/lang/String;)V

    goto :goto_45
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/task/h;->a([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
