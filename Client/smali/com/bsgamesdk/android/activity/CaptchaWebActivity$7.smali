.class Lcom/bsgamesdk/android/activity/CaptchaWebActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bsgamesdk/android/activity/CaptchaJSBridge$OnBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$7;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;)V
    .registers 14

    :try_start_0
    iget-object v10, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$7;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$7;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

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

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$7;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->b:Lcom/bsgamesdk/android/api/h;

    const/4 v1, 0x0

    const-string v2, ""

    const/16 v3, 0xbb9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "==captchaJson"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3c} :catch_53

    :goto_3c
    if-nez p1, :cond_59

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$7;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$7;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->e(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$7;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->f(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;)V

    :goto_52
    return-void

    :catch_53
    move-exception v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;Z)V

    goto :goto_3c

    :cond_59
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$7;->a:Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2, p1, p2}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;)V

    goto :goto_52
.end method
