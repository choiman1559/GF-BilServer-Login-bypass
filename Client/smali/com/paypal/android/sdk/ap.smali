.class public Lcom/paypal/android/sdk/ap;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lorg/json/JSONObject;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/ap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/paypal/android/sdk/ap;-><init>(Landroid/content/Context;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;B)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v1, "entering Configuration url loading"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/paypal/android/sdk/ap;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/paypal/android/sdk/ap;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/paypal/android/sdk/ap;->o()Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No valid config found for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    sget-object v0, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v2, "entering saveConfigDataToDisk"

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_36
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/paypal/android/sdk/ap;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "CONFIG_DATA"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/paypal/android/sdk/ap;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "CONFIG_TIME"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/d;->a(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/paypal/android/sdk/d;->a(Ljava/io/File;Ljava/lang/String;)V

    sget-object v0, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v2, "leaving saveConfigDataToDisk successfully"

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_65} :catch_74

    :goto_65
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/ap;->d:Lorg/json/JSONObject;

    sget-object v0, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v1, "leaving Configuration url loading"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_74
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to write config data: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_65
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/ap;->b:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/ap;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/paypal/android/sdk/ap;->e:Z

    const/4 v0, 0x3

    const-string v1, "PRD"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "confIsUpdatable="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/paypal/android/sdk/ap;->e:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/bm;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/paypal/android/sdk/ap;->j()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/ap;->d:Lorg/json/JSONObject;

    sget-object v0, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v1, "Configuation initialize, dumping config"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/paypal/android/sdk/ap;->d:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 7

    :try_start_0
    sget-object v0, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v1, "entering getIncrementalConfig"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ap;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/paypal/android/sdk/bm;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v2, "leaving getIncrementalConfig"

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    :goto_19
    return-object v0

    :catch_1a
    move-exception v0

    const/4 v1, 0x6

    const-string v2, "PRD"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error while loading prdc Config "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/paypal/android/sdk/bm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 7

    :try_start_0
    sget-object v0, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v1, "entering mergeConfig"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "overridding "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_b

    :catch_33
    move-exception v0

    const/4 v1, 0x6

    const-string v2, "PRD"

    const-string v3, "Error encountered while applying prdc Config"

    invoke-static {v1, v2, v3, v0}, Lcom/paypal/android/sdk/bm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_3d
    return-object p0

    :cond_3e
    :try_start_3e
    sget-object v0, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v1, "leaving mergeConfig"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_45} :catch_33

    goto :goto_3d
.end method

.method private j()Lorg/json/JSONObject;
    .registers 10

    const/4 v8, 0x6

    :try_start_1
    invoke-direct {p0}, Lcom/paypal/android/sdk/ap;->l()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4a

    const-string v1, "conf_version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/bm;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    iget-boolean v1, p0, Lcom/paypal/android/sdk/ap;->e:Z

    if-eqz v1, :cond_3d

    invoke-direct {p0}, Lcom/paypal/android/sdk/ap;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v1, "conf_refresh_time_interval"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_45

    const/4 v1, 0x1

    :goto_38
    if-eqz v1, :cond_3d

    invoke-static {}, Lcom/paypal/android/sdk/ap;->n()V

    :cond_3d
    sget-object v1, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v2, "Using cached config"

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_44
    return-object v0

    :cond_45
    const/4 v1, 0x0

    goto :goto_38

    :cond_47
    invoke-direct {p0}, Lcom/paypal/android/sdk/ap;->q()Z

    :cond_4a
    invoke-static {}, Lcom/paypal/android/sdk/ap;->k()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_5c

    sget-object v0, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v1, "default Configuration loading failed,Using hardcoded config"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/paypal/android/sdk/ap;->m()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_44

    :cond_5c
    iget-object v1, p0, Lcom/paypal/android/sdk/ap;->b:Landroid/content/Context;

    const-string v2, "prdc"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/paypal/android/sdk/bm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_84

    iget-boolean v1, p0, Lcom/paypal/android/sdk/ap;->e:Z

    if-eqz v1, :cond_6e

    invoke-static {}, Lcom/paypal/android/sdk/ap;->n()V

    :cond_6e
    const/4 v1, 0x3

    const-string v2, "PRD"

    const-string v3, "prdc field not configured, using default config"

    invoke-static {v1, v2, v3}, Lcom/paypal/android/sdk/bm;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_76} :catch_77

    goto :goto_44

    :catch_77
    move-exception v0

    const-string v1, "PRD"

    const-string v2, "Severe Error while loading config, using hard code version"

    invoke-static {v8, v1, v2, v0}, Lcom/paypal/android/sdk/bm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/paypal/android/sdk/ap;->m()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_44

    :cond_84
    const/4 v2, 0x3

    :try_start_85
    const-string v3, "PRD"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "prdc field is configured, loading path:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/paypal/android/sdk/bm;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_a8

    const/4 v1, 0x6

    const-string v2, "PRD"

    const-string v3, "prdc Configuration loading failed, using default config"

    invoke-static {v1, v2, v3}, Lcom/paypal/android/sdk/bm;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    :cond_a8
    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ap;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_b7

    const/4 v1, 0x6

    const-string v2, "PRD"

    const-string v3, "applying prdc Configuration failed, using default config"

    invoke-static {v1, v2, v3}, Lcom/paypal/android/sdk/bm;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    :cond_b7
    const/4 v0, 0x3

    const-string v2, "PRD"

    const-string v3, "prdc configuration loaded successfully"

    invoke-static {v0, v2, v3}, Lcom/paypal/android/sdk/bm;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_bf} :catch_77

    move-object v0, v1

    goto :goto_44
