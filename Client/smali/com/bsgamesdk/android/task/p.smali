.class public Lcom/bsgamesdk/android/task/p;
.super Lcom/bsgamesdk/android/task/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/bsgamesdk/android/task/d;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/os/Bundle;
    .registers 11

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/bsgamesdk/android/task/p;->d:Landroid/os/Bundle;

    const-string v1, "payment_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/bsgamesdk/android/task/p;->d:Landroid/os/Bundle;

    const-string v1, "recharge_order_no"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bsgamesdk/android/task/p;->d:Landroid/os/Bundle;

    const-string v1, "orderHost"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bsgamesdk/android/task/p;->d:Landroid/os/Bundle;

    const-string v1, "request_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/bsgamesdk/android/model/PaypalOrderInfo;

    invoke-direct {v7, v3, v4}, Lcom/bsgamesdk/android/model/PaypalOrderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lcom/bsgamesdk/android/model/PaypalOrderInfo;->setHost(Ljava/lang/String;)V

    :try_start_29
    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/task/p;->c:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/bsgamesdk/android/api/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    iget-object v1, p0, Lcom/bsgamesdk/android/task/p;->d:Landroid/os/Bundle;

    const-string v2, "code"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bsgamesdk/android/task/p;->d:Landroid/os/Bundle;

    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x3

    if-eq v0, v1, :cond_47

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4f

    :cond_47
    sget-object v0, Lcom/bsgamesdk/android/helper/c;->a:Lcom/bsgamesdk/android/api/q;

    invoke-virtual {v0, v7}, Lcom/bsgamesdk/android/api/q;->b(Ljava/lang/Object;)V
    :try_end_4c
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_29 .. :try_end_4c} :catch_55
    .catch Lorg/apache/http/HttpException; {:try_start_29 .. :try_end_4c} :catch_6e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_4c} :catch_7d

    :goto_4c
    iget-object v0, p0, Lcom/bsgamesdk/android/task/p;->d:Landroid/os/Bundle;

    return-object v0

    :cond_4f
    :try_start_4f
    sget-object v0, Lcom/bsgamesdk/android/helper/c;->a:Lcom/bsgamesdk/android/api/q;

    invoke-virtual {v0, v7}, Lcom/bsgamesdk/android/api/q;->c(Ljava/lang/Object;)V
    :try_end_54
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_4f .. :try_end_54} :catch_55
    .catch Lorg/apache/http/HttpException; {:try_start_4f .. :try_end_54} :catch_6e
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_54} :catch_7d

    goto :goto_4c

    :catch_55
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    iget v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const/16 v3, -0x1f4

    if-ne v0, v3, :cond_6a

    sget-object v0, Lcom/bsgamesdk/android/helper/c;->a:Lcom/bsgamesdk/android/api/q;

    invoke-virtual {v0, v7}, Lcom/bsgamesdk/android/api/q;->b(Ljava/lang/Object;)V

    :cond_6a
    invoke-virtual {p0, v1, v2}, Lcom/bsgamesdk/android/task/p;->a(ILjava/lang/String;)V

    goto :goto_4c

    :catch_6e
    move-exception v0

    :goto_6f
    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    sget-object v0, Lcom/bsgamesdk/android/helper/c;->a:Lcom/bsgamesdk/android/api/q;

    invoke-virtual {v0, v7}, Lcom/bsgamesdk/android/api/q;->b(Ljava/lang/Object;)V

    const-string v0, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-virtual {p0, v8, v0}, Lcom/bsgamesdk/android/task/p;->a(ILjava/lang/String;)V

    goto :goto_4c

    :catch_7d
    move-exception v0

    goto :goto_6f
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/task/p;->a([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
