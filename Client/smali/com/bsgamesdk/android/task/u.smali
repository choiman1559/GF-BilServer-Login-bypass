.class public Lcom/bsgamesdk/android/task/u;
.super Lcom/bsgamesdk/android/task/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/bsgamesdk/android/task/d;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/os/Bundle;
    .registers 7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/bsgamesdk/android/task/u;->d:Landroid/os/Bundle;

    const-string v1, "access_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_9
    sget-object v1, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v2, p0, Lcom/bsgamesdk/android/task/u;->c:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lcom/bsgamesdk/android/api/k;->f(Landroid/content/Context;Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/task/u;->d:Landroid/os/Bundle;

    const-string v2, "code"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bsgamesdk/android/task/u;->d:Landroid/os/Bundle;

    const-string v2, "auth"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_20
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_9 .. :try_end_20} :catch_23
    .catch Lorg/apache/http/HttpException; {:try_start_9 .. :try_end_20} :catch_31
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_20} :catch_3b

    :goto_20
    iget-object v0, p0, Lcom/bsgamesdk/android/task/u;->d:Landroid/os/Bundle;

    return-object v0

    :catch_23
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    iget v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/bsgamesdk/android/task/u;->a(ILjava/lang/String;)V

    goto :goto_20

    :catch_31
    move-exception v0

    :goto_32
    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    const-string v0, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-virtual {p0, v4, v0}, Lcom/bsgamesdk/android/task/u;->a(ILjava/lang/String;)V

    goto :goto_20

    :catch_3b
    move-exception v0

    goto :goto_32
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/task/u;->a([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
