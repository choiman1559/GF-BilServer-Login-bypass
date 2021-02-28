.class public Lcom/bsgamesdk/android/task/f;
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

    iget-object v0, p0, Lcom/bsgamesdk/android/task/f;->d:Landroid/os/Bundle;

    const-string v1, "ctoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_8
    sget-object v1, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v2, p0, Lcom/bsgamesdk/android/task/f;->c:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lcom/bsgamesdk/android/api/k;->g(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/task/f;->d:Landroid/os/Bundle;

    const-string v2, "code"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bsgamesdk/android/task/f;->d:Landroid/os/Bundle;

    const-string v2, "bitmap"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1f
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_8 .. :try_end_1f} :catch_22

    :goto_1f
    iget-object v0, p0, Lcom/bsgamesdk/android/task/f;->d:Landroid/os/Bundle;

    return-object v0

    :catch_22
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    iget v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/bsgamesdk/android/task/f;->a(ILjava/lang/String;)V

    goto :goto_1f
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/task/f;->a([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
