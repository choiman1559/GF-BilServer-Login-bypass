.class Lcom/bsgamesdk/android/activity/PaymentActivity$17;
.super Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/bsgamesdk/android/activity/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/PaymentActivity;Landroid/content/Context;Z)V
    .registers 4

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    iput-boolean p3, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->a:Z

    invoke-direct {p0, p2}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/os/Bundle;)V
    .registers 19

    invoke-static {}, Lcom/bsgamesdk/android/utils/k;->a()V

    :try_start_3
    const-string v1, "e_code"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v1, "message"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->j(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v1

    if-eqz v1, :cond_154

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->j(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->k(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v4}, Lcom/bsgamesdk/android/activity/PaymentActivity;->l(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->m(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v6}, Lcom/bsgamesdk/android/activity/PaymentActivity;->n(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v7}, Lcom/bsgamesdk/android/activity/PaymentActivity;->o(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v8}, Lcom/bsgamesdk/android/activity/PaymentActivity;->p(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v9}, Lcom/bsgamesdk/android/activity/PaymentActivity;->q(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v11}, Lcom/bsgamesdk/android/activity/PaymentActivity;->r(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "doGetStartCaptcha_failed"

    const-string v13, ""

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/bsgamesdk/android/activity/PaymentActivity;->s(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v1 .. v16}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v1, "result"

    const-string v2, "1"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "code"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message"

    invoke-interface {v7, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "total_fee"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->k(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "username"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->l(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "recharge_order_no"

    const-string v2, ""

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "role"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->m(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "game_money"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->n(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "out_trade_no"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->p(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "recharge_order_no"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->o(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "payMethod"

    const-string v2, ""

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "originMessage"

    const-string v2, ""

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "originCode"

    const-string v2, ""

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "subject"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->q(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "order_sign"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->r(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "product_id"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->s(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, ""

    const-string v4, "pay"

    const-string v5, ""

    const-string v6, "1"

    invoke-virtual/range {v1 .. v7}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_154
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_154} :catch_15c

    :cond_154
    :goto_154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->L(Lcom/bsgamesdk/android/activity/PaymentActivity;)V

    return-void

    :catch_15c
    move-exception v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;Z)V

    goto :goto_154
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 19

    if-eqz p1, :cond_14a

    const/4 v1, 0x1

    sput-boolean v1, Lcom/bsgamesdk/android/activity/PaymentActivity;->isPayCaptcha:Z

    const-string v1, ""

    sput-object v1, Lcom/bsgamesdk/android/activity/PaymentActivity;->orderId:Ljava/lang/String;

    const-string v1, "captchResult"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/bsgamesdk/android/model/b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->a:Z

    const/4 v4, 0x2

    const/16 v5, 0x15b3

    invoke-static {v2, v1, v3, v4, v5}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->goWebActivity(Landroid/app/Activity;Lcom/bsgamesdk/android/model/b;ZII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->j(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v1

    if-eqz v1, :cond_146

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->j(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->k(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v4}, Lcom/bsgamesdk/android/activity/PaymentActivity;->l(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->m(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v6}, Lcom/bsgamesdk/android/activity/PaymentActivity;->n(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v7}, Lcom/bsgamesdk/android/activity/PaymentActivity;->o(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v8}, Lcom/bsgamesdk/android/activity/PaymentActivity;->p(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v9}, Lcom/bsgamesdk/android/activity/PaymentActivity;->q(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x270f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v11}, Lcom/bsgamesdk/android/activity/PaymentActivity;->r(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "doGetStartCaptcha_success"

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/bsgamesdk/android/activity/PaymentActivity;->s(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v1 .. v16}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v1, "result"

    const-string v2, "1"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "code"

    const-string v2, "9999"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message"

    const-string v2, "doGetStartCaptcha_bundle_is_null"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "total_fee"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->k(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "username"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->l(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "recharge_order_no"

    const-string v2, ""

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "role"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->m(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "game_money"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->n(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "out_trade_no"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->p(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "recharge_order_no"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->o(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "payMethod"

    const-string v2, ""

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "originMessage"

    const-string v2, ""

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "originCode"

    const-string v2, ""

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "subject"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->q(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "order_sign"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->r(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "product_id"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->s(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, ""

    const-string v4, "pay"

    const-string v5, ""

    const-string v6, "1"

    invoke-virtual/range {v1 .. v7}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_146
    :goto_146
    invoke-static {}, Lcom/bsgamesdk/android/utils/k;->a()V

    return-void

    :cond_14a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->j(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v1

    if-eqz v1, :cond_26f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->j(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->k(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v4}, Lcom/bsgamesdk/android/activity/PaymentActivity;->l(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->m(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v6}, Lcom/bsgamesdk/android/activity/PaymentActivity;->n(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v7}, Lcom/bsgamesdk/android/activity/PaymentActivity;->o(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v8}, Lcom/bsgamesdk/android/activity/PaymentActivity;->p(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v9}, Lcom/bsgamesdk/android/activity/PaymentActivity;->q(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x270e

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v11}, Lcom/bsgamesdk/android/activity/PaymentActivity;->r(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "doGetStartCaptcha_bundle_is_null"

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/bsgamesdk/android/activity/PaymentActivity;->s(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v1 .. v16}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v1, "result"

    const-string v2, "1"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "code"

    const-string v2, "9998"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message"

    const-string v2, "doGetStartCaptcha_bundle_is_null"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "total_fee"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->k(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "username"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->l(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "recharge_order_no"

    const-string v2, ""

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "role"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->m(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "game_money"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->n(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "out_trade_no"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->p(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "recharge_order_no"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->o(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "payMethod"

    const-string v2, ""

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "originMessage"

    const-string v2, ""

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "originCode"

    const-string v2, ""

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "subject"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->q(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "order_sign"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->r(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "product_id"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->s(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, ""

    const-string v4, "pay"

    const-string v5, ""

    const-string v6, "1"

    invoke-virtual/range {v1 .. v7}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_26f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$17;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->L(Lcom/bsgamesdk/android/activity/PaymentActivity;)V

    goto/16 :goto_146
.end method
