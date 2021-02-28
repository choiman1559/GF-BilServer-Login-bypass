.class Lcom/bsgamesdk/android/BSGameSdk$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V
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

    iput-object p1, p0, Lcom/bsgamesdk/android/BSGameSdk$3;->b:Lcom/bsgamesdk/android/BSGameSdk;

    iput-object p2, p0, Lcom/bsgamesdk/android/BSGameSdk$3;->a:Lcom/bsgamesdk/android/callbacklistener/CallbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bsgamesdk/android/BSGameSdk$3;->b:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v1}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u5148\u8fde\u63a5\u5230\u4e92\u8054\u7f51"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/bsgamesdk/android/BSGameSdk$3$1;

    invoke-direct {v2, p0}, Lcom/bsgamesdk/android/BSGameSdk$3$1;-><init>(Lcom/bsgamesdk/android/BSGameSdk$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/bsgamesdk/android/BSGameSdk$3$2;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/BSGameSdk$3$2;-><init>(Lcom/bsgamesdk/android/BSGameSdk$3;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
