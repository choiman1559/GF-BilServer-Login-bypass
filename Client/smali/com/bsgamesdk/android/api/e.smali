.class public Lcom/bsgamesdk/android/api/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bsgamesdk/android/api/k;


# static fields
.field public static final a:Lcom/bsgamesdk/android/api/b;

.field public static b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    const-string v0, ""

    sput-object v0, Lcom/bsgamesdk/android/api/e;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/e;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v1, ""

    const/4 v0, 0x0

    move v2, v0

    :goto_10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4c

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4d

    const-string v4, "item_name"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4d

    const-string v4, "item_desc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    move-object v0, v1

    :goto_2f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_10

    :cond_34
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :cond_4c
    return-object v1

    :cond_4d
    move-object v0, v1

    goto :goto_2f
.end method

.method private static a()V
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->am()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/qiniu/android/dns/util/RealTimeThreadPool;->getInstance()Lcom/qiniu/android/dns/util/RealTimeThreadPool;

    move-result-object v0

    new-instance v1, Lcom/bsgamesdk/android/api/e$38;

    invoke-direct {v1}, Lcom/bsgamesdk/android/api/e$38;-><init>()V

    invoke-virtual {v0, v1}, Lcom/qiniu/android/dns/util/RealTimeThreadPool;->execute(Ljava/lang/Runnable;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_17

    :cond_16
    :goto_16
    return-void

    :catch_17
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public static a(Landroid/content/Context;Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/bsgamesdk/android/api/asynchttp/PersistentCookieStore;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/api/e;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bsgamesdk/android/api/e;->a(Lcom/bsgamesdk/android/model/CaptchModel;Ljava/util/Map;)V

    return-void
.end method

.method private a(Lcom/bsgamesdk/android/model/CaptchModel;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bsgamesdk/android/model/CaptchModel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_87

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/CaptchModel;->getCaptcha_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "captcha_type"

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/CaptchModel;->getCaptcha_type()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/CaptchModel;->getImage_token()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "image_token"

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/CaptchModel;->getImage_token()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/CaptchModel;->getCaptcha_code()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "captcha_code"

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/CaptchModel;->getCaptcha_code()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/CaptchModel;->getChallenge()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string v0, "challenge"

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/CaptchModel;->getChallenge()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/CaptchModel;->getValidate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61

    const-string v0, "validate"

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/CaptchModel;->getValidate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/CaptchModel;->getSeccode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_74

    const-string v0, "seccode"

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/CaptchModel;->getSeccode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_74
    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/CaptchModel;->getGt_user_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_87

    const-string v0, "gt_user_id"

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/CaptchModel;->getGt_user_id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_87
    return-void
.end method

.method static synthetic b(Landroid/content/Context;I)Ljava/util/Map;
    .registers 3

    invoke-static {p0, p1}, Lcom/bsgamesdk/android/api/e;->c(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/util/Map;)V
    .registers 1

    invoke-static {p0}, Lcom/bsgamesdk/android/api/e;->c(Ljava/util/Map;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bsgamesdk/android/model/l;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v0, Lcom/bsgamesdk/android/api/e$20;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/api/e$20;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    sget-object v1, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/b;->H()Ljava/util/LinkedList;

    move-result-object v1

    const-string v2, "getFreeUrl"

    invoke-virtual {v0, v6, v1, v2, v6}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/l;

    return-object v0
.end method

.method private static c(Landroid/content/Context;I)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/bsgamesdk/android/api/e;->a()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "game_id"

    sget-object v1, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "merchant_id"

    sget-object v1, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "version"

    const-string v1, "1"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "timestamp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "client_timestamp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_id"

    sget-object v1, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk_ver"

    sget-object v1, Lcom/bsgamesdk/android/model/c;->l:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk_type"

    sget-object v1, Lcom/bsgamesdk/android/model/c;->s:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "c"

    sget-object v1, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isRoot"

    sget-object v1, Lcom/bsgamesdk/android/model/c;->q:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "udid"

    sget-object v1, Lcom/bsgamesdk/android/model/c;->p:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "support_abis"

    sget-object v1, Lcom/bsgamesdk/android/model/c;->r:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mac"

    invoke-static {}, Lcom/bsgamesdk/android/utils/ab;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c8

    const-string v0, ""

    :goto_98
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imei"

    invoke-static {p0}, Lcom/bsgamesdk/android/utils/ab;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1ce

    const-string v0, ""

    :goto_a9
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android_id"

    invoke-static {p0}, Lcom/bsgamesdk/android/buvid/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d4

    const-string v0, ""

    :goto_ba
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    invoke-interface {v0, p0}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsLogined(Landroid/content/Context;)Z

    move-result v3

    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    invoke-interface {v0, p0}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsTouristLogined(Landroid/content/Context;)Z

    move-result v4

    const-string v1, ""

    const-string v0, ""

    if-eqz v3, :cond_1da

    new-instance v0, Lcom/bsgamesdk/android/model/m;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_102
    :goto_102
    const-string v3, "uid"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "access_key"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_id"

    sget-object v1, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk_log_type"

    const-string v1, "1"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ver"

    sget-object v1, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "version_code"

    sget-object v1, Lcom/bsgamesdk/android/model/c;->j:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "channel_id"

    sget-object v1, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/bsgamesdk/android/api/h;->a(Ljava/util/Map;)V

    const-string v0, "platform_type"

    const-string v1, "3"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "model"

    invoke-static {p0}, Lcom/bsgamesdk/android/api/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "brand"

    invoke-static {p0}, Lcom/bsgamesdk/android/api/h;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "net"

    invoke-static {p0}, Lcom/bsgamesdk/android/api/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "operators"

    invoke-static {p0}, Lcom/bsgamesdk/android/api/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pf_ver"

    invoke-static {p0}, Lcom/bsgamesdk/android/api/h;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dp"

    sget-object v1, Lcom/bsgamesdk/android/model/c;->t:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_16d
    invoke-static {p0}, Lcom/bsgamesdk/android/buvid/o;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/buvid/k;

    move-result-object v0

    iget-object v0, v0, Lcom/bsgamesdk/android/buvid/k;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_211

    const-string v0, ""

    move-object v1, v0

    :goto_17c
    invoke-static {p0}, Lcom/bsgamesdk/android/buvid/o;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/buvid/k;

    move-result-object v0

    iget-object v0, v0, Lcom/bsgamesdk/android/buvid/k;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21a

    const-string v0, ""

    :goto_18a
    const-string v3, "old_buvid"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cur_buvid"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_194
    .catch Ljava/lang/Throwable; {:try_start_16d .. :try_end_194} :catch_222

    :goto_194
    sget-object v0, Lcom/bsgamesdk/android/api/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    invoke-static {p0}, Lcom/bsgamesdk/android/utils/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/api/e;->b:Ljava/lang/String;

    :cond_1a2
    const-string v0, "apk_sign"

    sget-object v1, Lcom/bsgamesdk/android/api/e;->b:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "oaid"

    sget-object v0, Lcom/bsgamesdk/android/model/c;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_236

    const-string v0, ""

    :goto_1b5
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fingerprint"

    sget-object v0, Lcom/bsgamesdk/android/model/c;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23a

    const-string v0, ""

    :goto_1c4
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_1c8
    invoke-static {}, Lcom/bsgamesdk/android/utils/ab;->d()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_98

    :cond_1ce
    invoke-static {p0}, Lcom/bsgamesdk/android/utils/ab;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a9

    :cond_1d4
    invoke-static {p0}, Lcom/bsgamesdk/android/buvid/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_ba

    :cond_1da
    if-eqz v4, :cond_102

    new-instance v0, Lcom/bsgamesdk/android/model/k;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/model/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_102

    :cond_211
    :try_start_211
    invoke-static {p0}, Lcom/bsgamesdk/android/buvid/o;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/buvid/k;

    move-result-object v0

    iget-object v0, v0, Lcom/bsgamesdk/android/buvid/k;->c:Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_17c

    :cond_21a
    invoke-static {p0}, Lcom/bsgamesdk/android/buvid/o;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/buvid/k;

    move-result-object v0

    iget-object v0, v0, Lcom/bsgamesdk/android/buvid/k;->d:Ljava/lang/String;
    :try_end_220
    .catch Ljava/lang/Throwable; {:try_start_211 .. :try_end_220} :catch_222

    goto/16 :goto_18a

    :catch_222
    move-exception v0

    const-string v1, "old_buvid"

    const-string v3, ""

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cur_buvid"

    const-string v3, ""

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_194

    :cond_236
    sget-object v0, Lcom/bsgamesdk/android/model/c;->z:Ljava/lang/String;

    goto/16 :goto_1b5

    :cond_23a
    sget-object v0, Lcom/bsgamesdk/android/model/c;->A:Ljava/lang/String;

    goto :goto_1c4
.end method

.method private static c(Ljava/util/Map;)V
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

    invoke-static {p0}, Lcom/bsgamesdk/android/api/e;->d(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sign"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static d(Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcom/bsgamesdk/android/api/e;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    sget-object v1, Lcom/bsgamesdk/android/model/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/bsgamesdk/android/api/e$21;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/api/e$21;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/b;->H()Ljava/util/LinkedList;

    move-result-object v1

    const-string v2, "SDKAppConfig"

    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;

    return-void
.end method

.method private h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/api/client/get.key"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/bsgamesdk/android/api/e;->c(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/bsgamesdk/android/api/e;->c(Ljava/util/Map;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->queryCachePost(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 BSGameSDK"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->executeForString(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseResponse4Water(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2f
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_0 .. :try_end_2f} :catch_37
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_2f} :catch_31
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2f} :catch_39

    move-result-object v0

    :goto_30
    return-object v0

    :catch_31
    move-exception v0

    :goto_32
    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_30

    :catch_37
    move-exception v0

    goto :goto_32

    :catch_39
    move-exception v0

    goto :goto_32
.end method

.method private k(Landroid/content/Context;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    new-instance v0, Lcom/bsgamesdk/android/api/e$22;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/api/e$22;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->i()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "newRsa"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/lang/String;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    new-instance v0, Lcom/bsgamesdk/android/api/e$19;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bsgamesdk/android/api/e$19;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;ILjava/lang/String;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->t()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "payCondition"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v0, Lcom/bsgamesdk/android/api/e$18;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move-object v5, p5

    move v6, p6

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/bsgamesdk/android/api/e$18;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sget-object v1, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v1, p2}, Lcom/bsgamesdk/android/api/b;->e(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v1

    const-string v2, "paypalVerify"

    invoke-virtual {v0, v8, v1, v2, v8}, Lcom/bsgamesdk/android/api/c;->d(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "null accessKey"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lcom/bsgamesdk/android/api/e$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bsgamesdk/android/api/e$7;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->s()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "activate"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "null accessKey"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lcom/bsgamesdk/android/api/e$40;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/api/e$40;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->s()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "myinfo"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p3, p4, v1}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v1

    new-instance v2, Lcom/bsgamesdk/android/model/m;

    invoke-direct {v2, p1}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3f

    iget-wide v4, v2, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_3f

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-direct {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;-><init>()V

    iget v1, v2, Lcom/bsgamesdk/android/model/UserParcelable;->realname_verified:I

    iput v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->realname_verified:I

    iget-object v1, v2, Lcom/bsgamesdk/android/model/UserParcelable;->nickname:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    iget-object v1, v2, Lcom/bsgamesdk/android/model/UserParcelable;->avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAvatar:Ljava/lang/String;

    iget-object v1, v2, Lcom/bsgamesdk/android/model/UserParcelable;->s_avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mBig_Avatar:Ljava/lang/String;

    iget v1, v2, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download:I

    iput v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    iget v1, v2, Lcom/bsgamesdk/android/model/UserParcelable;->h5_paid_download_sameSign:I

    iput v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    goto :goto_6

    :cond_3f
    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_6
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p5, :cond_43

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/e;->b(Landroid/content/Context;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v7

    :goto_6
    iget-object v0, v7, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mRsa:Lcom/bsgamesdk/android/model/j;

    iget-object v0, v0, Lcom/bsgamesdk/android/model/j;->b:Ljava/lang/String;

    iget-object v1, v7, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mRsa:Lcom/bsgamesdk/android/model/j;

    iget-object v1, v1, Lcom/bsgamesdk/android/model/j;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/bsgamesdk/android/api/e$30;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p6

    move-object v6, p4

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/bsgamesdk/android/api/e$30;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->s()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "login"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    :try_end_3e
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_3e} :catch_3f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_3e} :catch_41

    return-object v0

    :catch_3f
    move-exception v0

    :goto_40
    throw v0

    :catch_41
    move-exception v0

    goto :goto_40

    :cond_43
    move-object v7, p5

    goto :goto_6
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/e;->j(Landroid/content/Context;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v7

    new-instance v0, Lcom/bsgamesdk/android/api/e$35;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p11

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p7

    invoke-direct/range {v0 .. v13}, Lcom/bsgamesdk/android/api/e$35;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->I()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "phoneregister"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p7, :cond_56

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/e;->b(Landroid/content/Context;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v9

    :goto_6
    iget-object v0, v9, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mRsa:Lcom/bsgamesdk/android/model/j;

    iget-object v0, v0, Lcom/bsgamesdk/android/model/j;->b:Ljava/lang/String;

    iget-object v1, v9, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mRsa:Lcom/bsgamesdk/android/model/j;

    iget-object v1, v1, Lcom/bsgamesdk/android/model/j;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/bsgamesdk/android/api/e$39;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p8

    move-object/from16 v6, p6

    move-object/from16 v7, p5

    move-object v8, p4

    move-object v10, p3

    invoke-direct/range {v0 .. v10}, Lcom/bsgamesdk/android/api/e$39;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Ljava/lang/String;)V

    const-string v1, "login"

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_43

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string v1, "loginCached"

    :cond_43
    const/4 v2, 0x0

    sget-object v3, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/api/b;->s()Ljava/util/LinkedList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    :try_end_51
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_51} :catch_52
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_51} :catch_54

    return-object v0

    :catch_52
    move-exception v0

    :goto_53
    throw v0

    :catch_54
    move-exception v0

    goto :goto_53

    :cond_56
    move-object/from16 v9, p7

    goto :goto_6
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;I)Lcom/bsgamesdk/android/model/b;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    const-string v1, "login"

    sget-object v0, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->s()Ljava/util/LinkedList;

    move-result-object v0

    const/4 v2, 0x2

    if-ne p2, v2, :cond_13

    const-string v1, "order"

    sget-object v0, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->t()Ljava/util/LinkedList;

    move-result-object v0

    :cond_13
    new-instance v2, Lcom/bsgamesdk/android/api/e$2;

    invoke-direct {v2, p0, p1}, Lcom/bsgamesdk/android/api/e$2;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/b;

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/bsgamesdk/android/model/e;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/bsgamesdk/android/model/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/bsgamesdk/android/model/e;
    .registers 13

    const/4 v6, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v6

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lcom/bsgamesdk/android/api/e$11;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/api/e$11;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_14
    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->t()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "getCoupon"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->c(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/e;
    :try_end_22
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_14 .. :try_end_22} :catch_29
    .catch Lorg/apache/http/HttpException; {:try_start_14 .. :try_end_22} :catch_23
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_22} :catch_2b

    goto :goto_8

    :catch_23
    move-exception v0

    :goto_24
    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    move-object v0, v6

    goto :goto_8

    :catch_29
    move-exception v0

    goto :goto_24

    :catch_2b
    move-exception v0

    goto :goto_24
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/api/e;->k(Landroid/content/Context;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v2

    new-instance v0, Lcom/bsgamesdk/android/api/e$3;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/bsgamesdk/android/api/e$3;-><init>(Lcom/bsgamesdk/android/api/e;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->I()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "reg"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v0, p1}, Lcom/bsgamesdk/android/api/b;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/bsgamesdk/android/api/e$1;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/api/e$1;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->j()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "config"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->c(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/bsgamesdk/android/api/e$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/bsgamesdk/android/api/e$10;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->j()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/bsgamesdk/android/api/c;->c(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/bsgamesdk/android/model/CaptchModel;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/api/e;->k(Landroid/content/Context;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v2

    new-instance v0, Lcom/bsgamesdk/android/api/e$16;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    move-object v7, p6

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/bsgamesdk/android/api/e$16;-><init>(Lcom/bsgamesdk/android/api/e;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;I)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->s()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "callAuthenticate"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/bsgamesdk/android/model/CaptchModel;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    new-instance v0, Lcom/bsgamesdk/android/api/e$42;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/bsgamesdk/android/api/e$42;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->I()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "phonecaptcha"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "null accessKey"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lcom/bsgamesdk/android/api/e$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/bsgamesdk/android/api/e$6;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->i()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "notifyzone"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->e()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const-string v0, ""

    invoke-direct {p0, p1, p3}, Lcom/bsgamesdk/android/api/e;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mark_key"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mark_value"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/api/e;->k(Landroid/content/Context;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v2

    new-instance v0, Lcom/bsgamesdk/android/api/e$17;

    move-object v1, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/bsgamesdk/android/api/e$17;-><init>(Lcom/bsgamesdk/android/api/e;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->i()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "resetpwd"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/e;->j(Landroid/content/Context;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v2

    new-instance v0, Lcom/bsgamesdk/android/api/e$36;

    move-object v1, p0

    move-object/from16 v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p8

    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/bsgamesdk/android/api/e$36;-><init>(Lcom/bsgamesdk/android/api/e;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->I()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "touristbind"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;)[Ljava/lang/String;
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "null accessKey"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lcom/bsgamesdk/android/api/e$4;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p7

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p16

    move-object/from16 v16, p15

    invoke-direct/range {v0 .. v16}, Lcom/bsgamesdk/android/api/e$4;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->t()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "order"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->b(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    :goto_e
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->queryCacheGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 BSGameSDK"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_21
    invoke-static {p1}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->executeForClient(Landroid/content/Context;)Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;

    move-result-object v1

    if-nez v1, :cond_4b

    new-instance v0, Lorg/apache/http/HttpException;

    const-string v1, "HttpClient is null"

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2f} :catch_2f
    .catch Lorg/apache/http/HttpException; {:try_start_21 .. :try_end_2f} :catch_5a

    :catch_2f
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    const-string v0, "https://account.bilibili.com/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/captcha"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_e

    :cond_4b
    :try_start_4b
    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;->executeGetForBitmap(Lorg/apache/http/client/methods/HttpRequestBase;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/bsgamesdk/android/utils/h;->a:Ljava/util/List;
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_59} :catch_2f
    .catch Lorg/apache/http/HttpException; {:try_start_4b .. :try_end_59} :catch_5a

    return-object v0

    :catch_5a
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Landroid/content/Context;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/bsgamesdk/android/api/e$29;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/api/e$29;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->s()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "rsa"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    return-object v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "null accessKey"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lcom/bsgamesdk/android/api/e$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bsgamesdk/android/api/e$8;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->s()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "refreshToken"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    return-object v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    new-instance v0, Lcom/bsgamesdk/android/api/e$37;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/bsgamesdk/android/api/e$37;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->I()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "touristlogin"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    return-object v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)Ljava/lang/String;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    new-instance v0, Lcom/bsgamesdk/android/api/e$33;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p4

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/bsgamesdk/android/api/e$33;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->I()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "phonecaptcha"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "null uid"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lcom/bsgamesdk/android/api/e$12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bsgamesdk/android/api/e$12;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->t()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "verifyCoupon"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->queryCacheGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    :try_start_1c
    invoke-static {p1, v0}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->executeForBitmap(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)Landroid/graphics/Bitmap;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_21
    .catch Lorg/apache/http/HttpException; {:try_start_1c .. :try_end_1f} :catch_2d

    move-result-object v0

    goto :goto_7

    :catch_21
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2d
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "null accessKey"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lcom/bsgamesdk/android/api/e$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bsgamesdk/android/api/e$9;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->s()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "renewToken"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->c(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    if-eqz v0, :cond_3b

    iget-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    iget-object v2, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mergeMyInfo(Lcom/bsgamesdk/android/api/BSGameSdkAuth;)V

    iget-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    iget-object v2, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/bsgamesdk/android/model/e;

    move-result-object v1

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mCoupon:Lcom/bsgamesdk/android/model/e;

    :cond_3b
    return-object v0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    new-instance v0, Lcom/bsgamesdk/android/api/e$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/api/e$5;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->t()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "queryorder"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->c(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/content/Context;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    new-instance v0, Lcom/bsgamesdk/android/api/e$41;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/api/e$41;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->i()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "getcountry"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/bsgamesdk/android/api/e$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bsgamesdk/android/api/e$13;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->i()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "callCreateRole"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->c(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public d(Landroid/content/Context;)Lcom/bsgamesdk/android/model/h;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    new-instance v0, Lcom/bsgamesdk/android/api/e$14;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/api/e$14;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->s()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "getnotice"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/h;

    return-object v0
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "null accessKey"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lcom/bsgamesdk/android/api/e$24;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/bsgamesdk/android/api/e$24;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->t()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "order"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->b(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    new-instance v0, Lcom/bsgamesdk/android/api/e$25;

    invoke-direct {v0, p0, p1, p2}, Lcom/bsgamesdk/android/api/e$25;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->s()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "callAuthenticate"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/bsgamesdk/android/api/e$23;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/bsgamesdk/android/api/e$23;-><init>(Lcom/bsgamesdk/android/api/e;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    sget-object v1, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/b;->H()Ljava/util/LinkedList;

    move-result-object v1

    const-string v2, "getFreeUrl"

    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;

    return-void
.end method

.method public e(Landroid/content/Context;Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/bsgamesdk/android/api/e$26;

    invoke-direct {v0, p0, p1, p2}, Lcom/bsgamesdk/android/api/e$26;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->s()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "login"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    :try_end_15
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_18

    return-object v0

    :catch_16
    move-exception v0

    :goto_17
    throw v0

    :catch_18
    move-exception v0

    goto :goto_17
.end method

.method public e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "null accessKey"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lcom/bsgamesdk/android/api/e$28;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bsgamesdk/android/api/e$28;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->s()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "renewToken"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->c(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    return-object v0
.end method

.method public e(Landroid/content/Context;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/bsgamesdk/android/api/e$15;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/api/e$15;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->i()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "callLogActivate"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->c(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public f(Landroid/content/Context;Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "null accessKey"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lcom/bsgamesdk/android/api/e$27;

    invoke-direct {v0, p0, p1, p2}, Lcom/bsgamesdk/android/api/e$27;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->s()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "renewToken"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->c(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    return-object v0
.end method

.method public f(Landroid/content/Context;)V
    .registers 5

    :try_start_0
    const-string v0, "https://static.biligame.net"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gamesdk/sdkHotConfig.json"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->executeForString(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v1, v0, p1}, Lcom/bsgamesdk/android/api/b;->a(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_25
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_25} :catch_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_25} :catch_38

    :goto_25
    return-void

    :catch_26
    move-exception v0

    :goto_27
    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v1

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->setTrackConfig(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_25

    :catch_38
    move-exception v0

    goto :goto_27
.end method

.method public g(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->af()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "token"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->queryCacheGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "application/x-www-form-urlencoded; charset=UTF-8"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3b
    invoke-static {p1}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->executeForClient(Landroid/content/Context;)Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;

    move-result-object v1

    if-nez v1, :cond_55

    new-instance v0, Lorg/apache/http/HttpException;

    const-string v1, "HttpClient is null"

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_49} :catch_49
    .catch Lorg/apache/http/HttpException; {:try_start_3b .. :try_end_49} :catch_5a

    :catch_49
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    :try_start_55
    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;->executeGetForBitmap(Lorg/apache/http/client/methods/HttpRequestBase;)Landroid/graphics/Bitmap;
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_49
    .catch Lorg/apache/http/HttpException; {:try_start_55 .. :try_end_58} :catch_5a

    move-result-object v0

    return-object v0

    :catch_5a
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h(Landroid/content/Context;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/bsgamesdk/android/api/e$31;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/api/e$31;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->s()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "renewToken"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->c(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    return-object v0
.end method

.method public i(Landroid/content/Context;)Lcom/bsgamesdk/android/model/b;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    const-string v0, "login"

    sget-object v1, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/b;->s()Ljava/util/LinkedList;

    move-result-object v1

    new-instance v2, Lcom/bsgamesdk/android/api/e$32;

    invoke-direct {v2, p0, p1}, Lcom/bsgamesdk/android/api/e$32;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v0}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/b;

    return-object v0
.end method

.method public j(Landroid/content/Context;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    new-instance v0, Lcom/bsgamesdk/android/api/e$34;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/api/e$34;-><init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->i()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "newRsa"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    return-object v0
.end method
