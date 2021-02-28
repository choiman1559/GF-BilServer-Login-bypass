.class Lcom/bsgamesdk/android/BSGameSdk$15;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/BSGameSdk;->pay(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;

.field final synthetic n:Lcom/bsgamesdk/android/BSGameSdk;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/BSGameSdk;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;)V
    .registers 16

    iput-object p1, p0, Lcom/bsgamesdk/android/BSGameSdk$15;->n:Lcom/bsgamesdk/android/BSGameSdk;

    iput-wide p2, p0, Lcom/bsgamesdk/android/BSGameSdk$15;->a:J

    iput-object p4, p0, Lcom/bsgamesdk/android/BSGameSdk$15;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/bsgamesdk/android/BSGameSdk$15;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/bsgamesdk/android/BSGameSdk$15;->d:Ljava/lang/String;

    iput p7, p0, Lcom/bsgamesdk/android/BSGameSdk$15;->e:I

    iput p8, p0, Lcom/bsgamesdk/android/BSGameSdk$15;->f:I

    iput-object p9, p0, Lcom/bsgamesdk/android/BSGameSdk$15;->g:Ljava/lang/String;

    iput-object p10, p0, Lcom/bsgamesdk/android/BSGameSdk$15;->h:Ljava/lang/String;

    iput-object p11, p0, Lcom/bsgamesdk/android/BSGameSdk$15;->i:Ljava/lang/String;

    iput-object p12, p0, Lcom/bsgamesdk/android/BSGameSdk$15;->j:Ljava/lang/String;

    iput-object p13, p0, Lcom/bsgamesdk/android/BSGameSdk$15;->k:Ljava/lang/String;

    iput-object p14, p0, Lcom/bsgamesdk/android/BSGameSdk$15;->l:Ljava/lang/String;

    iput-object p15, p0, Lcom/bsgamesdk/android/BSGameSdk$15;->m:Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    sget-object v2, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->n:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v3}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bsgamesdk/android/dynamic/IUtils;->isConnectingToInternet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_119

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->n:Lcom/bsgamesdk/android/BSGameSdk;

    new-instance v3, Lcom/bsgamesdk/android/helper/b;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->n:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v4}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bsgamesdk/android/helper/b;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->a:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->e:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->f:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->l:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, ""

    invoke-virtual/range {v3 .. v17}, Lcom/bsgamesdk/android/helper/b;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->n:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->b(Lcom/bsgamesdk/android/BSGameSdk;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_76

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->n:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->b(Lcom/bsgamesdk/android/BSGameSdk;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8f

    :cond_76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->m:Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->g:Ljava/lang/String;

    new-instance v4, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    const/16 v5, 0x7d1

    const/16 v6, 0x7d1

    invoke-static {v6}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;->onError(Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V

    :goto_8e
    return-void

    :cond_8f
    :try_start_8f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->n:Lcom/bsgamesdk/android/BSGameSdk;

    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->n:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v4}, Lcom/bsgamesdk/android/BSGameSdk;->b(Lcom/bsgamesdk/android/BSGameSdk;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->n:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_eb

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->n:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "bs_trade_no"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->m:Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->g:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cd
    .catch Lorg/json/JSONException; {:try_start_8f .. :try_end_cd} :catch_ce

    goto :goto_8e

    :catch_ce
    move-exception v2

    invoke-static {v2}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->m:Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->g:Ljava/lang/String;

    new-instance v4, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    const/16 v5, 0x7d1

    const/16 v6, 0x7d1

    invoke-static {v6}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;->onError(Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V

    goto :goto_8e

    :cond_eb
    :try_start_eb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->m:Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->g:Ljava/lang/String;

    new-instance v4, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->n:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v5}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "error_code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->n:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v6}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "error_msg"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;->onFailed(Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V
    :try_end_117
    .catch Lorg/json/JSONException; {:try_start_eb .. :try_end_117} :catch_ce

    goto/16 :goto_8e

    :cond_119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/BSGameSdk$15;->n:Lcom/bsgamesdk/android/BSGameSdk;

    new-instance v3, Lcom/bsgamesdk/android/BSGameSdk$15$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/bsgamesdk/android/BSGameSdk$15$1;-><init>(Lcom/bsgamesdk/android/BSGameSdk$15;)V

    invoke-virtual {v2, v3}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V

    goto/16 :goto_8e
.end method
