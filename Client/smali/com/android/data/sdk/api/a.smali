.class public Lcom/android/data/sdk/api/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Lcom/android/data/sdk/api/e;

.field private e:Lcom/android/data/sdk/PreDefined;


# direct methods
.method public constructor <init>(Lcom/android/data/sdk/PreDefined;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CDN_CONFIG"

    iput-object v0, p0, Lcom/android/data/sdk/api/a;->b:Ljava/lang/String;

    const-string v0, "BUSINESS_CONFIG"

    iput-object v0, p0, Lcom/android/data/sdk/api/a;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/data/sdk/api/a;->a:Z

    iput-object p1, p0, Lcom/android/data/sdk/api/a;->e:Lcom/android/data/sdk/PreDefined;

    new-instance v0, Lcom/android/data/sdk/api/e;

    invoke-direct {v0, p1}, Lcom/android/data/sdk/api/e;-><init>(Lcom/android/data/sdk/PreDefined;)V

    iput-object v0, p0, Lcom/android/data/sdk/api/a;->d:Lcom/android/data/sdk/api/e;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lcom/android/data/sdk/utils/j;->a()Lcom/android/data/sdk/utils/j;

    move-result-object v0

    new-instance v1, Lcom/android/data/sdk/api/a$1;

    invoke-direct {v1, p0, p1}, Lcom/android/data/sdk/api/a$1;-><init>(Lcom/android/data/sdk/api/a;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/utils/j;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/android/data/sdk/api/b;)V
    .registers 5

    :try_start_0
    const-string v0, "BUSINESS_CONFIG"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/android/data/sdk/utils/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v1, p2, v0}, Lcom/android/data/sdk/api/a;->a(Lorg/json/JSONObject;Lcom/android/data/sdk/api/b;I)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    invoke-interface {p2, v0}, Lcom/android/data/sdk/api/b;->a(Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    const-string v0, "CDN_CONFIG"

    invoke-static {p1, v0, p2}, Lcom/android/data/sdk/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method static synthetic a(Lcom/android/data/sdk/api/a;Landroid/content/Context;Lcom/android/data/sdk/api/b;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/data/sdk/api/a;->a(Landroid/content/Context;Lcom/android/data/sdk/api/b;)V

    return-void
.end method

.method static synthetic a(Lcom/android/data/sdk/api/a;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/data/sdk/api/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/data/sdk/api/a;Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/data/sdk/api/a;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/android/data/sdk/api/a;Ljava/lang/String;Lcom/android/data/sdk/PreDefined;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/data/sdk/api/a;->a(Ljava/lang/String;Lcom/android/data/sdk/PreDefined;)V

    return-void
.end method

.method static synthetic a(Lcom/android/data/sdk/api/a;Lorg/json/JSONObject;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/data/sdk/api/a;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic a(Lcom/android/data/sdk/api/a;Lorg/json/JSONObject;Lcom/android/data/sdk/api/b;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/data/sdk/api/a;->a(Lorg/json/JSONObject;Lcom/android/data/sdk/api/b;I)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)V
    .registers 14

    const/4 v0, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "sdk_type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "event_list"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "user_info"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "tour_mark"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/data/sdk/domain/model/AntiModel;

    invoke-direct {v6}, Lcom/android/data/sdk/domain/model/AntiModel;-><init>()V

    const-string v1, "1"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_85

    const-string v1, "1"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_85

    move v1, v0

    :goto_3f
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_85

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "action"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "view"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "dc_action"

    invoke-virtual {v2, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "dc_view"

    invoke-virtual {v2, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "intent"

    const-string v10, "touristLimit"

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "1"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_76

    const-string v9, "2"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_82

    :cond_76
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_82

    const-string v0, "com.bsgamesdk.android.activity.TouristActivity"

    invoke-virtual {p0, p2, v2, v0}, Lcom/android/data/sdk/api/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_81
    :goto_81
    return-void

    :cond_82
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_85
    const-string v1, "1"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e5

    if-eqz v4, :cond_e5

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_e5

    :goto_95
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_e5

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v5, Lcom/android/data/sdk/domain/model/AntiModel;

    invoke-direct {v5}, Lcom/android/data/sdk/domain/model/AntiModel;-><init>()V

    const-string v7, "action"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/data/sdk/domain/model/AntiModel;->action:Ljava/lang/String;

    const-string v7, "view"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/android/data/sdk/domain/model/AntiModel;->view:Ljava/lang/String;

    iget-object v1, v5, Lcom/android/data/sdk/domain/model/AntiModel;->action:Ljava/lang/String;

    const-string v7, "1"

    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c8

    iget-object v1, v5, Lcom/android/data/sdk/domain/model/AntiModel;->action:Ljava/lang/String;

    const-string v7, "2"

    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e2

    :cond_c8
    iget-object v1, v5, Lcom/android/data/sdk/domain/model/AntiModel;->view:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e2

    iget-object v1, v5, Lcom/android/data/sdk/domain/model/AntiModel;->action:Ljava/lang/String;

    const-string v7, "2"

    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_dd

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/data/sdk/api/a;->a:Z

    :cond_dd
    iget-object v1, v6, Lcom/android/data/sdk/domain/model/AntiModel;->mAntiModelList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e2
    add-int/lit8 v0, v0, 0x1

    goto :goto_95

    :cond_e5
    iget-object v0, v6, Lcom/android/data/sdk/domain/model/AntiModel;->mAntiModelList:Ljava/util/List;

    if-eqz v0, :cond_81

    iget-object v0, v6, Lcom/android/data/sdk/domain/model/AntiModel;->mAntiModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_81

    const-string v0, "sdkType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "antiModle"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/android/data/sdk/api/a;->e:Lcom/android/data/sdk/PreDefined;

    invoke-virtual {v0}, Lcom/android/data/sdk/PreDefined;->getActivity1Class()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p2, v2, v0}, Lcom/android/data/sdk/api/a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;)V
    :try_end_10c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_10c} :catch_10e

    goto/16 :goto_81

    :catch_10e
    move-exception v0

    goto/16 :goto_81
.end method

.method private a(Ljava/lang/String;Lcom/android/data/sdk/PreDefined;)V
    .registers 13

    const-wide/16 v8, 0x3e8

    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49

    invoke-static {p1}, Lcom/android/data/sdk/utils/LogUtils;->e(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual {p2}, Lcom/android/data/sdk/PreDefined;->getMinimumIntervalTime()J

    move-result-wide v2

    const-string v1, "recRate"

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/data/sdk/api/c;->l()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    mul-long/2addr v0, v8

    cmp-long v2, v0, v2

    if-gez v2, :cond_42

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/api/c;->l()J

    move-result-wide v0

    :cond_42
    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/data/sdk/api/c;->a(J)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_49} :catch_4a

    :cond_49
    :goto_49
    return-void

    :catch_4a
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    goto :goto_49
.end method

.method private declared-synchronized a(Lorg/json/JSONObject;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/data/sdk/api/c;->a(Lorg/json/JSONObject;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lorg/json/JSONObject;Lcom/android/data/sdk/api/b;I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/android/data/sdk/api/c;->a(Lorg/json/JSONObject;I)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_16

    :try_start_8
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/data/sdk/api/b;->a(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_11
    .catchall {:try_start_8 .. :try_end_f} :catchall_16

    :goto_f
    monitor-exit p0

    return-void

    :catch_11
    move-exception v0

    :try_start_12
    invoke-interface {p2, v0}, Lcom/android/data/sdk/api/b;->a(Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_f

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Landroid/content/Context;Lcom/android/data/sdk/api/d;)V
    .registers 5

    iget-object v0, p0, Lcom/android/data/sdk/api/a;->d:Lcom/android/data/sdk/api/e;

    new-instance v1, Lcom/android/data/sdk/api/a$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/data/sdk/api/a$2;-><init>(Lcom/android/data/sdk/api/a;Landroid/content/Context;Lcom/android/data/sdk/api/d;)V

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/api/e;->a(Lcom/android/data/sdk/api/b;)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    const-string v0, "BUSINESS_CONFIG"

    invoke-static {p1, v0, p2}, Lcom/android/data/sdk/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method static synthetic b(Lcom/android/data/sdk/api/a;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/data/sdk/api/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lbsgamesdkhttp/u;Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/android/data/sdk/api/a;->d:Lcom/android/data/sdk/api/e;

    invoke-virtual {v0, p1, p2}, Lcom/android/data/sdk/api/e;->a(Lbsgamesdkhttp/u;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_14
.end method

.method public a(Landroid/content/Context;Lcom/android/data/sdk/api/d;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/data/sdk/api/a;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2}, Lcom/android/data/sdk/api/a;->b(Landroid/content/Context;Lcom/android/data/sdk/api/d;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/android/data/sdk/domain/model/DataUpModel;Lcom/android/data/sdk/api/b;)V
    .registers 7

    new-instance v0, Lcom/android/data/sdk/domain/model/DataUpModel;

    iget-object v1, p0, Lcom/android/data/sdk/api/a;->e:Lcom/android/data/sdk/PreDefined;

    invoke-direct {v0, v1}, Lcom/android/data/sdk/domain/model/DataUpModel;-><init>(Lcom/android/data/sdk/PreDefined;)V

    invoke-static {}, Lcom/android/data/sdk/utils/CommonTools;->getInstance()Lcom/android/data/sdk/utils/CommonTools;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/data/sdk/utils/CommonTools;->copyParentObject(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "config"

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/domain/model/DataUpModel;->setAction_name(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/data/sdk/utils/CommonTools;->getInstance()Lcom/android/data/sdk/utils/CommonTools;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/data/sdk/utils/CommonTools;->params2BodyMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/data/sdk/api/a;->d:Lcom/android/data/sdk/api/e;

    new-instance v2, Lcom/android/data/sdk/api/a$3;

    invoke-direct {v2, p0, p3, p1}, Lcom/android/data/sdk/api/a$3;-><init>(Lcom/android/data/sdk/api/a;Lcom/android/data/sdk/api/b;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/data/sdk/api/e;->c(Ljava/util/Map;Lcom/android/data/sdk/api/b;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/data/sdk/api/a;->d:Lcom/android/data/sdk/api/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/data/sdk/api/e;->a(Ljava/util/Map;Lcom/android/data/sdk/api/b;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/HashMap;Lcom/android/data/sdk/api/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/data/sdk/api/b;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/data/sdk/api/a;->d:Lcom/android/data/sdk/api/e;

    invoke-virtual {v0, p2, p3}, Lcom/android/data/sdk/api/e;->b(Ljava/util/Map;Lcom/android/data/sdk/api/b;)V

    return-void
.end method

.method public a(Lcom/android/data/sdk/domain/model/DataUpModel;Lcom/android/data/sdk/PreDefined;Landroid/content/Context;)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/data/sdk/api/a;->a:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/android/data/sdk/utils/CommonTools;->getInstance()Lcom/android/data/sdk/utils/CommonTools;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/data/sdk/utils/CommonTools;->params2BodyMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/data/sdk/api/a;->d:Lcom/android/data/sdk/api/e;

    new-instance v2, Lcom/android/data/sdk/api/a$4;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/android/data/sdk/api/a$4;-><init>(Lcom/android/data/sdk/api/a;Lcom/android/data/sdk/domain/model/DataUpModel;Landroid/content/Context;Lcom/android/data/sdk/PreDefined;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/data/sdk/api/e;->d(Ljava/util/Map;Lcom/android/data/sdk/api/b;)V

    goto :goto_4
.end method
