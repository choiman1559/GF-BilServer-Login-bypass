.class public Lcom/bsgamesdk/android/task/b;
.super Lcom/bsgamesdk/android/task/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/bsgamesdk/android/task/d;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6

    iget-object v0, p0, Lcom/bsgamesdk/android/task/b;->d:Landroid/os/Bundle;

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/task/b;->d:Landroid/os/Bundle;

    const-string v2, "activation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_10
    sget-object v2, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v3, p0, Lcom/bsgamesdk/android/task/b;->c:Landroid/content/Context;

    invoke-interface {v2, v3, v0, v1}, Lcom/bsgamesdk/android/api/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/task/b;->d:Landroid/os/Bundle;

    const-string v2, "code"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bsgamesdk/android/task/b;->d:Landroid/os/Bundle;

    const-string v2, "auth"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_27
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_10 .. :try_end_27} :catch_2a

    :goto_27
    iget-object v0, p0, Lcom/bsgamesdk/android/task/b;->d:Landroid/os/Bundle;

    return-object v0

    :catch_2a
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    iget v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6fc0\u6d3b\u5931\u8d25:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/bsgamesdk/android/task/b;->a(ILjava/lang/String;)V

    goto :goto_27
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/task/b;->a([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
