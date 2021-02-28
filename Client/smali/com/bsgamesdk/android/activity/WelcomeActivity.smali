.class public Lcom/bsgamesdk/android/activity/WelcomeActivity;
.super Lcom/bsgamesdk/android/activity/BaseActivity;


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:I

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/bsgamesdk/android/model/m;

.field private g:Lcom/bsgamesdk/android/model/UserParcelable;

.field private h:Landroid/content/Context;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;-><init>()V

    iput-object p0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->h:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/WelcomeActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/WelcomeActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/bsgamesdk/android/activity/WelcomeActivity;)I
    .registers 2

    iget v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->b:I

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .registers 7

    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->i:Z

    if-nez v0, :cond_6c

    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->h:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsLogined(Landroid/content/Context;)Z

    move-result v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/16 v0, 0x7d2

    if-eqz v1, :cond_66

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->f:Lcom/bsgamesdk/android/model/m;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->g:Lcom/bsgamesdk/android/model/UserParcelable;

    const-string v3, "1"

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->g:Lcom/bsgamesdk/android/model/UserParcelable;

    iget-wide v0, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->g:Lcom/bsgamesdk/android/model/UserParcelable;

    iget-object v0, v0, Lcom/bsgamesdk/android/model/UserParcelable;->nickname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6d

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->g:Lcom/bsgamesdk/android/model/UserParcelable;

    iget-object v0, v0, Lcom/bsgamesdk/android/model/UserParcelable;->nickname:Ljava/lang/String;

    :goto_35
    :try_start_35
    const-string v4, "result"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "uid"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "username"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "nickname"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "access_token"

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->g:Lcom/bsgamesdk/android/model/UserParcelable;

    iget-object v1, v1, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "expire_times"

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->g:Lcom/bsgamesdk/android/model/UserParcelable;

    iget-wide v4, v1, Lcom/bsgamesdk/android/model/UserParcelable;->expire_in:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "refresh_token"

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->g:Lcom/bsgamesdk/android/model/UserParcelable;

    iget-object v1, v1, Lcom/bsgamesdk/android/model/UserParcelable;->refresh_token:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_64} :catch_6f

    :goto_64
    const/16 v0, 0x7d1

    :cond_66
    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/WelcomeActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/WelcomeActivity;->finish()V

    :cond_6c
    return-void

    :cond_6d
    move-object v0, v1

    goto :goto_35

    :catch_6f
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_64
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/bsgamesdk/android/BSGameSdk;->getInstance()Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/WelcomeActivity;->finish()V

    :goto_c
    return-void

    :cond_d
    sget v0, Lcom/bsgamesdk/android/utils/f$e;->k:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/WelcomeActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/WelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/WelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v0, Lcom/bsgamesdk/android/model/m;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->f:Lcom/bsgamesdk/android/model/m;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->a:Landroid/os/Bundle;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aE:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->c:Landroid/widget/TextView;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aD:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->d:Landroid/widget/TextView;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aL:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_ea

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->a:Landroid/os/Bundle;

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "welcome"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    :try_start_6a
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->a:Landroid/os/Bundle;

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->a:Landroid/os/Bundle;

    const-string v1, "channel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->a:Landroid/os/Bundle;

    const-string v1, "serverId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->a:Landroid/os/Bundle;

    const-string v1, "merchantId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->a:Landroid/os/Bundle;

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->a:Landroid/os/Bundle;

    const-string v1, "appKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->a:Landroid/os/Bundle;

    const-string v1, "CallingPid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->b:I
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_b8} :catch_ff

    :goto_b8
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->f:Lcom/bsgamesdk/android/model/m;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    const-string v1, ""

    iget-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->nickname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_104

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_cd
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->f:Lcom/bsgamesdk/android/model/m;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->g:Lcom/bsgamesdk/android/model/UserParcelable;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->g:Lcom/bsgamesdk/android/model/UserParcelable;

    iget-object v1, v1, Lcom/bsgamesdk/android/model/UserParcelable;->avatar:Ljava/lang/String;

    sget v2, Lcom/bsgamesdk/android/utils/f$c;->Z:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/bsgamesdk/android/activity/WelcomeActivity;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    :cond_e0
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/bsgamesdk/android/activity/WelcomeActivity$1;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/WelcomeActivity$1;-><init>(Lcom/bsgamesdk/android/activity/WelcomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_ea
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bsgamesdk/android/activity/WelcomeActivity$2;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/WelcomeActivity$2;-><init>(Lcom/bsgamesdk/android/activity/WelcomeActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_c

    :catch_ff
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_b8

    :cond_104
    iget-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->username:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_112

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_cd

    :cond_112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_cd
.end method
