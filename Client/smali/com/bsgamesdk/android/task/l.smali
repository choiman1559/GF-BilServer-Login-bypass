.class public Lcom/bsgamesdk/android/task/l;
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

    :try_start_0
    iget-object v0, p0, Lcom/bsgamesdk/android/task/l;->d:Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v2, p0, Lcom/bsgamesdk/android/task/l;->c:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lcom/bsgamesdk/android/api/k;->a(Landroid/content/Context;I)Lcom/bsgamesdk/android/model/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/task/l;->d:Landroid/os/Bundle;

    const-string v2, "code"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bsgamesdk/android/task/l;->d:Landroid/os/Bundle;

    const-string v2, "captchResult"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1f
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_0 .. :try_end_1f} :catch_22

    :goto_1f
    iget-object v0, p0, Lcom/bsgamesdk/android/task/l;->d:Landroid/os/Bundle;

    return-object v0

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-virtual {p0, v0, v1}, Lcom/bsgamesdk/android/task/l;->a(ILjava/lang/String;)V

    goto :goto_1f
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/task/l;->a([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
