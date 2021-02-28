.class Lcom/bsgamesdk/android/activity/Login_RegActivity$85;
.super Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/api/BSGameSdkAuth;Lcom/bsgamesdk/android/model/CaptchModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

.field final synthetic b:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

.field final synthetic c:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;Landroid/content/Context;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)V
    .registers 5

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iput-object p3, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->b:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-direct {p0, p2}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->b:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/os/Bundle;)V
    .registers 9

    const/16 v5, 0x15bd

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

    const/16 v2, -0x65

    if-ne v3, v2, :cond_d6

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->av(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->av(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bsgamesdk/android/model/m;->a(Lcom/bsgamesdk/android/model/UserParcelable;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

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

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->c(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->aC(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "_91005"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "_91008"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Lcom/bsgamesdk/android/api/h;

    iget-object v4, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v4}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v4}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->az(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v4

    iget-object v4, v4, Lcom/bsgamesdk/android/model/UserParcelable;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v4, v3, v5}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;ILjava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v2, "code"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "result"

    const-string v3, "1"

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "account"

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->az(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v3

    iget-object v3, v3, Lcom/bsgamesdk/android/model/UserParcelable;->username:Ljava/lang/String;

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "message"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "actionname"

    const-string v2, "login"

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "position"

    const-string v2, "fast_verify"

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const-string v2, ""

    const-string v3, "login"

    const-string v4, ""

    const-string v5, "1"

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_d5
    return-void

    :cond_d6
    const v2, 0x7a142

    if-ne v3, v2, :cond_e1

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1, v3, v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;ILjava/lang/String;)V

    goto :goto_d5

    :cond_e1
    const v2, 0x7a143

    if-ne v3, v2, :cond_ec

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1, v3, v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;ILjava/lang/String;)V

    goto :goto_d5

    :cond_ec
    const v2, 0x7a145

    if-ne v3, v2, :cond_f7

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1, v3, v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;ILjava/lang/String;)V

    goto :goto_d5

    :cond_f7
    const v2, 0x7a146

    if-ne v3, v2, :cond_102

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1, v3, v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;ILjava/lang/String;)V

    goto :goto_d5

    :cond_102
    const v0, 0x30d40

    if-ne v3, v0, :cond_10e

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(ZI)V

    goto :goto_d5

    :cond_10e
    const v0, 0x30d41

    if-ne v3, v0, :cond_119

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-virtual {v0, v1, v5}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(ZI)V

    goto :goto_d5

    :cond_119
    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/bsgamesdk/android/dynamic/IUtils;->loginout(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

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

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->c(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    new-instance v2, Lcom/bsgamesdk/android/api/h;

    iget-object v5, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v5}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v2, v5, v6}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/api/h;)Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->at(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v0

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->A(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/bsgamesdk/android/api/h;->n:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->A(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "actionname"

    const-string v2, "login"

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postion"

    const-string v2, "loginFalie"

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/h;->k:Ljava/lang/String;

    sget-object v2, Lcom/bsgamesdk/android/api/h;->n:Ljava/lang/String;

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const-string v2, "\u767b\u5f55\u5931\u8d25"

    const-string v3, "login"

    const-string v4, ""

    const-string v5, "1"

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_d5
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 12

    const/4 v9, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->aB(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Z

    move-result v0

    if-eqz v0, :cond_117

    const-string v6, ""

    :try_start_c
    const-string v0, "demotion"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_11} :catch_1e8

    move-result-object v6

    :goto_12
    const-string v0, "auth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-virtual {v2, v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mergeMyInfo(Lcom/bsgamesdk/android/api/BSGameSdkAuth;)V

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-boolean v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mActivate:Z

    iput-boolean v0, v2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mActivate:Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->aC(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v0, "_91006"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->az(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v2

    iget-object v2, v2, Lcom/bsgamesdk/android/model/UserParcelable;->username:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/bsgamesdk/android/api/h;->n:Ljava/lang/String;

    move v3, v1

    invoke-virtual/range {v0 .. v6}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v0, "code"

    const-string v1, "0"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "result"

    const-string v1, "1"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "account"

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->A(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "actionname"

    const-string v1, "login"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postion"

    const-string v1, "needRefreshToken"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/h;->k:Ljava/lang/String;

    sget-object v1, Lcom/bsgamesdk/android/api/h;->n:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "demotion"

    invoke-interface {v8, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const-string v2, "Login_RegActivity"

    const-string v3, "login"

    const-string v4, ""

    const-string v5, "1"

    move v1, v9

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->az(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->az(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mExpires:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->expire_in:J

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->az(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mLongExpires:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->long_expire_in:J

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->az(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->nickname:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->az(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->avatar:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->az(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mBig_Avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->s_avatar:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_109

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->az(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    :cond_109
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->j(Lcom/bsgamesdk/android/activity/Login_RegActivity;I)V

    :goto_116
    return-void

    :cond_117
    const-string v6, ""

    :try_start_119
    const-string v0, "demotion"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11e
    .catch Ljava/lang/Throwable; {:try_start_119 .. :try_end_11e} :catch_1e5

    move-result-object v6

    :goto_11f
    const-string v0, "auth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->az(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v2

    iget-object v2, v2, Lcom/bsgamesdk/android/model/UserParcelable;->username:Ljava/lang/String;

    const-string v4, ""

    sget-object v5, Lcom/bsgamesdk/android/api/h;->n:Ljava/lang/String;

    move v3, v1

    invoke-virtual/range {v0 .. v6}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_144
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v0, "code"

    const-string v1, "0"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "result"

    const-string v1, "1"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "account"

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->az(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v1

    iget-object v1, v1, Lcom/bsgamesdk/android/model/UserParcelable;->username:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    const-string v1, ""

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "actionname"

    const-string v1, "login"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postion"

    const-string v1, "notNeedRefreshToken"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/h;->k:Ljava/lang/String;

    sget-object v1, Lcom/bsgamesdk/android/api/h;->n:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "demotion"

    invoke-interface {v7, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "Login_RegActivity"

    const-string v3, "login"

    const-string v4, ""

    const-string v5, "1"

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_196
    .catch Ljava/lang/Throwable; {:try_start_144 .. :try_end_196} :catch_1e3

    :goto_196
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->az(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->nickname:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->az(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->avatar:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->az(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mBig_Avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->s_avatar:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->az(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    :cond_1d4
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$85;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->j(Lcom/bsgamesdk/android/activity/Login_RegActivity;I)V

    goto/16 :goto_116

    :catch_1e3
    move-exception v0

    goto :goto_196

    :catch_1e5
    move-exception v0

    goto/16 :goto_11f

    :catch_1e8
    move-exception v0

    goto/16 :goto_12
.end method
