.class public Lcom/alipay/sdk/app/AuthTask;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/Object;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/alipay/sdk/widget/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/alipay/sdk/util/e;

    sput-object v0, Lcom/alipay/sdk/app/AuthTask;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/sys/b;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/alipay/sdk/widget/a;

    const-string v1, "\u53bb\u652f\u4ed8\u5b9d\u6388\u6743"

    invoke-direct {v0, p1, v1}, Lcom/alipay/sdk/widget/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->c:Lcom/alipay/sdk/widget/a;

    return-void
.end method

.method private a()Lcom/alipay/sdk/util/e$a;
    .registers 2

    new-instance v0, Lcom/alipay/sdk/app/a;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/a;-><init>(Lcom/alipay/sdk/app/AuthTask;)V

    return-object v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/sdk/sys/a;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p3, p2}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/data/a;->i()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v2

    iget-boolean v2, v2, Lcom/alipay/sdk/data/a;->a:Z

    if-eqz v2, :cond_16

    if-nez v0, :cond_18

    :cond_16
    sget-object v0, Lcom/alipay/sdk/app/i;->a:Ljava/util/List;

    :cond_18
    iget-object v2, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-static {p3, v2, v0}, Lcom/alipay/sdk/util/n;->b(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_54

    new-instance v0, Lcom/alipay/sdk/util/e;

    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->a()Lcom/alipay/sdk/util/e$a;

    move-result-object v2

    invoke-direct {v0, p1, p3, v2}, Lcom/alipay/sdk/util/e;-><init>(Landroid/app/Activity;Lcom/alipay/sdk/sys/a;Lcom/alipay/sdk/util/e$a;)V

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "failed"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    const-string v2, "scheme_failed"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_49

    :cond_3d
    const-string v0, "biz"

    const-string v2, "LogBindCalledH5"

    invoke-static {p3, v0, v2}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, p3}, Lcom/alipay/sdk/app/AuthTask;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/sdk/sys/a;)Ljava/lang/String;

    move-result-object v0

    :cond_48
    :goto_48
    return-object v0

    :cond_49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_48

    :cond_54
    const-string v0, "biz"

    const-string v2, "LogCalledH5"

    invoke-static {p3, v0, v2}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, p3}, Lcom/alipay/sdk/app/AuthTask;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/sdk/sys/a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_48
.end method

.method private a(Lcom/alipay/sdk/sys/a;Lcom/alipay/sdk/protocol/b;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p2}, Lcom/alipay/sdk/protocol/b;->c()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    const-class v3, Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/alipay/sdk/sys/a$a;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v1, Lcom/alipay/sdk/app/AuthTask;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_28
    sget-object v0, Lcom/alipay/sdk/app/AuthTask;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2d} :catch_3d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_44

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_44

    invoke-static {}, Lcom/alipay/sdk/app/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;

    move-result-object v0

    :cond_3c
    :goto_3c
    return-object v0

    :catch_3d
    move-exception v0

    :try_start_3e
    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_3c

    :catchall_44
    move-exception v0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_44

    throw v0
.end method

.method static synthetic a(Lcom/alipay/sdk/app/AuthTask;)V
    .registers 1

    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    return-void
.end method

