.class Lcom/bsgamesdk/android/activity/TouristActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/TouristActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/TouristActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/TouristActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$4;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$4;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->d(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$4;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->b(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity$4;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/TouristActivity;->c(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bsgamesdk/android/utils/i;->a(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$4;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->b(Lcom/bsgamesdk/android/activity/TouristActivity;Lcom/bsgamesdk/android/model/CaptchModel;)V

    :cond_1e
    return-void
.end method
