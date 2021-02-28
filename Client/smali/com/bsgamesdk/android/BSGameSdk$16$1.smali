.class Lcom/bsgamesdk/android/BSGameSdk$16$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bsgamesdk/android/callbacklistener/CallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/BSGameSdk$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/BSGameSdk$16;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/BSGameSdk$16;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/BSGameSdk$16$1;->a:Lcom/bsgamesdk/android/BSGameSdk$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$16$1;->a:Lcom/bsgamesdk/android/BSGameSdk$16;

    iget-object v0, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->f:Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;

    iget-object v1, p0, Lcom/bsgamesdk/android/BSGameSdk$16$1;->a:Lcom/bsgamesdk/android/BSGameSdk$16;

    iget-object v1, v1, Lcom/bsgamesdk/android/BSGameSdk$16;->e:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;->onError(Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V

    return-void
.end method

.method public onFailed(Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$16$1;->a:Lcom/bsgamesdk/android/BSGameSdk$16;

    iget-object v0, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->f:Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;

    iget-object v1, p0, Lcom/bsgamesdk/android/BSGameSdk$16$1;->a:Lcom/bsgamesdk/android/BSGameSdk$16;

    iget-object v1, v1, Lcom/bsgamesdk/android/BSGameSdk$16;->e:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;->onFailed(Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method
