.class Lcom/bsgamesdk/android/BSGameSdk$13$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bsgamesdk/android/dc/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/BSGameSdk$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/BSGameSdk$13;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/BSGameSdk$13;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/BSGameSdk$13$1;->a:Lcom/bsgamesdk/android/BSGameSdk$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$13$1;->a:Lcom/bsgamesdk/android/BSGameSdk$13;

    iget-object v0, v0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    iget-object v0, v0, Lcom/bsgamesdk/android/BSGameSdk;->mExitListener:Lcom/bsgamesdk/android/callbacklistener/ExitCallbackListener;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$13$1;->a:Lcom/bsgamesdk/android/BSGameSdk$13;

    iget-object v0, v0, Lcom/bsgamesdk/android/BSGameSdk$13;->b:Lcom/bsgamesdk/android/BSGameSdk;

    iget-object v0, v0, Lcom/bsgamesdk/android/BSGameSdk;->mExitListener:Lcom/bsgamesdk/android/callbacklistener/ExitCallbackListener;

    invoke-interface {v0}, Lcom/bsgamesdk/android/callbacklistener/ExitCallbackListener;->onExit()V

    :cond_11
    return-void
.end method
