.class Lcom/bsgamesdk/android/activity/Login_RegActivity$15;
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

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    const/4 v7, 0x4

    const/4 v6, -0x1

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->s(Lcom/bsgamesdk/android/activity/Login_RegActivity;)I

    move-result v0

    if-eq v0, v6, :cond_10c

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->s(Lcom/bsgamesdk/android/activity/Login_RegActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_140

    :goto_13
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0, v6}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->b(Lcom/bsgamesdk/android/activity/Login_RegActivity;I)I

    return-void

    :pswitch_19
    new-instance v0, Lcom/bsgamesdk/android/model/a;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/model/a;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/b;->q()Z

    move-result v1

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v1

    iget-object v1, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/model/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_70

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->u(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "IN_TYPE"

    const-string v2, "IN_TYPE_USER_LOGIN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "UID"

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v2

    iget-object v2, v2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_13

    :cond_70
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->v(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    goto :goto_13

    :pswitch_76
    new-instance v0, Lcom/bsgamesdk/android/model/m;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    new-instance v1, Lcom/bsgamesdk/android/model/a;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bsgamesdk/android/model/a;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->q()Z

    move-result v2

    if-eqz v2, :cond_f7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bsgamesdk/android/model/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f7

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->u(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "IN_TYPE"

    const-string v3, "IN_TYPE_USER_AUTO_LOGIN"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "UID"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_13

    :cond_f7
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->w(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    goto/16 :goto_13

    :pswitch_fe
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->x(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    goto/16 :goto_13

    :pswitch_105
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->y(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    goto/16 :goto_13

    :cond_10c
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->z(Lcom/bsgamesdk/android/activity/Login_RegActivity;)I

    move-result v0

    if-nez v0, :cond_139

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->B(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->A(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->D(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->C(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->c(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    goto/16 :goto_13

    :cond_139
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$15;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->E(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    goto/16 :goto_13

    :pswitch_data_140
    .packed-switch 0x1
        :pswitch_19
        :pswitch_76
        :pswitch_fe
        :pswitch_105
    .end packed-switch
.end method
