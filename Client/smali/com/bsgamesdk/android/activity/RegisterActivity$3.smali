.class Lcom/bsgamesdk/android/activity/RegisterActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/RegisterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/RegisterActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$3;->a:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5

    const/16 v1, 0x8

    if-nez p2, :cond_16

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$3;->a:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->d(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$3;->a:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->e(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_16
    return-void
.end method
