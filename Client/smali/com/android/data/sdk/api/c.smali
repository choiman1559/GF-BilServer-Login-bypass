.class public Lcom/android/data/sdk/api/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/android/data/sdk/api/c;

.field private static e:Ljava/lang/String;

.field private static h:J


# instance fields
.field private b:Lcom/android/data/sdk/domain/model/SchemaHostList;

.field private c:Lcom/android/data/sdk/domain/model/Timeout;

.field private d:Lcom/android/data/sdk/domain/model/Timeout;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:I

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private s:Z

.field private t:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/data/sdk/api/c;->h:J

    return-void
.end method

.method private constructor <init>()V
    .registers 7

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/data/sdk/api/c;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/data/sdk/api/c;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/data/sdk/api/c;->j:Ljava/lang/String;

    iput v1, p0, Lcom/android/data/sdk/api/c;->k:I

    iput v1, p0, Lcom/android/data/sdk/api/c;->l:I

    iput v1, p0, Lcom/android/data/sdk/api/c;->m:I

    iput-wide v2, p0, Lcom/android/data/sdk/api/c;->n:J

    iput-wide v2, p0, Lcom/android/data/sdk/api/c;->o:J

    iput-wide v2, p0, Lcom/android/data/sdk/api/c;->p:J

    iput-wide v2, p0, Lcom/android/data/sdk/api/c;->q:J

    iput-wide v2, p0, Lcom/android/data/sdk/api/c;->r:J

    iput-boolean v1, p0, Lcom/android/data/sdk/api/c;->s:Z

    iput-wide v2, p0, Lcom/android/data/sdk/api/c;->t:J

    new-instance v0, Lcom/android/data/sdk/domain/model/Timeout;

    sget-wide v2, Lcom/android/data/sdk/constant/ConstantTime;->DEFAULT_COMMON_CONNECT_TIMEOUT:J

    sget-wide v4, Lcom/android/data/sdk/constant/ConstantTime;->DEFAULT_COMMON_READ_TIMEOUT:J

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/data/sdk/domain/model/Timeout;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/data/sdk/api/c;->c:Lcom/android/data/sdk/domain/model/Timeout;

    new-instance v0, Lcom/android/data/sdk/domain/model/Timeout;

    sget-wide v2, Lcom/android/data/sdk/constant/ConstantTime;->DEFAULT_SNIFF_CONNECT_TIMEOUT:J

    sget-wide v4, Lcom/android/data/sdk/constant/ConstantTime;->DEFAULT_SNIFF_READ_TIMEOUT:J

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/data/sdk/domain/model/Timeout;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/data/sdk/api/c;->d:Lcom/android/data/sdk/domain/model/Timeout;

    return-void
.end method

.method public static a()Lcom/android/data/sdk/api/c;
    .registers 2

    sget-object v0, Lcom/android/data/sdk/api/c;->a:Lcom/android/data/sdk/api/c;

    if-nez v0, :cond_13

    const-class v1, Lcom/android/data/sdk/api/c;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/android/data/sdk/api/c;->a:Lcom/android/data/sdk/api/c;

    if-nez v0, :cond_12

    new-instance v0, Lcom/android/data/sdk/api/c;

    invoke-direct {v0}, Lcom/android/data/sdk/api/c;-><init>()V

    sput-object v0, Lcom/android/data/sdk/api/c;->a:Lcom/android/data/sdk/api/c;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/android/data/sdk/api/c;->a:Lcom/android/data/sdk/api/c;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/android/data/sdk/api/c;->k:I

    return-void
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/android/data/sdk/api/c;->n:J

    return-void
.end method

