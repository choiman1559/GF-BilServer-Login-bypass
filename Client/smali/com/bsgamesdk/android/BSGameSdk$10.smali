.class Lcom/bsgamesdk/android/BSGameSdk$10;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/BSGameSdk;->showAgreementWithPrivacy(Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/callbacklistener/CallbackListener;

.field final synthetic b:Lcom/bsgamesdk/android/BSGameSdk;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/BSGameSdk;Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/BSGameSdk$10;->b:Lcom/bsgamesdk/android/BSGameSdk;

    iput-object p2, p0, Lcom/bsgamesdk/android/BSGameSdk$10;->a:Lcom/bsgamesdk/android/callbacklistener/CallbackListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v3, 0x1

    const/16 v5, 0x7d1

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$10;->b:Lcom/bsgamesdk/android/BSGameSdk;

    new-instance v1, Lcom/bsgamesdk/android/helper/b;

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$10;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bsgamesdk/android/helper/b;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/bsgamesdk/android/helper/b;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$10;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v0}, Lcom/bsgamesdk/android/BSGameSdk;->b(Lcom/bsgamesdk/android/BSGameSdk;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$10;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v0}, Lcom/bsgamesdk/android/BSGameSdk;->b(Lcom/bsgamesdk/android/BSGameSdk;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_2e
    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$10;->a:Lcom/bsgamesdk/android/callbacklistener/CallbackListener;

    new-instance v1, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    invoke-static {v5}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/callbacklistener/CallbackListener;->onError(Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V

    :goto_3c
    return-void

    :cond_3d
    :try_start_3d
    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$10;->b:Lcom/bsgamesdk/android/BSGameSdk;

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$10;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->b(Lcom/bsgamesdk/android/BSGameSdk;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$10;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v0}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_7f

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bsgamesdk/android/BSGameSdk$10;->a:Lcom/bsgamesdk/android/callbacklistener/CallbackListener;

    invoke-interface {v1, v0}, Lcom/bsgamesdk/android/callbacklistener/CallbackListener;->onSuccess(Landroid/os/Bundle;)V
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_6b} :catch_6c

    goto :goto_3c

    :catch_6c
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$10;->a:Lcom/bsgamesdk/android/callbacklistener/CallbackListener;

    new-instance v1, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    invoke-static {v5}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/callbacklistener/CallbackListener;->onError(Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V

    goto :goto_3c

    :cond_7f
    :try_start_7f
    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$10;->a:Lcom/bsgamesdk/android/callbacklistener/CallbackListener;

    new-instance v1, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$10;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "error_code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/bsgamesdk/android/BSGameSdk$10;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v3}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "error_msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/callbacklistener/CallbackListener;->onFailed(Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V
    :try_end_a1
    .catch Lorg/json/JSONException; {:try_start_7f .. :try_end_a1} :catch_6c

    goto :goto_3c
.end method
