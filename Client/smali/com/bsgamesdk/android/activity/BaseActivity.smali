.class public Lcom/bsgamesdk/android/activity/BaseActivity;
.super Landroid/app/Activity;


# static fields
.field public static isFirstTimeGetCaptcha:Z


# instance fields
.field public final STATUS_NO_RESET_PWD:Ljava/lang/String;

.field public final STATUS_RESET_PWD:Ljava/lang/String;

.field public anim_from_right:Landroid/view/animation/Animation;

.field public anim_to_left:Landroid/view/animation/Animation;

.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bsgamesdk/android/activity/BaseActivity;->isFirstTimeGetCaptcha:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object p0, p0, Lcom/bsgamesdk/android/activity/BaseActivity;->mContext:Landroid/content/Context;

    const-string v0, "1"

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BaseActivity;->STATUS_RESET_PWD:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BaseActivity;->STATUS_NO_RESET_PWD:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/widget/ImageView;)V
    .registers 5

    new-instance v0, Lcom/bsgamesdk/android/activity/BaseActivity$2;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/activity/BaseActivity$2;-><init>(Lcom/bsgamesdk/android/activity/BaseActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/task/d;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/bsgamesdk/android/b;->d:Lcom/bsgamesdk/android/helper/a;

    new-instance v1, Lcom/bsgamesdk/android/activity/BaseActivity$1;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/BaseActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lcom/bsgamesdk/android/activity/BaseActivity$1;-><init>(Lcom/bsgamesdk/android/activity/BaseActivity;Landroid/content/Context;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p2, v1}, Lcom/bsgamesdk/android/helper/a;->d(Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/BaseActivity;Landroid/widget/ImageView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    neg-int v4, v2

    if-lt v0, v4, :cond_2e

    neg-int v4, v2

    if-lt v1, v4, :cond_2e

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    if-gt v0, v4, :cond_2e

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    if-le v1, v0, :cond_30

    :cond_2e
    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method


# virtual methods
.method protected a(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .registers 7

    new-instance v0, Lcom/bsgamesdk/android/activity/BaseActivity$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/bsgamesdk/android/activity/BaseActivity$4;-><init>(Lcom/bsgamesdk/android/activity/BaseActivity;Ljava/lang/String;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/task/d;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method public doGetCaptcha(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bsgamesdk/android/activity/BaseActivity;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/BaseActivity;->setFinishOnTouchOutside(Z)V

    :cond_d
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity;->a(Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_d
.end method

.method public showAgreement(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/BaseActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
