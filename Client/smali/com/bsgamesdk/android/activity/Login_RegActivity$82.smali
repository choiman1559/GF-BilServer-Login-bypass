.class Lcom/bsgamesdk/android/activity/Login_RegActivity$82;
.super Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->c(Lcom/bsgamesdk/android/model/CaptchModel;)V
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

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {p0, p2}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/os/Bundle;)V
    .registers 16

    const/16 v5, 0x15b3

    const/16 v4, 0xc

    const/4 v13, 0x1

    const-string v0, ""

    const-string v1, "e_code"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v1, "message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :try_start_14
    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, v1, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f:Ljava/util/Map;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->A(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "need_captch"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_27} :catch_24e

    :goto_27
    :try_start_27
    const-string v1, "limit_alert_message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2c} :catch_45

    move-result-object v0

    move-object v1, v0

    :goto_2e
    const v0, 0x7a121

    if-ne v10, v0, :cond_48

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ap(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_44
    return-void

    :catch_45
    move-exception v1

    move-object v1, v0

    goto :goto_2e

    :cond_48
    const v0, 0x7a13f

    if-ne v10, v0, :cond_f7

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ap(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5f
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v12, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

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

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->at(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->A(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/bsgamesdk/android/api/h;->m:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->A(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    invoke-interface {v6, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "actionname"

    const-string v1, "login"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postion"

    const-string v1, "loginFail"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/h;->k:Ljava/lang/String;

    sget-object v1, Lcom/bsgamesdk/android/api/h;->m:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const-string v2, "Login_RegActivity"

    const-string v3, "login"

    const-string v4, ""

    const-string v5, "1"

    move v1, v13

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_44

    :cond_f7
    const v0, 0x30d40

    if-ne v10, v0, :cond_104

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(ZI)V

    goto/16 :goto_44

    :cond_104
    const v0, 0x30d41

    if-ne v10, v0, :cond_110

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-virtual {v0, v13, v5}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(ZI)V

    goto/16 :goto_44

    :cond_110
    const v0, 0x7a142

    if-ne v10, v0, :cond_15f

    :try_start_115
    sget-object v0, Lcom/bsgamesdk/android/api/b;->y:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_121
    .catch Ljava/lang/Throwable; {:try_start_115 .. :try_end_121} :catch_15b

    :goto_121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_129

    sget-object v0, Lcom/bsgamesdk/android/api/b;->A:Ljava/lang/String;

    :cond_129
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput v4, v2, Landroid/os/Message;->what:I

    :try_start_130
    const-string v3, "%1%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_138
    .catch Ljava/lang/Throwable; {:try_start_130 .. :try_end_138} :catch_24b

    :goto_138
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ap(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

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

    goto/16 :goto_44

    :catch_15b
    move-exception v0

    sget-object v0, Lcom/bsgamesdk/android/api/b;->A:Ljava/lang/String;

    goto :goto_121

    :cond_15f
    const v0, 0x7a143

    if-ne v10, v0, :cond_1ae

    :try_start_164
    sget-object v0, Lcom/bsgamesdk/android/api/b;->y:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_170
    .catch Ljava/lang/Throwable; {:try_start_164 .. :try_end_170} :catch_1aa

    :goto_170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_178

    sget-object v0, Lcom/bsgamesdk/android/api/b;->B:Ljava/lang/String;

    :cond_178
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput v4, v2, Landroid/os/Message;->what:I

    :try_start_17f
    const-string v3, "%1%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_187
    .catch Ljava/lang/Throwable; {:try_start_17f .. :try_end_187} :catch_248

    :goto_187
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ap(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

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

    goto/16 :goto_44

    :catch_1aa
    move-exception v0

    sget-object v0, Lcom/bsgamesdk/android/api/b;->B:Ljava/lang/String;

    goto :goto_170

    :cond_1ae
    const v0, 0x7a145

    if-ne v10, v0, :cond_1fb

    :try_start_1b3
    sget-object v0, Lcom/bsgamesdk/android/api/b;->y:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1bf
    .catch Ljava/lang/Throwable; {:try_start_1b3 .. :try_end_1bf} :catch_1f7

    :goto_1bf
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c7

    sget-object v0, Lcom/bsgamesdk/android/api/b;->F:Ljava/lang/String;

    :cond_1c7
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v4, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v13, v1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ap(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

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

    goto/16 :goto_44

    :catch_1f7
    move-exception v0

    sget-object v0, Lcom/bsgamesdk/android/api/b;->F:Ljava/lang/String;

    goto :goto_1bf

    :cond_1fb
    const v0, 0x7a146

    if-ne v10, v0, :cond_5f

    :try_start_200
    sget-object v0, Lcom/bsgamesdk/android/api/b;->y:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_20c
    .catch Ljava/lang/Throwable; {:try_start_200 .. :try_end_20c} :catch_244

    :goto_20c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_214

    sget-object v0, Lcom/bsgamesdk/android/api/b;->G:Ljava/lang/String;

    :cond_214
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v4, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v13, v1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ap(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

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

    goto/16 :goto_44

    :catch_244
    move-exception v0

    sget-object v0, Lcom/bsgamesdk/android/api/b;->G:Ljava/lang/String;

    goto :goto_20c

    :catch_248
    move-exception v0

    goto/16 :goto_187

    :catch_24b
    move-exception v0

    goto/16 :goto_138

    :catch_24e
    move-exception v1

    goto/16 :goto_27
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f:Ljava/util/Map;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->A(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "need_captch"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_2e

    :goto_14
    :try_start_14
    const-string v0, "auth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1c} :catch_1f

    :goto_1c
    if-nez v0, :cond_22

    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    move-object v0, v1

    goto :goto_1c

    :cond_22
    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$82;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->j(Lcom/bsgamesdk/android/activity/Login_RegActivity;I)V

    goto :goto_1e

    :catch_2e
    move-exception v0

    goto :goto_14
.end method
