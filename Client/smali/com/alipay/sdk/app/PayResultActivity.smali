.class public final Lcom/alipay/sdk/app/PayResultActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/app/PayResultActivity$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "{\"isLogin\":\"false\"}"

.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/lang/String; = "hk.alipay.wallet"

.field public static final d:Ljava/lang/String; = "phonecashier.pay.hash"

.field public static final e:Ljava/lang/String; = "orderSuffix"

.field public static final f:Ljava/lang/String; = "externalPkgName"

.field public static final g:Ljava/lang/String; = "phonecashier.pay.result"

.field public static final h:Ljava/lang/String; = "phonecashier.pay.resultOrderHash"


# instance fields
.field private i:Lcom/alipay/sdk/sys/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/sdk/app/PayResultActivity;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/app/PayResultActivity;->i:Lcom/alipay/sdk/sys/a;

    return-void
.end method

.method private static a(Landroid/app/Activity;I)V
    .registers 6

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alipay/sdk/app/f;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/app/f;-><init>(Landroid/app/Activity;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6b

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    :try_start_11
    const-string v0, "hk.alipay.wallet"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alipayhk://platformapi/startApp?appId=20000125&schemePaySession="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&orderSuffix="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {p2, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {p3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&externalPkgName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {p3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_66
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_66} :catch_6c

    :goto_66
    if-eqz p0, :cond_6b

    :try_start_68
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_6b} :catch_71

    :cond_6b
    :goto_6b
    return-void

    :catch_6c
    move-exception v0

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_66

    :catch_71
    move-exception v0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_6b
.end method

.method private static a(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/app/PayResultActivity$a;->b:Ljava/lang/String;

    sget-object v0, Lcom/alipay/sdk/app/PayResultActivity;->b:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/alipay/sdk/app/PayResultActivity;->a(Ljava/util/HashMap;Ljava/lang/String;)Z

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sput-object p0, Lcom/alipay/sdk/app/PayResultActivity$a;->b:Ljava/lang/String;

    sget-object v0, Lcom/alipay/sdk/app/PayResultActivity;->b:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lcom/alipay/sdk/app/PayResultActivity;->a(Ljava/util/HashMap;Ljava/lang/String;)Z

    return-void
.end method

.method private static a(Ljava/util/HashMap;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    monitor-enter v1

    :try_start_d
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_5

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_13

    throw v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_4
    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "orderSuffix"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    const/4 v0, 0x1

    :cond_15
    if-eqz v0, :cond_43

    const-string v0, "phonecashier.pay.hash"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/app/PayResultActivity$a;->a:Ljava/lang/String;

    const-string v0, "orderSuffix"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "externalPkgName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/alipay/sdk/sys/a$a;->a(Landroid/content/Intent;)Lcom/alipay/sdk/sys/a;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/sdk/app/PayResultActivity;->i:Lcom/alipay/sdk/sys/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayResultActivity;->i:Lcom/alipay/sdk/sys/a;

    if-nez v1, :cond_38

    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayResultActivity;->finish()V

    :cond_38
    sget-object v1, Lcom/alipay/sdk/app/PayResultActivity$a;->a:Ljava/lang/String;

    invoke-static {p0, v1, v0, v2}, Lcom/alipay/sdk/app/PayResultActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x12c

    invoke-static {p0, v0}, Lcom/alipay/sdk/app/PayResultActivity;->a(Landroid/app/Activity;I)V

    :goto_42
    return-void

    :cond_43
    iget-object v0, p0, Lcom/alipay/sdk/app/PayResultActivity;->i:Lcom/alipay/sdk/sys/a;

    if-nez v0, :cond_4a

    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayResultActivity;->finish()V

    :cond_4a
    const-string v0, "phonecashier.pay.result"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "phonecashier.pay.resultOrderHash"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_65

    sget-object v2, Lcom/alipay/sdk/app/PayResultActivity$a;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9d

    :cond_65
    iget-object v0, p0, Lcom/alipay/sdk/app/PayResultActivity;->i:Lcom/alipay/sdk/sys/a;

    const-string v2, "biz"

    const-string v3, "SchemePayWrongHashEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/alipay/sdk/app/PayResultActivity$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/sdk/app/PayResultActivity$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/sdk/app/PayResultActivity;->a(Ljava/lang/String;)V

    const/16 v0, 0x12c

    invoke-static {p0, v0}, Lcom/alipay/sdk/app/PayResultActivity;->a(Landroid/app/Activity;I)V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_97} :catch_98

    goto :goto_42

    :catch_98
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayResultActivity;->finish()V

    goto :goto_42

    :cond_9d
    :try_start_9d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b2

    sget-object v1, Lcom/alipay/sdk/app/PayResultActivity$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/sdk/app/PayResultActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a8
    const-string v0, ""

    sput-object v0, Lcom/alipay/sdk/app/PayResultActivity$a;->a:Ljava/lang/String;

    const/16 v0, 0x12c

    invoke-static {p0, v0}, Lcom/alipay/sdk/app/PayResultActivity;->a(Landroid/app/Activity;I)V

    goto :goto_42

    :cond_b2
    sget-object v0, Lcom/alipay/sdk/app/PayResultActivity$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/sdk/app/PayResultActivity;->a(Ljava/lang/String;)V
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_b7} :catch_98

    goto :goto_a8
.end method
