.class Lcom/bsgamesdk/android/activity/Login_RegActivity$67;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->r()V
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

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$67;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$67;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$67;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->o(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$67;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->p(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$67;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->aj(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$67;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v4}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ak(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;->isChecked()Z

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/utils/i;->a(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Z)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$67;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$67;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, v1, Lcom/bsgamesdk/android/activity/Login_RegActivity;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;Ljava/lang/String;)V

    :cond_31
    return-void
.end method
