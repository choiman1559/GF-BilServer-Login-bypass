.class public Lcom/bsgamesdk/android/task/aa;
.super Lcom/bsgamesdk/android/task/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/bsgamesdk/android/task/d;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8

    iget-object v0, p0, Lcom/bsgamesdk/android/task/aa;->d:Landroid/os/Bundle;

    const-string v1, "captcha"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bsgamesdk/android/task/aa;->d:Landroid/os/Bundle;

    const-string v1, "captchModel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/bsgamesdk/android/model/CaptchModel;

    if-eqz v5, :cond_38

    invoke-virtual {v5}, Lcom/bsgamesdk/android/model/CaptchModel;->getCaptcha_type()Ljava/lang/String;

    move-result-object v3

    :goto_18
    if-eqz v5, :cond_3b

    invoke-virtual {v5}, Lcom/bsgamesdk/android/model/CaptchModel;->getCtoken()Ljava/lang/String;

    move-result-object v4

    :goto_1e
    :try_start_1e
    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/task/aa;->c:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/bsgamesdk/android/api/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/task/aa;->d:Landroid/os/Bundle;

    const-string v2, "code"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bsgamesdk/android/task/aa;->d:Landroid/os/Bundle;

    const-string v2, "auth"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_35
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_1e .. :try_end_35} :catch_3e

    :goto_35
    iget-object v0, p0, Lcom/bsgamesdk/android/task/aa;->d:Landroid/os/Bundle;

    return-object v0

    :cond_38
    const-string v3, ""

    goto :goto_18

    :cond_3b
    const-string v4, ""

    goto :goto_1e

    :catch_3e
    move-exception v0

    iget v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/bsgamesdk/android/task/aa;->a(ILjava/lang/String;)V

    goto :goto_35
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/task/aa;->a([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
