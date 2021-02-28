.class Lcom/bsgamesdk/android/activity/Login_RegActivity$74;
.super Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Ljava/lang/String;Ljava/lang/String;ILcom/bsgamesdk/android/model/CaptchModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/model/UserParcelable;

.field final synthetic b:I

.field final synthetic c:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;Landroid/content/Context;Lcom/bsgamesdk/android/model/UserParcelable;I)V
    .registers 5

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$74;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iput-object p3, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$74;->a:Lcom/bsgamesdk/android/model/UserParcelable;

    iput p4, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$74;->b:I

    invoke-direct {p0, p2}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/os/Bundle;)V
    .registers 7

    const/16 v4, 0x15ba

    const-string v0, ""

    const-string v1, "message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "e_code"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    :try_start_11
    const-string v3, "limit_alert_message"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_16} :catch_65

    move-result-object v0

    :goto_17
    const v3, 0x7a142

    if-ne v2, v3, :cond_22

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$74;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1, v2, v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;ILjava/lang/String;)V

    :goto_21
    return-void

    :cond_22
    const v3, 0x7a143

    if-ne v2, v3, :cond_2d

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$74;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1, v2, v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;ILjava/lang/String;)V

    goto :goto_21

    :cond_2d
    const v3, 0x7a145

    if-ne v2, v3, :cond_38

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$74;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1, v2, v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;ILjava/lang/String;)V

    goto :goto_21

    :cond_38
    const v3, 0x7a146

    if-ne v2, v3, :cond_43

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$74;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1, v2, v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;ILjava/lang/String;)V

    goto :goto_21

    :cond_43
    const v0, 0x30d40

    if-ne v2, v0, :cond_4f

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$74;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(ZI)V

    goto :goto_21

    :cond_4f
    const v0, 0x30d41

    if-ne v2, v0, :cond_5b

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$74;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(ZI)V

    goto :goto_21

    :cond_5b
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$74;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_21

    :catch_65
    move-exception v3

    goto :goto_17
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$74;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->q(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$74;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->r(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$74;->a:Lcom/bsgamesdk/android/model/UserParcelable;

    iput v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->realname_verified:I

    new-instance v0, Lcom/bsgamesdk/android/model/m;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$74;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$74;->a:Lcom/bsgamesdk/android/model/UserParcelable;

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/model/m;->a(Lcom/bsgamesdk/android/model/UserParcelable;)V

    sget-object v0, Lcom/bsgamesdk/android/b;->e:Lcom/bsgamesdk/android/helper/d;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$74;->a:Lcom/bsgamesdk/android/model/UserParcelable;

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/helper/d;->a(Lcom/bsgamesdk/android/model/UserParcelable;)V

    iget v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$74;->b:I

    if-ne v0, v2, :cond_3e

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$74;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$74;->b:I

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->i(Lcom/bsgamesdk/android/activity/Login_RegActivity;I)V

    :goto_3d
    return-void

    :cond_3e
    iget v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$74;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4b

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$74;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$74;->b:I

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->i(Lcom/bsgamesdk/android/activity/Login_RegActivity;I)V

    goto :goto_3d

    :cond_4b
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$74;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->am(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    goto :goto_3d
.end method
