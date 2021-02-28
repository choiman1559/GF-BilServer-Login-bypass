.class final Lcom/bsgamesdk/android/BSGameSdk$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/BSGameSdk;->getFreeUrl(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/bsgamesdk/android/callbacklistener/CallbackListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V
    .registers 6

    iput-object p1, p0, Lcom/bsgamesdk/android/BSGameSdk$6;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bsgamesdk/android/BSGameSdk$6;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bsgamesdk/android/BSGameSdk$6;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/BSGameSdk$6;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/bsgamesdk/android/BSGameSdk$6;->e:Lcom/bsgamesdk/android/callbacklistener/CallbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/16 v5, 0x7d1

    new-instance v0, Lcom/bsgamesdk/android/helper/b;

    iget-object v1, p0, Lcom/bsgamesdk/android/BSGameSdk$6;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/helper/b;-><init>(Landroid/app/Activity;)V

    invoke-static {}, Lcom/bsgamesdk/android/BSGameSdk;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_e
    invoke-static {}, Lcom/bsgamesdk/android/BSGameSdk;->b()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v0}, Lcom/bsgamesdk/android/helper/b;->i()V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->a(Z)Z

    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_3b

    iget-object v1, p0, Lcom/bsgamesdk/android/BSGameSdk$6;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$6;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/bsgamesdk/android/BSGameSdk$6;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/helper/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$6;->e:Lcom/bsgamesdk/android/callbacklistener/CallbackListener;

    new-instance v1, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    invoke-static {v5}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/callbacklistener/CallbackListener;->onError(Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V

    :goto_3a
    return-void

    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0

    :cond_3e
    :try_start_3e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "result"

    const-string v3, "result"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "target_url"

    const-string v3, "target_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/BSGameSdk$6;->e:Lcom/bsgamesdk/android/callbacklistener/CallbackListener;

    invoke-interface {v1, v0}, Lcom/bsgamesdk/android/callbacklistener/CallbackListener;->onSuccess(Landroid/os/Bundle;)V
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_6b} :catch_6c

    goto :goto_3a

    :catch_6c
    move-exception v0

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$6;->e:Lcom/bsgamesdk/android/callbacklistener/CallbackListener;

    new-instance v1, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    invoke-static {v5}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/callbacklistener/CallbackListener;->onError(Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V

    goto :goto_3a

    :cond_7c
    :try_start_7c
    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$6;->e:Lcom/bsgamesdk/android/callbacklistener/CallbackListener;

    new-instance v2, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    const-string v3, "error_code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "error_msg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/bsgamesdk/android/callbacklistener/CallbackListener;->onFailed(Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V
    :try_end_92
    .catch Lorg/json/JSONException; {:try_start_7c .. :try_end_92} :catch_6c

    goto :goto_3a
.end method
