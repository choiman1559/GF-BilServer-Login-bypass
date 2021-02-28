.class Lcom/bsgamesdk/android/BSGameSdk$16;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/BSGameSdk;->payV2(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;)V
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

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;

.field final synthetic g:Lcom/bsgamesdk/android/BSGameSdk;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/BSGameSdk;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;)V
    .registers 9

    iput-object p1, p0, Lcom/bsgamesdk/android/BSGameSdk$16;->g:Lcom/bsgamesdk/android/BSGameSdk;

    iput-wide p2, p0, Lcom/bsgamesdk/android/BSGameSdk$16;->a:J

    iput-object p4, p0, Lcom/bsgamesdk/android/BSGameSdk$16;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/bsgamesdk/android/BSGameSdk$16;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/bsgamesdk/android/BSGameSdk$16;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/bsgamesdk/android/BSGameSdk$16;->e:Ljava/lang/String;

    iput-object p8, p0, Lcom/bsgamesdk/android/BSGameSdk$16;->f:Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    sget-object v2, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->g:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v3}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bsgamesdk/android/dynamic/IUtils;->isConnectingToInternet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_109

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->g:Lcom/bsgamesdk/android/BSGameSdk;

    new-instance v3, Lcom/bsgamesdk/android/helper/b;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->g:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v4}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bsgamesdk/android/helper/b;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->a:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->d:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->e:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v3 .. v17}, Lcom/bsgamesdk/android/helper/b;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->g:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->b(Lcom/bsgamesdk/android/BSGameSdk;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_66

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->g:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->b(Lcom/bsgamesdk/android/BSGameSdk;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7f

    :cond_66
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->f:Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->e:Ljava/lang/String;

    new-instance v4, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    const/16 v5, 0x7d1

    const/16 v6, 0x7d1

    invoke-static {v6}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;->onError(Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V

    :goto_7e
    return-void

    :cond_7f
    :try_start_7f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->g:Lcom/bsgamesdk/android/BSGameSdk;

    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->g:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v4}, Lcom/bsgamesdk/android/BSGameSdk;->b(Lcom/bsgamesdk/android/BSGameSdk;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->g:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_db

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->g:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "bs_trade_no"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->f:Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->e:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bd
    .catch Lorg/json/JSONException; {:try_start_7f .. :try_end_bd} :catch_be

    goto :goto_7e

    :catch_be
    move-exception v2

    invoke-static {v2}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->f:Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->e:Ljava/lang/String;

    new-instance v4, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    const/16 v5, 0x7d1

    const/16 v6, 0x7d1

    invoke-static {v6}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;->onError(Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V

    goto :goto_7e

    :cond_db
    :try_start_db
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->f:Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->e:Ljava/lang/String;

    new-instance v4, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->g:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v5}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "error_code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->g:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v6}, Lcom/bsgamesdk/android/BSGameSdk;->c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "error_msg"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;->onFailed(Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V
    :try_end_107
    .catch Lorg/json/JSONException; {:try_start_db .. :try_end_107} :catch_be

    goto/16 :goto_7e

    :cond_109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/BSGameSdk$16;->g:Lcom/bsgamesdk/android/BSGameSdk;

    new-instance v3, Lcom/bsgamesdk/android/BSGameSdk$16$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/bsgamesdk/android/BSGameSdk$16$1;-><init>(Lcom/bsgamesdk/android/BSGameSdk$16;)V

    invoke-virtual {v2, v3}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V

    goto/16 :goto_7e
.end method
