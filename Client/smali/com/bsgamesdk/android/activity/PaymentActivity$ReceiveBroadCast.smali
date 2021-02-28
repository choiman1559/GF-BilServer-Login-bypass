.class public Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/activity/PaymentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReceiveBroadCast"
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/PaymentActivity;


# direct methods
.method public constructor <init>(Lcom/bsgamesdk/android/activity/PaymentActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 21

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_4c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->c(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    const/16 v2, -0xa

    const-string v14, ""

    :try_start_12
    const-string v1, "wei_pay_result"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v1, "wei_pay_result_message"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_26} :catch_4d

    move-object v14, v1

    move/from16 v17, v2

    :goto_29
    packed-switch v17, :pswitch_data_314

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v2, "\u5fae\u4fe1\u652f\u4ed8\u672a\u77e5\u9519\u8bef"

    const/16 v3, 0x3e9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v14}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onWeiPayFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return-void

    :catch_4d
    move-exception v1

    move v1, v2

    move/from16 v17, v1

    goto :goto_29

    :pswitch_52
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-virtual {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onWeiPaySuccess()V

    goto :goto_4c

    :pswitch_5a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->j(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v1

    if-eqz v1, :cond_1a7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->j(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->k(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v4}, Lcom/bsgamesdk/android/activity/PaymentActivity;->l(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->m(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v6}, Lcom/bsgamesdk/android/activity/PaymentActivity;->n(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v7}, Lcom/bsgamesdk/android/activity/PaymentActivity;->o(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v8}, Lcom/bsgamesdk/android/activity/PaymentActivity;->p(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v9}, Lcom/bsgamesdk/android/activity/PaymentActivity;->q(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3e9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v11}, Lcom/bsgamesdk/android/activity/PaymentActivity;->r(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\u5fae\u4fe1\u652f\u4ed8\u5931\u8d25"

    const-string v13, ""

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

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

    const-string v2, "1001"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message"

    const-string v2, "\u5fae\u4fe1\u652f\u4ed8\u5931\u8d25"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "total_fee"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->k(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "username"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->l(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "out_trade_no"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->p(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "subject"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->q(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "recharge_order_no"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->o(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "subject"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->q(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "product_id"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->s(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "role"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->m(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "game_money"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->n(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "originMessage"

    invoke-interface {v7, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "code"

    const-string v2, "9999"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "originCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "order_sign"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->r(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

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

    :cond_1a7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Lcom/bsgamesdk/android/activity/PaymentActivity;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->b(Lcom/bsgamesdk/android/activity/PaymentActivity;I)V

    goto/16 :goto_4c

    :pswitch_1b9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v2, "\u5fae\u4fe1\u53d6\u6d88\u652f\u4ed8"

    const/16 v3, 0x3e9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v14}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onWeiPayFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4c

    :pswitch_1db
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->j(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v1

    if-eqz v1, :cond_301

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->j(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->k(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v4}, Lcom/bsgamesdk/android/activity/PaymentActivity;->l(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->m(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v6}, Lcom/bsgamesdk/android/activity/PaymentActivity;->n(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v7}, Lcom/bsgamesdk/android/activity/PaymentActivity;->o(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v8}, Lcom/bsgamesdk/android/activity/PaymentActivity;->p(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v9}, Lcom/bsgamesdk/android/activity/PaymentActivity;->q(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3e9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v11}, Lcom/bsgamesdk/android/activity/PaymentActivity;->r(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\u5fae\u4fe1\u652f\u4ed8\u51fa\u73b0\u672a\u77e5\u9519\u8bef"

    const-string v13, ""

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

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

    const-string v2, "1001"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message"

    const-string v2, "\u5fae\u4fe1\u652f\u4ed8\u51fa\u73b0\u672a\u77e5\u9519\u8bef"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "total_fee"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->k(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "username"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->l(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "recharge_order_no"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->o(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "role"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->m(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "game_money"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->n(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "out_trade_no"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->p(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "payMethod"

    const-string v2, ""

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "originMessage"

    invoke-interface {v7, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "originCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "subject"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->q(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

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

    :cond_301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Lcom/bsgamesdk/android/activity/PaymentActivity;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->b(Lcom/bsgamesdk/android/activity/PaymentActivity;I)V

    goto/16 :goto_4c

    nop

    :pswitch_data_314
    .packed-switch -0x3
        :pswitch_1db
        :pswitch_1b9
        :pswitch_5a
        :pswitch_52
    .end packed-switch
.end method
