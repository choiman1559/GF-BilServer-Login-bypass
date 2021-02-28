.class public Lcom/bsgamesdk/android/activity/LoadingActivity;
.super Lcom/bsgamesdk/android/activity/BaseActivity;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Landroid/os/Bundle;

.field private d:Lcom/bsgamesdk/android/model/k;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;-><init>()V

    iput-object p0, p0, Lcom/bsgamesdk/android/activity/LoadingActivity;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    neg-int v4, v2

    if-lt v0, v4, :cond_2e

    neg-int v4, v2

    if-lt v1, v4, :cond_2e

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    if-gt v0, v4, :cond_2e

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    if-le v1, v0, :cond_30

    :cond_2e
    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method


# virtual methods
.method protected a()V
    .registers 3

    sget-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    iget v1, p0, Lcom/bsgamesdk/android/activity/LoadingActivity;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :try_start_e
    monitor-enter v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_f} :catch_1a

    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_17

    :goto_13
    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/LoadingActivity;->finish()V

    return-void

    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    :try_start_19
    throw v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1a} :catch_1a

    :catch_1a
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_13
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/bsgamesdk/android/BSGameSdk;->getInstance()Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/LoadingActivity;->finish()V

    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/activity/LoadingActivity;->requestWindowFeature(I)Z

    sget v0, Lcom/bsgamesdk/android/utils/f$e;->b:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/LoadingActivity;->setContentView(I)V

    new-instance v0, Lcom/bsgamesdk/android/model/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/LoadingActivity;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/model/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/LoadingActivity;->d:Lcom/bsgamesdk/android/model/k;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/LoadingActivity;->c:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/LoadingActivity;->c:Landroid/os/Bundle;

    const-string v1, "CallingPid"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/bsgamesdk/android/activity/LoadingActivity;->b:I

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/LoadingActivity;->c:Landroid/os/Bundle;

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    :cond_4f
    const-string v0, "checklogin"

    :cond_51
    iput-object p0, p0, Lcom/bsgamesdk/android/activity/LoadingActivity;->a:Landroid/content/Context;

    sget-object v1, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    iget v2, p0, Lcom/bsgamesdk/android/activity/LoadingActivity;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_5e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_63} :catch_bd

    :try_start_63
    const-string v2, "result"

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "error_msg"

    const-string v4, "\u7528\u6237\u672a\u767b\u5f55\u6216\u767b\u5f55\u5df2\u8d85\u65f6"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "error_code"

    const/16 v4, 0xbb9

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_77} :catch_26d

    :goto_77
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "checklogin"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_108

    :try_start_83
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_88} :catch_26a

    :try_start_88
    sget-object v1, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/LoadingActivity;->a:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsLogined(Landroid/content/Context;)Z

    move-result v1

    sget-object v2, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/LoadingActivity;->a:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsTouristLogined(Landroid/content/Context;)Z

    move-result v2

    if-eqz v1, :cond_c4

    const-string v2, "result"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "logined"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_a9
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_ac} :catch_d6

    move-result-object v0

    :goto_ad
    sget-object v1, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    iget v2, p0, Lcom/bsgamesdk/android/activity/LoadingActivity;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/LoadingActivity;->a()V

    goto/16 :goto_f

    :catch_bd
    move-exception v1

    move-object v2, v1

    move-object v1, v3

    :goto_c0
    invoke-static {v2}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_77

    :cond_c4
    if-eqz v2, :cond_ef

    :try_start_c6
    const-string v1, "result"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "logined"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_d5} :catch_d6

    goto :goto_a9

    :catch_d6
    move-exception v1

    move-object v1, v0

    :goto_d8
    :try_start_d8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_dd} :catch_100

    :try_start_dd
    const-string v1, "result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "logined"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_ea} :catch_267

    :goto_ea
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ad

    :cond_ef
    :try_start_ef
    const-string v1, "result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "logined"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_ff} :catch_d6

    goto :goto_a9

    :catch_100
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_104
    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_ea

    :cond_108
    const-string v1, "bsgamesdk_logout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15a

    :try_start_110
    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/LoadingActivity;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/dynamic/IUtils;->loginoutUser(Landroid/content/Context;)V

    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/LoadingActivity;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/dynamic/IUtils;->loginoutTourist(Landroid/content/Context;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_123} :catch_137

    :try_start_123
    const-string v1, "result"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tips"

    const-string v2, "\u6ce8\u9500\u6210\u529f"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_131} :catch_262

    :goto_131
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_ad

    :catch_137
    move-exception v0

    :goto_138
    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    :try_start_13b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_140} :catch_25d

    :try_start_140
    const-string v1, "result"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "error_msg"

    const-string v2, "\u6ce8\u9500\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "error_code"

    const/16 v2, 0xbbb

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_154} :catch_155

    goto :goto_131

    :catch_155
    move-exception v1

    :goto_156
    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_131

    :cond_15a
    const-string v1, "getuserinfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_270

    :try_start_162
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/LoadingActivity;->d:Lcom/bsgamesdk/android/model/k;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v0

    sget-object v1, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    invoke-interface {v1, v0}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsTouristLogined(Lcom/bsgamesdk/android/model/TouristUserParceable;)Z

    move-result v1

    sget-object v2, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/LoadingActivity;->a:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsLogined(Landroid/content/Context;)Z

    move-result v2

    if-eqz v1, :cond_1c2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "result"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uid"

    iget-wide v4, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "username"

    iget-object v3, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "access_token"

    iget-object v3, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "avatar"

    iget-object v3, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->avatar:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "s_avatar"

    iget-object v3, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->s_avatar:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "expire_times"

    iget-wide v4, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->expire_in:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "refresh_token"

    iget-object v3, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->refresh_token:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "last_login_time"

    iget-wide v4, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->last_login_time:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_ad

    :cond_1c2
    if-eqz v2, :cond_219

    new-instance v0, Lcom/bsgamesdk/android/model/m;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/LoadingActivity;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "result"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uid"

    iget-wide v4, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "username"

    iget-object v3, v0, Lcom/bsgamesdk/android/model/UserParcelable;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "access_token"

    iget-object v3, v0, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "avatar"

    iget-object v3, v0, Lcom/bsgamesdk/android/model/UserParcelable;->avatar:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "s_avatar"

    iget-object v3, v0, Lcom/bsgamesdk/android/model/UserParcelable;->s_avatar:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "expire_times"

    iget-wide v4, v0, Lcom/bsgamesdk/android/model/UserParcelable;->expire_in:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "refresh_token"

    iget-object v3, v0, Lcom/bsgamesdk/android/model/UserParcelable;->refresh_token:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "last_login_time"

    iget-wide v4, v0, Lcom/bsgamesdk/android/model/UserParcelable;->last_login_time:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_ad

    :cond_219
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "result"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "error_msg"

    const-string v2, "\u7528\u6237\u672a\u767b\u5f55\u6216\u767b\u5f55\u5df2\u8d85\u65f6"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "error_code"

    const/16 v2, 0xbba

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_235
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_235} :catch_238

    move-result-object v0

    goto/16 :goto_ad

    :catch_238
    move-exception v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_23e
    const-string v0, "result"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    const-string v2, "\u7528\u6237\u672a\u767b\u5f55\u6216\u767b\u5f55\u5df2\u8d85\u65f6"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    const/16 v2, 0xbba

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_252
    .catch Ljava/lang/Exception; {:try_start_23e .. :try_end_252} :catch_258

    :goto_252
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_ad

    :catch_258
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_252

    :catch_25d
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    goto/16 :goto_156

    :catch_262
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto/16 :goto_138

    :catch_267
    move-exception v1

    goto/16 :goto_104

    :catch_26a
    move-exception v0

    goto/16 :goto_d8

    :catch_26d
    move-exception v2

    goto/16 :goto_c0

    :cond_270
    move-object v0, v2

    goto/16 :goto_ad
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p0, p1}, Lcom/bsgamesdk/android/activity/LoadingActivity;->a(Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_d
.end method
