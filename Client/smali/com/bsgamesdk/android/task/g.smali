.class public Lcom/bsgamesdk/android/task/g;
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
    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/task/g;->c:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/api/k;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/task/g;->d:Landroid/os/Bundle;

    const-string v1, "code"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_f
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_0 .. :try_end_f} :catch_12

    :goto_f
    iget-object v0, p0, Lcom/bsgamesdk/android/task/g;->d:Landroid/os/Bundle;

    return-object v0

    :catch_12
    move-exception v0

    iget v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u83b7\u53d6\u5730\u533a\u5931\u8d25:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/bsgamesdk/android/task/g;->a(ILjava/lang/String;)V

    goto :goto_f
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/task/g;->a([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
