.class public Lcom/alipay/sdk/app/PayTask;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/app/PayTask$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/Object;

.field private static h:J = 0x0L

.field private static final i:J = 0xbb8L

.field private static j:J


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/alipay/sdk/widget/a;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/sdk/app/PayTask$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/util/e;

    sput-object v0, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/sdk/app/PayTask;->h:J

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/alipay/sdk/app/PayTask;->j:J

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "wappaygw.alipay.com/service/rest.htm"

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->d:Ljava/lang/String;

    const-string v0, "mclient.alipay.com/service/rest.htm"

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->e:Ljava/lang/String;

    const-string v0, "mclient.alipay.com/home/exterfaceAssign.htm"

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->g:Ljava/util/Map;

    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/sys/b;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/alipay/sdk/widget/a;

    const-string v1, "\u53bb\u652f\u4ed8\u5b9d\u4ed8\u6b3e"

    invoke-direct {v0, p1, v1}, Lcom/alipay/sdk/widget/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/widget/a;

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/app/PayTask;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private a()Lcom/alipay/sdk/util/e$a;
    .registers 2

    new-instance v0, Lcom/alipay/sdk/app/h;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/h;-><init>(Lcom/alipay/sdk/app/PayTask;)V

    return-object v0
.end method

.method private a(Lcom/alipay/sdk/sys/a;Lcom/alipay/sdk/protocol/b;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p2}, Lcom/alipay/sdk/protocol/b;->c()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    const-class v3, Lcom/alipay/sdk/app/H5PayActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const-string v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_26

    const/4 v3, 0x1

    aget-object v0, v0, v3

    const-string v3, "cookie"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {p1, v1}, Lcom/alipay/sdk/sys/a$a;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v1, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_34
    sget-object v0, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_39} :catch_49
    .catchall {:try_start_34 .. :try_end_39} :catchall_53

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_53

    invoke-static {}, Lcom/alipay/sdk/app/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;

    move-result-object v0

    :cond_48
    :goto_48
    return-object v0

    :catch_49
    move-exception v0

    :try_start_4a
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_48

    :catchall_53
    move-exception v0

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_53

    throw v0
.end method

.method private a(Lcom/alipay/sdk/sys/a;Lcom/alipay/sdk/protocol/b;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v7, 0x0

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/alipay/sdk/protocol/b;->c()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    const-class v4, Lcom/alipay/sdk/app/H5PayActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_f
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-static {v4}, Lcom/alipay/sdk/encrypt/a;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Lcom/alipay/sdk/util/n;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "url"

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "title"

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "version"

    const-string v5, "v2"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "method"

    const-string v5, "method"

    const-string v6, "POST"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_43} :catch_c9

    invoke-static {v0}, Lcom/alipay/sdk/app/j;->a(Z)V

    invoke-static {v7}, Lcom/alipay/sdk/app/j;->a(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/alipay/sdk/sys/a$a;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v2, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_54
    sget-object v1, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    invoke-static {}, Lcom/alipay/sdk/app/j;->b()Z

    move-result v3

    invoke-static {}, Lcom/alipay/sdk/app/j;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/alipay/sdk/app/j;->a(Z)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/alipay/sdk/app/j;->a(Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_69} :catch_dd
    .catchall {:try_start_54 .. :try_end_69} :catchall_e7

    :try_start_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_e7

    const-string v1, ""

    if-eqz v3, :cond_b2

    :try_start_6e
    new-instance v2, Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/sdk/encrypt/a;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Lcom/alipay/sdk/util/n;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/sdk/protocol/b;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v3

    move v2, v0

    :goto_80
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_120

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/protocol/b;

    invoke-virtual {v0}, Lcom/alipay/sdk/protocol/b;->b()Lcom/alipay/sdk/protocol/a;

    move-result-object v5

    sget-object v6, Lcom/alipay/sdk/protocol/a;->e:Lcom/alipay/sdk/protocol/a;

    if-ne v5, v6, :cond_ea

    invoke-virtual {v0}, Lcom/alipay/sdk/protocol/b;->c()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v5, 0x2

    aget-object v0, v0, v5

    invoke-static {p1, v0}, Lcom/alipay/sdk/util/n;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/alipay/sdk/app/j;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_b0} :catch_ee

    move-result-object v0

    :goto_b1
    move-object v1, v0

    :cond_b2
    :goto_b2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c8

    :try_start_b8
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/alipay/sdk/app/j;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_c7} :catch_fa

    move-result-object v1

    :cond_c8
    :goto_c8
    return-object v1

    :catch_c9
    move-exception v0

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    const-string v2, "biz"

    const-string v3, "H5PayDataAnalysisError"

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2, v3, v0, v1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_c8

    :catch_dd
    move-exception v0

    :try_start_de
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;

    move-result-object v1

    monitor-exit v2

    goto :goto_c8

    :catchall_e7
    move-exception v0

    monitor-exit v2
    :try_end_e9
    .catchall {:try_start_de .. :try_end_e9} :catchall_e7

    throw v0

    :cond_ea
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_80

    :catch_ee
    move-exception v0

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    const-string v2, "biz"

    const-string v3, "H5PayDataAnalysisError"

    invoke-static {p1, v2, v3, v0, v4}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_b2

    :catch_fa
    move-exception v0

    const-string v1, "biz"

    const-string v2, "H5PayDataAnalysisError"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v2, v0, v3}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    const/16 v0, 0x1f40

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/alipay/sdk/app/j;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c8

    :cond_120
    move-object v0, v1

    goto :goto_b1
