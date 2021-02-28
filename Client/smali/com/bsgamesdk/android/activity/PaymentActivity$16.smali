.class Lcom/bsgamesdk/android/activity/PaymentActivity$16;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/activity/PaymentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/PaymentActivity;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$16;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 19

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_14e

    :goto_7
    return-void

    :pswitch_8
    new-instance v2, Lcom/alipay/android/app/lib/Result;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-direct {v2, v1}, Lcom/alipay/android/app/lib/Result;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lcom/alipay/android/app/lib/Result;->getResultStatus()Ljava/lang/String;

    move-result-object v15

    const-string v1, "9000"

    invoke-static {v15, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$16;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v2, "quickpay_alipay"

    invoke-virtual {v1, v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onSuccess(Ljava/lang/String;)Z

    goto :goto_7

    :cond_29
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$16;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->j(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v1

    if-eqz v1, :cond_13c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$16;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->j(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$16;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->k(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$16;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v4}, Lcom/bsgamesdk/android/activity/PaymentActivity;->l(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$16;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->m(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$16;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v6}, Lcom/bsgamesdk/android/activity/PaymentActivity;->n(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$16;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v7}, Lcom/bsgamesdk/android/activity/PaymentActivity;->o(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$16;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v8}, Lcom/bsgamesdk/android/activity/PaymentActivity;->p(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$16;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v9}, Lcom/bsgamesdk/android/activity/PaymentActivity;->q(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1645

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$16;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v11}, Lcom/bsgamesdk/android/activity/PaymentActivity;->r(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\u652f\u4ed8\u5b9d\u4ea4\u6613\u5931\u8d25"

    const-string v13, "quickpay_alipay"

    const-string v14, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$16;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

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

    const-string v2, "5701"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message"

    const-string v2, "\u652f\u4ed8\u5b9d\u4ea4\u6613\u5931\u8d25"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "total_fee"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$16;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->k(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "username"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$16;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->l(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "recharge_order_no"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$16;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->o(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "role"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$16;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->m(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "game_money"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$16;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->n(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "out_trade_no"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$16;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->p(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "payMethod"

    const-string v2, "quickpay_alipay"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "originMessage"

    const-string v2, ""

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "originCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "subject"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$16;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

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

    :cond_13c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$16;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$16;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Lcom/bsgamesdk/android/activity/PaymentActivity;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->b(Lcom/bsgamesdk/android/activity/PaymentActivity;I)V

    goto/16 :goto_7

    :pswitch_data_14e
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
