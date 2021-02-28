.class Lcom/bsgamesdk/android/activity/LicenseAgreementActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity$2;->a:Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity$2;->a:Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;->b(Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;)Lcom/bsgamesdk/android/model/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity$2;->a:Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;->a(Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/bsgamesdk/android/model/a;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity$2;->a:Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;

    invoke-static {v0, v2}, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;->a(Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;Z)V

    return-void
.end method
