.class public Lcom/alipay/sdk/tid/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/tid/b$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "alipay_tid_storage"

.field public static final b:Ljava/lang/String; = "tidinfo"

.field public static final c:Ljava/lang/String; = "upgraded_from_db"

.field public static final d:Ljava/lang/String; = "tid"

.field public static final e:Ljava/lang/String; = "client_key"

.field public static final f:Ljava/lang/String; = "timestamp"

.field public static final g:Ljava/lang/String; = "vimei"

.field public static final h:Ljava/lang/String; = "vimsi"

.field private static i:Landroid/content/Context;

.field private static o:Lcom/alipay/sdk/tid/b;


# instance fields
.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:J

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/sdk/tid/b;->i:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/tid/b;->p:Z

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/sdk/tid/b;
    .registers 3

    const-class v1, Lcom/alipay/sdk/tid/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/alipay/sdk/tid/b;->o:Lcom/alipay/sdk/tid/b;

    if-nez v0, :cond_e

    new-instance v0, Lcom/alipay/sdk/tid/b;

    invoke-direct {v0}, Lcom/alipay/sdk/tid/b;-><init>()V

    sput-object v0, Lcom/alipay/sdk/tid/b;->o:Lcom/alipay/sdk/tid/b;

    :cond_e
    sget-object v0, Lcom/alipay/sdk/tid/b;->i:Landroid/content/Context;

    if-nez v0, :cond_17

    sget-object v0, Lcom/alipay/sdk/tid/b;->o:Lcom/alipay/sdk/tid/b;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/tid/b;->b(Landroid/content/Context;)V

    :cond_17
    sget-object v0, Lcom/alipay/sdk/tid/b;->o:Lcom/alipay/sdk/tid/b;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit v1

    return-object v0

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 8

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/sdk/tid/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iput-object p1, p0, Lcom/alipay/sdk/tid/b;->j:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/sdk/tid/b;->k:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/sdk/tid/b;->m:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/sdk/tid/b;->n:Ljava/lang/String;

    if-nez p5, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/sdk/tid/b;->l:J

    :goto_17
    invoke-direct {p0}, Lcom/alipay/sdk/tid/b;->p()V

    goto :goto_6

    :cond_1b
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/sdk/tid/b;->l:J

    goto :goto_17
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private b(Landroid/content/Context;)V
    .registers 3

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/tid/b;->i:Landroid/content/Context;

    :cond_8
    iget-boolean v0, p0, Lcom/alipay/sdk/tid/b;->p:Z

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/tid/b;->p:Z

    invoke-direct {p0}, Lcom/alipay/sdk/tid/b;->k()V

    invoke-direct {p0}, Lcom/alipay/sdk/tid/b;->l()V

    goto :goto_c
.end method

.method static synthetic j()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/alipay/sdk/tid/b;->i:Landroid/content/Context;

    return-object v0
.end method

.method private k()V
    .registers 6

    sget-object v3, Lcom/alipay/sdk/tid/b;->i:Landroid/content/Context;

    if-nez v3, :cond_5

    :goto_4
    return-void

    :cond_5
    const-string v0, "alipay_tid_storage"

    const-string v1, "upgraded_from_db"

    invoke-static {v0, v1}, Lcom/alipay/sdk/tid/b$a;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "mspl"

    const-string v1, "tid_mig: pass"

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_17
    const/4 v2, 0x0

    :try_start_18
    const-string v0, "mspl"

    const-string v1, "tid_mig: from db"

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/sdk/tid/a;

    invoke-direct {v1, v3}, Lcom/alipay/sdk/tid/a;-><init>(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_24} :catch_70
    .catchall {:try_start_18 .. :try_end_24} :catchall_7c

    :try_start_24
    invoke-static {v3}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/util/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/util/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/sdk/tid/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v2}, Lcom/alipay/sdk/tid/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4b

    invoke-virtual {p0, v4, v0}, Lcom/alipay/sdk/tid/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_4b} :catch_a0
    .catchall {:try_start_24 .. :try_end_4b} :catchall_9e

    :cond_4b
    if-eqz v1, :cond_a2

    invoke-virtual {v1}, Lcom/alipay/sdk/tid/a;->close()V

    move-object v2, v1

    :goto_51
    :try_start_51
    const-string v0, "mspl"

    const-string v1, "tid_mig: db purge"

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/sdk/tid/a;

    invoke-direct {v1, v3}, Lcom/alipay/sdk/tid/a;-><init>(Landroid/content/Context;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_5d} :catch_84
    .catchall {:try_start_51 .. :try_end_5d} :catchall_8f

    :try_start_5d
    invoke-virtual {v1}, Lcom/alipay/sdk/tid/a;->a()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_60} :catch_9c
    .catchall {:try_start_5d .. :try_end_60} :catchall_96

    if-eqz v1, :cond_65

    invoke-virtual {v1}, Lcom/alipay/sdk/tid/a;->close()V

    :cond_65
    :goto_65
    const-string v0, "alipay_tid_storage"

    const-string v1, "upgraded_from_db"

    const-string v2, "updated"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/sdk/tid/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    :catch_70
    move-exception v0

    move-object v1, v2

    :goto_72
    :try_start_72
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_9e

    if-eqz v1, :cond_a2

    invoke-virtual {v1}, Lcom/alipay/sdk/tid/a;->close()V

    move-object v2, v1

    goto :goto_51

    :catchall_7c
    move-exception v0

    move-object v1, v2

    :goto_7e
    if-eqz v1, :cond_83

    invoke-virtual {v1}, Lcom/alipay/sdk/tid/a;->close()V

    :cond_83
    throw v0

    :catch_84
    move-exception v0

    move-object v1, v2

    :goto_86
    :try_start_86
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_99

    if-eqz v1, :cond_65

    invoke-virtual {v1}, Lcom/alipay/sdk/tid/a;->close()V

    goto :goto_65

    :catchall_8f
    move-exception v0

    :goto_90
    if-eqz v2, :cond_95

    invoke-virtual {v2}, Lcom/alipay/sdk/tid/a;->close()V

    :cond_95
    throw v0

    :catchall_96
    move-exception v0

    move-object v2, v1

    goto :goto_90

    :catchall_99
    move-exception v0

    move-object v2, v1

    goto :goto_90

    :catch_9c
    move-exception v0

    goto :goto_86

    :catchall_9e
    move-exception v0

    goto :goto_7e

    :catch_a0
    move-exception v0

    goto :goto_72

    :cond_a2
    move-object v2, v1

    goto :goto_51
