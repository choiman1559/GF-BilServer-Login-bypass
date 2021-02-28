.class Lcom/bsgamesdk/android/api/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/api/g;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/api/g;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/api/g$1;->a:Lcom/bsgamesdk/android/api/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {}, Lcom/bsgamesdk/android/BSGameSdk;->getInstance()Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v0

    iget-object v0, v0, Lcom/bsgamesdk/android/BSGameSdk;->mAccountCallBack:Lcom/bsgamesdk/android/callbacklistener/AccountCallBackListener;

    invoke-interface {v0}, Lcom/bsgamesdk/android/callbacklistener/AccountCallBackListener;->onAccountInvalid()V

    return-void
.end method
