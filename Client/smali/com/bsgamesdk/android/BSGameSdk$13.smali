.class Lcom/bsgamesdk/android/BSGameSdk$13;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/BSGameSdk;->login(Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V
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

    iput-object p1, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    iput-object p2, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->a:Lcom/bsgamesdk/android/callbacklistener/CallbackListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v3, 0x1

    const/16 v7, 0x7d1

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    new-instance v1, Lcom/bsgamesdk/android/helper/b;

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bsgamesdk/android/helper/b;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/bsgamesdk/android/helper/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v0}, Lcom/bsgamesdk/android/BSGameSdk;->b(Lcom/bsgamesdk/android/BSGameSdk;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v0}, Lcom/bsgamesdk/android/BSGameSdk;->b(Lcom/bsgamesdk/android/BSGameSdk;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_2d
    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->a:Lcom/bsgamesdk/android/callbacklistener/CallbackListener;

    new-instance v1, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    invoke-static {v7}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v7, v2}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/callbacklistener/CallbackListener;->onError(Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    :try_start_3c
    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->b(Lcom/bsgamesdk/android/BSGameSdk;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v0}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_14f

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "uid"

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "uid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "username"

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "nickname"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "nickname"

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "nickname"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "access_token"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "expire_times"

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "expire_times"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "refresh_token"

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "refresh_token"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cb
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_cb} :catch_13b

    :try_start_cb
    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "uid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackLogin(Ljava/lang/String;)V
    :try_end_de
    .catch Ljava/lang/Throwable; {:try_start_cb .. :try_end_de} :catch_187
    .catch Lorg/json/JSONException; {:try_start_cb .. :try_end_de} :catch_13b

    :goto_de
    :try_start_de
    const-string v1, "init"

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v5}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v5}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "access_token"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v5}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "uid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/bsgamesdk/android/utils/ab;->a(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/Object;)V
    :try_end_118
    .catch Ljava/lang/Throwable; {:try_start_de .. :try_end_118} :catch_185
    .catch Lorg/json/JSONException; {:try_start_de .. :try_end_118} :catch_13b

    :goto_118
    :try_start_118
    iget-object v1, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v3}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "uid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/bsgamesdk/android/BSGameSdk$13$1;

    invoke-direct {v4, p0}, Lcom/bsgamesdk/android/BSGameSdk$13$1;-><init>(Lcom/bsgamesdk/android/BSGameSdk$13;)V

    invoke-static {v1, v2, v3, v4}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;Landroid/app/Activity;Ljava/lang/String;Lcom/bsgamesdk/android/dc/b;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->a:Lcom/bsgamesdk/android/callbacklistener/CallbackListener;

    invoke-interface {v1, v0}, Lcom/bsgamesdk/android/callbacklistener/CallbackListener;->onSuccess(Landroid/os/Bundle;)V
    :try_end_139
    .catch Lorg/json/JSONException; {:try_start_118 .. :try_end_139} :catch_13b

    goto/16 :goto_3b

    :catch_13b
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->a:Lcom/bsgamesdk/android/callbacklistener/CallbackListener;

    new-instance v1, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    invoke-static {v7}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v7, v2}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/callbacklistener/CallbackListener;->onError(Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V

    goto/16 :goto_3b

    :cond_14f
    const/4 v1, -0x2

    if-ne v0, v1, :cond_161

    :try_start_152
    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    iget-object v0, v0, Lcom/bsgamesdk/android/BSGameSdk;->mExitListener:Lcom/bsgamesdk/android/callbacklistener/ExitCallbackListener;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    iget-object v0, v0, Lcom/bsgamesdk/android/BSGameSdk;->mExitListener:Lcom/bsgamesdk/android/callbacklistener/ExitCallbackListener;

    invoke-interface {v0}, Lcom/bsgamesdk/android/callbacklistener/ExitCallbackListener;->onExit()V

    goto/16 :goto_3b

    :cond_161
    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->a:Lcom/bsgamesdk/android/callbacklistener/CallbackListener;

    new-instance v1, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "error_code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v3}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "error_msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/callbacklistener/CallbackListener;->onFailed(Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V
    :try_end_183
    .catch Lorg/json/JSONException; {:try_start_152 .. :try_end_183} :catch_13b

    goto/16 :goto_3b

    :catch_185
    move-exception v1

    goto :goto_118

    :catch_187
    move-exception v1

    goto/16 :goto_de
.end method
