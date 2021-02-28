.class Lcom/bsgamesdk/android/activity/PaymentActivity$10$3;
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

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10$3;->a:Lcom/bsgamesdk/android/activity/PaymentActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$10$3;->a:Lcom/bsgamesdk/android/activity/PaymentActivity$10;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$10;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v1, "\u7f51\u7edc\u8f83\u5dee\u7528\u6237\u5173\u95ed"

    const/16 v2, 0x3e8

    const-string v3, ""

    const-string v4, "-9999"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