.method public a(Lcom/android/data/sdk/PreDefined;)V
    .registers 8

    new-instance v0, Lcom/android/data/sdk/domain/model/SchemaHostList;

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getDefaultHttpList()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getDefaultHttpsList()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getDefaultFreeHttpList()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getDefaultFreeHttpsList()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/data/sdk/domain/model/SchemaHostList;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/data/sdk/api/c;->b:Lcom/android/data/sdk/domain/model/SchemaHostList;

    new-instance v0, Lcom/android/data/sdk/domain/model/Timeout;

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getDefaultCommoConnTimeout()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getDefaultCommoReadTimeout()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/data/sdk/domain/model/Timeout;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/data/sdk/api/c;->c:Lcom/android/data/sdk/domain/model/Timeout;

    new-instance v0, Lcom/android/data/sdk/domain/model/Timeout;

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getDefaultSniffConnTimeout()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getDefaultSniffReadTimeout()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/data/sdk/domain/model/Timeout;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/data/sdk/api/c;->d:Lcom/android/data/sdk/domain/model/Timeout;

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getMinimumIntervalTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/data/sdk/api/c;->n:J

    if-eqz p1, :cond_6d

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getStaticData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6d

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getStaticData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6d

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getStaticData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "DEFAULT_RELATIVE_APPS"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getStaticData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "DEFAULT_RELATIVE_APPS"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/data/sdk/api/c;->e:Ljava/lang/String;

    sget-object v0, Lcom/android/data/sdk/api/c;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/data/sdk/api/c;->f:Ljava/lang/String;

    :cond_6d
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 13

    const/4 v10, -0x1

    const-string v0, "switch"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_65

    const-string v1, "android_connect_timeout"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "android_read_timeout"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "android_verify_connect_timeout"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "android_verify_read_timeout"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "android_switch_https_v2"

    invoke-virtual {v0, v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "android_switch_exact"

    invoke-virtual {v0, v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "android_switch_exact_time"

    invoke-virtual {v0, v7, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v1, :cond_3b

    iget-object v7, p0, Lcom/android/data/sdk/api/c;->c:Lcom/android/data/sdk/domain/model/Timeout;

    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Lcom/android/data/sdk/domain/model/Timeout;->setConnectTimeout(J)V

    :cond_3b
    if-eqz v2, :cond_43

    iget-object v1, p0, Lcom/android/data/sdk/api/c;->c:Lcom/android/data/sdk/domain/model/Timeout;

    int-to-long v8, v2

    invoke-virtual {v1, v8, v9}, Lcom/android/data/sdk/domain/model/Timeout;->setReadTimeout(J)V

    :cond_43
    if-eqz v3, :cond_4b

    iget-object v1, p0, Lcom/android/data/sdk/api/c;->d:Lcom/android/data/sdk/domain/model/Timeout;

    int-to-long v2, v3

    invoke-virtual {v1, v2, v3}, Lcom/android/data/sdk/domain/model/Timeout;->setConnectTimeout(J)V

    :cond_4b
    if-eqz v4, :cond_53

    iget-object v1, p0, Lcom/android/data/sdk/api/c;->d:Lcom/android/data/sdk/domain/model/Timeout;

    int-to-long v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/data/sdk/domain/model/Timeout;->setReadTimeout(J)V

    :cond_53
    if-eq v5, v10, :cond_5a

    iget-object v1, p0, Lcom/android/data/sdk/api/c;->b:Lcom/android/data/sdk/domain/model/SchemaHostList;

    invoke-virtual {v1, v5}, Lcom/android/data/sdk/domain/model/SchemaHostList;->setHttpsToggle(I)V

    :cond_5a
    if-eq v6, v10, :cond_5f

    invoke-virtual {p0, v6}, Lcom/android/data/sdk/api/c;->d(I)V

    :cond_5f
    if-eq v0, v10, :cond_65

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/data/sdk/api/c;->f(J)V

    :cond_65
    const-string v0, "relative_apps"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_89

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_89

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_89

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/data/sdk/api/c;->f:Ljava/lang/String;

    :cond_89
    invoke-virtual {p0, p1}, Lcom/android/data/sdk/api/c;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .registers 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const-string v0, "config_android_http_list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "config_android_https_list"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "free_flow_http_list"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "free_flow_https_list"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "android_https_switch"

    invoke-virtual {p1, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2c

    iget-object v5, p0, Lcom/android/data/sdk/api/c;->b:Lcom/android/data/sdk/domain/model/SchemaHostList;

    invoke-virtual {v5, v0, v7}, Lcom/android/data/sdk/domain/model/SchemaHostList;->setHttpList(Ljava/lang/String;I)Lcom/android/data/sdk/domain/model/SchemaHostList;

    :cond_2c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/data/sdk/api/c;->b:Lcom/android/data/sdk/domain/model/SchemaHostList;

    invoke-virtual {v0, v1, v7}, Lcom/android/data/sdk/domain/model/SchemaHostList;->setHttpsList(Ljava/lang/String;I)Lcom/android/data/sdk/domain/model/SchemaHostList;

    :cond_37
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/android/data/sdk/api/c;->b:Lcom/android/data/sdk/domain/model/SchemaHostList;

    invoke-virtual {v0, v2, v8}, Lcom/android/data/sdk/domain/model/SchemaHostList;->setHttpList(Ljava/lang/String;I)Lcom/android/data/sdk/domain/model/SchemaHostList;

    :cond_42
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/android/data/sdk/api/c;->b:Lcom/android/data/sdk/domain/model/SchemaHostList;

    invoke-virtual {v0, v3, v8}, Lcom/android/data/sdk/domain/model/SchemaHostList;->setHttpsList(Ljava/lang/String;I)Lcom/android/data/sdk/domain/model/SchemaHostList;

    :cond_4d
    if-eq v4, v6, :cond_56

    if-nez p2, :cond_56

    iget-object v0, p0, Lcom/android/data/sdk/api/c;->b:Lcom/android/data/sdk/domain/model/SchemaHostList;

    invoke-virtual {v0, v4}, Lcom/android/data/sdk/domain/model/SchemaHostList;->setHttpsToggle(I)V

    :cond_56
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/android/data/sdk/api/c;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_a
    return v0

    :cond_b
    new-instance v3, Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/android/data/sdk/api/c;->g:Ljava/lang/String;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v2, v1

    :goto_13
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2f

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_22} :catch_2b

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_a

    :cond_27
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2f
    move v0, v1

    goto :goto_a
.end method

.method public b()Lcom/android/data/sdk/domain/model/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/api/c;->c:Lcom/android/data/sdk/domain/model/Timeout;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/android/data/sdk/api/c;->l:I

    return-void
.end method

.method public b(J)V
    .registers 6

    iget-wide v0, p0, Lcom/android/data/sdk/api/c;->o:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/data/sdk/api/c;->o:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/api/c;->j:Ljava/lang/String;

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 5

    :try_start_0
    const-string v0, "disable_exit_gameid_android"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/data/sdk/api/c;->g:Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_25

    :cond_24
    :goto_24
    return-void

    :catch_25
    move-exception v0

    goto :goto_24
.end method

.method public c()Lcom/android/data/sdk/domain/model/SchemaHostList;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/api/c;->b:Lcom/android/data/sdk/domain/model/SchemaHostList;

    return-object v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/android/data/sdk/api/c;->m:I

    return-void
.end method

.method public c(J)V
    .registers 6

    iget-wide v0, p0, Lcom/android/data/sdk/api/c;->p:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/data/sdk/api/c;->p:J

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .registers 6

    :try_start_0
    const-string v0, "timestamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    sput-wide v0, Lcom/android/data/sdk/api/c;->h:J
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method public d()Lcom/android/data/sdk/domain/model/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/api/c;->d:Lcom/android/data/sdk/domain/model/Timeout;

    return-object v0
.end method

.method public d(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    :goto_3
    iput-boolean v0, p0, Lcom/android/data/sdk/api/c;->s:Z

    return-void

    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public d(J)V
    .registers 6

    iget-wide v0, p0, Lcom/android/data/sdk/api/c;->q:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/data/sdk/api/c;->q:J

    return-void
.end method

.method public d(Lorg/json/JSONObject;)V
    .registers 3

    :try_start_0
    const-string v0, "clientRequestId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/data/sdk/api/c;->i:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    const-string v0, ""

    iput-object v0, p0, Lcom/android/data/sdk/api/c;->i:Ljava/lang/String;

    goto :goto_8
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/api/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(J)V
    .registers 4

    iput-wide p1, p0, Lcom/android/data/sdk/api/c;->r:J

    return-void
.end method

.method public f()J
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/data/sdk/api/c;->h:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public f(J)V
    .registers 4

    iput-wide p1, p0, Lcom/android/data/sdk/api/c;->t:J

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/api/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/api/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lcom/android/data/sdk/api/c;->k:I

    return v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lcom/android/data/sdk/api/c;->l:I

    return v0
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lcom/android/data/sdk/api/c;->m:I

    return v0
.end method

.method public l()J
    .registers 3

    iget-wide v0, p0, Lcom/android/data/sdk/api/c;->n:J

    return-wide v0
.end method

.method public m()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/data/sdk/api/c;->o:J

    return-void
.end method

.method public n()J
    .registers 5

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/api/c;->f()J

    move-result-wide v0

    const-string v2, "yyyyMMdd"

    invoke-static {v0, v1, v2}, Lcom/android/data/sdk/utils/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/data/sdk/api/c;->s()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/data/sdk/api/c;->m()V

    :cond_1d
    iget-wide v0, p0, Lcom/android/data/sdk/api/c;->o:J

    return-wide v0
.end method

.method public o()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/data/sdk/api/c;->p:J

    return-void
.end method

.method public p()J
    .registers 5

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/api/c;->f()J

    move-result-wide v0

    const-string v2, "yyyyMMdd"

    invoke-static {v0, v1, v2}, Lcom/android/data/sdk/utils/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/data/sdk/api/c;->s()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/data/sdk/api/c;->o()V

    :cond_1d
    iget-wide v0, p0, Lcom/android/data/sdk/api/c;->p:J

    return-wide v0
.end method

.method public q()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/data/sdk/api/c;->q:J

    return-void
.end method

.method public r()J
    .registers 5

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/api/c;->f()J

    move-result-wide v0

    const-string v2, "yyyyMMdd"

    invoke-static {v0, v1, v2}, Lcom/android/data/sdk/utils/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/data/sdk/api/c;->s()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/data/sdk/api/c;->q()V

    :cond_1d
    iget-wide v0, p0, Lcom/android/data/sdk/api/c;->q:J

    return-wide v0
.end method

.method public s()J
    .registers 3

    iget-wide v0, p0, Lcom/android/data/sdk/api/c;->r:J

    return-wide v0
.end method

.method public t()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/data/sdk/api/c;->b(I)V

    invoke-virtual {p0, v0}, Lcom/android/data/sdk/api/c;->c(I)V

    invoke-virtual {p0}, Lcom/android/data/sdk/api/c;->q()V

    invoke-virtual {p0}, Lcom/android/data/sdk/api/c;->o()V

    invoke-virtual {p0}, Lcom/android/data/sdk/api/c;->m()V

    return-void
.end method

.method public u()J
    .registers 5

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/api/c;->l()J

    move-result-wide v0

    sget-wide v2, Lcom/android/data/sdk/constant/ConstantTime;->MINIMUM_TIME_INTERVAL:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_10

    sget-wide v0, Lcom/android/data/sdk/constant/ConstantTime;->MINIMUM_TIME_INTERVAL:J

    :cond_10
    return-wide v0
.end method

.method public v()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/data/sdk/api/c;->s:Z

    return v0
.end method

.method public w()J
    .registers 3

    iget-wide v0, p0, Lcom/android/data/sdk/api/c;->t:J

    return-wide v0
.end method
