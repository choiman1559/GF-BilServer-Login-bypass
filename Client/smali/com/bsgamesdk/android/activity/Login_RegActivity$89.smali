.class Lcom/bsgamesdk/android/activity/Login_RegActivity$89;
.super Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->e(Lcom/bsgamesdk/android/model/CaptchModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$89;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {p0, p2}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/os/Bundle;)V
    .registers 9

    const/16 v6, 0x15bc

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-string v0, "e_code"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "limit_alert_message"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7a13f

    if-ne v3, v2, :cond_40

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$89;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u767b\u5f55\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$89;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->c(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    :goto_3f
    return-void

    :cond_40
    const v2, 0x7a142

    if-ne v3, v2, :cond_4b

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$89;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1, v3, v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;ILjava/lang/String;)V

    goto :goto_3f

    :cond_4b
    const v2, 0x7a143

    if-ne v3, v2, :cond_56

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$89;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1, v3, v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;ILjava/lang/String;)V

    goto :goto_3f

    :cond_56
    const v2, 0x7a145

    if-ne v3, v2, :cond_61

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$89;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1, v3, v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;ILjava/lang/String;)V

    goto :goto_3f

    :cond_61
    const v2, 0x7a146

    if-ne v3, v2, :cond_6c

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$89;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1, v3, v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;ILjava/lang/String;)V

    goto :goto_3f

    :cond_6c
    const v0, 0x30d40

    if-ne v3, v0, :cond_77

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$89;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-virtual {v0, v5, v6}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(ZI)V

    goto :goto_3f

    :cond_77
    const v0, 0x30d41

    if-ne v3, v0, :cond_82

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$89;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-virtual {v0, v1, v6}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(ZI)V

    goto :goto_3f

    :cond_82
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$89;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->u(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$89;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u767b\u5f55\u5931\u8d25: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$89;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    new-instance v2, Lcom/bsgamesdk/android/api/h;

    iget-object v5, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$89;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v5}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v2, v5, v6}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/api/h;)Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$89;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->at(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v0

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$89;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->az(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v2

    iget-object v2, v2, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    sget-object v5, Lcom/bsgamesdk/android/api/h;->o:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "code"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "result"

    const-string v2, "1"

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "account"

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$89;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->az(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v2

    iget-object v2, v2, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "actionname"

    const-string v2, "login"

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postion"

    const-string v2, "one_key"

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/h;->k:Ljava/lang/String;

    sget-object v2, Lcom/bsgamesdk/android/api/h;->o:Ljava/lang/String;

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const-string v2, "Login_RegActivity"

    const-string v3, "login"

    const-string v4, ""

    const-string v5, "1"

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_3f
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "auth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$89;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$89;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->j(Lcom/bsgamesdk/android/activity/Login_RegActivity;I)V

    return-void
.end method
