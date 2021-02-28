.class public Lcom/bsgamesdk/android/task/a;
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

    iget-object v0, p0, Lcom/bsgamesdk/android/task/a;->d:Landroid/os/Bundle;

    const-string v1, "auth"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    :try_start_e
    sget-object v1, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v2, p0, Lcom/bsgamesdk/android/task/a;->c:Landroid/content/Context;

    iget-object v3, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    iget-object v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mCoupon:Lcom/bsgamesdk/android/model/e;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/bsgamesdk/android/api/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/task/a;->d:Landroid/os/Bundle;

    const-string v1, "code"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_25
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_e .. :try_end_25} :catch_28

    :goto_25
    iget-object v0, p0, Lcom/bsgamesdk/android/task/a;->d:Landroid/os/Bundle;

    goto :goto_d

    :catch_28
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    iget v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9886\u53d6\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/bsgamesdk/android/task/a;->a(ILjava/lang/String;)V

    goto :goto_25
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/task/a;->a([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