.end method

.method private a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->showLoading()V

    :try_start_5
    new-instance v0, Lcom/alipay/sdk/packet/impl/f;

    invoke-direct {v0}, Lcom/alipay/sdk/packet/impl/f;-><init>()V

    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, p1, v3, p2}, Lcom/alipay/sdk/packet/impl/f;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/packet/b;->c()Lorg/json/JSONObject;

    move-result-object v4

    const-string v0, "end_code"

    const/4 v3, 0x0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "form"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "onload"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/protocol/b;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v6

    move v3, v2

    :goto_30
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_51

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/protocol/b;

    invoke-virtual {v0}, Lcom/alipay/sdk/protocol/b;->b()Lcom/alipay/sdk/protocol/a;

    move-result-object v0

    sget-object v7, Lcom/alipay/sdk/protocol/a;->c:Lcom/alipay/sdk/protocol/a;

    if-ne v0, v7, :cond_4d

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/protocol/b;

    invoke-static {v0}, Lcom/alipay/sdk/protocol/b;->a(Lcom/alipay/sdk/protocol/b;)V

    :cond_4d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_30

    :cond_51
    invoke-direct {p0, p1, v4}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/sys/a;Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->dismissLoading()V

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    iget-object v3, p1, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {v0, p1, p2, v3}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9c

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/protocol/b;

    invoke-virtual {v0}, Lcom/alipay/sdk/protocol/b;->b()Lcom/alipay/sdk/protocol/a;

    move-result-object v3

    sget-object v4, Lcom/alipay/sdk/protocol/a;->b:Lcom/alipay/sdk/protocol/a;

    if-ne v3, v4, :cond_81

    invoke-direct {p0, p1, v0}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/sys/a;Lcom/alipay/sdk/protocol/b;)Ljava/lang/String;
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_75} :catch_c2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_75} :catch_de
    .catchall {:try_start_5 .. :try_end_75} :catchall_f5

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->dismissLoading()V

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    iget-object v2, p1, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {v1, p1, p2, v2}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    :goto_80
    return-object v0

    :cond_81
    :try_start_81
    invoke-virtual {v0}, Lcom/alipay/sdk/protocol/b;->b()Lcom/alipay/sdk/protocol/a;

    move-result-object v3

    sget-object v4, Lcom/alipay/sdk/protocol/a;->d:Lcom/alipay/sdk/protocol/a;

    if-ne v3, v4, :cond_98

    invoke-direct {p0, p1, v0, v5}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/sys/a;Lcom/alipay/sdk/protocol/b;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_8c} :catch_c2
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_8c} :catch_de
    .catchall {:try_start_81 .. :try_end_8c} :catchall_f5

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->dismissLoading()V

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    iget-object v2, p1, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {v1, p1, p2, v2}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    :cond_98
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5e

    :cond_9c
    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->dismissLoading()V

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    iget-object v2, p1, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {v0, p1, p2, v2}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_a7
    if-nez v0, :cond_b3

    sget-object v0, Lcom/alipay/sdk/app/k;->b:Lcom/alipay/sdk/app/k;

    invoke-virtual {v0}, Lcom/alipay/sdk/app/k;->a()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/sdk/app/k;->b(I)Lcom/alipay/sdk/app/k;

    move-result-object v0

    :cond_b3
    invoke-virtual {v0}, Lcom/alipay/sdk/app/k;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/sdk/app/k;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/j;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_80

    :catch_c2
    move-exception v0

    :try_start_c3
    sget-object v1, Lcom/alipay/sdk/app/k;->d:Lcom/alipay/sdk/app/k;

    invoke-virtual {v1}, Lcom/alipay/sdk/app/k;->a()I

    move-result v1

    invoke-static {v1}, Lcom/alipay/sdk/app/k;->b(I)Lcom/alipay/sdk/app/k;

    move-result-object v1

    const-string v2, "net"

    invoke-static {p1, v2, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d2
    .catchall {:try_start_c3 .. :try_end_d2} :catchall_f5

    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->dismissLoading()V

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    iget-object v2, p1, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {v0, p1, p2, v2}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_a7

    :catch_de
    move-exception v0

    :try_start_df
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    const-string v2, "biz"

    const-string v3, "H5PayDataAnalysisError"

    invoke-static {p1, v2, v3, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e9
    .catchall {:try_start_df .. :try_end_e9} :catchall_f5

    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->dismissLoading()V

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    iget-object v2, p1, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {v0, p1, p2, v2}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_a7

    :catchall_f5
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->dismissLoading()V

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    iget-object v2, p1, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {v1, p1, p2, v2}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/sdk/sys/a;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/sdk/data/a$a;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0, p4, p2}, Lcom/alipay/sdk/util/n;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/util/List;)Lcom/alipay/sdk/util/n$a;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0, p0}, Lcom/alipay/sdk/util/n$a;->a(Lcom/alipay/sdk/sys/a;)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v0}, Lcom/alipay/sdk/util/n$a;->a()Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v0, v0, Lcom/alipay/sdk/util/n$a;->a:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "hk.alipay.wallet"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_1e
    :goto_1e
    return-object p3

    :cond_1f
    const-string v0, "mspl"

    const-string v1, "PayTask not_login"

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/alipay/sdk/app/PayResultActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alipay/sdk/app/PayResultActivity;

    invoke-direct {v1, p4, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "orderSuffix"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "externalPkgName"

    invoke-virtual {p4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "phonecashier.pay.hash"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v1}, Lcom/alipay/sdk/sys/a$a;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Intent;)V

    invoke-virtual {p4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v1, Lcom/alipay/sdk/app/PayResultActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_5f
    const-string v2, "mspl"

    const-string v3, "PayTask wait"

    invoke-static {v2, v3}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/sdk/app/PayResultActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_6f
    .catch Ljava/lang/InterruptedException; {:try_start_5f .. :try_end_6f} :catch_8b
    .catchall {:try_start_5f .. :try_end_6f} :catchall_99

    :try_start_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_99

    sget-object p3, Lcom/alipay/sdk/app/PayResultActivity$a;->b:Ljava/lang/String;

    const-string v0, "mspl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PayTask ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :catch_8b
    move-exception v0

    :try_start_8c
    const-string v0, "mspl"

    const-string v2, "PayTask interrupted"

    invoke-static {v0, v2}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;

    move-result-object p3

    monitor-exit v1

    goto :goto_1e

    :catchall_99
    move-exception v0

    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_8c .. :try_end_9b} :catchall_99

    throw v0
