.class Lcom/bsgamesdk/android/activity/TouristActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/TouristActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/TouristActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/TouristActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$7;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/TouristActivity$7;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->f(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "authpay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_119

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/TouristActivity$7;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->o(Lcom/bsgamesdk/android/activity/TouristActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/TouristActivity$7;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/TouristActivity;->g(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/TouristActivity$7;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v4}, Lcom/bsgamesdk/android/activity/TouristActivity;->h(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/activity/TouristActivity$7;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v5}, Lcom/bsgamesdk/android/activity/TouristActivity;->i(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/activity/TouristActivity$7;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v6}, Lcom/bsgamesdk/android/activity/TouristActivity;->j(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bsgamesdk/android/activity/TouristActivity$7;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v8}, Lcom/bsgamesdk/android/activity/TouristActivity;->k(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bsgamesdk/android/activity/TouristActivity$7;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v9}, Lcom/bsgamesdk/android/activity/TouristActivity;->l(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1771

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bsgamesdk/android/activity/TouristActivity$7;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v11}, Lcom/bsgamesdk/android/activity/TouristActivity;->m(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\u652f\u4ed8\u5b9e\u540d\u8ba4\u8bc1\u53d6\u6d88"

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/TouristActivity$7;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/bsgamesdk/android/activity/TouristActivity;->n(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v1 .. v16}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v1, "result"

    const-string v2, "1"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "code"

    const-string v2, "6001"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message"

    const-string v2, "\u652f\u4ed8\u5b9e\u540d\u8ba4\u8bc1\u53d6\u6d88"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "total_fee"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity$7;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/TouristActivity;->g(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "username"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity$7;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/TouristActivity;->h(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "recharge_order_no"

    const-string v2, ""

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "role"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity$7;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/TouristActivity;->i(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "game_money"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity$7;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/TouristActivity;->j(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "out_trade_no"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity$7;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/TouristActivity;->k(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "payMethod"

    const-string v2, ""

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "originMessage"

    const-string v2, ""

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "originCode"

    const-string v2, "-9999"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "subject"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity$7;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/TouristActivity;->l(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "product_id"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity$7;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/TouristActivity;->n(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;

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

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/TouristActivity$7;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->p(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    :goto_118
    return-void

    :cond_119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/TouristActivity$7;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->p(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    goto :goto_118
.end method
