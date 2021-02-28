.class public Lcom/bsgamesdk/android/activity/NoticeActivity;
.super Lcom/bsgamesdk/android/activity/BaseActivity;


# static fields
.field private static h:I


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/content/Context;

.field private g:Landroid/os/Bundle;

.field private i:Z

.field private final j:I

.field private final k:I

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;-><init>()V

    iput-boolean v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->i:Z

    iput v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->j:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->k:I

    new-instance v0, Lcom/bsgamesdk/android/activity/NoticeActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bsgamesdk/android/activity/NoticeActivity$1;-><init>(Lcom/bsgamesdk/android/activity/NoticeActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->l:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()I
    .registers 1

    sget v0, Lcom/bsgamesdk/android/activity/NoticeActivity;->h:I

    return v0
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/NoticeActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->f:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/bsgamesdk/android/activity/NoticeActivity$4;

    invoke-direct {v0, p0, p2}, Lcom/bsgamesdk/android/activity/NoticeActivity$4;-><init>(Lcom/bsgamesdk/android/activity/NoticeActivity;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/task/d;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/NoticeActivity;Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bsgamesdk/android/activity/NoticeActivity;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/NoticeActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/bsgamesdk/android/activity/NoticeActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->l:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .registers 5

    new-instance v0, Lcom/bsgamesdk/android/activity/NoticeActivity$3;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/activity/NoticeActivity$3;-><init>(Lcom/bsgamesdk/android/activity/NoticeActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/task/d;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/bsgamesdk/android/activity/NoticeActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/bsgamesdk/android/activity/NoticeActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/bsgamesdk/android/activity/NoticeActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->b:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)V
    .registers 5

    if-eqz p1, :cond_11

    sget-object v0, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    sget v1, Lcom/bsgamesdk/android/activity/NoticeActivity;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    sget-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    sget v1, Lcom/bsgamesdk/android/activity/NoticeActivity;->h:I

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
    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/NoticeActivity;->finish()V

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

    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->i:Z

    if-eqz v0, :cond_17

    new-instance v1, Lcom/bsgamesdk/android/helper/b;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/helper/b;-><init>(Landroid/app/Activity;)V

    sget v0, Lcom/bsgamesdk/android/activity/NoticeActivity;->h:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/bsgamesdk/android/helper/b;->a(IZ)V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/NoticeActivity;->finish()V

    :goto_16
    return-void

    :cond_17
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1c
    const-string v0, "result"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_code"

    const v2, 0x16379

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    const v2, 0x16379

    invoke-static {v2}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_36} :catch_3a

    :goto_36
    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/activity/NoticeActivity;->a(Lorg/json/JSONObject;)V

    goto :goto_16

    :catch_3a
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_36
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/bsgamesdk/android/BSGameSdk;->getInstance()Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/NoticeActivity;->finish()V

    :cond_c
    :goto_c
    return-void

    :cond_d
    sget v0, Lcom/bsgamesdk/android/utils/f$e;->n:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/NoticeActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->f:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/NoticeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->g:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->g:Landroid/os/Bundle;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->g:Landroid/os/Bundle;

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :try_start_32
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->g:Landroid/os/Bundle;

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->g:Landroid/os/Bundle;

    const-string v1, "channel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->g:Landroid/os/Bundle;

    const-string v1, "serverId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->g:Landroid/os/Bundle;

    const-string v1, "merchantId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->g:Landroid/os/Bundle;

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->g:Landroid/os/Bundle;

    const-string v1, "appKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->g:Landroid/os/Bundle;

    const-string v1, "CallingPid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/activity/NoticeActivity;->h:I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_78} :catch_cf

    :goto_78
    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aW:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->d:Landroid/view/View;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aT:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->a:Landroid/widget/TextView;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aU:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->b:Landroid/widget/ImageView;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aV:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->c:Landroid/widget/Button;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->ag:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/bsgamesdk/android/activity/NoticeActivity$2;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/NoticeActivity$2;-><init>(Lcom/bsgamesdk/android/activity/NoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->e:Landroid/widget/TextView;

    const-string v1, "\u516c\u544a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->f:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "\u6570\u636e\u53d1\u9001\u4e2d\uff0c\u8bf7\u7a0d\u5019..."

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/utils/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/NoticeActivity;->b()V

    goto/16 :goto_c

    :catch_cf
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_78
.end method

.method protected onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->l:Landroid/os/Handler;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity;->l:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_a
    invoke-static {}, Lcom/bsgamesdk/android/utils/k;->a()V

    invoke-super {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;->onDestroy()V

    return-void
.end method
