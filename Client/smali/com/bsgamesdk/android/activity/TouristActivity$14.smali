.class Lcom/bsgamesdk/android/activity/TouristActivity$14;
.super Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/TouristActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/TouristActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/TouristActivity;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$14;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-direct {p0, p2}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/os/Bundle;)V
    .registers 16

    const/4 v13, 0x1

    const-string v0, "e_code"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$14;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->d(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u767b\u5f55\u5df2\u5931\u6548\uff0c\u8bf7\u9000\u51fa\u6e38\u620f\u91cd\u65b0\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v12, p0, Lcom/bsgamesdk/android/activity/TouristActivity$14;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$14;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->d(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    sget-object v3, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    sget-object v4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    const-string v5, ""

    const-string v6, "1"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    sget-object v8, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    const-string v9, "3"

    invoke-direct/range {v0 .. v9}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(Lcom/bsgamesdk/android/activity/TouristActivity;Lcom/bsgamesdk/android/api/h;)Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$14;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->o(Lcom/bsgamesdk/android/activity/TouristActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$14;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->t(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v13, v1, v10, v11}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;ILjava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "code"

    const-string v1, "0"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "result"

    const-string v1, "0"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "account"

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$14;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->t(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    invoke-interface {v6, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "actionname"

    const-string v1, "login"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postion"

    const-string v1, "touristLimit"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const-string v2, "TouristActivity"

    const-string v3, "login"

    const-string v4, ""

    const-string v5, "1"

    move v1, v13

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$14;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(Lcom/bsgamesdk/android/activity/TouristActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$14;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->finish()V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "auth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    sget-object v1, Lcom/bsgamesdk/android/b;->e:Lcom/bsgamesdk/android/helper/d;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity$14;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/TouristActivity;->t(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/TouristActivity$14;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/TouristActivity;->u(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/bsgamesdk/android/helper/d;->a(Lcom/bsgamesdk/android/api/BSGameSdkAuth;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bsgamesdk/android/model/UserParcelable;

    invoke-direct {v1}, Lcom/bsgamesdk/android/model/UserParcelable;-><init>()V

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity$14;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/TouristActivity;->t(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bsgamesdk/android/model/UserParcelable;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity$14;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/TouristActivity;->u(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bsgamesdk/android/model/UserParcelable;->password:Ljava/lang/String;

    sget-object v2, Lcom/bsgamesdk/android/b;->e:Lcom/bsgamesdk/android/helper/d;

    invoke-virtual {v2, v1, v0}, Lcom/bsgamesdk/android/helper/d;->c(Lcom/bsgamesdk/android/model/UserParcelable;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$14;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(Lcom/bsgamesdk/android/activity/TouristActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$14;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->d(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5347\u7ea7\u6210\u529f"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$14;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->finish()V

    goto :goto_a
.end method
