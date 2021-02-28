.class Lcom/bsgamesdk/android/activity/Login_RegActivity$20;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$20;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$20;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$20;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Ljava/lang/String;)V

    :cond_f
    return-void
.end method
