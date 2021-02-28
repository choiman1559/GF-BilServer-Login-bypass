.class Lcom/bsgamesdk/android/activity/WelcomeActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/WelcomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/WelcomeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity$1;->a:Lcom/bsgamesdk/android/activity/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity$1;->a:Lcom/bsgamesdk/android/activity/WelcomeActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/WelcomeActivity;->a(Lcom/bsgamesdk/android/activity/WelcomeActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/dynamic/IUtils;->loginout(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity$1;->a:Lcom/bsgamesdk/android/activity/WelcomeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/WelcomeActivity;->a(Lcom/bsgamesdk/android/activity/WelcomeActivity;Z)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "keykey"

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity$1;->a:Lcom/bsgamesdk/android/activity/WelcomeActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/WelcomeActivity;->b(Lcom/bsgamesdk/android/activity/WelcomeActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity$1;->a:Lcom/bsgamesdk/android/activity/WelcomeActivity;

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2, v0}, Lcom/bsgamesdk/android/activity/WelcomeActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity$1;->a:Lcom/bsgamesdk/android/activity/WelcomeActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/WelcomeActivity;->finish()V

    return-void
.end method
