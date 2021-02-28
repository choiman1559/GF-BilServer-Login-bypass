.class Lcom/bsgamesdk/android/activity/Login_RegActivity$91;
.super Lcom/bsgamesdk/android/utils/i$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/model/UserParcelable;

.field final synthetic b:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/model/UserParcelable;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$91;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iput-object p2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$91;->a:Lcom/bsgamesdk/android/model/UserParcelable;

    invoke-direct {p0}, Lcom/bsgamesdk/android/utils/i$f;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .registers 8

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->q()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$91;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/Login_RegActivity;->i:Lcom/bsgamesdk/android/model/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$91;->a:Lcom/bsgamesdk/android/model/UserParcelable;

    iget-wide v2, v2, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/model/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$91;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->u(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$91;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "IN_TYPE"

    const-string v2, "IN_TYPE_USER_AUTO_LOGIN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "UID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$91;->a:Lcom/bsgamesdk/android/model/UserParcelable;

    iget-wide v4, v3, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$91;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_6e
    return-void

    :cond_6f
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$91;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->w(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    goto :goto_6e
.end method
