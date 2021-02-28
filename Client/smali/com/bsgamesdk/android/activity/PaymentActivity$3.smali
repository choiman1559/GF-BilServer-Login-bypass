.class Lcom/bsgamesdk/android/activity/PaymentActivity$3;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/PaymentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/PaymentActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$3;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 8

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$3;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$3;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_40

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$3;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/bsgamesdk/android/activity/PaymentActivity$3$1;

    invoke-direct {v2, p0, p4}, Lcom/bsgamesdk/android/activity/PaymentActivity$3$1;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity$3;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_40
    const/4 v0, 0x1

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 8

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$3;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$3;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_48

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$3;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/bsgamesdk/android/activity/PaymentActivity$3$2;

    invoke-direct {v2, p0, p4}, Lcom/bsgamesdk/android/activity/PaymentActivity$3$2;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity$3;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/bsgamesdk/android/activity/PaymentActivity$3$3;

    invoke-direct {v2, p0, p4}, Lcom/bsgamesdk/android/activity/PaymentActivity$3$3;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity$3;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_48
    const/4 v0, 0x1

    return v0
.end method
