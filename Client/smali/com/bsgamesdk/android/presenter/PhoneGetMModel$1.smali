.class Lcom/bsgamesdk/android/presenter/PhoneGetMModel$1;
.super Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/presenter/PhoneGetMModel;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Lcom/bsgamesdk/android/presenter/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/bsgamesdk/android/presenter/a;

.field final synthetic c:Lcom/bsgamesdk/android/model/CaptchModel;

.field final synthetic d:Lcom/bsgamesdk/android/presenter/PhoneGetMModel;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/presenter/PhoneGetMModel;Landroid/content/Context;Landroid/app/Activity;Lcom/bsgamesdk/android/presenter/a;Lcom/bsgamesdk/android/model/CaptchModel;)V
    .registers 6

    iput-object p1, p0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$1;->d:Lcom/bsgamesdk/android/presenter/PhoneGetMModel;

    iput-object p3, p0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$1;->a:Landroid/app/Activity;

    iput-object p4, p0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$1;->b:Lcom/bsgamesdk/android/presenter/a;

    iput-object p5, p0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$1;->c:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-direct {p0, p2}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/os/Bundle;)V
    .registers 8

    const-string v0, "e_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$1;->c:Lcom/bsgamesdk/android/model/CaptchModel;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$1;->a:Landroid/app/Activity;

    invoke-static {v0, v5}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$1;->b:Lcom/bsgamesdk/android/presenter/a;

    sget-object v1, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;->ONE:Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/presenter/a;->a(Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;)V

    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$1;->d:Lcom/bsgamesdk/android/presenter/PhoneGetMModel;

    iget-object v1, p0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$1;->a:Landroid/app/Activity;

    const/4 v2, 0x1

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/presenter/PhoneGetMModel;->a(Landroid/app/Activity;ILjava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_27
    const/16 v0, -0x69

    if-ne v4, v0, :cond_1c

    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$1;->b:Lcom/bsgamesdk/android/presenter/a;

    sget-object v1, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;->TWO:Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/presenter/a;->a(Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;)V

    goto :goto_1c
.end method

.method public onFinish()V
    .registers 2

    invoke-super {p0}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;->onFinish()V

    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$1;->b:Lcom/bsgamesdk/android/presenter/a;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/presenter/a;->a()V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "captcha_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$1;->a:Landroid/app/Activity;

    const-string v2, "\u5df2\u53d1\u9001\u9a8c\u8bc1\u7801"

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$1;->b:Lcom/bsgamesdk/android/presenter/a;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/presenter/a;->a(Ljava/lang/String;)V

    return-void
.end method
