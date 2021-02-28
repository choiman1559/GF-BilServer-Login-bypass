.class Lcom/bsgamesdk/android/activity/Login_RegActivity$14;
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

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$14;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$14;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$14;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->q(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$14;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->r(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bsgamesdk/android/utils/i;->a(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$14;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->s(Lcom/bsgamesdk/android/activity/Login_RegActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_28

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$14;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0, v4}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/model/CaptchModel;)V

    :cond_27
    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$14;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->q(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$14;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->r(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$14;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;I)I

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$14;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$14;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->t(Lcom/bsgamesdk/android/activity/Login_RegActivity;)I

    move-result v3

    invoke-static {v2, v0, v1, v3, v4}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Ljava/lang/String;Ljava/lang/String;ILcom/bsgamesdk/android/model/CaptchModel;)V

    goto :goto_27
.end method
