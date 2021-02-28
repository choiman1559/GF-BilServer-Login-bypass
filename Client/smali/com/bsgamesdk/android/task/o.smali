.class public Lcom/bsgamesdk/android/task/o;
.super Lcom/bsgamesdk/android/task/d;


# instance fields
.field a:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/bsgamesdk/android/task/d;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const-string v0, "0"

    iput-object v0, p0, Lcom/bsgamesdk/android/task/o;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/task/o;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/os/Bundle;
    .registers 16

    const-wide/16 v12, 0x0

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/bsgamesdk/android/task/o;->d:Landroid/os/Bundle;

    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bsgamesdk/android/task/o;->d:Landroid/os/Bundle;

    const-string v1, "pwd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bsgamesdk/android/task/o;->d:Landroid/os/Bundle;

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/bsgamesdk/android/task/o;->d:Landroid/os/Bundle;

    const-string v1, "access_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/bsgamesdk/android/task/o;->d:Landroid/os/Bundle;

    const-string v1, "captchModel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/bsgamesdk/android/model/CaptchModel;

    :try_start_2d
    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/task/o;->c:Landroid/content/Context;

    invoke-interface/range {v0 .. v6}, Lcom/bsgamesdk/android/api/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/task/o;->d:Landroid/os/Bundle;

    const-string v7, "code"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bsgamesdk/android/task/o;->d:Landroid/os/Bundle;

    const-string v7, "auth"

    invoke-virtual {v1, v7, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->need_captch:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/task/o;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/task/o;->d:Landroid/os/Bundle;

    const-string v1, "need_captch"

    iget-object v7, p0, Lcom/bsgamesdk/android/task/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_2d .. :try_end_51} :catch_54
    .catch Lorg/apache/http/HttpException; {:try_start_2d .. :try_end_51} :catch_e6
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_51} :catch_149

    :goto_51
    iget-object v0, p0, Lcom/bsgamesdk/android/task/o;->d:Landroid/os/Bundle;

    :goto_53
    return-object v0

    :catch_54
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    iget v4, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    iget-object v5, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->newConfig:Lorg/json/JSONObject;

    if-eqz v5, :cond_80

    :try_start_5f
    iget-object v0, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->newConfig:Lorg/json/JSONObject;

    const-string v6, "rsaAuthMRsa"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/j;

    iget-object v6, p0, Lcom/bsgamesdk/android/task/o;->d:Landroid/os/Bundle;

    const-string v7, "rsaAuthMRsa"

    invoke-virtual {v6, v7, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_70} :catch_152

    :goto_70
    :try_start_70
    const-string v0, "need_captch"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/task/o;->a:Ljava/lang/String;
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_78} :catch_14f

    :goto_78
    :try_start_78
    const-string v0, "limit_alert_message"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/task/o;->e:Ljava/lang/String;
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_80} :catch_14c

    :cond_80
    :goto_80
    iget-object v0, p0, Lcom/bsgamesdk/android/task/o;->d:Landroid/os/Bundle;

    const-string v5, "need_captch"

    iget-object v6, p0, Lcom/bsgamesdk/android/task/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/task/o;->d:Landroid/os/Bundle;

    const-string v5, "limit_alert_message"

    iget-object v6, p0, Lcom/bsgamesdk/android/task/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0xea66

    if-eq v4, v0, :cond_9c

    const v0, 0xea65

    if-ne v4, v0, :cond_dd

    :cond_9c
    new-instance v0, Lcom/bsgamesdk/android/model/n;

    iget-object v5, p0, Lcom/bsgamesdk/android/task/o;->c:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/bsgamesdk/android/model/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/n;->c()Lcom/bsgamesdk/android/model/UserinfoCache;

    move-result-object v0

    iget-object v5, v0, Lcom/bsgamesdk/android/model/UserinfoCache;->mUserinfoList:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_dd

    iget-object v0, v0, Lcom/bsgamesdk/android/model/UserinfoCache;->mUserinfoList:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/UserParcelable;

    if-eqz v0, :cond_dd

    iget-wide v6, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    cmp-long v2, v6, v12

    if-lez v2, :cond_dd

    iget-object v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->password:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_dd

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mergeMyUserinfoCacheWithUser(Lcom/bsgamesdk/android/model/UserParcelable;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/task/o;->d:Landroid/os/Bundle;

    const-string v2, "code"

    invoke-virtual {v1, v2, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bsgamesdk/android/task/o;->d:Landroid/os/Bundle;

    const-string v2, "auth"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/task/o;->d:Landroid/os/Bundle;

    goto/16 :goto_53

    :cond_dd
    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/bsgamesdk/android/task/o;->a(ILjava/lang/String;)V

    goto/16 :goto_51

    :catch_e6
    move-exception v0

    move-object v1, v0

    :goto_e8
    new-instance v0, Lcom/bsgamesdk/android/model/n;

    iget-object v7, p0, Lcom/bsgamesdk/android/task/o;->c:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/bsgamesdk/android/model/n;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_13f

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/n;->c()Lcom/bsgamesdk/android/model/UserinfoCache;

    move-result-object v0

    if-eqz v0, :cond_13f

    iget-object v7, v0, Lcom/bsgamesdk/android/model/UserinfoCache;->mUserinfoList:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_13f

    iget-object v0, v0, Lcom/bsgamesdk/android/model/UserinfoCache;->mUserinfoList:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/UserParcelable;

    if-eqz v0, :cond_13f

    iget-wide v8, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    cmp-long v2, v8, v12

    if-lez v2, :cond_13f

    iget-object v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->password:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13f

    invoke-static {}, Lcom/bsgamesdk/android/task/v;->a()V

    new-instance v1, Lcom/bsgamesdk/android/api/n;

    iget-object v2, p0, Lcom/bsgamesdk/android/task/o;->c:Landroid/content/Context;

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/bsgamesdk/android/api/n;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/model/UserParcelable;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)V

    sput-object v1, Lcom/bsgamesdk/android/task/v;->b:Ljava/lang/Thread;

    sget-object v1, Lcom/bsgamesdk/android/task/v;->b:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mergeMyUserinfoCacheWithUser(Lcom/bsgamesdk/android/model/UserParcelable;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/task/o;->d:Landroid/os/Bundle;

    const-string v2, "code"

    invoke-virtual {v1, v2, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bsgamesdk/android/task/o;->d:Landroid/os/Bundle;

    const-string v2, "auth"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/task/o;->d:Landroid/os/Bundle;

    goto/16 :goto_53

    :cond_13f
    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    const-string v0, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-virtual {p0, v10, v0}, Lcom/bsgamesdk/android/task/o;->a(ILjava/lang/String;)V

    goto/16 :goto_51

    :catch_149
    move-exception v0

    move-object v1, v0

    goto :goto_e8

    :catch_14c
    move-exception v0

    goto/16 :goto_80

    :catch_14f
    move-exception v0

    goto/16 :goto_78

    :catch_152
    move-exception v0

    goto/16 :goto_70
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/task/o;->a([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
