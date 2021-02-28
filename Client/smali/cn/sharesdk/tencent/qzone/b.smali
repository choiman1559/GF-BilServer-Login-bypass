.class public Lcn/sharesdk/tencent/qzone/b;
.super Lcn/sharesdk/framework/b;
.source "QZoneHelper.java"


# static fields
.field private static final b:[Ljava/lang/String;

.field private static c:Lcn/sharesdk/tencent/qzone/b;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcn/sharesdk/framework/a/a;

.field private i:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 50
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "get_user_info"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "get_simple_userinfo"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "get_user_profile"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "get_app_friends"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "add_share"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "list_album"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "upload_pic"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "add_album"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "set_user_face"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "get_vip_info"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "get_vip_rich_info"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "get_intimate_friends_weibo"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "match_nick_tips_weibo"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "add_t"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "add_pic_t"

    aput-object v2, v0, v1

    sput-object v0, Lcn/sharesdk/tencent/qzone/b;->b:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 3

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 72
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->h:Lcn/sharesdk/framework/a/a;

    .line 73
    return-void
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qzone/b;
    .registers 2

    .prologue
    .line 64
    sget-object v0, Lcn/sharesdk/tencent/qzone/b;->c:Lcn/sharesdk/tencent/qzone/b;

    if-nez v0, :cond_b

    .line 65
    new-instance v0, Lcn/sharesdk/tencent/qzone/b;

    invoke-direct {v0, p0}, Lcn/sharesdk/tencent/qzone/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/tencent/qzone/b;->c:Lcn/sharesdk/tencent/qzone/b;

    .line 67
    :cond_b
    sget-object v0, Lcn/sharesdk/tencent/qzone/b;->c:Lcn/sharesdk/tencent/qzone/b;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qzone/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qzone/b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/b;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qzone/b;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 2

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcn/sharesdk/tencent/qzone/b;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/tencent/qzone/b;)Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/tencent/qzone/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/tencent/qzone/b;)Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/tencent/qzone/b;)Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->i:[Ljava/lang/String;

    if-nez v0, :cond_21

    sget-object v0, Lcn/sharesdk/tencent/qzone/b;->b:[Ljava/lang/String;

    .line 133
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    array-length v4, v0

    move v2, v1

    :goto_e
    if-ge v1, v4, :cond_24

    aget-object v5, v0, v1

    .line 136
    if-lez v2, :cond_19

    .line 137
    const/16 v6, 0x2c

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    :cond_19
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    add-int/lit8 v2, v2, 0x1

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 132
    :cond_21
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->i:[Ljava/lang/String;

    goto :goto_7

    .line 142
    :cond_24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/tencent/qzone/b;)Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 375
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_40

    .line 377
    :try_start_6
    const-string v0, "android.media.MediaMetadataRetriever"

    invoke-static {v0}, Lcom/mob/tools/utils/ReflectHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 379
    const-string v2, "setDataSource"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 380
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v0, "extractMetadata"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_3b} :catch_3c

    .line 387
    :goto_3b
    return-object v0

    .line 383
    :catch_3c
    move-exception v0

    .line 384
    const-string v0, ""

    goto :goto_3b

    .line 387
    :cond_40
    const-string v0, ""

    goto :goto_3b
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 457
    const-string v1, "https://graph.qq.com/photo/upload_pic"

    .line 458
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 459
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    iget-object v4, p0, Lcn/sharesdk/tencent/qzone/b;->f:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "oauth_consumer_key"

    iget-object v4, p0, Lcn/sharesdk/tencent/qzone/b;->d:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "openid"

    iget-object v4, p0, Lcn/sharesdk/tencent/qzone/b;->e:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "format"

    const-string v4, "json"

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_79

    .line 464
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xc8

    if-le v0, v3, :cond_6f

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0xc7

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 466
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "ssdk_symbol_ellipsis"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 465
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 468
    :cond_6f
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "photodesc"

    invoke-direct {v0, v3, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    :cond_79
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "mobile"

    const-string v4, "1"

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v0, "picture"

    invoke-direct {v3, v0, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 472
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 473
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v5, "User-Agent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v7

    const-string v8, "http.agent"

    .line 474
    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ArzenAndroidSDK"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 473
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->h:Lcn/sharesdk/framework/a/a;

    const-string v5, "/photo/upload_pic"

    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 477
    if-eqz v0, :cond_d6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d6

    .line 478
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 480
    :goto_d5
    return-object v0

    :cond_d6
    const/4 v0, 0x0

    goto :goto_d5
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 507
    if-nez p2, :cond_4

    .line 546
    :cond_3
    :goto_3
    return-object v6

    .line 511
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 512
    if-eqz p3, :cond_3c

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3c

    .line 513
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 514
    new-instance v4, Lcom/mob/tools/network/KVPair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v1, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 517
    :cond_3c
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "access_token"

    iget-object v3, p0, Lcn/sharesdk/tencent/qzone/b;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "oauth_consumer_key"

    iget-object v3, p0, Lcn/sharesdk/tencent/qzone/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "openid"

    iget-object v3, p0, Lcn/sharesdk/tencent/qzone/b;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "format"

    const-string v3, "json"

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    if-eqz p4, :cond_112

    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_112

    .line 524
    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v6

    :goto_7d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 525
    new-instance v3, Lcom/mob/tools/network/KVPair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v3

    .line 526
    goto :goto_7d

    :cond_9a
    move-object v3, v0

    .line 529
    :goto_9b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 530
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "User-Agent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v7

    const-string v8, "http.agent"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ArzenAndroidSDK"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    :try_start_c7
    const-string v0, "GET"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 535
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v4, v1}, Lcom/mob/tools/network/NetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_dc} :catch_108

    move-result-object v0

    .line 543
    :goto_dd
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 544
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    goto/16 :goto_3

    .line 536
    :cond_f0
    :try_start_f0
    const-string v0, "POST"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 537
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    :try_end_106
    .catch Ljava/lang/Throwable; {:try_start_f0 .. :try_end_106} :catch_108

    move-result-object v0

    goto :goto_dd

    .line 539
    :catch_108
    move-exception v0

    .line 540
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_110
    move-object v0, v6

    goto :goto_dd

    :cond_112
    move-object v3, v6

    goto :goto_9b
.end method

.method public a()V
    .registers 3

    .prologue
    .line 158
    new-instance v0, Lcn/sharesdk/tencent/qzone/b$2;

    invoke-direct {v0, p0}, Lcn/sharesdk/tencent/qzone/b$2;-><init>(Lcn/sharesdk/tencent/qzone/b;)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;

    move-result-object v0

    .line 182
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 184
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->IMMEDIATE:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->observeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 185
    new-instance v1, Lcn/sharesdk/tencent/qzone/b$3;

    invoke-direct {v1, p0}, Lcn/sharesdk/tencent/qzone/b$3;-><init>(Lcn/sharesdk/tencent/qzone/b;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribe(Lcom/mob/tools/RxMob$Subscriber;)V

    .line 205
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 267
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 268
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getAppName()Ljava/lang/String;

    move-result-object p6

    .line 272
    :cond_12
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_59

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {p6, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 276
    :goto_34
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_57

    .line 277
    const/4 v0, 0x0

    const/16 v1, 0xc8

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    :goto_4a
    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 280
    invoke-virtual/range {v0 .. v8}, Lcn/sharesdk/tencent/qzone/b;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 281
    return-void

    :cond_57
    move-object v2, p2

    goto :goto_4a

    :cond_59
    move-object v6, p6

    goto :goto_34
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V
    .registers 4

    .prologue
    .line 88
    if-eqz p2, :cond_6

    .line 89
    invoke-virtual {p0, p1}, Lcn/sharesdk/tencent/qzone/b;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 106
    :goto_5
    return-void

    .line 93
    :cond_6
    new-instance v0, Lcn/sharesdk/tencent/qzone/b$1;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/tencent/qzone/b$1;-><init>(Lcn/sharesdk/tencent/qzone/b;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    invoke-virtual {p0, v0}, Lcn/sharesdk/tencent/qzone/b;->a(Lcn/sharesdk/framework/authorize/SSOListener;)V

    goto :goto_5
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/b;->d:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/b;->i:[Ljava/lang/String;

    .line 85
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 550
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_96

    const/4 v0, 0x1

    .line 551
    :goto_7
    if-eqz v0, :cond_99

    const-string v4, "/t/add_pic_t"

    .line 552
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://graph.qq.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 553
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 555
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v5, "oauth_consumer_key"

    iget-object v6, p0, Lcn/sharesdk/tencent/qzone/b;->d:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v5, "access_token"

    iget-object v6, p0, Lcn/sharesdk/tencent/qzone/b;->f:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v5, "openid"

    iget-object v6, p0, Lcn/sharesdk/tencent/qzone/b;->e:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v5, "format"

    const-string v6, "json"

    invoke-direct {v3, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v5, "content"

    invoke-direct {v3, v5, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    if-eqz v0, :cond_9d

    .line 564
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v0, "pic"

    invoke-direct {v3, v0, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 565
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->h:Lcn/sharesdk/framework/a/a;

    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/b;->c()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 569
    :goto_71
    if-eqz v2, :cond_ab

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_ab

    .line 570
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 571
    const-string v0, "ret"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 572
    if-eqz v0, :cond_a9

    .line 573
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_96
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 551
    :cond_99
    const-string v4, "/t/add_t"

    goto/16 :goto_b

    .line 567
    :cond_9d
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->h:Lcn/sharesdk/framework/a/a;

    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/b;->c()I

    move-result v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_71

    :cond_a9
    move-object v0, v1

    .line 578
    :goto_aa
    return-object v0

    :cond_ab
    const/4 v0, 0x0

    goto :goto_aa
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 287
    const-string v2, "1"

    .line 288
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1ee

    .line 289
    const-string v2, "4"

    .line 299
    :cond_a
    :goto_a
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 300
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 302
    const-string v4, "/data/"

    invoke-virtual {p5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 303
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "images"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 304
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 306
    invoke-static {p5, v3}, Lcom/mob/tools/utils/ResHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 307
    if-eqz v4, :cond_216

    move-object p5, v3

    .line 316
    :cond_56
    :goto_56
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6b

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x258

    if-le v3, v4, :cond_6b

    .line 317
    const/4 v3, 0x0

    const/16 v4, 0x258

    invoke-virtual {p4, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 320
    :cond_6b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    const-string v4, "3"

    if-eq v2, v4, :cond_78

    const-string v4, "4"

    if-ne v2, v4, :cond_219

    .line 322
    :cond_78
    const-string v4, "mqqapi://qzone/publish?src_type=app&version=1&file_type=news"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :goto_7d
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_97

    .line 327
    const-string v4, "&image_url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {p5, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :cond_97
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f6

    const-string v4, "4"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f6

    .line 331
    invoke-static/range {p7 .. p7}, Lcom/mob/tools/utils/ResHelper;->getFileSize(Ljava/lang/String;)J

    .line 332
    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 333
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcn/sharesdk/tencent/qzone/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 334
    const-string v6, "&videoPath="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "utf-8"

    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string v6, "&videoSize="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v7, 0x2

    invoke-static {v4, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f6

    .line 337
    const-string v4, "&videoDuration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "utf-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_f6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_110

    .line 341
    const-string v4, "&title="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_110
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12a

    .line 344
    const-string v4, "&description="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {p4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    :cond_12a
    const-string v4, "&share_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/sharesdk/tencent/qzone/b;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14f

    .line 348
    const-string v4, "&url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {p3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_14f
    const-string v4, "&app_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "utf-8"

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17d

    .line 354
    const-string v4, "&share_qq_ext_str="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_17d
    const-string v4, "&req_type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/b;->d()Z

    move-result v2

    if-eqz v2, :cond_220

    const-string v2, "1"

    .line 360
    :goto_199
    const-string v4, "&cflag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 364
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 365
    if-eqz v2, :cond_1ed

    .line 366
    new-instance v2, Lcn/sharesdk/tencent/qzone/d;

    invoke-direct {v2}, Lcn/sharesdk/tencent/qzone/d;-><init>()V

    .line 367
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcn/sharesdk/tencent/qzone/d;->a(Ljava/lang/String;Z)V

    .line 368
    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Lcn/sharesdk/tencent/qzone/d;->a(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 369
    iget-object v3, p0, Lcn/sharesdk/tencent/qzone/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/sharesdk/tencent/qzone/d;->a(Ljava/lang/String;)V

    .line 370
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcn/sharesdk/tencent/qzone/d;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 372
    :cond_1ed
    :goto_1ed
    return-void

    .line 290
    :cond_1ee
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1fe

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1fe

    .line 291
    const-string v2, "3"

    goto/16 :goto_a

    .line 292
    :cond_1fe
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 293
    if-eqz p8, :cond_1ed

    .line 294
    const/4 v2, 0x0

    const/16 v3, 0x9

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "The param of title or titleUrl is null !"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p8

    invoke-interface {v0, v2, v3, v4}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1ed

    .line 310
    :cond_216
    const/4 p5, 0x0

    goto/16 :goto_56

    .line 324
    :cond_219
    const-string v4, "mqqapi://share/to_qzone?src_type=app&version=1&file_type=news"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7d

    .line 359
    :cond_220
    const-string v2, "0"

    goto/16 :goto_199
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 208
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/b;->e:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public b()Z
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 391
    .line 392
    const-string v0, "com.qzone"

    .line 394
    :try_start_4
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_10} :catch_14

    move-result-object v0

    .line 399
    if-nez v0, :cond_1d

    .line 417
    :cond_13
    :goto_13
    return v1

    .line 395
    :catch_14
    move-exception v0

    .line 396
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_13

    .line 403
    :cond_1d
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 404
    array-length v0, v4

    new-array v5, v0, [I

    move v0, v1

    .line 405
    :goto_29
    array-length v3, v5

    if-ge v0, v3, :cond_42

    .line 407
    :try_start_2c
    aget-object v3, v4, v0

    invoke-static {v3}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v0
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_34} :catch_37

    .line 405
    :goto_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 408
    :catch_37
    move-exception v3

    .line 409
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 410
    aput v1, v5, v0

    goto :goto_34

    .line 414
    :cond_42
    array-length v0, v5

    if-le v0, v2, :cond_13

    aget v0, v5, v1

    const/4 v3, 0x4

    if-ge v0, v3, :cond_4e

    aget v0, v5, v2

    if-lt v0, v2, :cond_13

    :cond_4e
    move v1, v2

    .line 417
    goto :goto_13
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 212
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/b;->f:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 220
    const-string v1, "https://graph.qq.com/user/get_simple_userinfo"

    .line 221
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 222
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    iget-object v5, p0, Lcn/sharesdk/tencent/qzone/b;->f:Ljava/lang/String;

    invoke-direct {v0, v3, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "oauth_consumer_key"

    iget-object v5, p0, Lcn/sharesdk/tencent/qzone/b;->d:Ljava/lang/String;

    invoke-direct {v0, v3, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "openid"

    iget-object v5, p0, Lcn/sharesdk/tencent/qzone/b;->e:Ljava/lang/String;

    invoke-direct {v0, v3, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 226
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v5, "User-Agent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v7

    const-string v8, "http.agent"

    .line 227
    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ArzenAndroidSDK"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->h:Lcn/sharesdk/framework/a/a;

    const-string v5, "/user/get_simple_userinfo"

    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_75

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_75

    .line 231
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 233
    :cond_75
    return-object v4
.end method

.method public d()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 421
    .line 423
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 424
    const-string v2, "com.tencent.mobileqq"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 425
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_1a

    .line 450
    :goto_12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    move v0, v1

    .line 453
    :goto_19
    return v0

    .line 426
    :catch_1a
    move-exception v0

    .line 428
    :try_start_1b
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 429
    const-string v3, "com.tencent.qqlite"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 430
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_2c} :catch_2d

    goto :goto_12

    .line 431
    :catch_2d
    move-exception v2

    .line 433
    :try_start_2e
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 434
    const-string v3, "com.tencent.minihd.qq"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 435
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_3f} :catch_40

    goto :goto_12

    .line 436
    :catch_40
    move-exception v2

    .line 438
    :try_start_41
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 439
    const-string v3, "com.tencent.tim"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 440
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_52} :catch_53

    goto :goto_12

    .line 441
    :catch_53
    move-exception v2

    .line 442
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 443
    const/4 v0, 0x0

    goto :goto_12

    .line 453
    :cond_5d
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public e(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 484
    const-string v1, "https://graph.qq.com/oauth2.0/me"

    .line 485
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 486
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    invoke-direct {v0, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 488
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v5, "User-Agent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v7

    const-string v8, "http.agent"

    .line 489
    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ArzenAndroidSDK"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 488
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->h:Lcn/sharesdk/framework/a/a;

    const-string v5, "/oauth2.0/me"

    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 492
    const-string v1, "callback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 493
    :goto_52
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_66

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_66

    .line 494
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    .line 496
    :cond_66
    :goto_66
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_80

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_80

    .line 497
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_66

    .line 500
    :cond_80
    if-eqz v0, :cond_91

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_91

    .line 501
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 503
    :cond_91
    return-object v4
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 109
    const-string v0, "/oauth2.0/authorize"

    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/b;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    .line 110
    invoke-direct {p0}, Lcn/sharesdk/tencent/qzone/b;->e()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/b;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    .line 113
    :try_start_11
    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_16} :catch_41

    move-result-object v0

    .line 118
    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://graph.qq.com/oauth2.0/m_authorize?response_type=token&client_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/tencent/qzone/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&redirect_uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&display=mobile&scope="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :catch_41
    move-exception v0

    .line 115
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 116
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/b;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/e;)Lcn/sharesdk/framework/authorize/b;
    .registers 3
    .param p1, "webAct"    # Lcn/sharesdk/framework/authorize/e;

    .prologue
    .line 128
    new-instance v0, Lcn/sharesdk/tencent/qzone/a;

    invoke-direct {v0, p1}, Lcn/sharesdk/tencent/qzone/a;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    const-string v0, "auth://tauth.qq.com/"

    return-object v0
.end method

.method public getSSOProcessor(Lcn/sharesdk/framework/authorize/c;)Lcn/sharesdk/framework/authorize/d;
    .registers 5
    .param p1, "ssoAct"    # Lcn/sharesdk/framework/authorize/c;

    .prologue
    .line 146
    new-instance v0, Lcn/sharesdk/tencent/qzone/c;

    invoke-direct {v0, p1}, Lcn/sharesdk/tencent/qzone/c;-><init>(Lcn/sharesdk/framework/authorize/c;)V

    .line 147
    const/16 v1, 0x1618

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qzone/c;->a(I)V

    .line 149
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/b;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcn/sharesdk/tencent/qzone/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/tencent/qzone/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-object v0
.end method