.end method

.method private static k()Lorg/json/JSONObject;
    .registers 4

    sget-object v0, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v1, "entering getDefaultConfigurations"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    const-string v0, "eyAiY29uZl92ZXJzaW9uIjogIjMuMCIsImFzeW5jX3VwZGF0ZV90aW1lX2ludGVydmFsIjogMzYwMCwgImZvcmNlZF9mdWxsX3VwZGF0ZV90aW1lX2ludGVydmFsIjogMTgwMCwgImNvbmZfcmVmcmVzaF90aW1lX2ludGVydmFsIjogODY0MDAsICJhbmRyb2lkX2FwcHNfdG9fY2hlY2siOiBbICJjb20uZWJheS5jbGFzc2lmaWVkcy9jb20uZWJheS5hcHAuTWFpblRhYkFjdGl2aXR5IiwgImNvbS5lYmF5Lm1vYmlsZS9jb20uZWJheS5tb2JpbGUuYWN0aXZpdGllcy5lQmF5IiwgImNvbS5lYmF5LnJlZGxhc2VyL2NvbS5lYmF5LnJlZGxhc2VyLlNjYW5uZWRJdGVtc0FjdGl2aXR5IiwgImNvbS5taWxvLmFuZHJvaWQvY29tLm1pbG8uYW5kcm9pZC5hY3Rpdml0eS5Ib21lQWN0aXZpdHkiLCAiY29tLnBheXBhbC5hbmRyb2lkLnAycG1vYmlsZS9jb20ucGF5cGFsLmFuZHJvaWQucDJwbW9iaWxlLmFjdGl2aXR5LlNlbmRNb25leUFjdGl2aXR5IiwgImNvbS5yZW50L2NvbS5yZW50LmFjdGl2aXRpZXMuc2Vzc2lvbi5BY3Rpdml0eUhvbWUiLCAiY29tLnN0dWJodWIvY29tLnN0dWJodWIuQWJvdXQiLCAiY29tLnVsb2NhdGUvY29tLnVsb2NhdGUuYWN0aXZpdGllcy5TZXR0aW5ncyIsICJjb20ubm9zaHVmb3UuYW5kcm9pZC5zdS9jb20ubm9zaHVmb3UuYW5kcm9pZC5zdS5TdSIsICJzdGVyaWNzb24uYnVzeWJveC9zdGVyaWNzb24uYnVzeWJveC5BY3Rpdml0eS5NYWluQWN0aXZpdHkiLCAib3JnLnByb3h5ZHJvaWQvb3JnLnByb3h5ZHJvaWQuUHJveHlEcm9pZCIsICJjb20uYWVkLmRyb2lkdnBuL2NvbS5hZWQuZHJvaWR2cG4uTWFpbkdVSSIsICJuZXQub3BlbnZwbi5vcGVudnBuL25ldC5vcGVudnBuLm9wZW52cG4uT3BlblZQTkNsaWVudCIsICJjb20ucGhvbmVhcHBzOTkuYWFiaXByb3h5L2NvbS5waG9uZWFwcHM5OS5hYWJpcHJveHkuT3Jib3QiLCAiY29tLmV2YW5oZS5wcm94eW1hbmFnZXIucHJvL2NvbS5ldmFuaGUucHJveHltYW5hZ2VyLk1haW5BY3Rpdml0eSIsICJjb20uZXZhbmhlLnByb3h5bWFuYWdlci9jb20uZXZhbmhlLnByb3h5bWFuYWdlci5NYWluQWN0aXZpdHkiLCAiY29tLmFuZHJvbW8uZGV2MzA5MzYuYXBwNzYxOTgvY29tLmFuZHJvbW8uZGV2MzA5MzYuYXBwNzYxOTguQW5kcm9tb0Rhc2hib2FyZEFjdGl2aXR5IiwgImNvbS5tZ3JhbmphLmF1dG9wcm94eV9saXRlL2NvbS5tZ3JhbmphLmF1dG9wcm94eV9saXRlLlByb3h5TGlzdEFjdGl2aXR5IiwgImNvbS52cG5vbmVjbGljay5hbmRyb2lkL2NvbS52cG5vbmVjbGljay5hbmRyb2lkLk1haW5BY3Rpdml0eSIsICJuZXQuaGlkZW1hbi9uZXQuaGlkZW1hbi5TdGFydGVyQWN0aXZpdHkiLCAiY29tLmRvZW50ZXIuYW5kcm9pZC52cG4uZml2ZXZwbi9jb20uZG9lbnRlci5hbmRyb2lkLnZwbi5maXZldnBuLkZpdmVWcG4iLCAiY29tLnRpZ2VydnBucy5hbmRyb2lkL2NvbS50aWdlcnZwbnMuYW5kcm9pZC5NYWluQWN0aXZpdHkiLCAiY29tLnBhbmRhcG93LnZwbi9jb20ucGFuZGFwb3cudnBuLlBhbmRhUG93IiwgImNvbS5leHByZXNzdnBuLnZwbi9jb20uZXhwcmVzc3Zwbi52cG4uTWFpbkFjdGl2aXR5IiwgImNvbS5sb25kb250cnVzdG1lZGlhLnZwbi9jb20ubG9uZG9udHJ1c3RtZWRpYS52cG4uVnBuU2VydmljZUFjdGl2aXR5IiwgImZyLm1lbGVjb20uVlBOUFBUUC52MTAxL2ZyLm1lbGVjb20uVlBOUFBUUC52MTAxLlNwbGFzaFNjcmVlbiIsICJjb20uY2hlY2twb2ludC5WUE4vY29tLmNoZWNrcG9pbnQuVlBOLk1haW5IYW5kbGVyIiwgImNvbS50dW5uZWxiZWFyLmFuZHJvaWQvY29tLnR1bm5lbGJlYXIuYW5kcm9pZC5UYmVhck1haW5BY3Rpdml0eSIsICJkZS5ibGlua3Qub3BlbnZwbi9kZS5ibGlua3Qub3BlbnZwbi5NYWluQWN0aXZpdHkiLCAib3JnLmFqZWplLmZha2Vsb2NhdGlvbi9vcmcuYWplamUuZmFrZWxvY2F0aW9uLkZha2UiLCAiY29tLmxleGEuZmFrZWdwcy9jb20ubGV4YS5mYWtlZ3BzLlBpY2tQb2ludCIsICJjb20uZm9yZ290dGVucHJvamVjdHMubW9ja2xvY2F0aW9ucy9jb20uZm9yZ290dGVucHJvamVjdHMubW9ja2xvY2F0aW9ucy5NYWluIiwgImtyLndvb3QwcGlhLmdwcy9rci53b290MHBpYS5ncHMuQ2F0Y2hNZUlmVUNhbiIsICJjb20ubXkuZmFrZS5sb2NhdGlvbi9jb20ubXkuZmFrZS5sb2NhdGlvbi5jb20ubXkuZmFrZS5sb2NhdGlvbiIsICJqcC5uZXRhcnQuYXJzdGFsa2luZy9qcC5uZXRhcnQuYXJzdGFsa2luZy5NeVByZWZlcmVuY2VBY3Rpdml0eSIsICJsb2NhdGlvblBsYXkuR1BTQ2hlYXRGcmVlL2xvY2F0aW9uUGxheS5HUFNDaGVhdEZyZWUuQWN0aXZpdHlTbWFydExvY2F0aW9uIiwgIm9yZy5nb29kZXYubGF0aXR1ZGUvb3JnLmdvb2Rldi5sYXRpdHVkZS5MYXRpdHVkZUFjdGl2aXR5IiwgImNvbS5zY2hlZmZzYmxlbmQuZGV2aWNlc3Bvb2YvY29tLnNjaGVmZnNibGVuZC5kZXZpY2VzcG9vZi5EZXZpY2VTcG9vZkFjdGl2aXR5IiwgImNvbS5wcm94eUJyb3dzZXIvY29tLnByb3h5QnJvd3Nlci5OZXdQcm94eUJyb3dzZXJBY3Rpdml0eSIsICJjb20uaWNlY29sZGFwcHMucHJveHlzZXJ2ZXJwcm8vY29tLmljZWNvbGRhcHBzLnByb3h5c2VydmVycHJvLnZpZXdTdGFydCIsICJob3RzcG90c2hpZWxkLmFuZHJvaWQudnBuL2NvbS5hbmNob3JmcmVlLnVpLkhvdFNwb3RTaGllbGQiLCAiY29tLmRvZW50ZXIub25ldnBuL2NvbS5kb2VudGVyLm9uZXZwbi5WcG5TZXR0aW5ncyIsICJjb20ueWVzdnBuLmVuL2NvbS55ZXN2cG4uTWFpblRhYiIsICJjb20ub2ZmaWNld3l6ZS5wbHV0b3Zwbi9jb20ub2ZmaWNld3l6ZS5wbHV0b3Zwbi5Ib21lQWN0aXZpdHkiLCAib3JnLmFqZWplLmxvY2F0aW9uc3Bvb2ZlcnByby9vcmcuYWplamUubG9jYXRpb25zcG9vZmVycHJvLkZha2UiLCAibG9jYXRpb25QbGF5LkdQU0NoZWF0L2xvY2F0aW9uUGxheS5HUFNDaGVhdC5BY3Rpdml0eVNtYXJ0TG9jYXRpb24iIF0sICJsb2NhdGlvbl9taW5fYWNjdXJhY3kiOiA1MDAsICJsb2NhdGlvbl9tYXhfY2FjaGVfYWdlIjogMTgwMCwgInNlbmRfb25fYXBwX3N0YXJ0IjogMSwgImVuZHBvaW50X3VybCI6ICJodHRwczovL3N2Y3MucGF5cGFsLmNvbS9BY2Nlc3NDb250cm9sL0xvZ1Jpc2tNZXRhZGF0YSIsICJpbnRlcm5hbF9jYWNoZV9tYXhfYWdlIjogMzAsICJjb21wX3RpbWVvdXQiOiA2MDAgfQ=="

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sget-object v0, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v2, "leaving getDefaultConfigurations, Default Conf load succeed"

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_21} :catch_22

    :goto_21
    return-object v0

    :catch_22
    move-exception v0

    const/4 v1, 0x6

    const-string v2, "PRD"

    const-string v3, "Read default config file exception."

    invoke-static {v1, v2, v3, v0}, Lcom/paypal/android/sdk/bm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v1, "leaving getDefaultConfigurations,returning null"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_21
