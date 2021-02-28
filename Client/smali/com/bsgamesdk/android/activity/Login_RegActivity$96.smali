.class Lcom/bsgamesdk/android/activity/Login_RegActivity$96;
.super Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->b(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$96;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {p0, p2}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/os/Bundle;)V
    .registers 16

    const/16 v4, 0xc

    const/4 v13, 0x1

    const-string v1, ""

    const-string v0, ""

    const-string v2, "e_code"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v2, "message"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :try_start_14
    const-string v2, "limit_alert_message"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_19} :catch_23b

    move-result-object v1

    :goto_1a
    :try_start_1a
    const-string v2, "openId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1f} :catch_238

    move-result-object v0

    :goto_20
    const v2, 0x7a121

    if-ne v10, v2, :cond_37

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$96;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ap(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_36
    return-void

    :cond_37
    const v2, 0x7a13f

    if-ne v10, v2, :cond_d4

    :cond_3c
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$96;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v12, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$96;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$96;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

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

    invoke-static {v12, v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/api/h;)Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$96;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->at(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$96;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->A(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/bsgamesdk/android/api/h;->p:Ljava/lang/String;

    move v1, v13

    move v3, v10

    move-object v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "code"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "result"

    const-string v1, "1"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "account"

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$96;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->A(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    invoke-interface {v6, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "actionname"

    const-string v1, "login"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postion"

    const-string v1, "doAppleLoginSubmit"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/h;->k:Ljava/lang/String;

    sget-object v1, Lcom/bsgamesdk/android/api/h;->p:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const-string v2, "Login_RegActivity"

    const-string v3, "login"

    const-string v4, ""

    const-string v5, "1"

    move v1, v13

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_36

    :cond_d4
    const v2, 0x7a142

    if-ne v10, v2, :cond_123

    :try_start_d9
    sget-object v0, Lcom/bsgamesdk/android/api/b;->y:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_e5
    .catch Ljava/lang/Throwable; {:try_start_d9 .. :try_end_e5} :catch_11f

    :goto_e5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ed

    sget-object v0, Lcom/bsgamesdk/android/api/b;->A:Ljava/lang/String;

    :cond_ed
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput v4, v2, Landroid/os/Message;->what:I

    :try_start_f4
    const-string v3, "%1%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_fc
    .catch Ljava/lang/Throwable; {:try_start_f4 .. :try_end_fc} :catch_235

    :goto_fc
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$96;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ap(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$96;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->b(Lcom/bsgamesdk/android/activity/Login_RegActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36

    :catch_11f
    move-exception v0

    sget-object v0, Lcom/bsgamesdk/android/api/b;->A:Ljava/lang/String;

    goto :goto_e5

    :cond_123
    const v2, 0x7a143

    if-ne v10, v2, :cond_172

    :try_start_128
    sget-object v0, Lcom/bsgamesdk/android/api/b;->y:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_134
    .catch Ljava/lang/Throwable; {:try_start_128 .. :try_end_134} :catch_16e

    :goto_134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13c

    sget-object v0, Lcom/bsgamesdk/android/api/b;->B:Ljava/lang/String;

    :cond_13c
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput v4, v2, Landroid/os/Message;->what:I

    :try_start_143
    const-string v3, "%1%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_14b
    .catch Ljava/lang/Throwable; {:try_start_143 .. :try_end_14b} :catch_232

    :goto_14b
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$96;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ap(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$96;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->b(Lcom/bsgamesdk/android/activity/Login_RegActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36

    :catch_16e
    move-exception v0

    sget-object v0, Lcom/bsgamesdk/android/api/b;->B:Ljava/lang/String;

    goto :goto_134

    :cond_172
    const v1, 0x7a145

    if-ne v10, v1, :cond_1bf

    :try_start_177
    sget-object v0, Lcom/bsgamesdk/android/api/b;->y:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_183
    .catch Ljava/lang/Throwable; {:try_start_177 .. :try_end_183} :catch_1bb

    :goto_183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18b

    sget-object v0, Lcom/bsgamesdk/android/api/b;->F:Ljava/lang/String;

    :cond_18b
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v4, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v13, v1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$96;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ap(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$96;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->b(Lcom/bsgamesdk/android/activity/Login_RegActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36

    :catch_1bb
    move-exception v0

    sget-object v0, Lcom/bsgamesdk/android/api/b;->F:Ljava/lang/String;

    goto :goto_183

    :cond_1bf
    const v1, 0x7a146

    if-ne v10, v1, :cond_20c

    :try_start_1c4
    sget-object v0, Lcom/bsgamesdk/android/api/b;->y:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1d0
    .catch Ljava/lang/Throwable; {:try_start_1c4 .. :try_end_1d0} :catch_208

    :goto_1d0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d8

    sget-object v0, Lcom/bsgamesdk/android/api/b;->G:Ljava/lang/String;

    :cond_1d8
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v4, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v13, v1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$96;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ap(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$96;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->b(Lcom/bsgamesdk/android/activity/Login_RegActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36

    :catch_208
    move-exception v0

    sget-object v0, Lcom/bsgamesdk/android/api/b;->G:Ljava/lang/String;

    goto :goto_1d0

    :cond_20c
    const v1, 0x7a161

    if-ne v10, v1, :cond_3c

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$96;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v1

    if-nez v1, :cond_223

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$96;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    new-instance v2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-direct {v2}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;-><init>()V

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    :cond_223
    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$96;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v1

    iput-object v0, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->open_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$96;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->aI(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    goto/16 :goto_36

    :catch_232
    move-exception v0

    goto/16 :goto_14b

    :catch_235
    move-exception v0

    goto/16 :goto_fc

    :catch_238
    move-exception v2

    goto/16 :goto_20

    :catch_23b
    move-exception v2

    goto/16 :goto_1a
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "auth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_c

    :goto_9
    if-nez v0, :cond_f

    :goto_b
    return-void

    :catch_c
    move-exception v0

    move-object v0, v1

    goto :goto_9

    :cond_f
    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$96;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$96;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->j(Lcom/bsgamesdk/android/activity/Login_RegActivity;I)V

    goto :goto_b
.end method
