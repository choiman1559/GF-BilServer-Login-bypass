.class public Lcom/alipay/sdk/sys/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/sys/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "\"&"

.field public static final b:Ljava/lang/String; = "&"

.field public static final c:Ljava/lang/String; = "bizcontext=\""

.field public static final d:Ljava/lang/String; = "bizcontext="

.field public static final e:Ljava/lang/String; = "\""

.field public static final f:Ljava/lang/String; = "appkey"

.field public static final g:Ljava/lang/String; = "ty"

.field public static final h:Ljava/lang/String; = "sv"

.field public static final i:Ljava/lang/String; = "an"

.field public static final j:Ljava/lang/String; = "setting"

.field public static final k:Ljava/lang/String; = "av"

.field public static final l:Ljava/lang/String; = "sdk_start_time"

.field public static final m:Ljava/lang/String; = "extInfo"

.field public static final n:Ljava/lang/String; = "ap_link_token"

.field public static final o:Ljava/lang/String; = "UTF-8"


# instance fields
.field public final p:Ljava/lang/String;

.field public final q:J

.field public final r:Ljava/lang/String;

.field public final s:Lcom/alipay/sdk/app/statistic/c;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/sdk/sys/a;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/sdk/sys/a;->u:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/sys/a;->v:Landroid/content/Context;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    new-instance v0, Lcom/alipay/sdk/app/statistic/c;

    invoke-direct {v0, p1, v1}, Lcom/alipay/sdk/app/statistic/c;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/alipay/sdk/sys/a;->s:Lcom/alipay/sdk/app/statistic/c;

    iget-object v0, p0, Lcom/alipay/sdk/sys/a;->u:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/alipay/sdk/sys/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/sdk/sys/a;->q:J

    iput-object p3, p0, Lcom/alipay/sdk/sys/a;->r:Ljava/lang/String;

    if-nez v1, :cond_4b

    const-string v0, "biz"

    const-string v2, "eptyp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v2, v3}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    :try_start_4b
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/sys/a;->v:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/sdk/sys/a;->t:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/sdk/sys/a;->u:Ljava/lang/String;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_66} :catch_8c

    :goto_66
    if-nez v1, :cond_8b

    const-string v0, "biz"

    const-string v1, "PgApiInvoke"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {p1, p0, p2, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8b
    return-void

    :catch_8c
    move-exception v0

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_66
.end method

.method public static a()Lcom/alipay/sdk/sys/a;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_d
    array-length v3, v2

    if-ge v0, v3, :cond_27

    aget-object v3, v2, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_24

    aget-object v3, v2, v0

    invoke-virtual {v3, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    aget-object v0, v2, v0

    :goto_22
    move-object v1, v0

    goto :goto_7

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_27
    move-object v0, v1

    goto :goto_22
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_f1

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f1

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f1

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_3d
    const-string v2, "appkey"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "appkey"

    const-string v3, "2014052600006128"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4c
    const-string v2, "ty"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5b

    const-string v2, "ty"

    const-string v3, "and_lite"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5b
    const-string v2, "sv"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6a

    const-string v2, "sv"

    const-string v3, "h.a.3.7.4"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6a
    const-string v2, "an"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8b

    iget-object v2, p0, Lcom/alipay/sdk/sys/a;->u:Ljava/lang/String;

    const-string v3, "setting"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_84

    iget-object v2, p0, Lcom/alipay/sdk/sys/a;->v:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/sdk/util/n;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8b

    :cond_84
    const-string v2, "an"

    iget-object v3, p0, Lcom/alipay/sdk/sys/a;->u:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8b
    const-string v2, "av"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9a

    const-string v2, "av"

    iget-object v3, p0, Lcom/alipay/sdk/sys/a;->t:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9a
    const-string v2, "sdk_start_time"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ab

    const-string v2, "sdk_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_ab
    const-string v2, "extInfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_bc

    const-string v2, "extInfo"

    invoke-direct {p0}, Lcom/alipay/sdk/sys/a;->c()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_bc
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_fb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_db
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move v6, v1

    move-object v1, v0

    move v0, v6

    goto/16 :goto_3d

    :cond_fb
    move-object v0, v1

    goto :goto_db
.end method

.method public static a(Lcom/alipay/sdk/sys/a;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/sdk/sys/a;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_2e

    const-string v1, "sdk_ver"

    const-string v2, "15.7.4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_name"

    iget-object v2, p0, Lcom/alipay/sdk/sys/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "token"

    iget-object v2, p0, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "call_type"

    iget-object v2, p0, Lcom/alipay/sdk/sys/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ts_api_invoke"

    iget-wide v2, p0, Lcom/alipay/sdk/sys/a;->q:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "\"&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    :try_start_0
    const-string v0, "&"

    const-string v1, "bizcontext="

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bizcontext="

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/alipay/sdk/sys/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2d
    return-object v0

    :cond_2e
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bizcontext="

    const-string v4, ""

    const/4 v5, 0x1

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5d} :catch_5f

    move-result-object v0

    goto :goto_2d

    :catch_5f
    move-exception v0

    move-object v0, p1

    goto :goto_2d
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string v0, "-"

    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%s%s%d%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p0, :cond_10

    const-string p0, ""

    :cond_10
    aput-object p0, v3, v4

    const/4 v4, 0x1

    if-nez p1, :cond_17

    const-string p1, ""

    :cond_17
    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/util/n;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EP%s%s_%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_52} :catch_54

    move-result-object v0

    :goto_53
    return-object v0

    :catch_54
    move-exception v1

    goto :goto_53
.end method

.method private c()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "ap_link_token"

    iget-object v2, p0, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_c} :catch_d

    :goto_c
    return-object v0

    :catch_d
    move-exception v1

    goto :goto_c
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    :try_start_0
    const-string v0, "\"&"

    const-string v1, "bizcontext=\""

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bizcontext=\""

    const-string v2, "\""

    invoke-direct {p0, v1, v2}, Lcom/alipay/sdk/sys/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2d
    return-object v0

    :cond_2e
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_49

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_49
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bizcontext=\""

    const-string v4, "\""

    const/4 v5, 0x0

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_78} :catch_7a

    move-result-object v0

    goto :goto_2d

    :catch_7a
    move-exception v0

    move-object v0, p1

    goto :goto_2d
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-object p1

    :cond_7
    const-string v0, "new_external_info=="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, p1}, Lcom/alipay/sdk/sys/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0, p1}, Lcom/alipay/sdk/sys/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_1a
    invoke-direct {p0, p1}, Lcom/alipay/sdk/sys/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appkey"

    const-string v2, "2014052600006128"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ty"

    const-string v2, "and_lite"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sv"

    const-string v2, "h.a.3.7.4"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/alipay/sdk/sys/a;->u:Ljava/lang/String;

    const-string v2, "setting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/alipay/sdk/sys/a;->v:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/sdk/util/n;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_33

    :cond_2c
    const-string v1, "an"

    iget-object v2, p0, Lcom/alipay/sdk/sys/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_33
    const-string v1, "av"

    iget-object v2, p0, Lcom/alipay/sdk/sys/a;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "extInfo"

    invoke-direct {p0}, Lcom/alipay/sdk/sys/a;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_55
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_58} :catch_5a

    move-result-object v0

    :goto_59
    return-object v0

    :catch_5a
    move-exception v0

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    const-string v0, ""

    goto :goto_59
.end method

.method public b()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/sys/a;->v:Landroid/content/Context;

    return-object v0
.end method
