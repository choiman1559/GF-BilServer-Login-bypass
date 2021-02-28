.class public Lcom/bsgamesdk/android/activity/CaptchaJSBridge;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bsgamesdk/android/activity/CaptchaJSBridge$OnBackListener;
    }
.end annotation


# static fields
.field public static final CAPTCH_MODEL:Ljava/lang/String; = "capthc_model"

.field public static final JSBRIDGE_FINISH:I = 0xbba

.field public static final TYPE_JS:Ljava/lang/String; = "type_js"

.field public static final TYPE_JSON:Ljava/lang/String; = "type_json"


# instance fields
.field private a:Landroid/app/Activity;

.field private final b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/bsgamesdk/android/model/b;

.field private e:Ljava/lang/String;

.field private f:Lcom/bsgamesdk/android/activity/CaptchaJSBridge$OnBackListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/bsgamesdk/android/model/b;Ljava/lang/String;Lcom/bsgamesdk/android/activity/CaptchaJSBridge$OnBackListener;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CaptchaJSBridge"

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;->a:Landroid/app/Activity;

    iput p2, p0, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;->c:I

    iput-object p3, p0, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;->d:Lcom/bsgamesdk/android/model/b;

    iput-object p4, p0, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;->f:Lcom/bsgamesdk/android/activity/CaptchaJSBridge$OnBackListener;

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/CaptchaJSBridge;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->CAPTCHA_PUBLIC:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;->f:Lcom/bsgamesdk/android/activity/CaptchaJSBridge$OnBackListener;

    invoke-interface {v0, p3, p4}, Lcom/bsgamesdk/android/activity/CaptchaJSBridge$OnBackListener;->onClick(Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "type_js"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type_json"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "capthc_model"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v1, 0xbba

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_f
.end method


# virtual methods
.method public finishWithResult(Ljava/lang/String;)V
    .registers 14
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a3

    const-string v0, "{}"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;->a:Landroid/app/Activity;

    const-string v1, "-1"

    invoke-direct {p0, v0, v1, v10, p1}, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    :try_start_18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v1, "captcha_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v3, ""

    const-string v2, ""

    if-ne v11, v1, :cond_85

    const-string v4, "challenge"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "validate"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "seccode"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "userid"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_4f
    :goto_4f
    new-instance v0, Lcom/bsgamesdk/android/model/CaptchModel;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;->d:Lcom/bsgamesdk/android/model/b;

    if-eqz v8, :cond_95

    iget-object v8, p0, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;->d:Lcom/bsgamesdk/android/model/b;

    invoke-virtual {v8}, Lcom/bsgamesdk/android/model/b;->h()Ljava/lang/String;

    move-result-object v8

    :goto_6e
    invoke-direct/range {v0 .. v8}, Lcom/bsgamesdk/android/model/CaptchModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v9, :cond_98

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;->a:Landroid/app/Activity;

    const-string v1, "0"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_7b} :catch_7c

    goto :goto_17

    :catch_7c
    move-exception v0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;->a:Landroid/app/Activity;

    const-string v1, "0"

    invoke-direct {p0, v0, v1, v10, p1}, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;)V

    goto :goto_17

    :cond_85
    const/4 v8, 0x2

    if-ne v8, v1, :cond_4f

    :try_start_88
    const-string v2, "captcha"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4f

    :cond_95
    const-string v8, ""

    goto :goto_6e

    :cond_98
    if-ne v11, v9, :cond_17

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;->a:Landroid/app/Activity;

    const-string v2, "1"

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_a1} :catch_7c

    goto/16 :goto_17

    :cond_a3
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;->a:Landroid/app/Activity;

    const-string v1, "-1"

    invoke-direct {p0, v0, v1, v10, p1}, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;)V

    goto/16 :goto_17
.end method

.method public goBackWithResult(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;->a:Landroid/app/Activity;

    const-string v1, "-1"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;)V

    return-void
.end method

.method public makeToast(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;->a:Landroid/app/Activity;

    new-instance v1, Lcom/bsgamesdk/android/activity/CaptchaJSBridge$1;

    invoke-direct {v1, p0, p1}, Lcom/bsgamesdk/android/activity/CaptchaJSBridge$1;-><init>(Lcom/bsgamesdk/android/activity/CaptchaJSBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
