.class Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity$1;
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

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity$1;->a:Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity$1;->a:Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->finish()V

    return-void
.end method
