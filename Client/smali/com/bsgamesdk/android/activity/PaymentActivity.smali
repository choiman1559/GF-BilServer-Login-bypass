.class public Lcom/bsgamesdk/android/activity/PaymentActivity;
.super Lcom/bsgamesdk/android/activity/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;
    }
.end annotation


# static fields
.field public static final RQF_CODE:I = 0x80

.field public static final RQF_LOGIN:I = 0x2

.field public static final RQF_PAY:I = 0x1

.field public static isPayCaptcha:Z

.field public static orderId:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Lcom/bsgamesdk/android/model/f;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:I

.field private K:I

.field private L:I

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Z

.field private Q:Ljava/lang/String;

.field private R:Z

.field private S:Ljava/lang/String;

.field private T:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field a:Ljava/lang/Thread;

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Landroid/os/Bundle;

.field private e:Landroid/webkit/WebView;

.field private f:Landroid/app/ProgressDialog;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/ImageButton;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/LinearLayout;

.field private n:Lcom/bsgamesdk/android/helper/PayRequest;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Lcom/bsgamesdk/android/api/h;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Z

.field private y:Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;

.field private z:Lcom/tencent/mm/opensdk/openapi/IWXAPI;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    sput-object v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->orderId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->w:Z

    iput-boolean v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->x:Z

    new-instance v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->y:Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;

    iput-boolean v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->A:Z

    iput-boolean v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->B:Z

    iput-boolean v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->C:Z

    iput-boolean v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->D:Z

    iput-boolean v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->E:Z

    iput-boolean v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->F:Z

    iput v2, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->J:I

    iput v2, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->K:I

    iput-boolean v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->P:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->Q:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->R:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->a:Ljava/lang/Thread;

    new-instance v0, Lcom/bsgamesdk/android/activity/PaymentActivity$16;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity$16;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->T:Landroid/os/Handler;

    return-void
.end method

