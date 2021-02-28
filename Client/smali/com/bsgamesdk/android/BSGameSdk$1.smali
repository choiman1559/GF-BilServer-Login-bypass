.class Lcom/bsgamesdk/android/BSGameSdk$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bsgamesdk/android/callbacklistener/InitCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/BSGameSdk;-><init>(ZLandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/InitCallbackListener;Lcom/bsgamesdk/android/callbacklistener/ExitCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/callbacklistener/InitCallbackListener;

.field final synthetic b:Lcom/bsgamesdk/android/BSGameSdk;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/BSGameSdk;Lcom/bsgamesdk/android/callbacklistener/InitCallbackListener;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/BSGameSdk$1;->b:Lcom/bsgamesdk/android/BSGameSdk;

    iput-object p2, p0, Lcom/bsgamesdk/android/BSGameSdk$1;->a:Lcom/bsgamesdk/android/callbacklistener/InitCallbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$1;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v0}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/helper/c;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/BSGameSdk$1;->onSuccess()V

    return-void
.end method

.method public onSuccess()V
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$1;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v0}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/helper/c;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$1;->a:Lcom/bsgamesdk/android/callbacklistener/InitCallbackListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$1;->a:Lcom/bsgamesdk/android/callbacklistener/InitCallbackListener;

    invoke-interface {v0}, Lcom/bsgamesdk/android/callbacklistener/InitCallbackListener;->onSuccess()V

    :cond_12
    return-void
.end method
