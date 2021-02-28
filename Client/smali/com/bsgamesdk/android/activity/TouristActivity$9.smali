.class Lcom/bsgamesdk/android/activity/TouristActivity$9;
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

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$9;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$9;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(Lcom/bsgamesdk/android/activity/TouristActivity;Z)Z

    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$9;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->d(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/dynamic/IUtils;->loginout(Landroid/content/Context;)V

    new-instance v1, Lcom/bsgamesdk/android/helper/b;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$9;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->d(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/helper/b;-><init>(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$9;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->r(Lcom/bsgamesdk/android/activity/TouristActivity;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/helper/b;->b(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$9;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->finish()V

    return-void
.end method
