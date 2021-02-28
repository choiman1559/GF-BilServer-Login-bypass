.class public Lcn/sharesdk/tencent/qq/b;
.super Lcn/sharesdk/framework/b;
.source "QQHelper.java"


# static fields
.field private static final b:[Ljava/lang/String;

.field private static c:Lcn/sharesdk/tencent/qq/b;


# instance fields
.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


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

    sput-object v0, Lcn/sharesdk/tencent/qq/b;->b:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 72
    return-void
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qq/b;
    .registers 2

    .prologue
    .line 64
    sget-object v0, Lcn/sharesdk/tencent/qq/b;->c:Lcn/sharesdk/tencent/qq/b;

    if-nez v0, :cond_b

    .line 65
    new-instance v0, Lcn/sharesdk/tencent/qq/b;

    invoke-direct {v0, p0}, Lcn/sharesdk/tencent/qq/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/tencent/qq/b;->c:Lcn/sharesdk/tencent/qq/b;

    .line 67
    :cond_b
    sget-object v0, Lcn/sharesdk/tencent/qq/b;->c:Lcn/sharesdk/tencent/qq/b;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qq/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qq/b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/b;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qq/b;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcn/sharesdk/tencent/qq/b;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 15

    .prologue
    const/16 v6, 0x50

    const/16 v5, 0x28

    .line 403
    if-nez p5, :cond_1b

    if-eqz p4, :cond_1b

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 404
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/b;->a:Lcn/sharesdk/framework/Platform;

    check-cast v0, Lcn/sharesdk/tencent/qq/QQ;

    invoke-virtual {v0, p4}, Lcn/sharesdk/tencent/qq/QQ;->uploadImageToFileServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 408
    :cond_1b
    :try_start_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    const-string v0, "http://openmobile.qq.com/api/check?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const-string v0, "page=shareindex.html&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    const-string v0, "style=9&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const-string v0, "action=shareToQQ&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    const-string v0, "sdkv=2.2.1&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    const-string v0, "sdkp=a&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const-string v0, "appId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/sharesdk/tencent/qq/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 417
    const-string v2, "status_os="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const-string v2, "status_machine="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    const-string v2, "status_version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getAppName()Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c5

    .line 422
    const-string v2, "site="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v0, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_c5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11e

    .line 425
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_19c

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    :goto_ea
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_109

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x50

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    :cond_109
    const-string v2, "title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v0, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :cond_11e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_139

    .line 434
    const-string v0, "summary="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {p3, v2}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_139
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_154

    .line 437
    const-string v0, "targeturl="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {p2, v2}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_154
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16f

    .line 440
    const-string v0, "imageUrl="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {p5, v2}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_16f
    const-string v0, "type=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    new-instance v0, Lcn/sharesdk/tencent/qq/e;

    invoke-direct {v0}, Lcn/sharesdk/tencent/qq/e;-><init>()V

    .line 445
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qq/e;->a(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v0, p7}, Lcn/sharesdk/tencent/qq/e;->a(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 447
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qq/e;->b(Ljava/lang/String;)V

    .line 448
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/tencent/qq/e;->show(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_190
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_190} :catch_191

    .line 454
    :cond_190
    :goto_190
    return-void

    .line 449
    :catch_191
    move-exception v0

    .line 450
    if-eqz p7, :cond_190

    .line 451
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/b;->a:Lcn/sharesdk/framework/Platform;

    const/16 v2, 0x9

    invoke-interface {p7, v1, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_190

    :cond_19c
    move-object v0, p1

    goto/16 :goto_ea
.end method

.method static synthetic b(Lcn/sharesdk/tencent/qq/b;)Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/b;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 16

    .prologue
    const/16 v7, 0x9

    .line 459
    :try_start_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b7

    :cond_e
    const/4 v0, 0x1

    .line 460
    :goto_f
    if-nez v0, :cond_ba

    const-string v4, "/t/add_t"

    .line 461
    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://graph.qq.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 462
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 464
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v5, "oauth_consumer_key"

    iget-object v6, p0, Lcn/sharesdk/tencent/qq/b;->d:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v5, "access_token"

    iget-object v6, p0, Lcn/sharesdk/tencent/qq/b;->h:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v5, "openid"

    iget-object v6, p0, Lcn/sharesdk/tencent/qq/b;->f:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v5, "format"

    const-string v6, "json"

    invoke-direct {v3, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v5, "content"

    invoke-direct {v3, v5, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    if-eqz v0, :cond_be

    .line 476
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 477
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p5}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 479
    :cond_75
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v0, "pic"

    invoke-direct {v3, v0, p4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 480
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/b;->c()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 485
    :goto_89
    if-eqz v1, :cond_b6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b6

    if-eqz p7, :cond_b6

    .line 486
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 487
    const-string v0, "ret"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 488
    if-eqz v0, :cond_cc

    .line 489
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/b;->a:Lcn/sharesdk/framework/Platform;

    const/16 v2, 0x9

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p7, v0, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 500
    :cond_b6
    :goto_b6
    return-void

    .line 459
    :cond_b7
    const/4 v0, 0x0

    goto/16 :goto_f

    .line 460
    :cond_ba
    const-string v4, "/t/add_pic_t"

    goto/16 :goto_13

    .line 482
    :cond_be
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/b;->c()I

    move-result v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_89

    .line 491
    :cond_cc
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/b;->a:Lcn/sharesdk/framework/Platform;

    const/16 v1, 0x9

    invoke-interface {p7, v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_d3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d3} :catch_d4

    goto :goto_b6

    .line 495
    :catch_d4
    move-exception v0

    .line 496
    if-eqz p7, :cond_b6

    .line 497
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/b;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {p7, v1, v7, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_b6
.end method

.method static synthetic c(Lcn/sharesdk/tencent/qq/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/tencent/qq/b;)Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/b;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/b;->e:[Ljava/lang/String;

    if-nez v0, :cond_21

    sget-object v0, Lcn/sharesdk/tencent/qq/b;->b:[Ljava/lang/String;

    .line 215
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    array-length v4, v0

    move v2, v1

    :goto_e
    if-ge v1, v4, :cond_24

    aget-object v5, v0, v1

    .line 218
    if-lez v2, :cond_19

    .line 219
    const/16 v6, 0x2c

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    :cond_19
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    add-int/lit8 v2, v2, 0x1

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 214
    :cond_21
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/b;->e:[Ljava/lang/String;

    goto :goto_7

    .line 224
    :cond_24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/tencent/qq/b;)Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/b;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/tencent/qq/b;)Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/b;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 136
    new-instance v0, Lcn/sharesdk/tencent/qq/b$2;

    invoke-direct {v0, p0}, Lcn/sharesdk/tencent/qq/b$2;-><init>(Lcn/sharesdk/tencent/qq/b;)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;

    move-result-object v0

    .line 161
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 163
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->IMMEDIATE:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->observeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 164
    new-instance v1, Lcn/sharesdk/tencent/qq/b$3;

    invoke-direct {v1, p0}, Lcn/sharesdk/tencent/qq/b$3;-><init>(Lcn/sharesdk/tencent/qq/b;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribe(Lcom/mob/tools/RxMob$Subscriber;)V

    .line 184
    return-void
.end method

.method public a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 273
    const-string v0, "com.tencent.mobileqq"

    .line 274
    const-string v1, "com.tencent.mobileqq.activity.JumpActivity"

    .line 275
    new-instance v2, Lcn/sharesdk/framework/utils/e;

    invoke-direct {v2}, Lcn/sharesdk/framework/utils/e;-><init>()V

    .line 276
    invoke-virtual {v2, v0, v1}, Lcn/sharesdk/framework/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v2, p2, p1}, Lcn/sharesdk/framework/utils/e;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/Platform;)V

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 279
    const-string v1, "ShareParams"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const/16 v1, 0x9

    invoke-interface {p3, p1, v1, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 281
    return-void
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V
    .registers 4

    .prologue
    .line 83
    if-eqz p2, :cond_6

    .line 84
    invoke-virtual {p0, p1}, Lcn/sharesdk/tencent/qq/b;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 101
    :goto_5
    return-void

    .line 88
    :cond_6
    new-instance v0, Lcn/sharesdk/tencent/qq/b$1;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/tencent/qq/b$1;-><init>(Lcn/sharesdk/tencent/qq/b;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    invoke-virtual {p0, v0}, Lcn/sharesdk/tencent/qq/b;->a(Lcn/sharesdk/framework/authorize/SSOListener;)V

    goto :goto_5
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/b;->d:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcn/sharesdk/framework/PlatformActionListener;ZI)V
    .registers 21

    .prologue
    .line 287
    if-eqz p9, :cond_10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    .line 288
    invoke-direct/range {v2 .. v9}, Lcn/sharesdk/tencent/qq/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 322
    :goto_f
    return-void

    .line 289
    :cond_10
    if-eqz p7, :cond_b3

    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/b;->b()Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 290
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 291
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 293
    const-string v3, "/data/"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 294
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "images"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-static {p4, v2}, Lcom/mob/tools/utils/ResHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 298
    if-eqz v3, :cond_b1

    move-object p4, v2

    .line 306
    :cond_64
    :goto_64
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 307
    const-string v3, "title"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v3, "titleUrl"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v3, "summary"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v3, "imagePath"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v3, "imageUrl"

    invoke-virtual {v2, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v3, "musicUrl"

    move-object/from16 v0, p6

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    const-string v3, "appId"

    iget-object v4, p0, Lcn/sharesdk/tencent/qq/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string v3, "hidden"

    move/from16 v0, p10

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    new-instance v3, Lcn/sharesdk/tencent/qq/d;

    invoke-direct {v3}, Lcn/sharesdk/tencent/qq/d;-><init>()V

    .line 316
    iget-object v4, p0, Lcn/sharesdk/tencent/qq/b;->a:Lcn/sharesdk/framework/Platform;

    move-object/from16 v0, p8

    invoke-virtual {v3, v4, v0}, Lcn/sharesdk/tencent/qq/d;->a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 317
    iget-object v4, p0, Lcn/sharesdk/tencent/qq/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcn/sharesdk/tencent/qq/d;->a(Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcn/sharesdk/tencent/qq/d;->show(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_f

    .line 301
    :cond_b1
    const/4 p4, 0x0

    goto :goto_64

    :cond_b3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    .line 320
    invoke-direct/range {v2 .. v9}, Lcn/sharesdk/tencent/qq/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V

    goto/16 :goto_f
.end method

.method public a([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 79
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/b;->e:[Ljava/lang/String;

    .line 80
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/b;->f:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public b()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 356
    .line 358
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 359
    const-string v2, "com.tencent.mobileqq"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 360
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 361
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcn/sharesdk/tencent/qq/b;->i:Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_16} :catch_1e

    .line 395
    :goto_16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_85

    move v0, v1

    .line 398
    :goto_1d
    return v0

    .line 362
    :catch_1e
    move-exception v0

    move-object v2, v0

    .line 364
    :try_start_20
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 365
    const-string v3, "com.tencent.mobileqqi"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 366
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 367
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcn/sharesdk/tencent/qq/b;->i:Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_35} :catch_36

    goto :goto_16

    .line 368
    :catch_36
    move-exception v0

    .line 370
    :try_start_37
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 371
    const-string v3, "com.tencent.qqlite"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 372
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 373
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcn/sharesdk/tencent/qq/b;->i:Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_4c} :catch_4d

    goto :goto_16

    .line 374
    :catch_4d
    move-exception v0

    .line 376
    :try_start_4e
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 377
    const-string v3, "com.tencent.minihd.qq"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 378
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 379
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcn/sharesdk/tencent/qq/b;->i:Ljava/lang/String;
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_63} :catch_64

    goto :goto_16

    .line 380
    :catch_64
    move-exception v0

    .line 382
    :try_start_65
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 383
    const-string v3, "com.tencent.tim"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 384
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 385
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcn/sharesdk/tencent/qq/b;->i:Ljava/lang/String;
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_7a} :catch_7b

    goto :goto_16

    .line 386
    :catch_7b
    move-exception v0

    .line 387
    const/4 v0, 0x0

    .line 388
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_16

    .line 398
    :cond_85
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method public c(Ljava/lang/String;)Ljava/util/HashMap;
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

    .line 112
    const-string v1, "https://graph.qq.com/oauth2.0/me"

    .line 113
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    invoke-direct {v0, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 116
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v5, "User-Agent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v7

    const-string v8, "http.agent"

    .line 117
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

    .line 116
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    .line 120
    const-string v5, "/oauth2.0/me"

    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string v1, "callback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 122
    :goto_54
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_68

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_68

    .line 123
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_54

    .line 125
    :cond_68
    :goto_68
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_82

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_82

    .line 126
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_68

    .line 129
    :cond_82
    if-eqz v0, :cond_93

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_93

    .line 130
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 132
    :cond_93
    return-object v4
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 187
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/b;->h:Ljava/lang/String;

    .line 188
    return-void
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

    .line 235
    const-string v1, "https://graph.qq.com/user/get_simple_userinfo"

    .line 236
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 237
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    iget-object v5, p0, Lcn/sharesdk/tencent/qq/b;->h:Ljava/lang/String;

    invoke-direct {v0, v3, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "oauth_consumer_key"

    iget-object v5, p0, Lcn/sharesdk/tencent/qq/b;->d:Ljava/lang/String;

    invoke-direct {v0, v3, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "openid"

    iget-object v5, p0, Lcn/sharesdk/tencent/qq/b;->f:Ljava/lang/String;

    invoke-direct {v0, v3, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 241
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v5, "User-Agent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v7

    const-string v8, "http.agent"

    .line 242
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

    .line 241
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    .line 245
    const-string v5, "/user/get_simple_userinfo"

    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_77

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_77

    .line 247
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 249
    :cond_77
    return-object v4
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 191
    const-string v0, "/oauth2.0/authorize"

    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/b;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    .line 192
    invoke-direct {p0}, Lcn/sharesdk/tencent/qq/b;->d()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/b;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    .line 195
    :try_start_11
    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_16} :catch_41

    move-result-object v0

    .line 200
    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://graph.qq.com/oauth2.0/m_authorize?response_type=token&client_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/tencent/qq/b;->d:Ljava/lang/String;

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

    .line 196
    :catch_41
    move-exception v0

    .line 197
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 198
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/b;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/e;)Lcn/sharesdk/framework/authorize/b;
    .registers 3
    .param p1, "webAct"    # Lcn/sharesdk/framework/authorize/e;

    .prologue
    .line 210
    new-instance v0, Lcn/sharesdk/tencent/qq/a;

    invoke-direct {v0, p1}, Lcn/sharesdk/tencent/qq/a;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 205
    const-string v0, "auth://tauth.qq.com/"

    return-object v0
.end method

.method public getSSOProcessor(Lcn/sharesdk/framework/authorize/c;)Lcn/sharesdk/framework/authorize/d;
    .registers 5
    .param p1, "ssoAct"    # Lcn/sharesdk/framework/authorize/c;

    .prologue
    .line 228
    new-instance v0, Lcn/sharesdk/tencent/qq/c;

    invoke-direct {v0, p1}, Lcn/sharesdk/tencent/qq/c;-><init>(Lcn/sharesdk/framework/authorize/c;)V

    .line 229
    const/16 v1, 0x1618

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qq/c;->a(I)V

    .line 230
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/b;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcn/sharesdk/tencent/qq/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/tencent/qq/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-object v0
.end method
