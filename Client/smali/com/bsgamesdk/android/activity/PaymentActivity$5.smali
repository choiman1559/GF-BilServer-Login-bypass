.class Lcom/bsgamesdk/android/activity/PaymentActivity$5;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/PaymentActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lcom/bsgamesdk/android/model/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/PaymentActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$5;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/bsgamesdk/android/model/i;
    .registers 8

    :try_start_0
    new-instance v0, Lcom/bsgamesdk/android/model/i;

    sget-object v1, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$5;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$5;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->g(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$5;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v4}, Lcom/bsgamesdk/android/activity/PaymentActivity;->h(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$5;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->i(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/bsgamesdk/android/api/k;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-9999"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/bsgamesdk/android/model/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_23} :catch_24
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_23} :catch_7e
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_0 .. :try_end_23} :catch_34

    :goto_23
    return-object v0

    :catch_24
    move-exception v0

    move-object v1, v0

    :goto_26
    :try_start_26
    new-instance v0, Lcom/bsgamesdk/android/model/i;

    const-string v2, "-1"

    const-string v3, "-9999"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/bsgamesdk/android/model/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_26 .. :try_end_33} :catch_34

    goto :goto_23

    :catch_34
    move-exception v0

    move-object v1, v0

    iget v0, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v2, -0x18703

    if-ne v0, v2, :cond_5e

    new-instance v0, Lcom/bsgamesdk/android/model/i;

    const-string v2, "-1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/bsgamesdk/android/model/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :cond_5e
    new-instance v0, Lcom/bsgamesdk/android/model/i;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/bsgamesdk/android/model/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :catch_7e
    move-exception v0

    move-object v1, v0

    goto :goto_26
.end method

.method protected a(Lcom/bsgamesdk/android/model/i;)V
    .registers 8

    const/16 v5, 0x1b5c

    const/16 v4, 0x1b59

    invoke-static {}, Lcom/bsgamesdk/android/utils/k;->a()V

    if-nez p1, :cond_15

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$5;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v1, "\u5fae\u4fe1\u652f\u4ed8\u5931\u8d25"

    const-string v2, "-9999"

    const-string v3, "result_is_null"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onWeiPayFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p1, Lcom/bsgamesdk/android/model/i;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$5;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v1, "\u5fae\u4fe1\u652f\u4ed8\u5931\u8d25"

    const-string v2, "-9999"

    const-string v3, ""

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onWeiPayFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_29
    const-string v0, "0"

    iget-object v1, p1, Lcom/bsgamesdk/android/model/i;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$5;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v1, "\u5fae\u4fe1\u672a\u652f\u4ed8"

    const/16 v2, 0x1b5a

    iget-object v3, p1, Lcom/bsgamesdk/android/model/i;->b:Ljava/lang/String;

    iget-object v4, p1, Lcom/bsgamesdk/android/model/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onWeiPayFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_41
    const-string v0, "1"

    iget-object v1, p1, Lcom/bsgamesdk/android/model/i;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$5;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onWeiPaySuccess()V

    goto :goto_14

    :cond_51
    const-string v0, "2"

    iget-object v1, p1, Lcom/bsgamesdk/android/model/i;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$5;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v1, "\u5fae\u4fe1\u652f\u4ed8\u5931\u8d25"

    iget-object v2, p1, Lcom/bsgamesdk/android/model/i;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/bsgamesdk/android/model/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onWeiPayFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_67
    const-string v0, "-1"

    iget-object v1, p1, Lcom/bsgamesdk/android/model/i;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$5;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v5}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/bsgamesdk/android/model/i;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/bsgamesdk/android/model/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onWeiPayFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_7f
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$5;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v1, "\u5fae\u4fe1\u652f\u4ed8\u5931\u8d25"

    const/16 v2, 0x1bca

    const-string v3, "-9999"

    const-string v4, "unknow_error"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onWeiPayFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/activity/PaymentActivity$5;->a([Ljava/lang/String;)Lcom/bsgamesdk/android/model/i;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/bsgamesdk/android/model/i;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/activity/PaymentActivity$5;->a(Lcom/bsgamesdk/android/model/i;)V

    return-void
.end method