.method private b(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/sdk/sys/a;)Ljava/lang/String;
    .registers 9

    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->b()V

    const/4 v1, 0x0

    :try_start_4
    new-instance v0, Lcom/alipay/sdk/packet/impl/a;

    invoke-direct {v0}, Lcom/alipay/sdk/packet/impl/a;-><init>()V

    invoke-virtual {v0, p3, p1, p2}, Lcom/alipay/sdk/packet/impl/a;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/packet/b;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "form"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "onload"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/protocol/b;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    const/4 v0, 0x0

    move v2, v0

    :goto_26
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4c

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/protocol/b;

    invoke-virtual {v0}, Lcom/alipay/sdk/protocol/b;->b()Lcom/alipay/sdk/protocol/a;

    move-result-object v0

    sget-object v4, Lcom/alipay/sdk/protocol/a;->b:Lcom/alipay/sdk/protocol/a;

    if-ne v0, v4, :cond_48

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/protocol/b;

    invoke-direct {p0, p3, v0}, Lcom/alipay/sdk/app/AuthTask;->a(Lcom/alipay/sdk/sys/a;Lcom/alipay/sdk/protocol/b;)Ljava/lang/String;
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_43} :catch_6b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_43} :catch_80
    .catchall {:try_start_4 .. :try_end_43} :catchall_8d

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    :goto_47
    return-object v0

    :cond_48
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_26

    :cond_4c
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    move-object v0, v1

    :goto_50
    if-nez v0, :cond_5c

    sget-object v0, Lcom/alipay/sdk/app/k;->b:Lcom/alipay/sdk/app/k;

    invoke-virtual {v0}, Lcom/alipay/sdk/app/k;->a()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/sdk/app/k;->b(I)Lcom/alipay/sdk/app/k;

    move-result-object v0

    :cond_5c
    invoke-virtual {v0}, Lcom/alipay/sdk/app/k;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/sdk/app/k;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/j;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_47

    :catch_6b
    move-exception v0

    :try_start_6c
    sget-object v1, Lcom/alipay/sdk/app/k;->d:Lcom/alipay/sdk/app/k;

    invoke-virtual {v1}, Lcom/alipay/sdk/app/k;->a()I

    move-result v1

    invoke-static {v1}, Lcom/alipay/sdk/app/k;->b(I)Lcom/alipay/sdk/app/k;

    move-result-object v1

    const-string v2, "net"

    invoke-static {p3, v2, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7b
    .catchall {:try_start_6c .. :try_end_7b} :catchall_8d

    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    move-object v0, v1

    goto :goto_50

    :catch_80
    move-exception v0

    :try_start_81
    const-string v2, "biz"

    const-string v3, "H5AuthDataAnalysisError"

    invoke-static {p3, v2, v3, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_88
    .catchall {:try_start_81 .. :try_end_88} :catchall_8d

    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    move-object v0, v1

    goto :goto_50

    :catchall_8d
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    throw v0
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->c:Lcom/alipay/sdk/widget/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->c:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->b()V

    :cond_9
    return-void
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->c:Lcom/alipay/sdk/widget/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->c:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    :cond_9
    return-void
.end method


# virtual methods
.method public declared-synchronized auth(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/alipay/sdk/sys/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    const-string v2, "auth"

    invoke-direct {v0, v1, p1, v2}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/alipay/sdk/app/AuthTask;->innerAuth(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized authV2(Ljava/lang/String;Z)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/alipay/sdk/sys/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    const-string v2, "authV2"

    invoke-direct {v0, v1, p1, v2}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/alipay/sdk/app/AuthTask;->innerAuth(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/l;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)Ljava/util/Map;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized innerAuth(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10

    monitor-enter p0

    if-eqz p3, :cond_6

    :try_start_3
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->b()V

    :cond_6
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/sys/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1}, Lcom/alipay/sdk/app/i;->a(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_87

    :try_start_18
    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-direct {p0, v1, p2, p1}, Lcom/alipay/sdk/app/AuthTask;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/sdk/sys/a;)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_51
    .catchall {:try_start_18 .. :try_end_1d} :catchall_8a

    move-result-object v0

    :try_start_1e
    const-string v1, "biz"

    const-string v2, "PgReturn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-virtual {v1, p1, v2}, Lcom/alipay/sdk/data/a;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    iget-object v2, p1, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {v1, p1, p2, v2}, Lcom/alipay/sdk/app/statistic/a;->b(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_1e .. :try_end_4f} :catchall_87

    :goto_4f
    monitor-exit p0

    return-object v0

    :catch_51
    move-exception v1

    :try_start_52
    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_8a

    :try_start_55
    const-string v1, "biz"

    const-string v2, "PgReturn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-virtual {v1, p1, v2}, Lcom/alipay/sdk/data/a;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    iget-object v2, p1, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {v1, p1, p2, v2}, Lcom/alipay/sdk/app/statistic/a;->b(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_55 .. :try_end_86} :catchall_87

    goto :goto_4f

    :catchall_87
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_8a
    move-exception v0

    :try_start_8b
    const-string v1, "biz"

    const-string v2, "PgReturn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-virtual {v1, p1, v2}, Lcom/alipay/sdk/data/a;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    iget-object v2, p1, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {v1, p1, p2, v2}, Lcom/alipay/sdk/app/statistic/a;->b(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_bd
    .catchall {:try_start_8b .. :try_end_bd} :catchall_87
.end method
