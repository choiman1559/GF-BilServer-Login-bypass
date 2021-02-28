.class public Lcom/bsgamesdk/android/activity/PrePayActivity;
.super Lcom/bsgamesdk/android/activity/BaseActivity;


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:I

.field private n:J

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->w:Z

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/PrePayActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/activity/PrePayActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "<font color=\'#23aee5\'>"

    const-string v3, "</font>"

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    :goto_21
    array-length v5, v4

    if-ge v0, v5, :cond_3f

    rem-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_36

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v5, v4, v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_36
    aget-object v5, v4, v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_33

    :cond_3c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private a()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->w:Z

    new-instance v1, Lcom/bsgamesdk/android/helper/b;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/helper/b;-><init>(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/helper/b;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->finish()V

    return-void
.end method

.method private a(I)V
    .registers 20

    new-instance v2, Lcom/bsgamesdk/android/api/h;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->n:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->q:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->r:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->u:Ljava/lang/String;

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->v:Ljava/lang/String;

    move-object/from16 v17, v0

    move/from16 v11, p1

    invoke-virtual/range {v2 .. v17}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v2, "result"

    const-string v3, "1"

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "code"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "message"

    const-string v3, "uid_not_same"

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "total_fee"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->q:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "username"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->o:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "recharge_order_no"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "role"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->p:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "game_money"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->r:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "out_trade_no"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->s:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "payMethod"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "originMessage"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "originCode"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "subject"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->t:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "order_sign"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->u:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "product_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->v:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, "pay"

    const-string v6, ""

    const-string v7, "1"

    invoke-virtual/range {v2 .. v8}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_f9
    const-string v2, "result"

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "error_code"

    const/16 v4, 0x3e8

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "error_msg"

    const-string v4, "\u7528\u6237\u53d6\u6d88\u4ea4\u6613"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_10d} :catch_113

    :goto_10d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/bsgamesdk/android/activity/PrePayActivity;->a(Lorg/json/JSONObject;)V

    return-void

    :catch_113
    move-exception v2

    invoke-static {v2}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_10d
.end method

.method private a(ILjava/lang/String;)V
    .registers 21

    new-instance v2, Lcom/bsgamesdk/android/api/h;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->n:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->q:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->r:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->u:Ljava/lang/String;

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->v:Ljava/lang/String;

    move-object/from16 v17, v0

    move/from16 v11, p1

    move-object/from16 v13, p2

    invoke-virtual/range {v2 .. v17}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v2, "result"

    const-string v3, "1"

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "code"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "message"

    move-object/from16 v0, p2

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "total_fee"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->q:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "username"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->o:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "recharge_order_no"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "role"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->p:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "game_money"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->r:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "out_trade_no"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->s:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "payMethod"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "originMessage"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "originCode"

    const-string v3, "-9999"

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "subject"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->t:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "product_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PrePayActivity;->v:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, "pay"

    const-string v6, ""

    const-string v7, "1"

    invoke-virtual/range {v2 .. v8}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_f0
    const-string v2, "result"

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "error_code"

    const/16 v4, 0x3e8

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "error_msg"

    move-object/from16 v0, p2

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_104} :catch_10a

    :goto_104
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/bsgamesdk/android/activity/PrePayActivity;->a(Lorg/json/JSONObject;)V

    return-void

    :catch_10a
    move-exception v2

    invoke-static {v2}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_104
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/PrePayActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/activity/PrePayActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/PrePayActivity;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bsgamesdk/android/activity/PrePayActivity;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/bsgamesdk/android/activity/PrePayActivity;)I
    .registers 2

    iget v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->q:I

    return v0
.end method

.method static synthetic c(Lcom/bsgamesdk/android/activity/PrePayActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->j:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic n(Lcom/bsgamesdk/android/activity/PrePayActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->a()V

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)V
    .registers 5

    if-eqz p1, :cond_11

    sget-object v0, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    iget v1, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    sget-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    iget v1, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :try_start_1f
    monitor-enter v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_20} :catch_2e

    :try_start_20
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_2b

    :goto_24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->w:Z

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->finish()V

    return-void

    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_24
.end method

.method public doCheckPayCondition()V
    .registers 5

    new-instance v0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/activity/PrePayActivity$1;-><init>(Lcom/bsgamesdk/android/activity/PrePayActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/task/d;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    const/16 v0, 0x1771

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->a(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/bsgamesdk/android/BSGameSdk;->getInstance()Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->finish()V

    :cond_c
    :goto_c
    return-void

    :cond_d
    const-string v0, ""

    sput-object v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->orderId:Ljava/lang/String;

    sget v0, Lcom/bsgamesdk/android/utils/f$e;->B:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->a:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->a:Landroid/os/Bundle;

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prePay"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->a:Landroid/os/Bundle;

    const-string v1, "request"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/helper/PayRequest;

    if-eqz v0, :cond_66

    iget-wide v2, v0, Lcom/bsgamesdk/android/helper/PayRequest;->uid:J

    iput-wide v2, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->n:J

    iget-object v1, v0, Lcom/bsgamesdk/android/helper/PayRequest;->username:Ljava/lang/String;

    iput-object v1, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->o:Ljava/lang/String;

    iget-object v1, v0, Lcom/bsgamesdk/android/helper/PayRequest;->role:Ljava/lang/String;

    iput-object v1, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->p:Ljava/lang/String;

    iget v1, v0, Lcom/bsgamesdk/android/helper/PayRequest;->money:I

    iput v1, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->q:I

    iget v1, v0, Lcom/bsgamesdk/android/helper/PayRequest;->game_money:I

    iput v1, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->r:I

    iget-object v1, v0, Lcom/bsgamesdk/android/helper/PayRequest;->out_trade_no:Ljava/lang/String;

    iput-object v1, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->s:Ljava/lang/String;

    iget-object v1, v0, Lcom/bsgamesdk/android/helper/PayRequest;->item_name:Ljava/lang/String;

    iput-object v1, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->t:Ljava/lang/String;

    iget-object v1, v0, Lcom/bsgamesdk/android/helper/PayRequest;->order_sign:Ljava/lang/String;

    iput-object v1, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->u:Ljava/lang/String;

    iget-object v0, v0, Lcom/bsgamesdk/android/helper/PayRequest;->product_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->v:Ljava/lang/String;

    :cond_66
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->a:Landroid/os/Bundle;

    const-string v1, "CallingPid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->m:I

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->co:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->c:Landroid/view/View;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->ck:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->d:Landroid/view/View;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->cl:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->b:Landroid/content/Context;

    const-string v1, "bsgamesdk_antiIndulgenceLayout"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->f:Landroid/view/View;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->af:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->g:Landroid/view/View;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->ae:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->h:Landroid/view/View;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->ah:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->b:Landroid/content/Context;

    const-string v1, "bagamesdk_anti_submit"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->b:Landroid/content/Context;

    const-string v1, "bsgamesdk_anti_firsttext"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->b:Landroid/content/Context;

    const-string v1, "bsgamesdk_tv_unpermitted"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->l:Landroid/widget/TextView;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->ag:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->b:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "\u6570\u636e\u53d1\u9001\u4e2d\uff0c\u8bf7\u7a0d\u5019..."

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/utils/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->doCheckPayCondition()V

    goto/16 :goto_c
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;->onDestroy()V

    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity;->w:Z

    if-eqz v0, :cond_c

    const/16 v0, 0x1771

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->a(I)V

    :cond_c
    return-void
.end method
