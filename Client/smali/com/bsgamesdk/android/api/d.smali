.class public Lcom/bsgamesdk/android/api/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "config"

    const-string v2, "config"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "initConfig"

    const-string v2, "initConfig"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "loginConfig"

    const-string v2, "loginConfig"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "hotfix"

    const-string v2, "check_plug"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "rsa"

    const-string v2, "rsa"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "login"

    const-string v2, "login"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "loginCached"

    const-string v2, "login"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "myinfo"

    const-string v2, "user.info"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "getcountry"

    const-string v2, "country.list"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "telcheck"

    const-string v2, "check.tel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "phonecaptcha"

    const-string v2, "account.sms.sendCaptcha"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "phoneregister"

    const-string v2, "reg.tel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "reg"

    const-string v2, "regV3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "order"

    const-string v2, "add.pay.order"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "queryorder"

    const-string v2, "query_pay_order"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "notifyzone"

    const-string v2, "notify.zone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "logout"

    const-string v2, "logout"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "activate"

    const-string v2, "seal.bind"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "refreshToken"

    const-string v2, "session.renewal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "renewToken"

    const-string v2, "session.renew"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "getCoupon"

    const-string v2, "book.game.coupon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "verifyCoupon"

    const-string v2, "receive.game.coupon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "touristlogin"

    const-string v2, "tourist.login"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "callCreateRole"

    const-string v2, "createrole"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "getnotice"

    const-string v2, "notice.list"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "touristbind"

    const-string v2, "bind.account"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "callLogActivate"

    const-string v2, "activate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "callAuthenticate"

    const-string v2, "realname_auth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "resetpwd"

    const-string v2, "reset.pwd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "paypalVerify"

    const-string v2, "paypal_verify"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "payCondition"

    const-string v2, "can_pay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "getFreeUrl"

    const-string v2, "getFreeUrl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "SDKAppConfig"

    const-string v2, "SDKAppConfig"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    const-string v1, "newRsa"

    const-string v2, "newRsa"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/api/d;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bsgamesdk/android/api/d;->c:I

    return-void
.end method

.method private a(I)Z
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    iget v0, p0, Lcom/bsgamesdk/android/api/d;->c:I

    if-ge v0, p1, :cond_9

    :cond_7
    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public a()V
    .registers 2

    iget v0, p0, Lcom/bsgamesdk/android/api/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bsgamesdk/android/api/d;->c:I

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    move v0, v1

    goto :goto_8

    :cond_19
    const-string v2, "user.info"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->w()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/api/d;->a(I)Z

    move-result v0

    goto :goto_8

    :cond_2e
    const-string v2, "initConfig"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->L()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/api/d;->a(I)Z

    move-result v0

    goto :goto_8

    :cond_43
    const-string v2, "config"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->L()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/api/d;->a(I)Z

    move-result v0

    goto :goto_8

    :cond_58
    const-string v2, "loginConfig"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->N()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/api/d;->a(I)Z

    move-result v0

    goto :goto_8

    :cond_6d
    const-string v2, "login"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_99

    const-string v0, "loginCached"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->y()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/api/d;->a(I)Z

    move-result v0

    goto/16 :goto_8

    :cond_8b
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->x()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/api/d;->a(I)Z

    move-result v0

    goto/16 :goto_8

    :cond_99
    move v0, v1

    goto/16 :goto_8
.end method

.method public b(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x1

    :try_start_1
    sget-object v0, Lcom/bsgamesdk/android/api/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->v()Ljava/util/LinkedList;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_1b

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    :goto_1a
    return v0

    :catch_1b
    move-exception v0

    move v0, v1

    goto :goto_1a

    :cond_1e
    move v0, v1

    goto :goto_1a
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/api/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/api/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