.end method

.method private l()V
    .registers 9

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :try_start_9
    const-string v2, "alipay_tid_storage"

    const-string v3, "tidinfo"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/alipay/sdk/tid/b$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_86

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "tid"

    const-string v3, ""

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_24} :catch_5c

    move-result-object v4

    :try_start_25
    const-string v2, "client_key"

    const-string v3, ""

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_75

    move-result-object v3

    :try_start_2d
    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v2, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3a} :catch_7b

    move-result-object v2

    :try_start_3b
    const-string v1, "vimei"

    const-string v6, ""

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_42} :catch_80

    move-result-object v1

    :try_start_43
    const-string v6, "vimsi"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4a} :catch_84

    move-result-object v0

    :goto_4b
    const-string v5, "mspl"

    const-string v6, "tid_str: load"

    invoke-static {v5, v6}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4, v3, v1, v0}, Lcom/alipay/sdk/tid/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-direct {p0}, Lcom/alipay/sdk/tid/b;->m()V

    :goto_5b
    return-void

    :catch_5c
    move-exception v2

    move-object v5, v2

    move-object v3, v0

    move-object v4, v0

    move-object v2, v1

    move-object v1, v0

    :goto_62
    invoke-static {v5}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_4b

    :cond_66
    iput-object v4, p0, Lcom/alipay/sdk/tid/b;->j:Ljava/lang/String;

    iput-object v3, p0, Lcom/alipay/sdk/tid/b;->k:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/sdk/tid/b;->l:J

    iput-object v1, p0, Lcom/alipay/sdk/tid/b;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/sdk/tid/b;->n:Ljava/lang/String;

    goto :goto_5b

    :catch_75
    move-exception v2

    move-object v5, v2

    move-object v3, v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_62

    :catch_7b
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_62

    :catch_80
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    goto :goto_62

    :catch_84
    move-exception v5

    goto :goto_62

    :cond_86
    move-object v2, v1

    move-object v3, v0

    move-object v4, v0

    move-object v1, v0

    goto :goto_4b
.end method

.method private m()V
    .registers 3

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/sdk/tid/b;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/sdk/tid/b;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/tid/b;->k:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/sdk/tid/b;->l:J

    invoke-direct {p0}, Lcom/alipay/sdk/tid/b;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/tid/b;->m:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/sdk/tid/b;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/tid/b;->n:Ljava/lang/String;

    const-string v0, "alipay_tid_storage"

    const-string v1, "tidinfo"

    invoke-static {v0, v1}, Lcom/alipay/sdk/tid/b$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private n()Ljava/lang/String;
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2328

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private o()V
    .registers 1

    return-void
.end method

.method private p()V
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "tid"

    iget-object v2, p0, Lcom/alipay/sdk/tid/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "client_key"

    iget-object v2, p0, Lcom/alipay/sdk/tid/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/alipay/sdk/tid/b;->l:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "vimei"

    iget-object v2, p0, Lcom/alipay/sdk/tid/b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "vimsi"

    iget-object v2, p0, Lcom/alipay/sdk/tid/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "alipay_tid_storage"

    const-string v2, "tidinfo"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/alipay/sdk/tid/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    :goto_34
    return-void

    :catch_35
    move-exception v0

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_34
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/tid/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "mspl"

    const-string v1, "tid_str: save"

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    iput-object p1, p0, Lcom/alipay/sdk/tid/b;->j:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/sdk/tid/b;->k:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/sdk/tid/b;->l:J

    invoke-direct {p0}, Lcom/alipay/sdk/tid/b;->p()V

    invoke-direct {p0}, Lcom/alipay/sdk/tid/b;->o()V

    goto :goto_13
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/tid/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/tid/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/tid/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/tid/b;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/alipay/sdk/tid/b;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/alipay/sdk/tid/b;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/alipay/sdk/tid/b;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public f()Ljava/lang/String;
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_1a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1a
    return-object v0
.end method

.method public g()V
    .registers 3

    const-string v0, "mspl"

    const-string v1, "tid_str: del"

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/sdk/tid/b;->m()V

    return-void
.end method

.method public h()Z
    .registers 2

    invoke-virtual {p0}, Lcom/alipay/sdk/tid/b;->e()Z

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/Long;
    .registers 3

    iget-wide v0, p0, Lcom/alipay/sdk/tid/b;->l:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
