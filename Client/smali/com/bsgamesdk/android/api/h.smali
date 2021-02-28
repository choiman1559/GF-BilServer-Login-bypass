.class public Lcom/bsgamesdk/android/api/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field public static final b:Lcom/bsgamesdk/android/api/b;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Landroid/content/Context;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field private r:Lcom/bsgamesdk/android/utils/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/api/h;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/api/h;->b:Lcom/bsgamesdk/android/api/b;

    const-string v0, "login_method"

    sput-object v0, Lcom/bsgamesdk/android/api/h;->k:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/bsgamesdk/android/api/h;->l:Ljava/lang/String;

    const-string v0, "account_login"

    sput-object v0, Lcom/bsgamesdk/android/api/h;->m:Ljava/lang/String;

    const-string v0, "cache_login"

    sput-object v0, Lcom/bsgamesdk/android/api/h;->n:Ljava/lang/String;

    const-string v0, "sso_login"

    sput-object v0, Lcom/bsgamesdk/android/api/h;->o:Ljava/lang/String;

    const-string v0, "apple_login"

    sput-object v0, Lcom/bsgamesdk/android/api/h;->p:Ljava/lang/String;

    const-string v0, "tourist_login"

    sput-object v0, Lcom/bsgamesdk/android/api/h;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    sget-object v3, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    sget-object v4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    const-string v6, "1"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    sget-object v8, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    const-string v9, "3"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v9}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "5"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->c:Ljava/lang/String;

    const-string v0, "5"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->f:Ljava/lang/String;

    const-string v0, "collectApi_create_role"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->i:Ljava/lang/String;

    const-string v0, "collectApi_activate"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->j:Ljava/lang/String;

    iput-object p1, p0, Lcom/bsgamesdk/android/api/h;->g:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "sdk_ver"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "sdk_type"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "udid"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/h;->l:Ljava/lang/String;

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/api/h;->l:Ljava/lang/String;

    :cond_45
    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "apk_sign"

    sget-object v2, Lcom/bsgamesdk/android/api/h;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "5"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->c:Ljava/lang/String;

    const-string v0, "5"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->f:Ljava/lang/String;

    const-string v0, "collectApi_create_role"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->i:Ljava/lang/String;

    const-string v0, "collectApi_activate"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->j:Ljava/lang/String;

    iput-object p1, p0, Lcom/bsgamesdk/android/api/h;->g:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    invoke-direct {p0}, Lcom/bsgamesdk/android/api/h;->a()V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "server_id"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "merchant_id"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "app_id"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    invoke-interface {v0, p1}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsLogined(Landroid/content/Context;)Z

    move-result v1

    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    invoke-interface {v0, p1}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsTouristLogined(Landroid/content/Context;)Z

    move-result v2

    const/4 v0, 0x0

    if-eqz v1, :cond_18e

    new-instance v0, Lcom/bsgamesdk/android/model/m;

    invoke-direct {v0, p1}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    iget-wide v0, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :cond_5a
    :goto_5a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d9

    :goto_60
    iget-object v1, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v2, "uid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "udid"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->p:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "sdk_log_type"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "ver"

    invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "channel_id"

    invoke-interface {v0, v1, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "platform_type"

    invoke-interface {v0, v1, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "net"

    iget-object v2, p0, Lcom/bsgamesdk/android/api/h;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "operators"

    iget-object v2, p0, Lcom/bsgamesdk/android/api/h;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "model"

    iget-object v2, p0, Lcom/bsgamesdk/android/api/h;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "pf_ver"

    iget-object v2, p0, Lcom/bsgamesdk/android/api/h;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "sdk_ver"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "isRoot"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->q:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "support_abis"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->r:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "sdk_type"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->s:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "version_code"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v2, "mac"

    invoke-static {}, Lcom/bsgamesdk/android/utils/ab;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a1

    const-string v0, ""

    :goto_ed
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v2, "imei"

    invoke-static {p1}, Lcom/bsgamesdk/android/utils/ab;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a7

    const-string v0, ""

    :goto_100
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v2, "android_id"

    invoke-static {p1}, Lcom/bsgamesdk/android/buvid/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1ad

    const-string v0, ""

    :goto_113
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "client_timestamp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "brand"

    invoke-static {p1}, Lcom/bsgamesdk/android/api/h;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_13f
    invoke-static {p1}, Lcom/bsgamesdk/android/buvid/o;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/buvid/k;

    move-result-object v0

    iget-object v0, v0, Lcom/bsgamesdk/android/buvid/k;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b3

    const-string v0, ""

    move-object v1, v0

    :goto_14e
    invoke-static {p1}, Lcom/bsgamesdk/android/buvid/o;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/buvid/k;

    move-result-object v0

    iget-object v0, v0, Lcom/bsgamesdk/android/buvid/k;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1bb

    const-string v0, ""

    :goto_15c
    iget-object v2, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v3, "old_buvid"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v2, "cur_buvid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16a
    .catch Ljava/lang/Throwable; {:try_start_13f .. :try_end_16a} :catch_1c2

    :goto_16a
    sget-object v0, Lcom/bsgamesdk/android/api/h;->l:Ljava/lang/String;

    if-nez v0, :cond_176

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/api/h;->l:Ljava/lang/String;

    :cond_176
    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "apk_sign"

    sget-object v2, Lcom/bsgamesdk/android/api/h;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    invoke-static {v0}, Lcom/bsgamesdk/android/api/h;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "dp"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->t:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_18e
    if-eqz v2, :cond_5a

    new-instance v0, Lcom/bsgamesdk/android/model/k;

    invoke-direct {v0, p1}, Lcom/bsgamesdk/android/model/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v0

    iget-wide v0, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5a

    :cond_1a1
    invoke-static {}, Lcom/bsgamesdk/android/utils/ab;->d()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_ed

    :cond_1a7
    invoke-static {p1}, Lcom/bsgamesdk/android/utils/ab;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_100

    :cond_1ad
    invoke-static {p1}, Lcom/bsgamesdk/android/buvid/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_113

    :cond_1b3
    :try_start_1b3
    invoke-static {p1}, Lcom/bsgamesdk/android/buvid/o;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/buvid/k;

    move-result-object v0

    iget-object v0, v0, Lcom/bsgamesdk/android/buvid/k;->c:Ljava/lang/String;

    move-object v1, v0

    goto :goto_14e

    :cond_1bb
    invoke-static {p1}, Lcom/bsgamesdk/android/buvid/o;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/buvid/k;

    move-result-object v0

    iget-object v0, v0, Lcom/bsgamesdk/android/buvid/k;->d:Ljava/lang/String;
    :try_end_1c1
    .catch Ljava/lang/Throwable; {:try_start_1b3 .. :try_end_1c1} :catch_1c2

    goto :goto_15c

    :catch_1c2
    move-exception v0

    iget-object v1, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v2, "old_buvid"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v2, "cur_buvid"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_16a

    :cond_1d9
    move-object v0, p5

    goto/16 :goto_60
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v1, "5"

    :try_start_2
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_3c

    :cond_1d
    move-object v0, v1

    :goto_1e
    return-object v0

    :pswitch_1f
    const-string v0, "4"

    goto :goto_1e

    :pswitch_22
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_44

    :pswitch_29
    const-string v0, "5"

    goto :goto_1e

    :pswitch_2c
    const-string v0, "1"

    goto :goto_1e

    :pswitch_2f
    const-string v0, "5"

    goto :goto_1e

    :pswitch_32
    const-string v0, "2"

    goto :goto_1e

    :pswitch_35
    const-string v0, "3"
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_37} :catch_38

    goto :goto_1e

    :catch_38
    move-exception v0

    move-object v0, v1

    goto :goto_1e

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1f
    .end packed-switch

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_32
        :pswitch_35
        :pswitch_2f
        :pswitch_35
        :pswitch_35
        :pswitch_29
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_29
        :pswitch_35
        :pswitch_29
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method

.method private a()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->g:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    new-instance v0, Lcom/bsgamesdk/android/utils/j;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/h;->g:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/bsgamesdk/android/utils/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->r:Lcom/bsgamesdk/android/utils/j;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->r:Lcom/bsgamesdk/android/utils/j;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/utils/j;->a()Lorg/json/JSONObject;

    move-result-object v2

    const-string v0, "UNKNOWN"
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_66

    :try_start_1f
    const-string v3, "ProvidersName "

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_9e
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_24} :catch_66

    move-result-object v0

    :goto_25
    :try_start_25
    const-string v3, "UNKNOWN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string v3, "CHINA_MOBILE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    const-string v0, "1"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->c:Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_39} :catch_66

    :cond_39
    :goto_39
    :try_start_39
    const-string v0, "model"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->e:Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_41} :catch_9c
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_41} :catch_66

    :goto_41
    :try_start_41
    const-string v0, "release"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->f:Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_49} :catch_9a
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_49} :catch_66

    :goto_49
    if-eqz v1, :cond_58

    :try_start_4b
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_a0

    :cond_58
    :goto_58
    return-void

    :cond_59
    const-string v3, "CHINA_UNICOM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    const-string v0, "2"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->c:Ljava/lang/String;

    goto :goto_39

    :catch_66
    move-exception v0

    goto :goto_58

    :cond_68
    const-string v3, "CHINA_TELCOM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "3"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->c:Ljava/lang/String;

    goto :goto_39

    :pswitch_75
    const-string v0, "4"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->d:Ljava/lang/String;

    goto :goto_58

    :pswitch_7a
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_a8

    :pswitch_81
    const-string v0, "5"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->d:Ljava/lang/String;

    goto :goto_58

    :pswitch_86
    const-string v0, "1"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->d:Ljava/lang/String;

    goto :goto_58

    :pswitch_8b
    const-string v0, "5"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->d:Ljava/lang/String;

    goto :goto_58

    :pswitch_90
    const-string v0, "2"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->d:Ljava/lang/String;

    goto :goto_58

    :pswitch_95
    const-string v0, "3"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/h;->d:Ljava/lang/String;
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_99} :catch_66

    goto :goto_58

    :catch_9a
    move-exception v0

    goto :goto_49

    :catch_9c
    move-exception v0

    goto :goto_41

    :catch_9e
    move-exception v3

    goto :goto_25

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_7a
        :pswitch_75
    .end packed-switch

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_86
        :pswitch_90
        :pswitch_95
        :pswitch_8b
        :pswitch_95
        :pswitch_95
        :pswitch_81
        :pswitch_95
        :pswitch_95
        :pswitch_95
        :pswitch_81
        :pswitch_95
        :pswitch_81
        :pswitch_95
        :pswitch_95
    .end packed-switch
