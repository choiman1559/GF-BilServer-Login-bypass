.class Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;
.super Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-direct {p0, p2}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/os/Bundle;)V
    .registers 16

    const/4 v13, 0x1

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->e(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->f(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a:Landroid/content/Context;

    const-string v1, "\u83b7\u53d6\u5b89\u5168\u9a8c\u8bc1\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_1e
    const-string v0, "e_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    iget-object v1, v1, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a:Landroid/content/Context;

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    sget-object v3, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    sget-object v4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    const-string v5, ""

    const-string v6, "1"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    sget-object v8, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    const-string v9, "3"

    invoke-direct/range {v0 .. v9}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v12, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->b:Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->b:Lcom/bsgamesdk/android/api/h;

    const/4 v1, 0x1

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "----public_captcha_failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v10, v3}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_64} :catch_65

    :goto_64
    return-void

    :catch_65
    move-exception v0

    invoke-static {v0, v13}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;Z)V

    goto :goto_64
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 14

    const/4 v11, 0x1

    if-eqz p1, :cond_72

    const-string v0, "captchResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/b;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;Lcom/bsgamesdk/android/model/b;)Lcom/bsgamesdk/android/model/b;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->h(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)I

    move-result v0

    if-ne v11, v0, :cond_42

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->j(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)Lcom/bsgamesdk/android/model/b;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->b(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;Lcom/bsgamesdk/android/model/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;Ljava/lang/String;)V

    :cond_42
    :try_start_42
    iget-object v10, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    iget-object v1, v1, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a:Landroid/content/Context;

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    sget-object v3, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    sget-object v4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    const-string v5, ""

    const-string v6, "1"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    sget-object v8, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    const-string v9, "3"

    invoke-direct/range {v0 .. v9}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v10, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->b:Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->b:Lcom/bsgamesdk/android/api/h;

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    const-string v4, "public_captcha_success"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_6c} :catch_6d

    :goto_6c
    return-void

    :catch_6d
    move-exception v0

    invoke-static {v0, v11}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;Z)V

    goto :goto_6c

    :cond_72
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->e(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->f(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a:Landroid/content/Context;

    const-string v1, "\u83b7\u53d6\u5b89\u5168\u9a8c\u8bc1\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_8f
    iget-object v10, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    iget-object v1, v1, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a:Landroid/content/Context;

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    sget-object v3, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    sget-object v4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    const-string v5, ""

    const-string v6, "1"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    sget-object v8, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    const-string v9, "3"

    invoke-direct/range {v0 .. v9}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v10, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->b:Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->b:Lcom/bsgamesdk/android/api/h;

    const/4 v1, 0x1

    const-string v2, ""

    const/16 v3, -0x22b8

    const-string v4, "public_captcha_failed"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_ba} :catch_bb

    goto :goto_6c

    :catch_bb
    move-exception v0

    invoke-static {v0, v11}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;Z)V

    goto :goto_6c
.end method
