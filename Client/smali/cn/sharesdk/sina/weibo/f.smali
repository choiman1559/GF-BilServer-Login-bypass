.class public Lcn/sharesdk/sina/weibo/f;
.super Lcn/sharesdk/framework/b;
.source "Weibo.java"


# static fields
.field private static b:Lcn/sharesdk/sina/weibo/f;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:Lcn/sharesdk/framework/a/a;


# direct methods
.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 5

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "follow_app_official_microblog"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/f;->g:[Ljava/lang/String;

    .line 79
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/f;->h:Lcn/sharesdk/framework/a/a;

    .line 80
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method public static declared-synchronized a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/f;
    .registers 3

    .prologue
    .line 71
    const-class v1, Lcn/sharesdk/sina/weibo/f;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcn/sharesdk/sina/weibo/f;->b:Lcn/sharesdk/sina/weibo/f;

    if-nez v0, :cond_e

    .line 72
    new-instance v0, Lcn/sharesdk/sina/weibo/f;

    invoke-direct {v0, p0}, Lcn/sharesdk/sina/weibo/f;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/sina/weibo/f;->b:Lcn/sharesdk/sina/weibo/f;

    .line 74
    :cond_e
    sget-object v0, Lcn/sharesdk/sina/weibo/f;->b:Lcn/sharesdk/sina/weibo/f;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 71
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/f;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 6

    .prologue
    .line 252
    new-instance v0, Lcn/sharesdk/sina/weibo/d;

    invoke-direct {v0}, Lcn/sharesdk/sina/weibo/d;-><init>()V

    .line 253
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->e:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/sina/weibo/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0, p1}, Lcn/sharesdk/sina/weibo/d;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 255
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/sina/weibo/d;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 256
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/f;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/sina/weibo/f;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic h(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic i(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic j(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method


# virtual methods
.method public a(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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
    .line 458
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 459
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "source"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    const/4 v0, 0x1

    .line 462
    :try_start_12
    invoke-static {p3}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_15} :catch_57

    .line 466
    :goto_15
    if-eqz v0, :cond_5a

    .line 467
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "uid"

    invoke-direct {v0, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    :goto_21
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "page"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    const-string v0, "https://api.weibo.com/2/statuses/user_timeline.json"

    .line 475
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->h:Lcn/sharesdk/framework/a/a;

    const-string v3, "/2/statuses/user_timeline.json"

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->c()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_65

    .line 477
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 479
    :goto_56
    return-object v0

    .line 463
    :catch_57
    move-exception v0

    .line 464
    const/4 v0, 0x0

    goto :goto_15

    .line 469
    :cond_5a
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "screen_name"

    invoke-direct {v0, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 479
    :cond_65
    const/4 v0, 0x0

    goto :goto_56
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 12
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

    .line 592
    if-nez p2, :cond_4

    .line 628
    :cond_3
    :goto_3
    return-object v6

    .line 596
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 597
    if-eqz p3, :cond_3c

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3c

    .line 598
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

    .line 599
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

    .line 602
    :cond_3c
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "source"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    if-eqz v0, :cond_58

    .line 604
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "access_token"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    :cond_58
    if-eqz p4, :cond_d3

    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_d3

    .line 609
    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v6

    :goto_69
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 610
    new-instance v3, Lcom/mob/tools/network/KVPair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v3

    .line 611
    goto :goto_69

    :cond_86
    move-object v3, v0

    .line 615
    :goto_87
    const/4 v5, 0x0

    .line 617
    :try_start_88
    const-string v0, "GET"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 618
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v1, v5}, Lcom/mob/tools/network/NetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_9d} :catch_c9

    move-result-object v0

    .line 625
    :goto_9e
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 626
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    goto/16 :goto_3

    .line 619
    :cond_b1
    :try_start_b1
    const-string v0, "POST"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 620
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_c7} :catch_c9

    move-result-object v0

    goto :goto_9e

    .line 622
    :catch_c9
    move-exception v0

    .line 623
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_d1
    move-object v0, v6

    goto :goto_9e

    :cond_d3
    move-object v3, v6

    goto :goto_87
.end method

.method public a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 15

    .prologue
    const/4 v2, 0x0

    .line 259
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_39

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 260
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 262
    :try_start_1b
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 265
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setImagePath(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_39} :catch_c7

    .line 271
    :cond_39
    :goto_39
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d4

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_d4

    .line 273
    :try_start_46
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 274
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    .line 276
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_59
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 277
    const-string v5, "http"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 278
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    :cond_75
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_c1

    .line 282
    const-string v6, "/data/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c1

    .line 283
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "images"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 284
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 286
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 287
    invoke-static {v0, v5}, Lcom/mob/tools/utils/ResHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 288
    if-eqz v5, :cond_c1

    .line 289
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 293
    :cond_c1
    aput-object v0, v3, v1
    :try_end_c3
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_c3} :catch_107

    .line 294
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 295
    goto :goto_59

    .line 267
    :catch_c7
    move-exception v0

    .line 268
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto/16 :goto_39

    .line 296
    :cond_d1
    :try_start_d1
    invoke-virtual {p1, v3}, Lcn/sharesdk/framework/Platform$ShareParams;->setImageArray([Ljava/lang/String;)V
    :try_end_d4
    .catch Ljava/lang/Throwable; {:try_start_d1 .. :try_end_d4} :catch_107

    .line 302
    :cond_d4
    :goto_d4
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e9

    .line 304
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 309
    :cond_e9
    new-instance v0, Lcn/sharesdk/sina/weibo/f$2;

    invoke-direct {v0, p0, p2, p1}, Lcn/sharesdk/sina/weibo/f$2;-><init>(Lcn/sharesdk/sina/weibo/f;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 331
    new-instance v1, Lcn/sharesdk/sina/weibo/a;

    invoke-direct {v1}, Lcn/sharesdk/sina/weibo/a;-><init>()V

    .line 332
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/sharesdk/sina/weibo/a;->a(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v1, p1}, Lcn/sharesdk/sina/weibo/a;->a(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 334
    invoke-virtual {v1, v0}, Lcn/sharesdk/sina/weibo/a;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 335
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/sina/weibo/a;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 336
    return-void

    .line 297
    :catch_107
    move-exception v0

    .line 298
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_d4
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V
    .registers 4

    .prologue
    .line 109
    if-eqz p2, :cond_6

    .line 110
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 134
    :goto_5
    return-void

    .line 113
    :cond_6
    new-instance v0, Lcn/sharesdk/sina/weibo/f$1;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/sina/weibo/f$1;-><init>(Lcn/sharesdk/sina/weibo/f;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    invoke-virtual {p0, v0}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/framework/authorize/SSOListener;)V

    goto :goto_5
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/f;->e:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 83
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcn/sharesdk/sina/weibo/f;->d:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 92
    if-eqz p1, :cond_7

    array-length v0, p1

    if-lez v0, :cond_7

    .line 93
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/f;->g:[Ljava/lang/String;

    .line 95
    :cond_7
    return-void
.end method

.method public a()Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "client_id"

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "client_secret"

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/f;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "redirect_uri"

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/f;->e:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "grant_type"

    const-string v4, "refresh_token"

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "refresh_token"

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v4

    const-string v5, "refresh_token"

    invoke-virtual {v4, v5}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    const-string v2, "https://api.weibo.com/oauth2/access_token"

    .line 176
    :try_start_4e
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->h:Lcn/sharesdk/framework/a/a;

    const-string v4, "/oauth2/access_token"

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->c()I

    move-result v5

    invoke-virtual {v3, v2, v1, v4, v5}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 203
    :cond_60
    :goto_60
    return v0

    .line 180
    :cond_61
    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 183
    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 187
    new-instance v2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v2, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 188
    const-string v2, "uid"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 189
    const-string v3, "expires_in"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 190
    const-string v4, "access_token"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    .line 191
    const-string v4, "refresh_token"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 192
    const-string v5, "remind_in"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 194
    iget-object v5, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v5}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 196
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    const-string v3, "refresh_token"

    invoke-virtual {v2, v3, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    const-string v3, "remind_in"

    invoke-virtual {v2, v3, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e9
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_e9} :catch_ec

    .line 203
    const/4 v0, 0x1

    goto/16 :goto_60

    .line 199
    :catch_ec
    move-exception v1

    .line 200
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto/16 :goto_60
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "client_id"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "client_secret"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "redirect_uri"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "grant_type"

    const-string v3, "authorization_code"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "code"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    const-string v1, "https://api.weibo.com/oauth2/access_token"

    .line 159
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->h:Lcn/sharesdk/framework/a/a;

    const-string v3, "/oauth2/access_token"

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->c()I

    move-result v4

    invoke-virtual {v2, v1, v0, v3, v4}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 161
    const-string v1, "/oauth2/access_token"

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->c()I

    move-result v2

    invoke-static {v1, v2}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    .line 162
    return-object v0
.end method

.method public b(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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
    .line 491
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 492
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "source"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 494
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "access_token"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_21
    const/4 v0, 0x1

    .line 498
    :try_start_22
    invoke-static {p3}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_25} :catch_67

    .line 502
    :goto_25
    if-eqz v0, :cond_6a

    .line 503
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "uid"

    invoke-direct {v0, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    :goto_31
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "cursor"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    const-string v0, "https://api.weibo.com/2/friendships/friends.json"

    .line 511
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->h:Lcn/sharesdk/framework/a/a;

    const-string v3, "/2/friendships/friends.json"

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->c()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 512
    if-eqz v0, :cond_75

    .line 513
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 515
    :goto_66
    return-object v0

    .line 499
    :catch_67
    move-exception v0

    .line 500
    const/4 v0, 0x0

    goto :goto_25

    .line 505
    :cond_6a
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "screen_name"

    invoke-direct {v0, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 515
    :cond_75
    const/4 v0, 0x0

    goto :goto_66
.end method

.method public b(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 7

    .prologue
    .line 339
    .line 340
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    .line 341
    :goto_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 342
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 351
    :cond_1e
    :goto_1e
    new-instance v0, Lcn/sharesdk/sina/weibo/f$3;

    invoke-direct {v0, p0, p2, p1}, Lcn/sharesdk/sina/weibo/f$3;-><init>(Lcn/sharesdk/sina/weibo/f;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 388
    new-instance v1, Lcn/sharesdk/sina/weibo/e;

    invoke-direct {v1}, Lcn/sharesdk/sina/weibo/e;-><init>()V

    .line 389
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/sina/weibo/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {v1, p1}, Lcn/sharesdk/sina/weibo/e;->a(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 391
    invoke-virtual {v1, v0}, Lcn/sharesdk/sina/weibo/e;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 392
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/sina/weibo/e;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 393
    return-void

    .line 340
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 345
    :cond_5e
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_weibo_upload_content"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 346
    if-lez v0, :cond_1e

    .line 347
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public b()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 238
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    const-string v2, "com.sina.weibo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 242
    if-nez v1, :cond_3d

    .line 243
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    const-string v2, "com.sina.weibog3"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 248
    :cond_3d
    if-eqz v1, :cond_40

    const/4 v0, 0x1

    :cond_40
    return v0
.end method

.method public c(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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
    .line 528
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 529
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "source"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 531
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "access_token"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_21
    const/4 v0, 0x1

    .line 535
    :try_start_22
    invoke-static {p3}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_25} :catch_67

    .line 539
    :goto_25
    if-eqz v0, :cond_6a

    .line 540
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "uid"

    invoke-direct {v0, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    :goto_31
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "page"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    const-string v0, "https://api.weibo.com/2/friendships/friends/bilateral.json"

    .line 548
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->h:Lcn/sharesdk/framework/a/a;

    const-string v3, "/2/friendships/friends/bilateral.json"

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->c()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 549
    if-eqz v0, :cond_75

    .line 550
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 552
    :goto_66
    return-object v0

    .line 536
    :catch_67
    move-exception v0

    .line 537
    const/4 v0, 0x0

    goto :goto_25

    .line 542
    :cond_6a
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "screen_name"

    invoke-direct {v0, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 552
    :cond_75
    const/4 v0, 0x0

    goto :goto_66
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 207
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public d(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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
    .line 564
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 565
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "source"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 567
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "access_token"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_21
    const/4 v0, 0x1

    .line 571
    :try_start_22
    invoke-static {p3}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_25} :catch_67

    .line 575
    :goto_25
    if-eqz v0, :cond_6a

    .line 576
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "uid"

    invoke-direct {v0, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    :goto_31
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "cursor"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    const-string v0, "https://api.weibo.com/2/friendships/followers.json"

    .line 584
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->h:Lcn/sharesdk/framework/a/a;

    const-string v3, "/2/friendships/followers.json"

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->c()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 585
    if-eqz v0, :cond_75

    .line 586
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 588
    :goto_66
    return-object v0

    .line 572
    :catch_67
    move-exception v0

    .line 573
    const/4 v0, 0x0

    goto :goto_25

    .line 578
    :cond_6a
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "screen_name"

    invoke-direct {v0, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 588
    :cond_75
    const/4 v0, 0x0

    goto :goto_66
.end method

.method public d(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 7
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
    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "source"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 214
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "access_token"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_21
    const/4 v0, 0x1

    .line 218
    :try_start_22
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_25} :catch_4b

    .line 222
    :goto_25
    if-eqz v0, :cond_4e

    .line 223
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "uid"

    invoke-direct {v0, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :goto_31
    const-string v0, "https://api.weibo.com/2/users/show.json"

    .line 230
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->h:Lcn/sharesdk/framework/a/a;

    const-string v3, "/2/users/show.json"

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->c()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_59

    .line 232
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 234
    :goto_4a
    return-object v0

    .line 219
    :catch_4b
    move-exception v0

    .line 220
    const/4 v0, 0x0

    goto :goto_25

    .line 225
    :cond_4e
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "screen_name"

    invoke-direct {v0, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 234
    :cond_59
    const/4 v0, 0x0

    goto :goto_4a
.end method

.method public d()Z
    .registers 5

    .prologue
    .line 632
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 633
    const-string v1, "com.sina.weibo.sdk.Intent.ACTION_WEIBO_REGISTER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 635
    const-string v2, "_weibo_sdkVersion"

    const-string v3, "0031405000"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    const-string v2, "_weibo_appPackage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    const-string v2, "_weibo_appKey"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    const-string v2, "_weibo_flag"

    const v3, 0x20130329

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 639
    const-string v2, "_weibo_sign"

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcn/sharesdk/sina/weibo/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extra="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 642
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sina.weibo.permission.WEIBO_SDK_PERMISSION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 643
    const/4 v0, 0x1

    return v0
.end method

.method public e(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 7
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
    .line 434
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 435
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "source"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "access_token"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    const/4 v0, 0x1

    .line 439
    :try_start_1e
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_47

    .line 443
    :goto_21
    if-eqz v0, :cond_4a

    .line 444
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "uid"

    invoke-direct {v0, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    :goto_2d
    const-string v0, "https://api.weibo.com/2/friendships/create.json"

    .line 450
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->h:Lcn/sharesdk/framework/a/a;

    const-string v3, "/2/friendships/create.json"

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->c()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_55

    .line 452
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 454
    :goto_46
    return-object v0

    .line 440
    :catch_47
    move-exception v0

    .line 441
    const/4 v0, 0x0

    goto :goto_21

    .line 446
    :cond_4a
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "screen_name"

    invoke-direct {v0, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 454
    :cond_55
    const/4 v0, 0x0

    goto :goto_46
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    const-string v0, ""

    return-object v0
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/e;)Lcn/sharesdk/framework/authorize/b;
    .registers 3
    .param p1, "webAct"    # Lcn/sharesdk/framework/authorize/e;

    .prologue
    .line 98
    new-instance v0, Lcn/sharesdk/sina/weibo/b;

    invoke-direct {v0, p1}, Lcn/sharesdk/sina/weibo/b;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "https://api.weibo.com/oauth2/default.html"

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->e:Ljava/lang/String;

    goto :goto_a
.end method

.method public getSSOProcessor(Lcn/sharesdk/framework/authorize/c;)Lcn/sharesdk/framework/authorize/d;
    .registers 6
    .param p1, "ssoAct"    # Lcn/sharesdk/framework/authorize/c;

    .prologue
    .line 102
    new-instance v0, Lcn/sharesdk/sina/weibo/c;

    invoke-direct {v0, p1}, Lcn/sharesdk/sina/weibo/c;-><init>(Lcn/sharesdk/framework/authorize/c;)V

    .line 103
    const v1, 0x80cd

    invoke-virtual {v0, v1}, Lcn/sharesdk/sina/weibo/c;->a(I)V

    .line 104
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->e:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->g:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/sina/weibo/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 105
    return-object v0
.end method
