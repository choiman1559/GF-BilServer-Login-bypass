.class public Lcn/sharesdk/framework/f;
.super Lcom/mob/tools/SSDKHandlerThread;
.source "ShareSDKCoreThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/f$a;
    }
.end annotation


# instance fields
.field private a:Lcn/sharesdk/framework/f$a;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/framework/Platform;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/sharesdk/framework/CustomPlatform;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/sharesdk/framework/Service;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/mob/tools/SSDKHandlerThread;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/framework/f;->i:Z

    .line 46
    sget-object v0, Lcn/sharesdk/framework/f$a;->a:Lcn/sharesdk/framework/f$a;

    iput-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/f$a;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/f;->b:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/f;->c:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/f;->d:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/f;->e:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/f;->f:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/f;->g:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/f;->h:Ljava/util/HashMap;

    .line 54
    return-void
.end method

.method private a(Lcn/sharesdk/framework/b/a;Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/b/a;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 536
    :try_start_2
    const-string v0, "error"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 537
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "ShareSDK parse sns config ==>>"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v5}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v5, p2}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    move v0, v1

    .line 554
    :goto_23
    return v0

    .line 541
    :cond_24
    const-string v0, "res"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 542
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "ShareSDK platform config result ==>>"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "SNS configuration is empty"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move v0, v1

    .line 543
    goto :goto_23

    .line 546
    :cond_3f
    const-string v0, "res"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 547
    if-nez v0, :cond_4b

    move v0, v1

    .line 548
    goto :goto_23

    .line 550
    :cond_4b
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/b/a;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_52} :catch_54

    move v0, v2

    .line 551
    goto :goto_23

    .line 552
    :catch_54
    move-exception v0

    .line 553
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move v0, v1

    .line 554
    goto :goto_23
.end method

.method static synthetic a(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/b/a;Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .registers 5

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/b/a;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method private e()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 73
    iget-object v2, p0, Lcn/sharesdk/framework/f;->b:Ljava/util/HashMap;

    monitor-enter v2

    .line 74
    :try_start_4
    iget-object v0, p0, Lcn/sharesdk/framework/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_76

    .line 77
    :try_start_9
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 79
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_14} :catch_5e
    .catchall {:try_start_9 .. :try_end_14} :catchall_76

    move-result-object v3

    .line 80
    const/4 v1, 0x0

    .line 82
    :try_start_16
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v4, "ShareSDK.xml"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_23} :catch_55
    .catchall {:try_start_16 .. :try_end_23} :catchall_76

    move-result-object v0

    move-object v1, v0

    .line 86
    :goto_25
    :try_start_25
    const-string v0, "utf-8"

    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 87
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 88
    :goto_2e
    if-eq v0, v9, :cond_72

    .line 89
    const/4 v4, 0x2

    if-ne v0, v4, :cond_6d

    .line 90
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 91
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 92
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    .line 93
    const/4 v0, 0x0

    :goto_41
    if-ge v0, v6, :cond_68

    .line 94
    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    .line 95
    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 96
    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 83
    :catch_55
    move-exception v0

    .line 84
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_5d} :catch_5e
    .catchall {:try_start_25 .. :try_end_5d} :catchall_76

    goto :goto_25

    .line 103
    :catch_5e
    move-exception v0

    .line 104
    :try_start_5f
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 106
    :goto_66
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_76

    .line 107
    return-void

    .line 98
    :cond_68
    :try_start_68
    iget-object v0, p0, Lcn/sharesdk/framework/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_6d
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_2e

    .line 102
    :cond_72
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_75} :catch_5e
    .catchall {:try_start_68 .. :try_end_75} :catchall_76

    goto :goto_66

    .line 106
    :catchall_76
    move-exception v0

    :try_start_77
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v0
.end method

.method private f()V
    .registers 2

    .prologue
    .line 148
    new-instance v0, Lcn/sharesdk/framework/f$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/framework/f$1;-><init>(Lcn/sharesdk/framework/f;)V

    .line 161
    invoke-virtual {v0}, Lcn/sharesdk/framework/f$1;->start()V

    .line 162
    return-void
