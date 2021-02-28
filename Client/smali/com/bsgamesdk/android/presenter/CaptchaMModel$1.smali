.class Lcom/bsgamesdk/android/presenter/CaptchaMModel$1;
.super Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/presenter/CaptchaMModel;->a(Landroid/app/Activity;Lcom/bsgamesdk/android/presenter/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/bsgamesdk/android/presenter/a;

.field final synthetic c:Lcom/bsgamesdk/android/presenter/CaptchaMModel;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/presenter/CaptchaMModel;Landroid/content/Context;Landroid/app/Activity;Lcom/bsgamesdk/android/presenter/a;)V
    .registers 5

    iput-object p1, p0, Lcom/bsgamesdk/android/presenter/CaptchaMModel$1;->c:Lcom/bsgamesdk/android/presenter/CaptchaMModel;

    iput-object p3, p0, Lcom/bsgamesdk/android/presenter/CaptchaMModel$1;->a:Landroid/app/Activity;

    iput-object p4, p0, Lcom/bsgamesdk/android/presenter/CaptchaMModel$1;->b:Lcom/bsgamesdk/android/presenter/a;

    invoke-direct {p0, p2}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/os/Bundle;)V
    .registers 9

    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/CaptchaMModel$1;->a:Landroid/app/Activity;

    const-string v1, "\u83b7\u53d6\u5b89\u5168\u9a8c\u8bc1\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "e_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/CaptchaMModel$1;->c:Lcom/bsgamesdk/android/presenter/CaptchaMModel;

    iget-object v1, p0, Lcom/bsgamesdk/android/presenter/CaptchaMModel$1;->a:Landroid/app/Activity;

    const/4 v2, 0x1

    const-string v3, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "----start_captcha"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/presenter/CaptchaMModel;->a(Landroid/app/Activity;ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 8

    const/4 v2, 0x0

    if-eqz p1, :cond_49

    const-string v0, "captchResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/b;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/CaptchaMModel$1;->a:Landroid/app/Activity;

    const-string v1, "\u83b7\u53d6\u5b89\u5168\u9a8c\u8bc1\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_14
    return-void

    :cond_15
    const-string v1, "geetest"

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/bsgamesdk/android/presenter/CaptchaMModel$1;->b:Lcom/bsgamesdk/android/presenter/a;

    sget-object v3, Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;->GEETEST:Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;

    invoke-virtual {v1, v3, v0}, Lcom/bsgamesdk/android/presenter/a;->a(Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;Lcom/bsgamesdk/android/model/b;)V

    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/CaptchaMModel$1;->c:Lcom/bsgamesdk/android/presenter/CaptchaMModel;

    iget-object v1, p0, Lcom/bsgamesdk/android/presenter/CaptchaMModel$1;->a:Landroid/app/Activity;

    const-string v3, ""

    const-string v5, ""

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/presenter/CaptchaMModel;->a(Landroid/app/Activity;ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_14

    :cond_35
    const-string v1, "img"

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/bsgamesdk/android/presenter/CaptchaMModel$1;->b:Lcom/bsgamesdk/android/presenter/a;

    sget-object v3, Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;->IMG:Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;

    invoke-virtual {v1, v3, v0}, Lcom/bsgamesdk/android/presenter/a;->a(Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;Lcom/bsgamesdk/android/model/b;)V

    goto :goto_28

    :cond_49
    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/CaptchaMModel$1;->a:Landroid/app/Activity;

    const-string v1, "\u83b7\u53d6\u5b89\u5168\u9a8c\u8bc1\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/CaptchaMModel$1;->c:Lcom/bsgamesdk/android/presenter/CaptchaMModel;

    iget-object v1, p0, Lcom/bsgamesdk/android/presenter/CaptchaMModel$1;->a:Landroid/app/Activity;

    const/4 v2, 0x1

    const-string v3, ""

    const/16 v4, -0x270f

    const-string v5, "bundle is null"

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/presenter/CaptchaMModel;->a(Landroid/app/Activity;ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_14
.end method
