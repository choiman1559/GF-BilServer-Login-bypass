.class public Lcom/bsgamesdk/android/activity/ExitActivity;
.super Lcom/bsgamesdk/android/activity/BaseActivity;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)V
    .registers 5

    if-eqz p1, :cond_11

    sget-object v0, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    iget v1, p0, Lcom/bsgamesdk/android/activity/ExitActivity;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    sget-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    iget v1, p0, Lcom/bsgamesdk/android/activity/ExitActivity;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :try_start_1f
    monitor-enter v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_20} :catch_2b

    :try_start_20
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_28

    :goto_24
    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/ExitActivity;->finish()V

    return-void

    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_24
.end method

.method public onBackPressed()V
    .registers 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "result"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_b} :catch_f

    :goto_b
    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/activity/ExitActivity;->a(Lorg/json/JSONObject;)V

    return-void

    :catch_f
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/bsgamesdk/android/BSGameSdk;->getInstance()Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/ExitActivity;->finish()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    sget v0, Lcom/bsgamesdk/android/utils/f$e;->t:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/ExitActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/bsgamesdk/android/activity/ExitActivity;->mContext:Landroid/content/Context;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aP:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/ExitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->af:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/ExitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->ag:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/ExitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/ExitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_d

    const-string v3, "CallingPid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/bsgamesdk/android/activity/ExitActivity;->a:I

    const-string v3, "intent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gameout"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "\u9000\u51fa\u6e38\u620f"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/bsgamesdk/android/activity/ExitActivity$1;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/activity/ExitActivity$1;-><init>(Lcom/bsgamesdk/android/activity/ExitActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bE:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/ExitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/bsgamesdk/android/activity/ExitActivity$2;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/ExitActivity$2;-><init>(Lcom/bsgamesdk/android/activity/ExitActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bF:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/ExitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/bsgamesdk/android/activity/ExitActivity$3;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/ExitActivity$3;-><init>(Lcom/bsgamesdk/android/activity/ExitActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_d
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;->onDestroy()V

    return-void
.end method