.method static synthetic A(Lcom/bsgamesdk/android/activity/PaymentActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->w:Z

    return v0
.end method

.method static synthetic B(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->f:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic C(Lcom/bsgamesdk/android/activity/PaymentActivity;)I
    .registers 2

    iget v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->L:I

    return v0
.end method

.method static synthetic D(Lcom/bsgamesdk/android/activity/PaymentActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->x:Z

    return v0
.end method

.method static synthetic E(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/model/f;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->G:Lcom/bsgamesdk/android/model/f;

    return-object v0
.end method

.method static synthetic F(Lcom/bsgamesdk/android/activity/PaymentActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->C:Z

    return v0
.end method

.method static synthetic G(Lcom/bsgamesdk/android/activity/PaymentActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->E:Z

    return v0
.end method

.method static synthetic H(Lcom/bsgamesdk/android/activity/PaymentActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->D:Z

    return v0
.end method

.method static synthetic I(Lcom/bsgamesdk/android/activity/PaymentActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->F:Z

    return v0
.end method

.method static synthetic J(Lcom/bsgamesdk/android/activity/PaymentActivity;)I
    .registers 3

    iget v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->J:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->J:I

    return v0
.end method

.method static synthetic K(Lcom/bsgamesdk/android/activity/PaymentActivity;)I
    .registers 3

    iget v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->K:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->K:I

    return v0
.end method

.method static synthetic L(Lcom/bsgamesdk/android/activity/PaymentActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->h()V

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/PaymentActivity;I)I
    .registers 2

    iput p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->L:I

    return p1
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/PaymentActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->f:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/PaymentActivity;Lcom/bsgamesdk/android/model/f;)Lcom/bsgamesdk/android/model/f;
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->G:Lcom/bsgamesdk/android/model/f;

    return-object p1
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/PaymentActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->H:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .registers 8

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->n:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-wide v0, v0, Lcom/bsgamesdk/android/helper/PayRequest;->uid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->I:Ljava/lang/String;

    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsTouristLogined(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_42

    new-instance v0, Lcom/bsgamesdk/android/model/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/model/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-wide v2, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_31

    iget-wide v0, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->I:Ljava/lang/String;

    :cond_31
    :goto_31
    new-instance v0, Lcom/bsgamesdk/android/activity/PaymentActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/activity/PaymentActivity$6;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/task/d;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void

    :cond_42
    new-instance v0, Lcom/bsgamesdk/android/model/m;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_31

    iget-wide v0, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->I:Ljava/lang/String;

    goto :goto_31
.end method

.method private a(Lcom/bsgamesdk/android/model/CaptchModel;)V
    .registers 8

    sget-object v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->orderId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v1, "\u7528\u6237\u53d6\u6d88\u4ea4\u6613"

    const/16 v2, 0x1771

    const-string v3, ""

    const-string v4, "-9999"

    const-string v5, "activity_reopen"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    sput-object v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->orderId:Ljava/lang/String;

    new-instance v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/activity/PaymentActivity$8;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity;Lcom/bsgamesdk/android/model/CaptchModel;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/task/d;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_16
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/PaymentActivity;Lcom/bsgamesdk/android/model/p;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Lcom/bsgamesdk/android/model/p;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->C:Z

    return p1
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/PaymentActivity;[Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/bsgamesdk/android/model/p;)Z
    .registers 19

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/bsgamesdk/android/model/p;->a()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bsgamesdk/android/model/c;->w:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->z:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-nez v1, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/bsgamesdk/android/model/p;->a()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->z:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->z:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-virtual/range {p1 .. p1}, Lcom/bsgamesdk/android/model/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    :cond_25
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->z:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v1

    if-nez v1, :cond_3d

    const-string v1, "\u672a\u5b89\u88c5\u5fae\u4fe1\u65e0\u6cd5\u8fdb\u884c\u5fae\u4fe1\u652f\u4ed8"

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x1

    :goto_3c
    return v1

    :cond_3d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->z:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "\u60a8\u7684\u5fae\u4fe1\u7248\u672c\u4e0d\u652f\u6301\u5fae\u4fe1\u652f\u4ed8"

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x1

    goto :goto_3c

    :cond_55
    new-instance v1, Lcom/tencent/mm/opensdk/modelpay/PayReq;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelpay/PayReq;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/bsgamesdk/android/model/p;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelpay/PayReq;->appId:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/bsgamesdk/android/model/p;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/bsgamesdk/android/model/p;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/bsgamesdk/android/model/p;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/bsgamesdk/android/model/p;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    const-string v2, "Sign=WXPay"

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/bsgamesdk/android/model/p;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelpay/PayReq;->sign:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->z:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v2, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_89} :catch_d6

    move-result v14

    :try_start_8a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    const/16 v10, 0x1f40

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->M:Ljava/lang/String;

    const-string v12, "wechat_pay_state"

    const-string v13, "native_wechat"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "result="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "-9999"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v1 .. v16}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d3
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_d3} :catch_dd
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_d3} :catch_d6

    :goto_d3
    const/4 v1, 0x1

    goto/16 :goto_3c

    :catch_d6
    move-exception v1

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    const/4 v1, 0x1

    goto/16 :goto_3c

    :catch_dd
    move-exception v1

    goto :goto_d3
.end method

.method private a([Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1, p0}, Lcom/bsgamesdk/android/helper/c;->a([Ljava/lang/String;Lcom/bsgamesdk/android/activity/PaymentActivity;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/bsgamesdk/android/activity/PaymentActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->Q:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .registers 7

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->n:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-wide v0, v0, Lcom/bsgamesdk/android/helper/PayRequest;->uid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->I:Ljava/lang/String;

    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsTouristLogined(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_42

    new-instance v0, Lcom/bsgamesdk/android/model/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/model/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-wide v2, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_31

    iget-wide v0, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->I:Ljava/lang/String;

    :cond_31
    :goto_31
    new-instance v0, Lcom/bsgamesdk/android/activity/PaymentActivity$5;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/activity/PaymentActivity$5;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/task/d;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void

    :cond_42
    new-instance v0, Lcom/bsgamesdk/android/model/m;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_31

    iget-wide v0, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->I:Ljava/lang/String;

    goto :goto_31
.end method

.method static synthetic b(Lcom/bsgamesdk/android/activity/PaymentActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->D:Z

    return p1
.end method

.method static synthetic c(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/bsgamesdk/android/activity/PaymentActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->O:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .registers 4

    const/4 v2, 0x0

    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsLogined(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_42

    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsTouristLogined(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/bsgamesdk/android/utils/f$c;->D:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u5145\u503c\u524d\u8bf7\u5148\u767b\u5f55"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/bsgamesdk/android/activity/PaymentActivity$7;

    invoke-direct {v2, p0}, Lcom/bsgamesdk/android/activity/PaymentActivity$7;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_41
    return-void

    :cond_42
    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->e()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Lcom/bsgamesdk/android/model/CaptchModel;)V

    goto :goto_41
.end method

.method static synthetic c(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->B:Z

    return p1
.end method

.method static synthetic d(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/bsgamesdk/android/activity/PaymentActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    return-object p1
.end method

.method private d()Z
    .registers 3

    sget-object v0, Lcom/bsgamesdk/android/model/c;->w:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->z:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->z:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    sget-object v1, Lcom/bsgamesdk/android/model/c;->w:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->z:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->z:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v0

    if-nez v0, :cond_21

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x1

    goto :goto_20
.end method

.method static synthetic d(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->R:Z

    return p1
.end method

.method private e()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->g()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/bsgamesdk/android/activity/PaymentActivity$9;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/PaymentActivity$9;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity;)V

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/bsgamesdk/android/activity/PaymentActivity$10;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/PaymentActivity$10;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method static synthetic e(Lcom/bsgamesdk/android/activity/PaymentActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->P:Z

    return v0
.end method

.method static synthetic e(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->x:Z

    return p1
.end method

.method private f()V
    .registers 6

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "\u6570\u636e\u53d1\u9001\u4e2d\uff0c\u8bf7\u7a0d\u5019..."

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/utils/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bsgamesdk/android/activity/PaymentActivity$12;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/PaymentActivity$12;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic f(Lcom/bsgamesdk/android/activity/PaymentActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->b()V

    return-void
.end method

.method static synthetic f(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->A:Z

    return p1
.end method

.method static synthetic g(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->I:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/16 v1, 0x14

    const/16 v2, 0x10

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    sparse-switch v4, :sswitch_data_da

    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    :goto_34
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    sparse-switch v4, :sswitch_data_e8

    move v0, v2

    :goto_3b
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const-wide/32 v0, 0x200000

    invoke-virtual {v3, v0, v1}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cache"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_70

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_70
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    sget-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    const-string v0, "UTF-8"

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_c1

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_c1
    return-void

    :sswitch_c2
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    goto/16 :goto_34

    :sswitch_c6
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    goto/16 :goto_34

    :sswitch_ca
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    goto/16 :goto_34

    :sswitch_ce
    move v0, v1

    goto/16 :goto_3b

    :sswitch_d1
    move v0, v1

    goto/16 :goto_3b

    :sswitch_d4
    move v0, v2

    goto/16 :goto_3b

    :sswitch_d7
    move v0, v2

    goto/16 :goto_3b

    :sswitch_data_da
    .sparse-switch
        0x78 -> :sswitch_c2
        0xa0 -> :sswitch_c6
        0xf0 -> :sswitch_ca
    .end sparse-switch

    :sswitch_data_e8
    .sparse-switch
        0x78 -> :sswitch_ce
        0xa0 -> :sswitch_d1
        0xf0 -> :sswitch_d4
        0x140 -> :sswitch_d7
    .end sparse-switch
.end method

.method static synthetic g(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->E:Z

    return p1
.end method

.method static synthetic h(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->H:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{result:-1,error_code:2001,error_msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d1

    invoke-static {v1}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    iget v2, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a()V

    return-void
.end method

.method static synthetic h(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->F:Z

    return p1
.end method

.method static synthetic i(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->Q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/api/h;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    return-object v0
.end method

.method static synthetic k(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->M:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t(Lcom/bsgamesdk/android/activity/PaymentActivity;)I
    .registers 2

    iget v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->b:I

    return v0
.end method

.method static synthetic u(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/helper/PayRequest;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->n:Lcom/bsgamesdk/android/helper/PayRequest;

    return-object v0
.end method

.method static synthetic v(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->N:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic x(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->T:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic y(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->m:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic z(Lcom/bsgamesdk/android/activity/PaymentActivity;)Z
    .registers 2

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a()V
    .registers 3

    sget-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    iget v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :try_start_e
    monitor-enter v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_f} :catch_46

    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_43

    :try_start_13
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2c
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    :cond_39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->w:Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3c} :catch_46

    :goto_3c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->R:Z

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->finish()V

    return-void

    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    :try_start_45
    throw v1
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_46} :catch_46

    :catch_46
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_3c
.end method

.method protected a(Z)V
    .registers 7

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "\u6570\u636e\u53d1\u9001\u4e2d\uff0c\u8bf7\u7a0d\u5019..."

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/utils/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    sget-object v0, Lcom/bsgamesdk/android/b;->d:Lcom/bsgamesdk/android/helper/a;

    const/4 v1, 0x2

    new-instance v2, Lcom/bsgamesdk/android/activity/PaymentActivity$17;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1}, Lcom/bsgamesdk/android/activity/PaymentActivity$17;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity;Landroid/content/Context;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/bsgamesdk/android/helper/a;->a(ILcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V

    return-void
.end method

.method public dismissLoadingView()V
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 30

    invoke-super/range {p0 .. p3}, Lcom/bsgamesdk/android/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v2, 0x15b3

    move/from16 v0, p1

    if-ne v0, v2, :cond_442

    const/4 v2, 0x0

    sput-boolean v2, Lcom/bsgamesdk/android/activity/PaymentActivity;->isPayCaptcha:Z

    const/16 v2, 0xbba

    move/from16 v0, p2

    if-ne v0, v2, :cond_373

    if-eqz p3, :cond_2a4

    const/4 v3, 0x0

    const-string v2, "-1"

    const-string v7, ""

    :try_start_19
    const-string v2, "capthc_model"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/bsgamesdk/android/model/CaptchModel;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_23} :catch_ff

    :try_start_23
    const-string v3, "type_js"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "type_json"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_31} :catch_457

    move-result-object v7

    move-object/from16 v25, v2

    :cond_34
    :goto_34
    if-eqz v25, :cond_1d5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "\u6570\u636e\u53d1\u9001\u4e2d\uff0c\u8bf7\u7a0d\u5019..."

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/bsgamesdk/android/utils/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Lcom/bsgamesdk/android/model/CaptchModel;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    if-eqz v2, :cond_fe

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    const/16 v11, 0x270f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->M:Ljava/lang/String;

    const-string v13, "captchModel_not_null"

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v2 .. v17}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v2, "result"

    const-string v3, "0"

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "code"

    const-string v3, "9999"

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "message"

    const-string v3, "captchModel_not_null"

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "total_fee"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "username"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "recharge_order_no"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "role"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "game_money"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "out_trade_no"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "payMethod"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "originCode"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "subject"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, "pay"

    const-string v6, ""

    const-string v7, "1"

    invoke-virtual/range {v2 .. v8}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_fe
    :goto_fe
    return-void

    :catch_ff
    move-exception v2

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    :goto_104
    const-string v3, "\u7528\u6237\u53d6\u6d88\u652f\u4ed8"

    const/16 v4, 0x1799

    const-string v5, ""

    const-string v6, "-9999"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    if-eqz v2, :cond_34

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1799

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->M:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v20, ""

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v19, v7

    invoke-virtual/range {v8 .. v23}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const-string v2, "result"

    const-string v3, "1"

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "code"

    const-string v3, "6041"

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "message"

    invoke-interface {v14, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "total_fee"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "username"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "recharge_order_no"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "role"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "game_money"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "out_trade_no"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "payMethod"

    const-string v3, ""

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "originMessage"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "originCode"

    const-string v3, ""

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "subject"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v8

    const/4 v9, 0x1

    const-string v10, ""

    const-string v11, "pay"

    const-string v12, ""

    const-string v13, "1"

    invoke-virtual/range {v8 .. v14}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_34

    :cond_1d5
    const-string v3, "\u7528\u6237\u53d6\u6d88\u652f\u4ed8"

    const/16 v4, 0x177b

    const-string v5, ""

    const-string v6, "-9999"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    if-eqz v2, :cond_fe

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x177b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->M:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v20, ""

    const-string v21, ""

    const-string v22, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v19, v7

    invoke-virtual/range {v8 .. v23}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v2, "result"

    const-string v3, "1"

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "code"

    const-string v3, "6011"

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "message"

    invoke-interface {v8, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "total_fee"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "username"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "recharge_order_no"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "role"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "game_money"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "out_trade_no"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "payMethod"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "originCode"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "subject"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "product_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, "pay"

    const-string v6, ""

    const-string v7, "1"

    invoke-virtual/range {v2 .. v8}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_fe

    :cond_2a4
    const-string v3, "\u7528\u6237\u53d6\u6d88\u652f\u4ed8"

    const/16 v4, 0x1785

    const-string v5, ""

    const-string v6, "-9999"

    const-string v7, ""

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    if-eqz v2, :cond_fe

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    const/16 v11, 0x1785

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->M:Ljava/lang/String;

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v2 .. v17}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v2, "result"

    const-string v3, "1"

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "code"

    const-string v3, "6021"

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "message"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "total_fee"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "username"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "recharge_order_no"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "role"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "game_money"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "out_trade_no"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "payMethod"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "originCode"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "subject"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "product_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, "pay"

    const-string v6, ""

    const-string v7, "1"

    invoke-virtual/range {v2 .. v8}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_fe

    :cond_373
    const-string v3, "\u7528\u6237\u53d6\u6d88\u652f\u4ed8"

    const/16 v4, 0x178f

    const-string v5, ""

    const-string v6, "-9999"

    const-string v7, ""

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    if-eqz v2, :cond_fe

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    const/16 v11, 0x178f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->M:Ljava/lang/String;

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v2 .. v17}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v2, "result"

    const-string v3, "1"

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "code"

    const-string v3, "6031"

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "message"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "total_fee"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "username"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "recharge_order_no"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "role"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "game_money"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "out_trade_no"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "payMethod"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "originCode"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "subject"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "product_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, "pay"

    const-string v6, ""

    const-string v7, "1"

    invoke-virtual/range {v2 .. v8}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_fe

    :cond_442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->O:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->Q:Ljava/lang/String;

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v2 .. v7}, Lcom/bsgamesdk/android/helper/c;->a(Ljava/lang/String;Lcom/bsgamesdk/android/activity/PaymentActivity;IILandroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_fe

    :catch_457
    move-exception v3

    move-object/from16 v24, v3

    move-object/from16 v25, v2

    goto/16 :goto_104
.end method

.method public onAlipay(Ljava/lang/String;)Z
    .registers 3

    new-instance v0, Lcom/bsgamesdk/android/activity/PaymentActivity$14;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/activity/PaymentActivity$14;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->a:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .registers 2

    :try_start_0
    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->C:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->D:Z

    if-eqz v0, :cond_c

    :cond_8
    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->showQuitConfirmDialog()V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_b

    :catch_1e
    move-exception v0

    goto :goto_b

    :cond_20
    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->showQuitConfirmDialog()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_23} :catch_1e

    goto :goto_b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14

    invoke-super {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/bsgamesdk/android/BSGameSdk;->getInstance()Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->finish()V

    :goto_c
    return-void

    :cond_d
    sget v0, Lcom/bsgamesdk/android/utils/f$e;->c:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->setContentView(I)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->isPayCaptcha:Z

    iput-object p0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->d:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->d:Landroid/os/Bundle;

    const-string v1, "CallingPid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->b:I

    :try_start_2b
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->d:Landroid/os/Bundle;

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->d:Landroid/os/Bundle;

    const-string v1, "channel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->d:Landroid/os/Bundle;

    const-string v1, "serverId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->d:Landroid/os/Bundle;

    const-string v1, "merchantId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->d:Landroid/os/Bundle;

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->d:Landroid/os/Bundle;

    const-string v1, "appKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->b:Ljava/lang/String;

    sget-object v0, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    iget v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->d:Landroid/os/Bundle;

    const-string v1, "request"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/helper/PayRequest;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->n:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->n:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-object v0, v0, Lcom/bsgamesdk/android/helper/PayRequest;->out_trade_no:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->d:Landroid/os/Bundle;

    const-string v1, "serverId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->d:Landroid/os/Bundle;

    const-string v1, "merchantId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->d:Landroid/os/Bundle;

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->n:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-wide v0, v0, Lcom/bsgamesdk/android/helper/PayRequest;->uid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->n:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-object v7, v0, Lcom/bsgamesdk/android/helper/PayRequest;->version:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->d:Landroid/os/Bundle;

    const-string v1, "channel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    const-string v6, "1"

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->n:Lcom/bsgamesdk/android/helper/PayRequest;

    iget v0, v0, Lcom/bsgamesdk/android/helper/PayRequest;->money:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->n:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-object v0, v0, Lcom/bsgamesdk/android/helper/PayRequest;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->n:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-object v0, v0, Lcom/bsgamesdk/android/helper/PayRequest;->role:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->n:Lcom/bsgamesdk/android/helper/PayRequest;

    iget v0, v0, Lcom/bsgamesdk/android/helper/PayRequest;->game_money:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->n:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-object v0, v0, Lcom/bsgamesdk/android/helper/PayRequest;->item_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->n:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-object v0, v0, Lcom/bsgamesdk/android/helper/PayRequest;->order_sign:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->M:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->n:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-object v0, v0, Lcom/bsgamesdk/android/helper/PayRequest;->notify_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->N:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->n:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-object v0, v0, Lcom/bsgamesdk/android/helper/PayRequest;->product_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    invoke-direct/range {v0 .. v9}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_f5} :catch_28c

    :goto_f5
    sget-object v0, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    iget v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->cs:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->m:Landroid/widget/LinearLayout;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aj:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->af:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->j:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->j:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->j:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bsgamesdk/android/activity/PaymentActivity$1;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/PaymentActivity$1;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->ag:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->k:Landroid/widget/TextView;

    const-string v1, "\u5145\u503c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->M:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->g:Landroid/widget/LinearLayout;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->N:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->h:Landroid/widget/LinearLayout;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->y:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->i:Landroid/widget/LinearLayout;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->B:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->l:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->l:Landroid/widget/Button;

    new-instance v1, Lcom/bsgamesdk/android/activity/PaymentActivity$2;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/PaymentActivity$2;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/bsgamesdk/android/activity/PaymentActivity$3;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/PaymentActivity$3;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->y:Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "wei_pay"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->y:Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;

    invoke-virtual {p0, v1, v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->E:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->F:Z

    const-string v0, ""

    sget-object v1, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsTouristLogined(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_292

    new-instance v1, Lcom/bsgamesdk/android/model/k;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/bsgamesdk/android/model/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v1

    if-eqz v1, :cond_1be

    iget-wide v2, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1be

    iget-wide v0, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :cond_1be
    :goto_1be
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2af

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->n:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-wide v2, v1, Lcom/bsgamesdk/android/helper/PayRequest;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2af

    const-string v0, "\u4e0b\u5355\u5931\u8d25\uff0c\u8bf7\u6e05\u7406\u6e38\u620f\u7f13\u5b58\u518d\u91cd\u8bd5"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    if-eqz v0, :cond_278

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    iget-object v4, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    iget-object v5, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    iget-object v6, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    iget-object v7, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    iget-object v8, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    const/16 v9, 0x1b5d

    iget-object v10, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->n:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-wide v10, v10, Lcom/bsgamesdk/android/helper/PayRequest;->uid:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "uid_not_same"

    invoke-virtual/range {v0 .. v11}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "result"

    const-string v1, "1"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "code"

    const-string v1, "7005"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    const-string v1, "uid_not_same"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "total_fee"

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "username"

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "recharge_order_no"

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role"

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "game_money"

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "out_trade_no"

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "payMethod"

    const-string v1, "heepay"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "originMessage"

    const-string v1, ""

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "originCode"

    const-string v1, "-9999"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "subject"

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "externalUid"

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->n:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-wide v2, v1, Lcom/bsgamesdk/android/helper/PayRequest;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    const-string v3, "pay"

    const-string v4, ""

    const-string v5, "1"

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_278
    const/16 v0, 0x1b5d

    invoke-static {v0}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b5d

    const-string v3, ""

    const-string v4, "-9999"

    const-string v5, "uid_not_same"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_c

    :catch_28c
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto/16 :goto_f5

    :cond_292
    new-instance v1, Lcom/bsgamesdk/android/model/m;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v1

    if-eqz v1, :cond_1be

    iget-wide v2, v1, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1be

    iget-wide v0, v1, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1be

    :cond_2af
    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->c()V

    goto/16 :goto_c
.end method

.method protected onDestroy()V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->f:Landroid/app/ProgressDialog;

    :cond_c
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->y:Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->y:Lcom/bsgamesdk/android/activity/PaymentActivity$ReceiveBroadCast;

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_23} :catch_4c

    :cond_23
    :goto_23
    :try_start_23
    invoke-static {p0}, Lcom/bsgamesdk/android/helper/c;->a(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_26} :catch_48

    :goto_26
    :try_start_26
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->a:Ljava/lang/Thread;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_32} :catch_4a

    :cond_32
    :goto_32
    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->R:Z

    if-eqz v0, :cond_44

    const-string v1, "\u7528\u6237\u53d6\u6d88\u4ea4\u6613"

    const/16 v2, 0x1771

    const-string v3, ""

    const-string v4, "-9999"

    const-string v5, "activity_kill"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_44
    invoke-super {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;->onDestroy()V

    return-void

    :catch_48
    move-exception v0

    goto :goto_26

    :catch_4a
    move-exception v0

    goto :goto_32

    :catch_4c
    move-exception v0

    goto :goto_23
.end method

.method public onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 24

    const/16 v2, 0x1b5c

    move/from16 v0, p2

    if-ne v0, v2, :cond_31

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->K:I

    if-lez v2, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "\u6570\u636e\u53d1\u9001\u4e2d\uff0c\u8bf7\u7a0d\u5019..."

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/bsgamesdk/android/utils/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->T:Landroid/os/Handler;

    new-instance v3, Lcom/bsgamesdk/android/activity/PaymentActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/bsgamesdk/android/activity/PaymentActivity$13;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity;)V

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bsgamesdk/android/api/b;->X()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2f
    const/4 v2, 0x1

    return v2

    :cond_31
    const/16 v2, 0x1b5d

    move/from16 v0, p2

    if-ne v0, v2, :cond_145

    sget-object v2, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{result:-1,error_code:7005,error_msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    if-eqz v2, :cond_140

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->M:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    move-object/from16 v17, v0

    move/from16 v11, p2

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object/from16 v15, p5

    move-object/from16 v16, p4

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

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "message"

    move-object/from16 v0, p1

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "total_fee"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "username"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "recharge_order_no"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "role"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "game_money"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "out_trade_no"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "payMethod"

    move-object/from16 v0, p3

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "originMessage"

    move-object/from16 v0, p5

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "originCode"

    move-object/from16 v0, p4

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "order_sign"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->M:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "subject"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "product_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, "pay"

    const-string v6, ""

    const-string v7, "1"

    invoke-virtual/range {v2 .. v8}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_140
    invoke-virtual/range {p0 .. p0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a()V

    goto/16 :goto_2f

    :cond_145
    sget-object v2, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{result:-1,error_code:1000,error_msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5f
.end method

.method public onFailureWithThirdTradeNo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 22

    sget-object v1, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{result:-1,error_code:1000,error_msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    if-eqz v1, :cond_10c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p1

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-virtual/range {v1 .. v15}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v1, "result"

    const-string v2, "0"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "role"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mesage"

    move-object/from16 v0, p1

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "code"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "total_fee"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "username"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "recharge_order_no"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "role"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "game_money"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "out_trade_no"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "payment_id"

    move-object/from16 v0, p3

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "originMessage"

    move-object/from16 v0, p4

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "originCode"

    move-object/from16 v0, p5

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "subject"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "product_id"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "order_sign"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->M:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, ""

    const-string v4, "paypalPay"

    const-string v5, ""

    const-string v6, "1"

    invoke-virtual/range {v1 .. v7}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_10c
    invoke-virtual/range {p0 .. p0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a()V

    const/4 v1, 0x1

    return v1
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;->onPause()V

    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->E:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->F:Z

    if-eqz v0, :cond_11

    :cond_b
    invoke-static {}, Lcom/bsgamesdk/android/utils/k;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->P:Z

    :cond_11
    return-void
.end method

.method protected onRestart()V
    .registers 2

    invoke-super {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;->onRestart()V

    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->A:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->B:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->A:Z

    :cond_13
    return-void
.end method

.method protected onResume()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;->onResume()V

    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->E:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->F:Z

    if-eqz v0, :cond_30

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_31

    iput-boolean v2, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->P:Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    const-string v1, "\u6570\u636e\u53d1\u9001\u4e2d\uff0c\u8bf7\u7a0d\u5019..."

    invoke-static {v0, v4, v1, v3, v2}, Lcom/bsgamesdk/android/utils/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->T:Landroid/os/Handler;

    new-instance v1, Lcom/bsgamesdk/android/activity/PaymentActivity$4;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/PaymentActivity$4;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity;)V

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->P()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_30
    :goto_30
    return-void

    :cond_31
    iput-boolean v2, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->C:Z

    iput-boolean v2, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->D:Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    const-string v1, "\u6570\u636e\u53d1\u9001\u4e2d\uff0c\u8bf7\u7a0d\u5019..."

    invoke-static {v0, v4, v1, v3, v2}, Lcom/bsgamesdk/android/utils/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->b()V

    goto :goto_30
.end method

.method public onSuccess(Ljava/lang/String;)Z
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_115

    sget-object v1, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{result:1,out_trade_no:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",bs_trade_no:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_42
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    if-eqz v1, :cond_110

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    const/16 v10, 0x2328

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->M:Ljava/lang/String;

    const-string v12, ""

    const-string v14, ""

    const-string v15, "-9999"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v13, p1

    invoke-virtual/range {v1 .. v16}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v1, "result"

    const-string v2, "0"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "code"

    const-string v2, "9000"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message"

    const-string v2, ""

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "total_fee"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "username"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "recharge_order_no"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "role"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "game_money"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "out_trade_no"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "payMethod"

    move-object/from16 v0, p1

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "originMessage"

    const-string v2, ""

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "originCode"

    const-string v2, "-9999"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "order_sign"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->M:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "subject"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "product_id"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, ""

    const-string v4, "pay"

    const-string v5, ""

    const-string v6, "1"

    invoke-virtual/range {v1 .. v7}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_110
    invoke-virtual/range {p0 .. p0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a()V

    const/4 v1, 0x1

    return v1

    :cond_115
    sget-object v1, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{result:1,out_trade_no:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",bs_trade_no:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_42
.end method

.method public onSuccessWithThirdTradeNo(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_114

    sget-object v1, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{result:1,out_trade_no:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",bs_trade_no:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_42
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    if-eqz v1, :cond_10f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    const/16 v10, 0x2328

    const-string v12, ""

    const-string v13, ""

    const-string v14, "-9999"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    move-object/from16 v7, p2

    move-object/from16 v11, p1

    invoke-virtual/range {v1 .. v15}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v1, "result"

    const-string v2, "0"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "role"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "code"

    const-string v2, "9000"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message"

    const-string v2, ""

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "total_fee"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "username"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "recharge_order_no"

    move-object/from16 v0, p2

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "role"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "game_money"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "out_trade_no"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "payment_id"

    move-object/from16 v0, p1

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "originMessage"

    const-string v2, ""

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "originCode"

    const-string v2, "-9999"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "subject"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "product_id"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "order_sign"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->M:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, ""

    const-string v4, "paypalPay"

    const-string v5, ""

    const-string v6, "1"

    invoke-virtual/range {v1 .. v7}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_10f
    invoke-virtual/range {p0 .. p0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a()V

    const/4 v1, 0x1

    return v1

    :cond_114
    sget-object v1, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{result:1,out_trade_no:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",bs_trade_no:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_42
.end method

.method public onWeiPayFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 23

    const/16 v2, 0x1b5a

    move/from16 v0, p2

    if-eq v0, v2, :cond_c

    const/16 v2, 0x1b5c

    move/from16 v0, p2

    if-ne v0, v2, :cond_36

    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->J:I

    if-lez v2, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "\u6570\u636e\u53d1\u9001\u4e2d\uff0c\u8bf7\u7a0d\u5019..."

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/bsgamesdk/android/utils/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->T:Landroid/os/Handler;

    new-instance v3, Lcom/bsgamesdk/android/activity/PaymentActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/bsgamesdk/android/activity/PaymentActivity$11;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity;)V

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bsgamesdk/android/api/b;->X()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_35
    return-void

    :cond_36
    const/16 v2, 0x1b5c

    move/from16 v0, p2

    if-ne v0, v2, :cond_141

    sget-object v2, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{result:-1,error_code:7004,error_msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    if-eqz v2, :cond_13c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->M:Ljava/lang/String;

    const-string v14, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    move-object/from16 v17, v0

    move/from16 v11, p2

    move-object/from16 v13, p1

    move-object/from16 v15, p4

    move-object/from16 v16, p3

    invoke-virtual/range {v2 .. v17}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v2, "result"

    const-string v3, "1"

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "code"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "9000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "message"

    move-object/from16 v0, p1

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "total_fee"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "username"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "recharge_order_no"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "role"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "game_money"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "out_trade_no"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "payMethod"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "originMessage"

    move-object/from16 v0, p4

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "originCode"

    move-object/from16 v0, p3

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "subject"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "product_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, "pay"

    const-string v6, ""

    const-string v7, "1"

    invoke-virtual/range {v2 .. v8}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_13c
    invoke-direct/range {p0 .. p0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->f()V

    goto/16 :goto_35

    :cond_141
    sget-object v2, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{result:-1,error_code:1000,error_msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_64
.end method

.method public onWeiPaySuccess()V
    .registers 18

    const-string v13, ""

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->C:Z

    if-eqz v1, :cond_111

    const-string v13, "quickpay_heepay"

    :cond_a
    :goto_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11b

    sget-object v1, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{result:1,out_trade_no:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",bs_trade_no:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    if-eqz v1, :cond_10d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->q:Lcom/bsgamesdk/android/api/h;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    const/16 v10, 0x2328

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->M:Ljava/lang/String;

    const-string v12, ""

    const-string v14, ""

    const-string v15, "-9999"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v1 .. v16}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v1, "result"

    const-string v2, "0"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "code"

    const-string v2, "9000"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message"

    const-string v2, "uid_not_same"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "total_fee"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->r:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "username"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->s:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "recharge_order_no"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "role"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->t:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "game_money"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->u:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "out_trade_no"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->o:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "payMethod"

    invoke-interface {v7, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "originMessage"

    const-string v2, ""

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "originCode"

    const-string v2, "-9999"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "subject"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->v:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "product_id"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, ""

    const-string v4, "pay"

    const-string v5, ""

    const-string v6, "1"

    invoke-virtual/range {v1 .. v7}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_10d
    invoke-direct/range {p0 .. p0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->f()V

    return-void

    :cond_111
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->D:Z

    if-eqz v1, :cond_a

    const-string v13, "quickpay_wechath5"

    goto/16 :goto_a

    :cond_11b
    sget-object v1, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{result:1,out_trade_no:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->S:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",bs_trade_no:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4c
.end method

.method public setTheme(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_20

    const/16 v0, 0x1c

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v1, :cond_20

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_20

    const-string v0, "bsgamesdk_customPaymentTheme"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Lcom/bsgamesdk/android/activity/BaseActivity;->setTheme(I)V

    :goto_1f
    return-void

    :cond_20
    const-string v0, "bsgamesdk_customPaymentTranslucentTheme"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Lcom/bsgamesdk/android/activity/BaseActivity;->setTheme(I)V

    goto :goto_1f
.end method

.method public showLoadingView()V
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showQuitConfirmDialog()V
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/bsgamesdk/android/utils/f$c;->D:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u4ea4\u6613\u5c1a\u672a\u5b8c\u6210\uff0c\u786e\u5b9a\u653e\u5f03\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/bsgamesdk/android/activity/PaymentActivity$15;

    invoke-direct {v2, p0}, Lcom/bsgamesdk/android/activity/PaymentActivity$15;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
