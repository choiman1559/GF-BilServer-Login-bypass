.class Lcom/bsgamesdk/android/activity/PaymentActivity$10$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/PaymentActivity$10;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/PaymentActivity$10;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/PaymentActivity$10;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10$1;->a:Lcom/bsgamesdk/android/activity/PaymentActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10$1;->a:Lcom/bsgamesdk/android/activity/PaymentActivity$10;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10$1;->a:Lcom/bsgamesdk/android/activity/PaymentActivity$10;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->e(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    return-void
.end method
