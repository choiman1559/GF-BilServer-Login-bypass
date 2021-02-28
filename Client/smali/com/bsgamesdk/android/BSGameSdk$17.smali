.class Lcom/bsgamesdk/android/BSGameSdk$17;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/BSGameSdk;->isRealNameAuth(Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V
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

    iput-object p1, p0, Lcom/bsgamesdk/android/BSGameSdk$17;->b:Lcom/bsgamesdk/android/BSGameSdk;

    iput-object p2, p0, Lcom/bsgamesdk/android/BSGameSdk$17;->a:Lcom/bsgamesdk/android/callbacklistener/CallbackListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v3, 0x1

    const/16 v5, 0x7d1

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$17;->b:Lcom/bsgamesdk/android/BSGameSdk;

    new-instance v1, Lcom/bsgamesdk/android/helper/b;

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$17;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bsgamesdk/android/helper/b;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/bsgamesdk/android/helper/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$17;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v0}, Lcom/bsgamesdk/android/BSGameSdk;->b(Lcom/bsgamesdk/android/BSGameSdk;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$17;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v0}, Lcom/bsgamesdk/android/BSGameSdk;->b(Lcom/bsgamesdk/android/BSGameSdk;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_2d
    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$17;->a:Lcom/bsgamesdk/android/callbacklistener/CallbackListener;

    new-instance v1, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    invoke-static {v5}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/callbacklistener/CallbackListener;->onError(Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V

    :goto_3b
    return-void

    :cond_3c
    :try_start_3c
    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$17;->b:Lcom/bsgamesdk/android/BSGameSdk;

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$17;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->b(Lcom/bsgamesdk/android/BSGameSdk;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$17;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v0}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_8f

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "isRealNameAuth"

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$17;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "isRealNameAuth"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/bsgamesdk/android/BSGameSdk$17;->a:Lcom/bsgamesdk/android/callbacklistener/CallbackListener;

    invoke-interface {v1, v0}, Lcom/bsgamesdk/android/callbacklistener/CallbackListener;->onSuccess(Landroid/os/Bundle;)V
    :try_end_7b
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_7b} :catch_7c

    goto :goto_3b

    :catch_7c
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$17;->a:Lcom/bsgamesdk/android/callbacklistener/CallbackListener;

    new-instance v1, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    invoke-static {v5}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/callbacklistener/CallbackListener;->onError(Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V

    goto :goto_3b

    :cond_8f
    :try_start_8f
    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$17;->a:Lcom/bsgamesdk/android/callbacklistener/CallbackListener;

    new-instance v1, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$17;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "error_code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/bsgamesdk/android/BSGameSdk$17;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v3}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "error_msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/callbacklistener/CallbackListener;->onFailed(Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V
    :try_end_b1
    .catch Lorg/json/JSONException; {:try_start_8f .. :try_end_b1} :catch_7c

    goto :goto_3b
.end method
