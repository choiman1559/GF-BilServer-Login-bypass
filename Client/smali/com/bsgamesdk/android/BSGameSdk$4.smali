.class Lcom/bsgamesdk/android/BSGameSdk$4;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/BSGameSdk;->exit(Lcom/bsgamesdk/android/callbacklistener/ExitCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/callbacklistener/ExitCallbackListener;

.field final synthetic b:Lcom/bsgamesdk/android/BSGameSdk;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/BSGameSdk;Lcom/bsgamesdk/android/callbacklistener/ExitCallbackListener;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/BSGameSdk$4;->b:Lcom/bsgamesdk/android/BSGameSdk;

    iput-object p2, p0, Lcom/bsgamesdk/android/BSGameSdk$4;->a:Lcom/bsgamesdk/android/callbacklistener/ExitCallbackListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$4;->b:Lcom/bsgamesdk/android/BSGameSdk;

    new-instance v1, Lcom/bsgamesdk/android/helper/b;

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$4;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bsgamesdk/android/helper/b;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/bsgamesdk/android/helper/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$4;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v0}, Lcom/bsgamesdk/android/BSGameSdk;->b(Lcom/bsgamesdk/android/BSGameSdk;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    :try_start_20
    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$4;->b:Lcom/bsgamesdk/android/BSGameSdk;

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$4;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->b(Lcom/bsgamesdk/android/BSGameSdk;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$4;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v0}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$4;->a:Lcom/bsgamesdk/android/callbacklistener/ExitCallbackListener;

    invoke-interface {v0}, Lcom/bsgamesdk/android/callbacklistener/ExitCallbackListener;->onExit()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_43} :catch_44

    :cond_43
    :goto_43
    return-void

    :catch_44
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_43
.end method
