.class Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity$2;->a:Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity$2;->a:Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->a(Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity$2;->a:Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->b(Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity$2;->a:Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->c(Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method