.end method

.method private g()V
    .registers 6

    .prologue
    .line 165
    iget-object v0, p0, Lcn/sharesdk/framework/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 166
    invoke-static {}, Lcn/sharesdk/framework/e;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_10

    .line 168
    iget-object v1, p0, Lcn/sharesdk/framework/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 170
    :cond_10
    iget-object v0, p0, Lcn/sharesdk/framework/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform;

    .line 171
    iget-object v2, p0, Lcn/sharesdk/framework/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v2, p0, Lcn/sharesdk/framework/f;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 174
    :cond_45
    return-void
.end method

.method private h()V
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Lcn/sharesdk/framework/f;->handler:Landroid/os/Handler;

    const/16 v1, 0x4d

    invoke-static {v0, v1}, Lcn/sharesdk/framework/e;->a(Landroid/os/Handler;I)V

    .line 178
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 290
    if-nez p1, :cond_4

    .line 304
    :cond_3
    :goto_3
    return-object v0

    .line 294
    :cond_4
    invoke-virtual {p0}, Lcn/sharesdk/framework/f;->a()[Lcn/sharesdk/framework/Platform;

    move-result-object v3

    .line 295
    if-eqz v3, :cond_3

    .line 299
    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v4, :cond_3

    aget-object v1, v3, v2

    .line 300
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    move-object v0, v1

    .line 301
    goto :goto_3

    .line 299
    :cond_1d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_d
.end method

.method public a(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 460
    iget-object v1, p0, Lcn/sharesdk/framework/f;->g:Ljava/util/HashMap;

    monitor-enter v1

    .line 461
    :try_start_3
    iget-object v0, p0, Lcn/sharesdk/framework/f;->g:Ljava/util/HashMap;

    invoke-static {p1, p2, v0}, Lcn/sharesdk/framework/e;->a(ILjava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 462
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 584
    sget-object v0, Lcn/sharesdk/framework/f$a;->c:Lcn/sharesdk/framework/f$a;

    iget-object v1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/f$a;

    if-eq v0, v1, :cond_8

    .line 585
    const/4 v0, 0x0

    .line 588
    :goto_7
    return-object v0

    :cond_8
    invoke-static {p1}, Lcn/sharesdk/framework/e;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public a(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 568
    sget-object v0, Lcn/sharesdk/framework/f$a;->c:Lcn/sharesdk/framework/f$a;

    iget-object v1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/f$a;

    if-eq v0, v1, :cond_7

    .line 572
    :goto_6
    return-object p1

    :cond_7
    invoke-static {p1, p2, p3, p4}, Lcn/sharesdk/framework/e;->a(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 354
    sput p1, Lcom/mob/tools/network/NetworkHelper;->connectionTimeout:I

    .line 355
    return-void
.end method

.method public a(II)V
    .registers 5

    .prologue
    .line 443
    iget-object v1, p0, Lcn/sharesdk/framework/f;->g:Ljava/util/HashMap;

    monitor-enter v1

    .line 444
    :try_start_3
    iget-object v0, p0, Lcn/sharesdk/framework/f;->g:Ljava/util/HashMap;

    invoke-static {p1, p2, v0}, Lcn/sharesdk/framework/e;->a(IILjava/util/HashMap;)V

    .line 445
    monitor-exit v1

    .line 446
    return-void

    .line 445
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public a(ILcn/sharesdk/framework/Platform;)V
    .registers 3

    .prologue
    .line 370
    invoke-static {p1, p2}, Lcn/sharesdk/framework/e;->a(ILcn/sharesdk/framework/Platform;)V

    .line 371
    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcn/sharesdk/framework/Service;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v1, p0, Lcn/sharesdk/framework/f;->h:Ljava/util/HashMap;

    monitor-enter v1

    .line 213
    :try_start_3
    iget-object v0, p0, Lcn/sharesdk/framework/f;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 214
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_2d

    .line 225
    :goto_14
    return-void

    .line 218
    :cond_15
    :try_start_15
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Service;

    .line 219
    iget-object v2, p0, Lcn/sharesdk/framework/f;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-virtual {v0}, Lcn/sharesdk/framework/Service;->onBind()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_2b} :catch_30
    .catchall {:try_start_15 .. :try_end_2b} :catchall_2d

    .line 224
    :goto_2b
    :try_start_2b
    monitor-exit v1

    goto :goto_14

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_2d

    throw v0

    .line 221
    :catch_30
    move-exception v0

    .line 222
    :try_start_31
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2d

    goto :goto_2b
.end method

.method public a(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 374
    invoke-static {p1, p2}, Lcn/sharesdk/framework/e;->a(Ljava/lang/String;I)V

    .line 375
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 436
    iget-object v1, p0, Lcn/sharesdk/framework/f;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 437
    :try_start_3
    iget-object v0, p0, Lcn/sharesdk/framework/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 438
    iget-object v2, p0, Lcn/sharesdk/framework/f;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    monitor-exit v1

    .line 440
    return-void

    .line 439
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    iget-object v3, p0, Lcn/sharesdk/framework/f;->b:Ljava/util/HashMap;

    monitor-enter v3

    .line 379
    :try_start_3
    iget-object v0, p0, Lcn/sharesdk/framework/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 380
    if-nez v0, :cond_86

    .line 381
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 384
    :goto_13
    monitor-enter v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_3f

    .line 385
    :try_start_14
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 386
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 387
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 388
    if-eqz v0, :cond_1c

    .line 389
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 392
    :catchall_3c
    move-exception v0

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_14 .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw v0

    .line 394
    :catchall_3f
    move-exception v0

    monitor-exit v3
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3f

    throw v0

    .line 392
    :cond_42
    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3c

    .line 393
    :try_start_43
    iget-object v0, p0, Lcn/sharesdk/framework/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_3f

    .line 397
    iget-object v1, p0, Lcn/sharesdk/framework/f;->c:Ljava/util/ArrayList;

    monitor-enter v1

    .line 398
    :try_start_4c
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/f$a;

    sget-object v2, Lcn/sharesdk/framework/f$a;->b:Lcn/sharesdk/framework/f$a;
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_83

    if-ne v0, v2, :cond_57

    .line 400
    :try_start_52
    iget-object v0, p0, Lcn/sharesdk/framework/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_57} :catch_7a
    .catchall {:try_start_52 .. :try_end_57} :catchall_83

    .line 405
    :cond_57
    :goto_57
    :try_start_57
    iget-object v0, p0, Lcn/sharesdk/framework/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform;

    .line 406
    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 407
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->a()V

    .line 411
    :cond_78
    monitor-exit v1

    .line 412
    return-void

    .line 401
    :catch_7a
    move-exception v0

    .line 402
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_57

    .line 411
    :catchall_83
    move-exception v0

    monitor-exit v1
    :try_end_85
    .catchall {:try_start_57 .. :try_end_85} :catchall_83

    throw v0

    :cond_86
    move-object v2, v0

    goto :goto_13
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 57
    iput-boolean p1, p0, Lcn/sharesdk/framework/f;->i:Z

    .line 58
    invoke-static {p1}, Lcn/sharesdk/framework/e;->a(Z)V

    .line 59
    return-void
.end method

.method public a(Ljava/util/HashMap;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 485
    sget-object v0, Lcn/sharesdk/framework/f$a;->c:Lcn/sharesdk/framework/f$a;

    iget-object v2, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/f$a;

    if-eq v0, v2, :cond_15

    .line 486
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "Statistics module unopened"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move v0, v1

    .line 529
    :goto_14
    return v0

    .line 490
    :cond_15
    invoke-static {}, Lcn/sharesdk/framework/b/a;->a()Lcn/sharesdk/framework/b/a;

    move-result-object v2

    .line 492
    invoke-virtual {v2}, Lcn/sharesdk/framework/b/a;->e()Ljava/util/HashMap;

    move-result-object v0

    .line 494
    invoke-direct {p0, v2, v0, p1}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/b/a;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v0

    .line 495
    if-eqz v0, :cond_2e

    .line 496
    iput-boolean v3, p0, Lcn/sharesdk/framework/f;->k:Z

    .line 498
    new-instance v1, Lcn/sharesdk/framework/f$2;

    invoke-direct {v1, p0, v2}, Lcn/sharesdk/framework/f$2;-><init>(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/b/a;)V

    .line 513
    invoke-virtual {v1}, Lcn/sharesdk/framework/f$2;->start()V

    goto :goto_14

    .line 517
    :cond_2e
    :try_start_2e
    invoke-virtual {v2}, Lcn/sharesdk/framework/b/a;->f()Ljava/util/HashMap;

    move-result-object v3

    .line 518
    invoke-direct {p0, v2, v3, p1}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/b/a;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v0

    .line 520
    if-eqz v0, :cond_3b

    .line 521
    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/b/a;->a(Ljava/util/HashMap;)V

    .line 523
    :cond_3b
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/sharesdk/framework/f;->k:Z
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_3e} :catch_3f

    goto :goto_14

    .line 524
    :catch_3f
    move-exception v2

    .line 525
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 526
    iput-boolean v1, p0, Lcn/sharesdk/framework/f;->k:Z

    goto :goto_14
.end method

.method public a()[Lcn/sharesdk/framework/Platform;
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 309
    iget-object v3, p0, Lcn/sharesdk/framework/f;->c:Ljava/util/ArrayList;

    monitor-enter v3

    .line 310
    :try_start_9
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/f$a;

    sget-object v6, Lcn/sharesdk/framework/f$a;->a:Lcn/sharesdk/framework/f$a;

    if-ne v0, v6, :cond_12

    .line 311
    monitor-exit v3

    move-object v0, v1

    .line 350
    :goto_11
    return-object v0

    .line 314
    :cond_12
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/f$a;

    sget-object v6, Lcn/sharesdk/framework/f$a;->b:Lcn/sharesdk/framework/f$a;
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_4d

    if-ne v0, v6, :cond_1d

    .line 316
    :try_start_18
    iget-object v0, p0, Lcn/sharesdk/framework/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1d} :catch_44
    .catchall {:try_start_18 .. :try_end_1d} :catchall_4d

    .line 321
    :cond_1d
    :goto_1d
    :try_start_1d
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_4d

    .line 323
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 324
    iget-object v0, p0, Lcn/sharesdk/framework/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_29
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform;

    .line 325
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->b()Z

    move-result v7

    if-eqz v7, :cond_29

    .line 326
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->a()V

    .line 327
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 317
    :catch_44
    move-exception v0

    .line 318
    :try_start_45
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 321
    :catchall_4d
    move-exception v0

    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_4d

    throw v0

    .line 331
    :cond_50
    invoke-static {v6}, Lcn/sharesdk/framework/e;->a(Ljava/util/ArrayList;)V

    .line 333
    iget-object v0, p0, Lcn/sharesdk/framework/f;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5d
    :goto_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 334
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform;

    .line 335
    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->b()Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 336
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 340
    :cond_7b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_83

    move-object v0, v1

    .line 341
    goto :goto_11

    .line 344
    :cond_83
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Lcn/sharesdk/framework/Platform;

    move v1, v2

    .line 345
    :goto_8a
    array-length v0, v3

    if-ge v1, v0, :cond_99

    .line 346
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform;

    aput-object v0, v3, v1

    .line 345
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8a

    .line 349
    :cond_99
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "sort list use time: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-virtual {v0, v1, v6}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object v0, v3

    .line 350
    goto/16 :goto_11
.end method

.method public b(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 424
    iget-object v1, p0, Lcn/sharesdk/framework/f;->c:Ljava/util/ArrayList;

    monitor-enter v1

    .line 425
    :try_start_3
    iget-object v2, p0, Lcn/sharesdk/framework/f;->f:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_21

    .line 426
    :try_start_6
    iget-object v0, p0, Lcn/sharesdk/framework/f;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 427
    iget-object v0, p0, Lcn/sharesdk/framework/f;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_24

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_21

    .line 429
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_24

    :try_start_1f
    monitor-exit v1

    goto :goto_1c

    .line 432
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_21

    throw v0

    .line 431
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    :try_start_26
    throw v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_21
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 449
    iget-object v1, p0, Lcn/sharesdk/framework/f;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 450
    :try_start_3
    iget-object v0, p0, Lcn/sharesdk/framework/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 451
    if-nez v0, :cond_10

    .line 452
    const/4 v0, 0x0

    monitor-exit v1

    .line 455
    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    goto :goto_f

    .line 456
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 358
    sput p1, Lcom/mob/tools/network/NetworkHelper;->readTimout:I

    .line 359
    return-void
.end method

.method public b(Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcn/sharesdk/framework/Service;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v1, p0, Lcn/sharesdk/framework/f;->h:Ljava/util/HashMap;

    monitor-enter v1

    .line 229
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 230
    iget-object v0, p0, Lcn/sharesdk/framework/f;->h:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 231
    iget-object v0, p0, Lcn/sharesdk/framework/f;->h:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Service;

    .line 232
    invoke-virtual {v0}, Lcn/sharesdk/framework/Service;->onUnbind()V

    .line 233
    iget-object v0, p0, Lcn/sharesdk/framework/f;->h:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_2b
    monitor-exit v1

    .line 236
    return-void

    .line 235
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 362
    iput-boolean p1, p0, Lcn/sharesdk/framework/f;->j:Z

    .line 363
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 366
    iget-boolean v0, p0, Lcn/sharesdk/framework/f;->j:Z

    return v0
.end method

.method public b(Ljava/util/HashMap;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 560
    iget-object v1, p0, Lcn/sharesdk/framework/f;->g:Ljava/util/HashMap;

    monitor-enter v1

    .line 561
    :try_start_3
    iget-object v0, p0, Lcn/sharesdk/framework/f;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 562
    iget-object v0, p0, Lcn/sharesdk/framework/f;->g:Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcn/sharesdk/framework/e;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 563
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public c(Ljava/lang/Class;)Lcn/sharesdk/framework/Service;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/sharesdk/framework/Service;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v2, p0, Lcn/sharesdk/framework/f;->h:Ljava/util/HashMap;

    monitor-enter v2

    .line 240
    :try_start_4
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/f$a;

    sget-object v3, Lcn/sharesdk/framework/f$a;->a:Lcn/sharesdk/framework/f$a;

    if-ne v0, v3, :cond_d

    .line 241
    monitor-exit v2

    move-object v0, v1

    .line 258
    :goto_c
    return-object v0

    .line 244
    :cond_d
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/f$a;

    sget-object v3, Lcn/sharesdk/framework/f$a;->b:Lcn/sharesdk/framework/f$a;
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_2e

    if-ne v0, v3, :cond_18

    .line 246
    :try_start_13
    iget-object v0, p0, Lcn/sharesdk/framework/f;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_18} :catch_31
    .catchall {:try_start_13 .. :try_end_18} :catchall_2e

    .line 253
    :cond_18
    :goto_18
    :try_start_18
    iget-object v0, p0, Lcn/sharesdk/framework/f;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Service;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_2c} :catch_3a
    .catchall {:try_start_18 .. :try_end_2c} :catchall_2e

    :try_start_2c
    monitor-exit v2

    goto :goto_c

    .line 259
    :catchall_2e
    move-exception v0

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_2e

    throw v0

    .line 247
    :catch_31
    move-exception v0

    .line 248
    :try_start_32
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_18

    .line 254
    :catch_3a
    move-exception v0

    .line 255
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 258
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_2e

    move-object v0, v1

    goto :goto_c
.end method

.method public c(I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 416
    iget-object v1, p0, Lcn/sharesdk/framework/f;->c:Ljava/util/ArrayList;

    monitor-enter v1

    .line 417
    :try_start_3
    iget-object v2, p0, Lcn/sharesdk/framework/f;->f:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_18

    .line 418
    :try_start_6
    iget-object v0, p0, Lcn/sharesdk/framework/f;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_15

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_18

    return-object v0

    .line 419
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw v0

    .line 420
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 576
    sget-object v0, Lcn/sharesdk/framework/f$a;->c:Lcn/sharesdk/framework/f$a;

    iget-object v1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/f$a;

    if-eq v0, v1, :cond_8

    .line 577
    const/4 v0, 0x0

    .line 580
    :goto_7
    return-object v0

    :cond_8
    invoke-static {p1}, Lcn/sharesdk/framework/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 471
    iget-object v1, p0, Lcn/sharesdk/framework/f;->g:Ljava/util/HashMap;

    monitor-enter v1

    .line 472
    :try_start_3
    iget-object v0, p0, Lcn/sharesdk/framework/f;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcn/sharesdk/framework/f;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 473
    const/4 v0, 0x1

    monitor-exit v1

    .line 475
    :goto_11
    return v0

    :cond_12
    iget-boolean v0, p0, Lcn/sharesdk/framework/f;->k:Z

    monitor-exit v1

    goto :goto_11

    .line 476
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public d()V
    .registers 3

    .prologue
    .line 593
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->clearCache(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 597
    :goto_7
    return-void

    .line 594
    :catch_8
    move-exception v0

    .line 595
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public d(Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcn/sharesdk/framework/CustomPlatform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    iget-object v1, p0, Lcn/sharesdk/framework/f;->f:Ljava/util/HashMap;

    monitor-enter v1

    .line 264
    :try_start_3
    iget-object v0, p0, Lcn/sharesdk/framework/f;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 265
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_54

    .line 280
    :goto_14
    return-void

    .line 269
    :cond_15
    :try_start_15
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/CustomPlatform;

    .line 270
    iget-object v2, p0, Lcn/sharesdk/framework/f;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Lcn/sharesdk/framework/CustomPlatform;->b()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 273
    iget-object v2, p0, Lcn/sharesdk/framework/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcn/sharesdk/framework/CustomPlatform;->getPlatformId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcn/sharesdk/framework/CustomPlatform;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v2, p0, Lcn/sharesdk/framework/f;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcn/sharesdk/framework/CustomPlatform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcn/sharesdk/framework/CustomPlatform;->getPlatformId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_52} :catch_57
    .catchall {:try_start_15 .. :try_end_52} :catchall_54

    .line 279
    :cond_52
    :goto_52
    :try_start_52
    monitor-exit v1

    goto :goto_14

    :catchall_54
    move-exception v0

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_54

    throw v0

    .line 276
    :catch_57
    move-exception v0

    .line 277
    :try_start_58
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_54

    goto :goto_52
.end method

.method public e(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcn/sharesdk/framework/CustomPlatform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 284
    iget-object v1, p0, Lcn/sharesdk/framework/f;->f:Ljava/util/HashMap;

    monitor-enter v1

    .line 285
    :try_start_7
    iget-object v2, p0, Lcn/sharesdk/framework/f;->f:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    monitor-exit v1

    .line 287
    return-void

    .line 286
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v0
.end method

.method protected onMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 203
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 209
    :goto_5
    return-void

    .line 205
    :pswitch_6
    sget-object v0, Lcn/sharesdk/framework/f$a;->a:Lcn/sharesdk/framework/f$a;

    iput-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/f$a;

    .line 206
    iget-object v0, p0, Lcn/sharesdk/framework/f;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_5

    .line 203
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method protected onStart(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 110
    iget-object v1, p0, Lcn/sharesdk/framework/f;->h:Ljava/util/HashMap;

    monitor-enter v1

    .line 111
    :try_start_3
    iget-object v2, p0, Lcn/sharesdk/framework/f;->c:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_77

    .line 115
    :try_start_6
    const-string v0, "SHARESDK"

    invoke-static {v0}, Lcom/mob/commons/eventrecoder/EventRecorder;->checkRecord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 118
    invoke-static {}, Lcn/sharesdk/framework/b/a;->a()Lcn/sharesdk/framework/b/a;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcn/sharesdk/framework/b/a;->a(Ljava/util/HashMap;)V

    .line 119
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EventRecorder checkRecord result =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Lcn/sharesdk/framework/f;->d()V

    .line 122
    :cond_37
    invoke-static {}, Lcom/mob/commons/eventrecoder/EventRecorder;->clear()V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_3a} :catch_54
    .catchall {:try_start_6 .. :try_end_3a} :catchall_74

    .line 127
    :goto_3a
    :try_start_3a
    invoke-direct {p0}, Lcn/sharesdk/framework/f;->g()V

    .line 128
    invoke-direct {p0}, Lcn/sharesdk/framework/f;->h()V

    .line 130
    sget-object v0, Lcn/sharesdk/framework/f$a;->c:Lcn/sharesdk/framework/f$a;

    iput-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/f$a;

    .line 131
    iget-object v0, p0, Lcn/sharesdk/framework/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 132
    iget-object v0, p0, Lcn/sharesdk/framework/f;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 135
    invoke-direct {p0}, Lcn/sharesdk/framework/f;->f()V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_51} :catch_5d
    .catchall {:try_start_3a .. :try_end_51} :catchall_74

    .line 142
    :goto_51
    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_74

    .line 143
    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_77

    .line 144
    return-void

    .line 123
    :catch_54
    move-exception v0

    .line 124
    :try_start_55
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_5c} :catch_5d
    .catchall {:try_start_55 .. :try_end_5c} :catchall_74

    goto :goto_3a

    .line 136
    :catch_5d
    move-exception v0

    .line 137
    :try_start_5e
    sget-object v3, Lcn/sharesdk/framework/f$a;->c:Lcn/sharesdk/framework/f$a;

    iput-object v3, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/f$a;

    .line 138
    iget-object v3, p0, Lcn/sharesdk/framework/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 139
    iget-object v3, p0, Lcn/sharesdk/framework/f;->h:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 140
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_51

    .line 142
    :catchall_74
    move-exception v0

    monitor-exit v2
    :try_end_76
    .catchall {:try_start_5e .. :try_end_76} :catchall_74

    :try_start_76
    throw v0

    .line 143
    :catchall_77
    move-exception v0

    monitor-exit v1
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_77

    throw v0
.end method

.method protected onStop(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 181
    iget-object v1, p0, Lcn/sharesdk/framework/f;->h:Ljava/util/HashMap;

    monitor-enter v1

    .line 182
    :try_start_3
    iget-object v0, p0, Lcn/sharesdk/framework/f;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Service;

    .line 184
    invoke-virtual {v0}, Lcn/sharesdk/framework/Service;->onUnbind()V

    goto :goto_d

    .line 187
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v0

    .line 186
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcn/sharesdk/framework/f;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 187
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_23

    .line 189
    iget-object v1, p0, Lcn/sharesdk/framework/f;->f:Ljava/util/HashMap;

    monitor-enter v1

    .line 190
    :try_start_2f
    iget-object v0, p0, Lcn/sharesdk/framework/f;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 191
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_39

    .line 194
    :try_start_35
    invoke-static {}, Lcn/sharesdk/framework/e;->b()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_3c

    .line 200
    :goto_38
    return-void

    .line 191
    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0

    .line 195
    :catch_3c
    move-exception v0

    .line 196
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 197
    iget-object v0, p0, Lcn/sharesdk/framework/f;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 198
    sget-object v0, Lcn/sharesdk/framework/f$a;->a:Lcn/sharesdk/framework/f$a;

    iput-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/f$a;

    goto :goto_38
.end method

.method public startThread()V
    .registers 2

    .prologue
    .line 62
    sget-object v0, Lcn/sharesdk/framework/f$a;->b:Lcn/sharesdk/framework/f$a;

    iput-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/f$a;

    .line 64
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    .line 66
    invoke-static {}, Lcom/mob/commons/eventrecoder/EventRecorder;->prepare()V

    .line 68
    invoke-direct {p0}, Lcn/sharesdk/framework/f;->e()V

    .line 69
    invoke-super {p0}, Lcom/mob/tools/SSDKHandlerThread;->startThread()V

    .line 70
    return-void
.end method