.end method

.method private declared-synchronized a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/alipay/sdk/app/PayTask;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "biz"

    const-string v1, "RepPay"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/sdk/app/j;->d()Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_111

    move-result-object v0

    :goto_14
    monitor-exit p0

    return-object v0

    :cond_16
    if-eqz p3, :cond_1b

    :try_start_18
    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->showLoading()V

    :cond_1b
    const-string v0, "payment_inst="

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_114

    const-string v0, "payment_inst="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0xd

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_3c

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3c
    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "alipay"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/app/i;->a(Ljava/lang/String;)V

    :goto_57
    const-string v0, "service=alipay.acquire.mr.ord.createandpay"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/sdk/cons/a;->u:Z

    :cond_62
    sget-boolean v0, Lcom/alipay/sdk/cons/a;->u:Z

    if-eqz v0, :cond_7f

    const-string v0, "https://wappaygw.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11b

    const-string v0, "https://wappaygw.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "https://wappaygw.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_7f
    :goto_7f
    const-string v0, ""
    :try_end_81
    .catchall {:try_start_18 .. :try_end_81} :catchall_111

    :try_start_81
    const-string v0, "mspl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pay prepared: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/alipay/sdk/app/PayTask;->a(Ljava/lang/String;Lcom/alipay/sdk/sys/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mspl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pay raw result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/alipay/sdk/util/i;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_be} :catch_136
    .catchall {:try_start_81 .. :try_end_be} :catchall_17a

    :try_start_be
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

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/alipay/sdk/data/a;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->dismissLoading()V

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {v1, p1, p2, v2}, Lcom/alipay/sdk/app/statistic/a;->b(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    :goto_f7
    const-string v1, "mspl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pay returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10f
    .catchall {:try_start_be .. :try_end_10f} :catchall_111

    goto/16 :goto_14

    :catchall_111
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_114
    :try_start_114
    const-string v0, ""

    invoke-static {v0}, Lcom/alipay/sdk/app/i;->a(Ljava/lang/String;)V

    goto/16 :goto_57

    :cond_11b
    const-string v0, "https://mclient.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    const-string v0, "https://mclient.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "https://mclient.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_133
    .catchall {:try_start_114 .. :try_end_133} :catchall_111

    move-result-object p2

    goto/16 :goto_7f

    :catch_136
    move-exception v0

    :try_start_137
    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_13e
    .catchall {:try_start_137 .. :try_end_13e} :catchall_17a

    :try_start_13e
    const-string v0, "biz"

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

    invoke-static {p1, v0, v2, v3}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/alipay/sdk/data/a;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->dismissLoading()V

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p1, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {v0, p1, p2, v2}, Lcom/alipay/sdk/app/statistic/a;->b(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_f7

    :catchall_17a
    move-exception v0

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

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/alipay/sdk/data/a;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->dismissLoading()V

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {v1, p1, p2, v2}, Lcom/alipay/sdk/app/statistic/a;->b(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_1b5
    .catchall {:try_start_13e .. :try_end_1b5} :catchall_111
.end method

.method private a(Ljava/lang/String;Lcom/alipay/sdk/sys/a;)Ljava/lang/String;
    .registers 10

    const-string v0, ""

    invoke-virtual {p2, p1}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "paymethod=\"expressGateway\""

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0, p2, v2}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/data/a;->i()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v1

    iget-boolean v1, v1, Lcom/alipay/sdk/data/a;->a:Z

    if-eqz v1, :cond_25

    if-nez v0, :cond_27

    :cond_25
    sget-object v0, Lcom/alipay/sdk/app/i;->a:Ljava/util/List;

    :cond_27
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-static {p2, v1, v0}, Lcom/alipay/sdk/util/n;->b(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_b3

    new-instance v3, Lcom/alipay/sdk/util/e;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->a()Lcom/alipay/sdk/util/e$a;

    move-result-object v4

    invoke-direct {v3, v1, p2, v4}, Lcom/alipay/sdk/util/e;-><init>(Landroid/app/Activity;Lcom/alipay/sdk/sys/a;Lcom/alipay/sdk/util/e$a;)V

    const-string v1, "mspl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pay inner started: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/alipay/sdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "mspl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pay inner raw result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/sdk/util/e;->a()V

    const-string v3, "failed"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_81

    const-string v3, "scheme_failed"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8d

    :cond_81
    const-string v0, "biz"

    const-string v1, "LogBindCalledH5"

    invoke-static {p2, v0, v1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, v2}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_8d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_99

    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    :cond_99
    const-string v3, "{\"isLogin\":\"false\"}"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b0

    const-string v3, "biz"

    const-string v4, "LogHkLoginByIntent"

    invoke-static {p2, v3, v4}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-static {p2, v2, v0, v1, v3}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    :cond_b0
    move-object v0, v1

    goto/16 :goto_12

    :cond_b3
    const-string v0, "biz"

    const-string v1, "LogCalledH5"

    invoke-static {p2, v0, v1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, v2}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    const-string v1, "}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "9000"

    const-string v1, "resultStatus"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v0, "result"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/sdk/app/PayTask$a;

    new-array v4, v8, [Ljava/lang/String;

    if-eqz v1, :cond_45

    invoke-virtual {v1}, Lcom/alipay/sdk/app/PayTask$a;->b()Ljava/lang/String;

    move-result-object v2

    :goto_27
    aput-object v2, v4, v6

    if-eqz v1, :cond_48

    invoke-virtual {v1}, Lcom/alipay/sdk/app/PayTask$a;->d()Ljava/lang/String;

    move-result-object v2

    :goto_2f
    aput-object v2, v4, v7

    invoke-static {v4}, Lcom/alipay/sdk/app/PayTask;->a([Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "callBackUrl"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string v0, "callBackUrl"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_44
    :goto_44
    return-object v0

    :cond_45
    const-string v2, ""

    goto :goto_27

    :cond_48
    const-string v2, ""

    goto :goto_2f

    :cond_4b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xf

    if-le v2, v4, :cond_ab

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "&callBackUrl=\""

    const-string v5, "\""

    invoke-static {v4, v5, v0}, Lcom/alipay/sdk/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    const-string v4, "&call_back_url=\""

    const-string v5, "\""

    invoke-static {v4, v5, v0}, Lcom/alipay/sdk/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    const-string v4, "&return_url=\""

    const-string v5, "\""

    invoke-static {v4, v5, v0}, Lcom/alipay/sdk/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    const/4 v4, 0x3

    const-string v5, "&return_url="

    const-string v6, "&"

    invoke-static {v5, v6, v0}, Lcom/alipay/sdk/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "utf-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "&callBackUrl="

    const-string v6, "&"

    invoke-static {v5, v6, v0}, Lcom/alipay/sdk/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "utf-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "call_back_url=\""

    const-string v6, "\""

    invoke-static {v5, v6, v0}, Lcom/alipay/sdk/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v2}, Lcom/alipay/sdk/app/PayTask;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_44

    :cond_ab
    if-eqz v1, :cond_b9

    if-eqz v3, :cond_c4

    invoke-virtual {v1}, Lcom/alipay/sdk/app/PayTask$a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_b3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_44

    :cond_b9
    if-eqz v1, :cond_c9

    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/data/a;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    :cond_c4
    invoke-virtual {v1}, Lcom/alipay/sdk/app/PayTask$a;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_b3

    :cond_c9
    const-string v0, ""

    goto/16 :goto_44
.end method

.method private static final varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    const-string v0, ""

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    array-length v2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_16

    aget-object v0, p0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_16
    const-string v0, ""

    goto :goto_4
.end method

.method private a(Lcom/alipay/sdk/sys/a;Lorg/json/JSONObject;)V
    .registers 6

    :try_start_0
    const-string v0, "tid"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_key"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/sys/b;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/sdk/tid/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/b;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/alipay/sdk/tid/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_27} :catch_28

    :cond_27
    :goto_27
    return-void

    :catch_28
    move-exception v0

    const-string v1, "biz"

    const-string v2, "ParserTidClientKeyEx"

    invoke-static {p1, v1, v2, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27
.end method

.method private varargs a(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v2, 0x0

    const-string v1, ""

    array-length v4, p6

    move v3, v2

    :goto_5
    if-ge v3, v4, :cond_5a

    aget-object v5, p6, v3

    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_19
    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    if-eqz p2, :cond_44

    move v0, v2

    :goto_28
    return v0

    :cond_29
    if-eqz p1, :cond_46

    const-string v1, "&"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_44
    :goto_44
    const/4 v0, 0x1

    goto :goto_28

    :cond_46
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_44

    :cond_5a
    move-object v0, v1

    goto :goto_1f
.end method

.method private static b()Z
    .registers 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/alipay/sdk/app/PayTask;->j:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_12

    sput-wide v0, Lcom/alipay/sdk/app/PayTask;->j:J

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public static declared-synchronized fetchSdkConfig(Landroid/content/Context;)Z
    .registers 11

    const/4 v0, 0x0

    const-class v2, Lcom/alipay/sdk/app/PayTask;

    monitor-enter v2

    :try_start_4
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alipay/sdk/sys/b;->a(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sget-wide v6, Lcom/alipay/sdk/app/PayTask;->h:J

    sub-long v6, v4, v6

    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/data/a;->f()I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1d} :catch_38
    .catchall {:try_start_4 .. :try_end_1d} :catchall_3d

    move-result v1

    int-to-long v8, v1

    cmp-long v1, v6, v8

    if-gez v1, :cond_25

    :goto_23
    monitor-exit v2

    return v0

    :cond_25
    :try_start_25
    sput-wide v4, Lcom/alipay/sdk/app/PayTask;->h:J

    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v1

    invoke-static {}, Lcom/alipay/sdk/sys/a;->a()Lcom/alipay/sdk/sys/a;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alipay/sdk/data/a;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_36} :catch_38
    .catchall {:try_start_25 .. :try_end_36} :catchall_3d

    const/4 v0, 0x1

    goto :goto_23

    :catch_38
    move-exception v1

    :try_start_39
    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_23

    :catchall_3d
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public dismissLoading()V
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/widget/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/widget/a;

    :cond_c
    return-void
.end method

.method public declared-synchronized fetchOrderInfoFromH5PayUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_376

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v0, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ba

    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(http|https)://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ba

    invoke-static {v0}, Lcom/alipay/sdk/util/n;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "req_data"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "<request_token>"

    const-string v2, "</request_token>"

    invoke-static {v1, v2, v0}, Lcom/alipay/sdk/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/sdk/sys/a;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_input_charset=\"utf-8\"&ordertoken=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"&pay_channel_id=\"alipay_sdk\"&bizcontext=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "sc"

    const-string v3, "h5tonative"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b7} :catch_372
    .catchall {:try_start_1 .. :try_end_b7} :catchall_506

    move-result-object v0

    :goto_b8
    monitor-exit p0

    return-object v0

    :cond_ba
    :try_start_ba
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_167

    :cond_f0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(http|https)://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_167

    invoke-static {v0}, Lcom/alipay/sdk/util/n;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "req_data"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "<request_token>"

    const-string v2, "</request_token>"

    invoke-static {v1, v2, v0}, Lcom/alipay/sdk/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/sdk/sys/a;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_input_charset=\"utf-8\"&ordertoken=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"&pay_channel_id=\"alipay_sdk\"&bizcontext=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "sc"

    const-string v3, "h5tonative"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b8

    :cond_167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_213

    :cond_19d
    const-string v0, "alipay.wap.create.direct.pay.by.user"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1ad

    const-string v0, "create_forex_trade_wap"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_213

    :cond_1ad
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(http|https)://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_213

    new-instance v0, Lcom/alipay/sdk/sys/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "bizcontext"

    const-string v3, "sc"

    const-string v4, "h5tonative"

    invoke-virtual {v0, v3, v4}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new_external_info=="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b8

    :cond_213
    const-string v0, "^(http|https)://(maliprod\\.alipay\\.com/w/trade_pay\\.do.?|mali\\.alipay\\.com/w/trade_pay\\.do.?|mclient\\.alipay\\.com/w/trade_pay\\.do.?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_37a

    const-string v0, "?"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/alipay/sdk/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37a

    invoke-static {v0}, Lcom/alipay/sdk/util/n;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "trade_no"

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v8, "trade_no"

    aput-object v8, v6, v0

    const/4 v0, 0x1

    const-string v8, "alipay_trade_no"

    aput-object v8, v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/alipay/sdk/app/PayTask;->a(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37a

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "pay_phase_id"

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v7, "payPhaseId"

    aput-object v7, v6, v0

    const/4 v0, 0x1

    const-string v7, "pay_phase_id"

    aput-object v7, v6, v0

    const/4 v0, 0x2

    const-string v7, "out_relation_id"

    aput-object v7, v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/alipay/sdk/app/PayTask;->a(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z

    const-string v0, "&biz_sub_type=\"TRADE\""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&biz_type=\"trade\""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "app_name"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d6

    const-string v1, "cid"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d6

    const-string v0, "ali1688"

    :cond_294
    :goto_294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&app_name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "extern_token"

    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v7, "extern_token"

    aput-object v7, v6, v0

    const/4 v0, 0x1

    const-string v7, "cid"

    aput-object v7, v6, v0

    const/4 v0, 0x2

    const-string v7, "sid"

    aput-object v7, v6, v0

    const/4 v0, 0x3

    const-string v7, "s_id"

    aput-object v7, v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/alipay/sdk/app/PayTask;->a(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2fb

    const-string v0, ""

    goto/16 :goto_b8

    :cond_2d6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_294

    const-string v1, "sid"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f8

    const-string v1, "s_id"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_294

    :cond_2f8
    const-string v0, "tb"

    goto :goto_294

    :cond_2fb
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "appenv"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v7, "appenv"

    aput-object v7, v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/alipay/sdk/app/PayTask;->a(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z

    const-string v0, "&pay_channel_id=\"alipay_sdk\""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/alipay/sdk/app/PayTask$a;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/alipay/sdk/app/PayTask$a;-><init>(Lcom/alipay/sdk/app/PayTask;Lcom/alipay/sdk/app/g;)V

    const-string v0, "return_url"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/app/PayTask$a;->a(Ljava/lang/String;)V

    const-string v0, "show_url"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/app/PayTask$a;->c(Ljava/lang/String;)V

    const-string v0, "pay_order_id"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/app/PayTask$a;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/sdk/sys/a;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    const-string v3, ""

    const-string v5, ""

    invoke-direct {v0, v2, v3, v5}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&bizcontext=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sc"

    const-string v4, "h5tonative"

    invoke-virtual {v0, v3, v4}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->g:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_370
    .catch Ljava/lang/Throwable; {:try_start_ba .. :try_end_370} :catch_372
    .catchall {:try_start_ba .. :try_end_370} :catchall_506

    goto/16 :goto_b8

    :catch_372
    move-exception v0

    :try_start_373
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    :cond_376
    const-string v0, ""
    :try_end_378
    .catchall {:try_start_373 .. :try_end_378} :catchall_506

    goto/16 :goto_b8

    :cond_37a
    :try_start_37a
    const-string v0, "mclient.alipay.com/cashier/mobilepay.htm"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_390

    invoke-static {}, Lcom/alipay/sdk/app/EnvUtils;->isSandBox()Z

    move-result v0

    if-eqz v0, :cond_3c4

    const-string v0, "mobileclientgw.alipaydev.com/cashier/mobilepay.htm"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c4

    :cond_390
    new-instance v0, Lcom/alipay/sdk/sys/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sc"

    const-string v2, "h5tonative"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "url"

    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "bizcontext"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "new_external_info==%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b8

    :cond_3c4
    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/data/a;->d()Z

    move-result v0

    if-eqz v0, :cond_376

    const-string v0, "^https?://(maliprod\\.alipay\\.com|mali\\.alipay\\.com)/batch_payment\\.do\\?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_376

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "return_url"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "show_url"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "pay_order_id"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "trade_nos"

    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    const/4 v5, 0x1

    const-string v6, "alipay_trade_no"

    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v0}, Lcom/alipay/sdk/app/PayTask;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "payPhaseId"

    invoke-virtual {v1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "pay_phase_id"

    invoke-virtual {v1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x2

    const-string v7, "out_relation_id"

    invoke-virtual {v1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    invoke-static {v0}, Lcom/alipay/sdk/app/PayTask;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x4

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v8, "app_name"

    invoke-virtual {v1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v8, 0x1

    const-string v0, "cid"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_509

    const-string v0, "ali1688"

    :goto_44a
    aput-object v0, v7, v8

    const/4 v8, 0x2

    const-string v0, "sid"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50d

    const-string v0, "tb"

    :goto_45b
    aput-object v0, v7, v8

    const/4 v8, 0x3

    const-string v0, "s_id"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_511

    const-string v0, "tb"

    :goto_46c
    aput-object v0, v7, v8

    invoke-static {v7}, Lcom/alipay/sdk/app/PayTask;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "extern_token"

    invoke-virtual {v1, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "cid"

    invoke-virtual {v1, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "sid"

    invoke-virtual {v1, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "s_id"

    invoke-virtual {v1, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/alipay/sdk/app/PayTask;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "appenv"

    invoke-virtual {v1, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v9

    invoke-static {v8}, Lcom/alipay/sdk/app/PayTask;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_376

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_376

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_376

    new-instance v8, Lcom/alipay/sdk/sys/a;

    iget-object v9, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    const-string v10, ""

    const-string v11, ""

    invoke-direct {v8, v9, v10, v11}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "trade_no=\"%s\"&pay_phase_id=\"%s\"&biz_type=\"trade\"&biz_sub_type=\"TRADE\"&app_name=\"%s\"&extern_token=\"%s\"&appenv=\"%s\"&pay_channel_id=\"alipay_sdk\"&bizcontext=\"%s\""

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    const/4 v6, 0x2

    aput-object v0, v10, v6

    const/4 v0, 0x3

    aput-object v7, v10, v0

    const/4 v0, 0x4

    aput-object v1, v10, v0

    const/4 v0, 0x5

    const-string v1, "sc"

    const-string v6, "h5tonative"

    invoke-virtual {v8, v1, v6}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/sdk/app/PayTask$a;

    const/4 v6, 0x0

    invoke-direct {v1, p0, v6}, Lcom/alipay/sdk/app/PayTask$a;-><init>(Lcom/alipay/sdk/app/PayTask;Lcom/alipay/sdk/app/g;)V

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/app/PayTask$a;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/alipay/sdk/app/PayTask$a;->c(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/alipay/sdk/app/PayTask$a;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/alipay/sdk/app/PayTask$a;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->g:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_504
    .catch Ljava/lang/Throwable; {:try_start_37a .. :try_end_504} :catch_372
    .catchall {:try_start_37a .. :try_end_504} :catchall_506

    goto/16 :goto_b8

    :catchall_506
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_509
    :try_start_509
    const-string v0, ""

    goto/16 :goto_44a

    :cond_50d
    const-string v0, ""

    goto/16 :goto_45b

    :cond_511
    const-string v0, ""
    :try_end_513
    .catch Ljava/lang/Throwable; {:try_start_509 .. :try_end_513} :catch_372
    .catchall {:try_start_509 .. :try_end_513} :catchall_506

    goto/16 :goto_46c
.end method

.method public declared-synchronized fetchTradeToken()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/alipay/sdk/sys/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    const-string v2, ""

    const-string v3, "fetchTradeToken"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/i;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "15.7.4"

    return-object v0
.end method

.method public declared-synchronized h5Pay(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Z)Lcom/alipay/sdk/util/H5PayResultModel;
    .registers 12

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    new-instance v1, Lcom/alipay/sdk/util/H5PayResultModel;

    invoke-direct {v1}, Lcom/alipay/sdk/util/H5PayResultModel;-><init>()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_6d

    :try_start_7
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    array-length v4, v2

    :goto_17
    if-ge v0, v4, :cond_32

    aget-object v5, v2, v0

    const-string v6, "={"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_2f

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/alipay/sdk/app/PayTask;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_32
    const-string v0, "resultStatus"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "resultStatus"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/util/H5PayResultModel;->setResultCode(Ljava/lang/String;)V

    :cond_45
    invoke-direct {p0, p2, v3}, Lcom/alipay/sdk/app/PayTask;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/util/H5PayResultModel;->setReturnUrl(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/sdk/util/H5PayResultModel;->getReturnUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "biz"

    const-string v2, "H5CbUrlEmpty"

    const-string v3, ""

    invoke-static {p1, v0, v2, v3}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_5f} :catch_61
    .catchall {:try_start_7 .. :try_end_5f} :catchall_6d

    :cond_5f
    :goto_5f
    monitor-exit p0

    return-object v1

    :catch_61
    move-exception v0

    :try_start_62
    const-string v2, "biz"

    const-string v3, "H5CbEx"

    invoke-static {p1, v2, v3, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_6d

    goto :goto_5f

    :catchall_6d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pay(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/alipay/sdk/sys/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    const-string v2, "pay"

    invoke-direct {v0, v1, p1, v2}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Z)Ljava/lang/String;
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

.method public declared-synchronized payInterceptorWithUrl(Ljava/lang/String;ZLcom/alipay/sdk/app/H5PayCallback;)Z
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/alipay/sdk/app/PayTask;->fetchOrderInfoFromH5PayUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "mspl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intercepted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/sdk/app/g;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/alipay/sdk/app/g;-><init>(Lcom/alipay/sdk/app/PayTask;Ljava/lang/String;ZLcom/alipay/sdk/app/H5PayCallback;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_3b

    move-result v0

    if-nez v0, :cond_39

    const/4 v0, 0x1

    :goto_37
    monitor-exit p0

    return v0

    :cond_39
    const/4 v0, 0x0

    goto :goto_37

    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized payV2(Ljava/lang/String;Z)Ljava/util/Map;
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

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    const-string v2, "payV2"

    invoke-direct {v0, v1, p1, v2}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Z)Ljava/lang/String;

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

.method public showLoading()V
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/widget/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->b()V

    :cond_9
    return-void
.end method
