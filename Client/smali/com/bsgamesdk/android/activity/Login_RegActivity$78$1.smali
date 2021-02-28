.class Lcom/bsgamesdk/android/activity/Login_RegActivity$78$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity$78;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/Login_RegActivity$78;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity$78;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$78$1;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity$78;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$78$1;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity$78;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/Login_RegActivity$78;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->k(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$78$1;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity$78;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/Login_RegActivity$78;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->as(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method
