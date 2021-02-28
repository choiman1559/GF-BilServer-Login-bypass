.class public final Lcom/alipay/sdk/data/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/data/a$a;
    }
.end annotation


# static fields
.field private static F:Lcom/alipay/sdk/data/a; = null

.field private static final b:Ljava/lang/String; = "DynCon"

.field private static final c:I = 0x2710

.field private static final d:Ljava/lang/String; = "https://h5.m.taobao.com/mlapp/olist.html"

.field private static final e:I = 0xa

.field private static final f:Z = true

.field private static final g:Z = true

.field private static final h:Z = false

.field private static final i:Z = false

.field private static final j:I = 0x3e8

.field private static final k:I = 0x4e20

.field private static final l:Ljava/lang/String; = "alipay_cashier_dynamic_config"

.field private static final m:Ljava/lang/String; = "timeout"

.field private static final n:Ljava/lang/String; = "h5_port_degrade"

.field private static final o:Ljava/lang/String; = "st_sdk_config"

.field private static final p:Ljava/lang/String; = "tbreturl"

.field private static final q:Ljava/lang/String; = "launchAppSwitch"

.field private static final r:Ljava/lang/String; = "configQueryInterval"

.field private static final s:Ljava/lang/String; = "deg_log_mcgw"

.field private static final t:Ljava/lang/String; = "deg_start_srv_first"

.field private static final u:Ljava/lang/String; = "scheme_pay_2"

.field private static final v:Ljava/lang/String; = "intercept_batch"


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/sdk/data/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public a:Z

.field private w:I

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lcom/alipay/sdk/data/a;->w:I

    iput-boolean v1, p0, Lcom/alipay/sdk/data/a;->x:Z

    const-string v0, "https://h5.m.taobao.com/mlapp/olist.html"

    iput-object v0, p0, Lcom/alipay/sdk/data/a;->y:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/alipay/sdk/data/a;->z:I

    iput-boolean v2, p0, Lcom/alipay/sdk/data/a;->A:Z

    iput-boolean v2, p0, Lcom/alipay/sdk/data/a;->B:Z

    iput-boolean v1, p0, Lcom/alipay/sdk/data/a;->a:Z

    iput-boolean v1, p0, Lcom/alipay/sdk/data/a;->C:Z

    iput-boolean v1, p0, Lcom/alipay/sdk/data/a;->D:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/data/a;->E:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/data/a;Lcom/alipay/sdk/sys/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/alipay/sdk/data/a;->a(Lcom/alipay/sdk/sys/a;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/data/a;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/alipay/sdk/data/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/alipay/sdk/sys/a;)V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/sdk/data/a;->l()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/sys/b;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alipay_cashier_dynamic_config"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v2, v0}, Lcom/alipay/sdk/util/j;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_15
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alipay/sdk/data/a;->a(Lorg/json/JSONObject;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_f} :catch_10

    goto :goto_6

    :catch_10
    move-exception v0

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "timeout"

    const/16 v1, 0x2710

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/sdk/data/a;->w:I

    const-string v0, "h5_port_degrade"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/sdk/data/a;->x:Z

    const-string v0, "tbreturl"

    const-string v1, "https://h5.m.taobao.com/mlapp/olist.html"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/data/a;->y:Ljava/lang/String;

    const-string v0, "configQueryInterval"

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/sdk/data/a;->z:I

    const-string v0, "launchAppSwitch"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/data/a$a;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/data/a;->E:Ljava/util/List;

    const-string v0, "scheme_pay_2"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/sdk/data/a;->A:Z

    const-string v0, "intercept_batch"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/sdk/data/a;->B:Z

    const-string v0, "deg_log_mcgw"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/sdk/data/a;->C:Z

    const-string v0, "deg_start_srv_first"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/sdk/data/a;->D:Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "st_sdk_config"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-direct {p0, v0}, Lcom/alipay/sdk/data/a;->a(Lorg/json/JSONObject;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_17} :catch_18

    goto :goto_6

    :catch_18
    move-exception v0

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_1d
    :try_start_1d
    const-string v0, "DynCon"

    const-string v1, "empty config"

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_24} :catch_18

    goto :goto_6
.end method

.method public static j()Lcom/alipay/sdk/data/a;
    .registers 1

    sget-object v0, Lcom/alipay/sdk/data/a;->F:Lcom/alipay/sdk/data/a;

    if-nez v0, :cond_10

    new-instance v0, Lcom/alipay/sdk/data/a;

    invoke-direct {v0}, Lcom/alipay/sdk/data/a;-><init>()V

    sput-object v0, Lcom/alipay/sdk/data/a;->F:Lcom/alipay/sdk/data/a;

    sget-object v0, Lcom/alipay/sdk/data/a;->F:Lcom/alipay/sdk/data/a;

    invoke-direct {v0}, Lcom/alipay/sdk/data/a;->k()V

    :cond_10
    sget-object v0, Lcom/alipay/sdk/data/a;->F:Lcom/alipay/sdk/data/a;

    return-object v0
.end method

.method private k()V
    .registers 5

    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/sys/b;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/alipay/sdk/sys/a;->a()Lcom/alipay/sdk/sys/a;

    move-result-object v1

    const-string v2, "alipay_cashier_dynamic_config"

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/alipay/sdk/util/j;->b(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/sdk/data/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private l()Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "timeout"

    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "h5_port_degrade"

    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->b()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "tbreturl"

    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "configQueryInterval"

    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->f()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "launchAppSwitch"

    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->i()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/sdk/data/a$a;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "scheme_pay_2"

    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->c()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "intercept_batch"

    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->d()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "deg_log_mcgw"

    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->g()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "deg_start_srv_first"

    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->h()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    iget v0, p0, Lcom/alipay/sdk/data/a;->w:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_c

    iget v0, p0, Lcom/alipay/sdk/data/a;->w:I

    const/16 v1, 0x4e20

    if-le v0, v1, :cond_16

    :cond_c
    const-string v0, "DynCon"

    const-string v1, "time(def) = 10000"

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2710

    :goto_15
    return v0

    :cond_16
    const-string v0, "DynCon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/sdk/data/a;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/sdk/data/a;->w:I

    goto :goto_15
.end method

.method public a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)V
    .registers 5

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/sdk/data/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/sdk/data/b;-><init>(Lcom/alipay/sdk/data/a;Lcom/alipay/sdk/sys/a;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/alipay/sdk/data/a;->a:Z

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alipay/sdk/data/a;->x:Z

    return v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alipay/sdk/data/a;->A:Z

    return v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alipay/sdk/data/a;->B:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/data/a;->y:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/alipay/sdk/data/a;->z:I

    return v0
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alipay/sdk/data/a;->C:Z

    return v0
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alipay/sdk/data/a;->D:Z

    return v0
.end method

.method public i()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/sdk/data/a$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/sdk/data/a;->E:Ljava/util/List;

    return-object v0
.end method
