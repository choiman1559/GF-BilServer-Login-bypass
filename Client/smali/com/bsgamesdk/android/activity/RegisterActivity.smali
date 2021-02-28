.class public Lcom/bsgamesdk/android/activity/RegisterActivity;
.super Lcom/bsgamesdk/android/activity/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bsgamesdk/android/activity/RegisterActivity$BtnObtionOnClickListener;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/EditText;

.field private C:Landroid/widget/Button;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/ImageButton;

.field private F:Landroid/widget/ImageButton;

.field private G:Landroid/os/Handler;

.field private H:Landroid/view/View;

.field private I:Landroid/view/View;

.field private J:Landroid/view/View;

.field private K:Landroid/view/View;

.field private L:Landroid/view/View;

.field private M:Landroid/view/View;

.field private N:Landroid/view/View;

.field private O:Landroid/view/View;

.field private a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private j:I

.field private k:Landroid/os/Bundle;

.field private l:Landroid/content/Context;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/TextView;

.field private o:Lcom/bsgamesdk/android/utils/x;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/ImageButton;

.field private t:Landroid/widget/EditText;

.field private u:Landroid/widget/EditText;

.field private v:Landroid/widget/EditText;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/ImageButton;

.field private z:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->b:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->c:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->d:I

    const/16 v0, 0x65

    iput v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->e:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->f:I

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->g:I

    const/16 v0, 0x3ea

    iput v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->h:I

    const/16 v0, 0x3eb

    iput v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->i:I

    iput-object p0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->l:Landroid/content/Context;

    new-instance v0, Lcom/bsgamesdk/android/activity/RegisterActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bsgamesdk/android/activity/RegisterActivity$1;-><init>(Lcom/bsgamesdk/android/activity/RegisterActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->G:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .registers 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->H:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->a:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->L:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->M:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    iget v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->L:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->M:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_27
    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/RegisterActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->b()V

    return-void
.end method

.method private b()V
    .registers 5

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->I:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->B:Landroid/widget/EditText;

    if-nez v0, :cond_2a

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->au:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->B:Landroid/widget/EditText;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->at:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->A:Landroid/widget/ImageView;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->av:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->C:Landroid/widget/Button;

    :cond_2a
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->A:Landroid/widget/ImageView;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/bsgamesdk/android/activity/RegisterActivity;->doGetCaptcha(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_88

    sget v0, Lcom/bsgamesdk/android/utils/f$a;->e:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->anim_to_left:Landroid/view/animation/Animation;

    sget v0, Lcom/bsgamesdk/android/utils/f$a;->c:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->anim_from_right:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->H:Landroid/view/View;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->anim_to_left:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->I:Landroid/view/View;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->anim_from_right:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->anim_to_left:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->anim_from_right:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->D:Landroid/widget/TextView;

    const-string v1, "\u9a8c\u8bc1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->H:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->K:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->E:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->F:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v0, 0x65

    iput v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->a:I

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->C:Landroid/widget/Button;

    new-instance v1, Lcom/bsgamesdk/android/activity/RegisterActivity$7;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/RegisterActivity$7;-><init>(Lcom/bsgamesdk/android/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_87
    :goto_87
    return-void

    :cond_88
    iget v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_87

    sget v0, Lcom/bsgamesdk/android/utils/f$a;->e:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->anim_to_left:Landroid/view/animation/Animation;

    sget v0, Lcom/bsgamesdk/android/utils/f$a;->c:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->anim_from_right:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->H:Landroid/view/View;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->anim_to_left:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->I:Landroid/view/View;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->anim_from_right:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->anim_to_left:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->anim_from_right:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->D:Landroid/widget/TextView;

    const-string v1, "\u9a8c\u8bc1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->H:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->K:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->E:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->F:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v0, 0x66

    iput v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->a:I

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->C:Landroid/widget/Button;

    new-instance v1, Lcom/bsgamesdk/android/activity/RegisterActivity$8;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/RegisterActivity$8;-><init>(Lcom/bsgamesdk/android/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_87
.end method

.method static synthetic b(Lcom/bsgamesdk/android/activity/RegisterActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->a()V

    return-void
.end method

.method static synthetic c(Lcom/bsgamesdk/android/activity/RegisterActivity;)Lcom/bsgamesdk/android/utils/x;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->o:Lcom/bsgamesdk/android/utils/x;

    return-object v0
.end method

.method static synthetic d(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/widget/ImageButton;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->s:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic e(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/widget/ImageButton;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->y:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic f(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->p:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->u:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->v:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic j(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->B:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic k(Lcom/bsgamesdk/android/activity/RegisterActivity;)I
    .registers 2

    iget v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->a:I

    return v0
.end method

.method static synthetic l(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->G:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    sget v1, Lcom/bsgamesdk/android/utils/b;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/d;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/d;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/bsgamesdk/android/activity/RegisterActivity$9;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/RegisterActivity$9;-><init>(Lcom/bsgamesdk/android/activity/RegisterActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/task/d;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 5

    if-eqz p1, :cond_11

    sget-object v0, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    iget v1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    sget-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    iget v1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->j:I

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
    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->finish()V

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

    const-string v0, "error_msg"

    const-string v2, "\u7528\u6237\u53d6\u6d88\u6ce8\u518c"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    const/16 v2, 0x1771

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_1d

    :goto_19
    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/activity/RegisterActivity;->a(Lorg/json/JSONObject;)V

    return-void

    :catch_1d
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_19
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/bsgamesdk/android/BSGameSdk;->getInstance()Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->finish()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    sget v0, Lcom/bsgamesdk/android/utils/f$e;->u:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->setContentView(I)V

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->V:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->H:Landroid/view/View;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aP:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->J:Landroid/view/View;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aQ:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->K:Landroid/view/View;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bN:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->N:Landroid/view/View;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aw:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->I:Landroid/view/View;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aR:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->O:Landroid/view/View;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bL:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->L:Landroid/view/View;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bM:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->M:Landroid/view/View;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->ag:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->D:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->k:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->k:Landroid/os/Bundle;

    const-string v1, "CallingPid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->j:I

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->k:Landroid/os/Bundle;

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "register"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->k:Landroid/os/Bundle;

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->k:Landroid/os/Bundle;

    const-string v1, "channel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->k:Landroid/os/Bundle;

    const-string v1, "serverId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->k:Landroid/os/Bundle;

    const-string v1, "merchantId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->k:Landroid/os/Bundle;

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->k:Landroid/os/Bundle;

    const-string v1, "appKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->b:Ljava/lang/String;

    sget-object v0, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    iget v1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->J:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->H:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->K:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->L:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->M:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->D:Landroid/widget/TextView;

    const-string v1, "\u624b\u673a\u53f7\u6ce8\u518c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aN:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->m:Landroid/widget/RelativeLayout;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aO:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->n:Landroid/widget/TextView;

    sget-object v0, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    sget v2, Lcom/bsgamesdk/android/utils/b;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/d;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/bsgamesdk/android/utils/x;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->n:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->J:Landroid/view/View;

    iget-object v4, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->N:Landroid/view/View;

    iget-object v5, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->J:Landroid/view/View;

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/utils/x;-><init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->o:Lcom/bsgamesdk/android/utils/x;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->m:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/bsgamesdk/android/activity/RegisterActivity$2;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/RegisterActivity$2;-><init>(Lcom/bsgamesdk/android/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->w:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->p:Landroid/widget/EditText;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bJ:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->q:Landroid/widget/Button;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aY:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->r:Landroid/widget/TextView;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aa:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->s:Landroid/widget/ImageButton;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bI:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->t:Landroid/widget/EditText;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->s:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->u:Landroid/widget/EditText;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->u:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->v:Landroid/widget/EditText;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aX:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->w:Landroid/widget/Button;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bK:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->x:Landroid/widget/TextView;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->X:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->y:Landroid/widget/ImageButton;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->d:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->z:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->u:Landroid/widget/EditText;

    new-instance v1, Lcom/bsgamesdk/android/utils/i$e;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->y:Landroid/widget/ImageButton;

    invoke-direct {v1, v2}, Lcom/bsgamesdk/android/utils/i$e;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->u:Landroid/widget/EditText;

    new-instance v1, Lcom/bsgamesdk/android/utils/i$c;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->y:Landroid/widget/ImageButton;

    invoke-direct {v1, v2}, Lcom/bsgamesdk/android/utils/i$c;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->u:Landroid/widget/EditText;

    new-instance v1, Lcom/bsgamesdk/android/utils/i$d;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->u:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->y:Landroid/widget/ImageButton;

    invoke-direct {v1, v2, v3}, Lcom/bsgamesdk/android/utils/i$d;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->p:Landroid/widget/EditText;

    new-instance v1, Lcom/bsgamesdk/android/utils/i$e;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->s:Landroid/widget/ImageButton;

    invoke-direct {v1, v2}, Lcom/bsgamesdk/android/utils/i$e;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->p:Landroid/widget/EditText;

    new-instance v1, Lcom/bsgamesdk/android/utils/i$d;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->p:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->s:Landroid/widget/ImageButton;

    invoke-direct {v1, v2, v3}, Lcom/bsgamesdk/android/utils/i$d;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->p:Landroid/widget/EditText;

    new-instance v1, Lcom/bsgamesdk/android/utils/i$c;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->s:Landroid/widget/ImageButton;

    invoke-direct {v1, v2}, Lcom/bsgamesdk/android/utils/i$c;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->v:Landroid/widget/EditText;

    new-instance v1, Lcom/bsgamesdk/android/activity/RegisterActivity$3;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/RegisterActivity$3;-><init>(Lcom/bsgamesdk/android/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->s:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bsgamesdk/android/activity/RegisterActivity$4;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/RegisterActivity$4;-><init>(Lcom/bsgamesdk/android/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->y:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bsgamesdk/android/activity/RegisterActivity$5;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/RegisterActivity$5;-><init>(Lcom/bsgamesdk/android/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->w:Landroid/widget/Button;

    new-instance v1, Lcom/bsgamesdk/android/activity/RegisterActivity$BtnObtionOnClickListener;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->p:Landroid/widget/EditText;

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/bsgamesdk/android/activity/RegisterActivity$BtnObtionOnClickListener;-><init>(Lcom/bsgamesdk/android/activity/RegisterActivity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->q:Landroid/widget/Button;

    new-instance v1, Lcom/bsgamesdk/android/activity/RegisterActivity$BtnObtionOnClickListener;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->p:Landroid/widget/EditText;

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/bsgamesdk/android/activity/RegisterActivity$BtnObtionOnClickListener;-><init>(Lcom/bsgamesdk/android/activity/RegisterActivity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/bsgamesdk/android/utils/c;

    invoke-direct {v0}, Lcom/bsgamesdk/android/utils/c;-><init>()V

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->v:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity;->z:Landroid/widget/Button;

    new-instance v1, Lcom/bsgamesdk/android/activity/RegisterActivity$6;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/RegisterActivity$6;-><init>(Lcom/bsgamesdk/android/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_d
.end method

.method protected onDestroy()V
    .registers 1

    invoke-static {}, Lcom/bsgamesdk/android/utils/k;->a()V

    invoke-super {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;->onDestroy()V

    return-void
.end method
