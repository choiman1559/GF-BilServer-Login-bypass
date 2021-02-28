.class Lcom/bsgamesdk/android/BSGameSdk$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/BSGameSdk$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/BSGameSdk$3;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/BSGameSdk$3;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/BSGameSdk$3$1;->a:Lcom/bsgamesdk/android/BSGameSdk$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    const/16 v3, 0x7d2

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$3$1;->a:Lcom/bsgamesdk/android/BSGameSdk$3;

    iget-object v0, v0, Lcom/bsgamesdk/android/BSGameSdk$3;->a:Lcom/bsgamesdk/android/callbacklistener/CallbackListener;

    new-instance v1, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    invoke-static {v3}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/callbacklistener/CallbackListener;->onError(Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V

    return-void
.end method