.end method

.method private l()Lorg/json/JSONObject;
    .registers 4

    sget-object v0, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v1, "entering getCachedConfiguration"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/paypal/android/sdk/ap;->p()Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v2, "leaving getCachedConfiguration,cached config load succeed"

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1f} :catch_20

    :goto_1f
    return-object v0

    :catch_20
    move-exception v0

    sget-object v1, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v2, "JSON Exception in creating config file"

    invoke-static {v1, v2, v0}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_28
    sget-object v0, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v1, "leaving getCachedConfiguration,cached config load failed"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private static m()Lorg/json/JSONObject;
    .registers 3

    sget-object v0, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v1, "entering getHardcodedConfig"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_c
    const-string v1, "conf_version"

    const-string v2, "3.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "async_update_time_interval"

    const/16 v2, 0xe10

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "forced_full_update_time_interval"

    const/16 v2, 0x708

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "conf_refresh_time_interval"

    const v2, 0x15180

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "location_min_accuracy"

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "location_max_cache_age"

    const/16 v2, 0x708

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "endpoint_url"

    const-string v2, "https://svcs.paypal.com/AccessControl/LogRiskMetadata"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_3e} :catch_46

    :goto_3e
    sget-object v1, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v2, "leaving getHardcodedConfig"

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_46
    move-exception v1

    goto :goto_3e