.end method

.method public static a(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/bsgamesdk/android/model/c;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const-string v0, "ad_ext"

    sget-object v1, Lcom/bsgamesdk/android/model/c;->u:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ad_info"

    sget-object v1, Lcom/bsgamesdk/android/model/c;->u:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method static synthetic a(Ljava/util/Map;Landroid/net/Uri$Builder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/bsgamesdk/android/api/h;->b(Ljava/util/Map;Landroid/net/Uri$Builder;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v1, "5"

    new-instance v0, Lcom/bsgamesdk/android/utils/j;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/utils/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/utils/j;->a()Lorg/json/JSONObject;

    move-result-object v2

    const-string v0, "UNKNOWN"

    :try_start_d
    const-string v3, "ProvidersName "

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_3c

    move-result-object v0

    :goto_13
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "CHINA_MOBILE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const-string v0, "1"

    :goto_25
    return-object v0

    :cond_26
    const-string v2, "CHINA_UNICOM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const-string v0, "2"

    goto :goto_25

    :cond_31
    const-string v2, "CHINA_TELCOM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "3"

    goto :goto_25

    :catch_3c
    move-exception v2

    goto :goto_13

    :cond_3e
    move-object v0, v1

    goto :goto_25
.end method

.method private static b(Ljava/util/Map;Landroid/net/Uri$Builder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri$Builder;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_8

    :cond_24
    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    new-instance v0, Lcom/bsgamesdk/android/utils/j;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/utils/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/utils/j;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v0, ""

    :try_start_b
    const-string v2, "model"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v0

    :goto_11
    return-object v0

    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    new-instance v0, Lcom/bsgamesdk/android/utils/j;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/utils/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/utils/j;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v0, ""

    :try_start_b
    const-string v2, "brand"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v0

    :goto_11
    return-object v0

    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    new-instance v0, Lcom/bsgamesdk/android/utils/j;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/utils/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/utils/j;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v0, ""

    :try_start_b
    const-string v2, "release"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v0

    :goto_11
    return-object v0

    :catch_12
    move-exception v1

    goto :goto_11
.end method


# virtual methods
.method public a(ILjava/lang/String;ILjava/lang/String;)V
    .registers 8

    sget-object v0, Lcom/bsgamesdk/android/api/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/bsgamesdk/android/api/h$12;

    invoke-direct {v2, p0, p1, p3, p4}, Lcom/bsgamesdk/android/api/h$12;-><init>(Lcom/bsgamesdk/android/api/h;IILjava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 14

    sget-object v6, Lcom/bsgamesdk/android/api/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/bsgamesdk/android/api/h$13;

    move-object v1, p0

    move v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/api/h$13;-><init>(Lcom/bsgamesdk/android/api/h;IILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    sget-object v7, Lcom/bsgamesdk/android/api/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/bsgamesdk/android/api/h$14;

    move-object v1, p0

    move v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/bsgamesdk/android/api/h$14;-><init>(Lcom/bsgamesdk/android/api/h;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/l;)V
    .registers 13

    sget-object v6, Lcom/bsgamesdk/android/api/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/bsgamesdk/android/api/h$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/api/h$1;-><init>(Lcom/bsgamesdk/android/api/h;ILjava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/l;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 25

    sget-object v11, Lcom/bsgamesdk/android/api/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v12, Ljava/lang/Thread;

    new-instance v0, Lcom/bsgamesdk/android/api/h$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p5

    move/from16 v8, p9

    move-object/from16 v9, p11

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/bsgamesdk/android/api/h$2;-><init>(Lcom/bsgamesdk/android/api/h;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v11, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 31

    sget-object v14, Lcom/bsgamesdk/android/api/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v15, Ljava/lang/Thread;

    new-instance v0, Lcom/bsgamesdk/android/api/h$3;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p5

    move/from16 v8, p9

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p10

    move-object/from16 v13, p14

    invoke-direct/range {v0 .. v13}, Lcom/bsgamesdk/android/api/h$3;-><init>(Lcom/bsgamesdk/android/api/h;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v15, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v14, v15}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 34

    sget-object v16, Lcom/bsgamesdk/android/api/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v17, Ljava/lang/Thread;

    new-instance v1, Lcom/bsgamesdk/android/api/h$16;

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p5

    move/from16 v9, p9

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p14

    move-object/from16 v13, p13

    move-object/from16 v14, p10

    move-object/from16 v15, p15

    invoke-direct/range {v1 .. v15}, Lcom/bsgamesdk/android/api/h$16;-><init>(Lcom/bsgamesdk/android/api/h;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-interface/range {v16 .. v17}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/bsgamesdk/android/api/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/bsgamesdk/android/api/h$8;

    invoke-direct {v2, p0, p2, p1}, Lcom/bsgamesdk/android/api/h$8;-><init>(Lcom/bsgamesdk/android/api/h;Ljava/util/Map;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "request_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catch_13
    move-exception v0

    goto :goto_4

    :cond_15
    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "request_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1e} :catch_13

    goto :goto_4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/bsgamesdk/android/api/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/bsgamesdk/android/api/h$6;

    invoke-direct {v2, p0, p1, p2}, Lcom/bsgamesdk/android/api/h$6;-><init>(Lcom/bsgamesdk/android/api/h;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 13

    sget-object v6, Lcom/bsgamesdk/android/api/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/bsgamesdk/android/api/h$11;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/api/h$11;-><init>(Lcom/bsgamesdk/android/api/h;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/bsgamesdk/android/api/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/bsgamesdk/android/api/h$5;

    invoke-direct {v2, p0, p2, p3}, Lcom/bsgamesdk/android/api/h$5;-><init>(Lcom/bsgamesdk/android/api/h;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    sget-object v7, Lcom/bsgamesdk/android/api/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/bsgamesdk/android/api/h$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/bsgamesdk/android/api/h$4;-><init>(Lcom/bsgamesdk/android/api/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/bsgamesdk/android/api/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/bsgamesdk/android/api/h$9;

    invoke-direct {v2, p0, p1, p2}, Lcom/bsgamesdk/android/api/h$9;-><init>(Lcom/bsgamesdk/android/api/h;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(ILjava/lang/String;ILjava/lang/String;)V
    .registers 8

    sget-object v0, Lcom/bsgamesdk/android/api/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/bsgamesdk/android/api/h$15;

    invoke-direct {v2, p0, p1, p3, p4}, Lcom/bsgamesdk/android/api/h$15;-><init>(Lcom/bsgamesdk/android/api/h;IILjava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized b(Landroid/content/Context;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "collectApi_params_cache"

    const-string v0, "collectApi_params_cache"

    invoke-static {p1, v0}, Lcom/bsgamesdk/android/utils/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/v;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_3b

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_38

    move-object v1, v0

    :goto_17
    if-nez p2, :cond_1b

    :goto_19
    monitor-exit p0

    return-void

    :cond_1b
    :try_start_1b
    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/v;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_22
    invoke-static {p1, v0}, Lcom/bsgamesdk/android/utils/l;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/v;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_30
    const-string v1, "collectApi_params_cache"

    invoke-static {p1, v1, v0}, Lcom/bsgamesdk/android/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_35} :catch_36
    .catchall {:try_start_1b .. :try_end_35} :catchall_38

    goto :goto_19

    :catch_36
    move-exception v0

    goto :goto_19

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3b
    move-object v1, v0

    goto :goto_17
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/bsgamesdk/android/api/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/bsgamesdk/android/api/h$7;

    invoke-direct {v2, p0, p1}, Lcom/bsgamesdk/android/api/h$7;-><init>(Lcom/bsgamesdk/android/api/h;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public c(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/bsgamesdk/android/api/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/bsgamesdk/android/api/h$10;

    invoke-direct {v2, p0, p1}, Lcom/bsgamesdk/android/api/h$10;-><init>(Lcom/bsgamesdk/android/api/h;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "error_log"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v1, "actionname"

    const-string v2, "error_log"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/bsgamesdk/android/api/h;->b(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method