.end method

.method private static n()V
    .registers 2

    sget-object v0, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v1, "Loading web config"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/paypal/android/sdk/at;->a()Lcom/paypal/android/sdk/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/at;->b()V

    return-void
.end method

.method private o()Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    sget-object v0, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v1, "entering getRemoteConfig"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_d
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/paypal/android/sdk/ap;->c:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_49

    move-result-object v3

    :try_start_18
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_4c

    :goto_24
    :try_start_24
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2e

    goto :goto_24

    :catchall_2e
    move-exception v0

    move-object v2, v3

    :goto_30
    invoke-static {v2}, Lcom/paypal/android/sdk/d;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/paypal/android/sdk/d;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_37
    invoke-static {v3}, Lcom/paypal/android/sdk/d;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/paypal/android/sdk/d;->a(Ljava/io/Closeable;)V

    sget-object v1, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v2, "leaving getRemoteConfig successfully"

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_49
    move-exception v0

    move-object v1, v2

    goto :goto_30

    :catchall_4c
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_30
.end method

.method private p()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/paypal/android/sdk/ap;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "CONFIG_DATA"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_d
    invoke-static {v0}, Lcom/paypal/android/sdk/d;->a(Ljava/io/File;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_12

    move-result-object v0

    :goto_11
    return-object v0

    :catch_12
    move-exception v0

    sget-object v1, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v2, "Load cached config failed"

    invoke-static {v1, v2, v0}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    goto :goto_11
.end method

.method private q()Z
    .registers 5

    :try_start_0
    sget-object v0, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v1, "entering deleteCachedConfigDataFromDisk"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/paypal/android/sdk/ap;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "CONFIG_DATA"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/paypal/android/sdk/ap;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "CONFIG_TIME"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_31

    sget-object v2, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v3, "cached Config Data found, deleting"

    invoke-static {v2, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_31
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_41

    sget-object v1, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v2, "cached Config Time found, deleting"

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_41
    sget-object v0, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v1, "leaving deleteCachedConfigDataFromDisk"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_4a

    const/4 v0, 0x1

    :goto_49
    return v0

    :catch_4a
    move-exception v0

    sget-object v1, Lcom/paypal/android/sdk/ap;->a:Ljava/lang/String;

    const-string v2, "error encountered while deleteCachedConfigData"

    invoke-static {v1, v2, v0}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_49
.end method

.method private r()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/paypal/android/sdk/ap;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "CONFIG_TIME"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_d
    invoke-static {v0}, Lcom/paypal/android/sdk/d;->a(Ljava/io/File;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_12

    move-result-object v0

    :goto_11
    return-object v0

    :catch_12
    move-exception v0

    const-string v0, ""

    goto :goto_11
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/ap;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/paypal/android/sdk/ap;->d:Lorg/json/JSONObject;

    const-string v1, "conf_version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()J
    .registers 5

    iget-object v0, p0, Lcom/paypal/android/sdk/ap;->d:Lorg/json/JSONObject;

    const-string v1, "async_update_time_interval"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()J
    .registers 5

    iget-object v0, p0, Lcom/paypal/android/sdk/ap;->d:Lorg/json/JSONObject;

    const-string v1, "forced_full_update_time_interval"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()J
    .registers 5

    iget-object v0, p0, Lcom/paypal/android/sdk/ap;->d:Lorg/json/JSONObject;

    const-string v1, "comp_timeout"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()Ljava/util/List;
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/paypal/android/sdk/ap;->d:Lorg/json/JSONObject;

    const-string v2, "android_apps_to_check"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_e
    if-eqz v2, :cond_20

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_20

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_20
    return-object v1
.end method

.method public final g()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/paypal/android/sdk/ap;->d:Lorg/json/JSONObject;

    const-string v1, "endpoint_url"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .registers 4

    iget-object v0, p0, Lcom/paypal/android/sdk/ap;->d:Lorg/json/JSONObject;

    const-string v1, "endpoint_is_stage"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final i()Lcom/paypal/android/sdk/bk;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/sdk/ap;->d:Lorg/json/JSONObject;

    const-string v1, "CDS"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_14
    const/4 v0, 0x3

    const-string v1, "PRD"

    const-string v2, "No CDS is configured, enabling all variables"

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/bm;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/paypal/android/sdk/bk;->a:Lcom/paypal/android/sdk/bk;

    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x3

    const-string v2, "PRD"

    const-string v3, "CDS field was found"

    invoke-static {v0, v2, v3}, Lcom/paypal/android/sdk/bm;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/paypal/android/sdk/bk;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/bk;-><init>(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_1e

    :catch_31
    move-exception v0

    const/4 v1, 0x6

    const-string v2, "PRD"

    const-string v3, "Failed to decode CDS"

    invoke-static {v1, v2, v3, v0}, Lcom/paypal/android/sdk/bm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/paypal/android/sdk/bk;->a:Lcom/paypal/android/sdk/bk;

    goto :goto_1e
.end method
