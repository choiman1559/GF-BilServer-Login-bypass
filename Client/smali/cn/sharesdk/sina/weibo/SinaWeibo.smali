.class public Lcn/sharesdk/sina/weibo/SinaWeibo;
.super Lcn/sharesdk/framework/Platform;
.source "SinaWeibo.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcn/sharesdk/sina/weibo/SinaWeibo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/SinaWeibo;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/sina/weibo/SinaWeibo;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method private c()Z
    .registers 4

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/SinaWeibo;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    const-string v2, "refresh_token"

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 60
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/f;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/sina/weibo/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/sina/weibo/f;->a(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/f;->a()Z

    move-result v0

    .line 65
    :cond_25
    return v0
.end method

.method static synthetic d(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic h(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic i(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic j(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 7
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 69
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/f;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/sharesdk/sina/weibo/f;->c(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->a:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/sina/weibo/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/sharesdk/sina/weibo/f;->a(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Lcn/sharesdk/sina/weibo/f;->d()Z

    .line 74
    const/16 v1, 0x9

    if-ne p1, v1, :cond_22

    .line 82
    :cond_21
    :goto_21
    return v0

    .line 77
    :cond_22
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/SinaWeibo;->isAuthValid()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/SinaWeibo;->c()Z

    move-result v1

    if-nez v1, :cond_21

    .line 81
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/sina/weibo/SinaWeibo;->innerAuthorize(ILjava/lang/Object;)V

    .line 82
    const/4 v0, 0x0

    goto :goto_21
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 5
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/f;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/sina/weibo/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/sina/weibo/f;->a(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, p1}, Lcn/sharesdk/sina/weibo/f;->a([Ljava/lang/String;)V

    .line 90
    new-instance v1, Lcn/sharesdk/sina/weibo/SinaWeibo$1;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/sina/weibo/SinaWeibo$1;-><init>(Lcn/sharesdk/sina/weibo/SinaWeibo;Lcn/sharesdk/sina/weibo/f;)V

    .line 126
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/SinaWeibo;->isSSODisable()Z

    move-result v2

    .line 90
    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V

    .line 127
    return-void
.end method

.method protected doCustomerProtocol(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)V
    .registers 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "customerAction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/f;

    move-result-object v0

    .line 331
    invoke-virtual {v0, p1, p2, p4, p5}, Lcn/sharesdk/sina/weibo/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    .line 332
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_1f

    .line 333
    :cond_10
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1e

    .line 334
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, p0, p3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 356
    :cond_1e
    :goto_1e
    return-void

    .line 339
    :cond_1f
    const-string v0, "error_code"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 340
    const-string v0, "error_code"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 341
    if-eqz v0, :cond_54

    .line 342
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1e

    .line 343
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, p3, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4c} :catch_4d

    goto :goto_1e

    .line 353
    :catch_4d
    move-exception v0

    .line 354
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, p3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1e

    .line 350
    :cond_54
    :try_start_54
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1e

    .line 351
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_5d} :catch_4d

    goto :goto_1e
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 6
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/16 v3, 0x9

    .line 359
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/f;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/sina/weibo/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-boolean v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->d:Z

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/f;->b()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 363
    :try_start_17
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1c} :catch_1d

    .line 374
    :goto_1c
    return-void

    .line 364
    :catch_1d
    move-exception v0

    .line 365
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1c

    .line 369
    :cond_24
    :try_start_24
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/sina/weibo/f;->b(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_29} :catch_2a

    goto :goto_1c

    .line 370
    :catch_2a
    move-exception v0

    .line 371
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1c
.end method

.method protected filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    .registers 14
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 481
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 482
    sparse-switch p1, :sswitch_data_220

    move-object v0, v1

    .line 568
    :goto_a
    return-object v0

    .line 484
    :sswitch_b
    const-string v0, "type"

    const-string v3, "FOLLOWING"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :goto_12
    const-string v0, "snsplat"

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/SinaWeibo;->getPlatformId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string v0, "snsuid"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v3}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string v0, "current_cursor"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 500
    const-string v0, "total_number"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 501
    if-nez v4, :cond_5a

    move-object v0, v1

    .line 502
    goto :goto_a

    .line 487
    :sswitch_4a
    const-string v0, "type"

    const-string v3, "FOLLOWERS"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 490
    :sswitch_52
    const-string v0, "type"

    const-string v3, "FRIENDS"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 506
    :cond_5a
    const-string v0, "users"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 507
    if-nez v0, :cond_64

    move-object v0, v1

    .line 508
    goto :goto_a

    .line 510
    :cond_64
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 511
    check-cast v0, Ljava/util/ArrayList;

    .line 512
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_73

    move-object v0, v1

    .line 513
    goto :goto_a

    .line 515
    :cond_73
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_77
    :goto_77
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_195

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 516
    if-eqz v0, :cond_77

    .line 519
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 520
    const-string v8, "snsuid"

    const-string v9, "id"

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const-string v8, "nickname"

    const-string v9, "screen_name"

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string v8, "icon"

    const-string v9, "avatar_hd"

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    const-string v8, "verified"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 524
    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_172

    .line 526
    const-string v8, "secretType"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    :goto_d0
    const-string v8, "secret"

    const-string v9, "verified_reason"

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const-string v8, "gender"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 533
    const-string v9, "m"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17b

    .line 534
    const-string v8, "gender"

    const-string v9, "0"

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    :goto_f8
    const-string v8, "snsUserUrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://weibo.com/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "profile_url"

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v8, "resume"

    const-string v9, "description"

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v8, "followerCount"

    const-string v9, "followers_count"

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const-string v8, "favouriteCount"

    const-string v9, "friends_count"

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string v8, "shareCount"

    const-string v9, "statuses_count"

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string v8, "created_at"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 546
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->dateToLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 547
    const-string v0, "snsregat"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_77

    .line 528
    :cond_172
    const-string v8, "secretType"

    const-string v9, "0"

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d0

    .line 535
    :cond_17b
    const-string v9, "f"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18c

    .line 536
    const-string v8, "gender"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f8

    .line 538
    :cond_18c
    const-string v8, "gender"

    const-string v9, "2"

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f8

    .line 551
    :cond_195
    if-eqz v5, :cond_19d

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1a0

    :cond_19d
    move-object v0, v1

    .line 552
    goto/16 :goto_a

    .line 557
    :cond_1a0
    const/16 v0, 0xa

    if-ne v0, p1, :cond_1eb

    .line 558
    const-string v0, "page_count"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 559
    add-int/lit8 v1, v3, 0x1

    mul-int/2addr v0, v1

    if-lt v0, v4, :cond_1d5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    :goto_1c8
    const-string v1, "nextCursor"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    :goto_1cd
    const-string v0, "list"

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 568
    goto/16 :goto_a

    .line 559
    :cond_1d5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c8

    .line 563
    :cond_1eb
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v3

    .line 564
    if-lt v0, v4, :cond_20b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 565
    :goto_205
    const-string v1, "nextCursor"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1cd

    .line 564
    :cond_20b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_205

    .line 482
    nop

    :sswitch_data_220
    .sparse-switch
        0x2 -> :sswitch_b
        0xa -> :sswitch_52
        0xb -> :sswitch_4a
    .end sparse-switch
.end method

.method protected filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/b/b/f$a;
    .registers 6
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform$ShareParams;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/sharesdk/framework/b/b/f$a;"
        }
    .end annotation

    .prologue
    .line 377
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 378
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 379
    if-eqz p2, :cond_2a

    .line 380
    const-string v1, "id"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->a:Ljava/lang/String;

    .line 381
    iget-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    const-string v2, "original_pic"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    iput-object p2, v0, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 384
    :cond_2a
    return-object v0
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 7
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x6

    .line 130
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/f;

    move-result-object v0

    .line 132
    :try_start_5
    invoke-virtual {v0, p1}, Lcn/sharesdk/sina/weibo/f;->e(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 133
    if-nez v1, :cond_1b

    .line 134
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1a

    .line 135
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 157
    :cond_1a
    :goto_1a
    return-void

    .line 140
    :cond_1b
    const-string v0, "error_code"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 141
    const-string v0, "error_code"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 142
    if-eqz v0, :cond_51

    .line 143
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1a

    .line 144
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_49} :catch_4a

    goto :goto_1a

    .line 154
    :catch_4a
    move-exception v0

    .line 155
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1a

    .line 151
    :cond_51
    :try_start_51
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1a

    .line 152
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x6

    invoke-interface {v0, p0, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_5b} :catch_4a

    goto :goto_1a
.end method

.method protected getBilaterals(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 8
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;
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

    .prologue
    const/4 v0, 0x0

    .line 418
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 419
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p3

    .line 421
    :cond_d
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 422
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "nickname"

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 424
    :cond_1b
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 444
    :cond_21
    :goto_21
    return-object v0

    .line 428
    :cond_22
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/f;

    move-result-object v1

    .line 430
    :try_start_26
    invoke-virtual {v1, p1, p2, p3}, Lcn/sharesdk/sina/weibo/f;->c(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 431
    if-eqz v1, :cond_21

    .line 435
    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 439
    const-string v2, "page_count"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v2, "current_cursor"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const/16 v2, 0xa

    invoke-virtual {p0, v2, v1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_4b} :catch_4d

    move-result-object v0

    goto :goto_21

    .line 442
    :catch_4d
    move-exception v1

    .line 443
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method protected getFollowers(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 8
    .param p1, "count"    # I
    .param p2, "cursor"    # I
    .param p3, "account"    # Ljava/lang/String;
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

    .prologue
    const/4 v0, 0x0

    .line 450
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 451
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p3

    .line 453
    :cond_d
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 454
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "nickname"

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 456
    :cond_1b
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 475
    :cond_21
    :goto_21
    return-object v0

    .line 460
    :cond_22
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/f;

    move-result-object v1

    .line 462
    :try_start_26
    invoke-virtual {v1, p1, p2, p3}, Lcn/sharesdk/sina/weibo/f;->d(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 463
    if-eqz v1, :cond_21

    .line 467
    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 471
    const-string v2, "current_cursor"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const/16 v2, 0xb

    invoke-virtual {p0, v2, v1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_42} :catch_44

    move-result-object v0

    goto :goto_21

    .line 473
    :catch_44
    move-exception v1

    .line 474
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method protected getFollowings(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 8
    .param p1, "count"    # I
    .param p2, "cursor"    # I
    .param p3, "account"    # Ljava/lang/String;
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

    .prologue
    const/4 v0, 0x0

    .line 388
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 389
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p3

    .line 391
    :cond_d
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 392
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "nickname"

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 394
    :cond_1b
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 413
    :cond_21
    :goto_21
    return-object v0

    .line 398
    :cond_22
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/f;

    move-result-object v1

    .line 400
    :try_start_26
    invoke-virtual {v1, p1, p2, p3}, Lcn/sharesdk/sina/weibo/f;->b(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 401
    if-eqz v1, :cond_21

    .line 405
    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 409
    const-string v2, "current_cursor"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_41} :catch_43

    move-result-object v0

    goto :goto_21

    .line 411
    :catch_43
    move-exception v1

    .line 412
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 9
    .param p1, "count"    # I
    .param p2, "cursor"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 283
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 284
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p3

    .line 286
    :cond_d
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 287
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "nickname"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 289
    :cond_1b
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 290
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_31

    .line 291
    const-string v0, "Both weibo id and screen_name are null"

    .line 292
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v4, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 324
    :cond_31
    :goto_31
    return-void

    .line 297
    :cond_32
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/f;

    move-result-object v0

    .line 299
    :try_start_36
    invoke-virtual {v0, p1, p2, p3}, Lcn/sharesdk/sina/weibo/f;->b(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 300
    if-nez v1, :cond_53

    .line 301
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_31

    .line 302
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_4b} :catch_4c

    goto :goto_31

    .line 321
    :catch_4c
    move-exception v0

    .line 322
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_31

    .line 307
    :cond_53
    :try_start_53
    const-string v0, "error_code"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 308
    const-string v0, "error_code"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 309
    if-eqz v0, :cond_82

    .line 310
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_31

    .line 311
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_31

    .line 318
    :cond_82
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_31

    .line 319
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x2

    invoke-interface {v0, p0, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_8c} :catch_4c

    goto :goto_31
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    sget-object v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getPlatformId()I
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 572
    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string v0, "AppKey"

    invoke-virtual {p0, v0}, Lcn/sharesdk/sina/weibo/SinaWeibo;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->a:Ljava/lang/String;

    .line 29
    const-string v0, "AppSecret"

    invoke-virtual {p0, v0}, Lcn/sharesdk/sina/weibo/SinaWeibo;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->b:Ljava/lang/String;

    .line 30
    const-string v0, "RedirectUrl"

    invoke-virtual {p0, v0}, Lcn/sharesdk/sina/weibo/SinaWeibo;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->c:Ljava/lang/String;

    .line 31
    const-string v0, "true"

    const-string v1, "ShareByAppClient"

    invoke-virtual {p0, v1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->d:Z

    .line 32
    return-void
.end method

.method public isClientValid()Z
    .registers 2

    .prologue
    .line 53
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/f;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/f;->b()Z

    move-result v0

    return v0
.end method

.method protected setNetworkDevinfo()V
    .registers 3

    .prologue
    .line 47
    const-string v0, "app_key"

    const-string v1, "AppKey"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->a:Ljava/lang/String;

    .line 48
    const-string v0, "app_secret"

    const-string v1, "AppSecret"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->b:Ljava/lang/String;

    .line 49
    const-string v0, "redirect_uri"

    const-string v1, "RedirectUrl"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->c:Ljava/lang/String;

    .line 50
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 9
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x7

    .line 160
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 161
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p3

    .line 163
    :cond_d
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 164
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "nickname"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 166
    :cond_1b
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 167
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_31

    .line 168
    const-string v0, "Both weibo id and screen_name are null"

    .line 169
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v4, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 201
    :cond_31
    :goto_31
    return-void

    .line 174
    :cond_32
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/f;

    move-result-object v0

    .line 176
    :try_start_36
    invoke-virtual {v0, p1, p2, p3}, Lcn/sharesdk/sina/weibo/f;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 177
    if-nez v1, :cond_53

    .line 178
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_31

    .line 179
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_4b} :catch_4c

    goto :goto_31

    .line 198
    :catch_4c
    move-exception v0

    .line 199
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_31

    .line 184
    :cond_53
    :try_start_53
    const-string v0, "error_code"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 185
    const-string v0, "error_code"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 186
    if-eqz v0, :cond_82

    .line 187
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_31

    .line 188
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x7

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_31

    .line 195
    :cond_82
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_31

    .line 196
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x7

    invoke-interface {v0, p0, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_8c} :catch_4c

    goto :goto_31
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 8
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/16 v5, 0x8

    .line 204
    const/4 v0, 0x0

    .line 205
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 207
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p1

    move v0, v1

    .line 209
    :cond_11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b9

    .line 211
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "nickname"

    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 213
    :goto_1f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 214
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_35

    .line 215
    const-string v0, "Both weibo id and screen_name are null"

    .line 216
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v5, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 280
    :cond_35
    :goto_35
    return-void

    .line 221
    :cond_36
    invoke-static {p0}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/f;

    move-result-object v0

    .line 223
    :try_start_3a
    invoke-virtual {v0, p1}, Lcn/sharesdk/sina/weibo/f;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 224
    if-nez v2, :cond_58

    .line 225
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_35

    .line 226
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_50} :catch_51

    goto :goto_35

    .line 277
    :catch_51
    move-exception v0

    .line 278
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v5, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_35

    .line 231
    :cond_58
    :try_start_58
    const-string v0, "error_code"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 232
    const-string v0, "error_code"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 233
    if-eqz v0, :cond_88

    .line 234
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_35

    .line 235
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_35

    .line 242
    :cond_88
    if-eqz v1, :cond_183

    .line 243
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "id"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "nickname"

    const-string v3, "screen_name"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "icon"

    const-string v3, "avatar_hd"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v0, "verified"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 248
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    .line 250
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "secretType"

    const-string v3, "1"

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :goto_d6
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "secret"

    const-string v3, "verified_reason"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v0, "gender"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 257
    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19b

    .line 258
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "gender"

    const-string v3, "0"

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_102
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "snsUserUrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://weibo.com/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "profile_url"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "resume"

    const-string v3, "description"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "followerCount"

    const-string v3, "followers_count"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "favouriteCount"

    const-string v3, "friends_count"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "shareCount"

    const-string v3, "statuses_count"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v0, "created_at"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->dateToLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 272
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v4, "snsregat"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_183
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_35

    .line 275
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto/16 :goto_35

    .line 252
    :cond_190
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "secretType"

    const-string v3, "0"

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d6

    .line 259
    :cond_19b
    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ae

    .line 260
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "gender"

    const-string v3, "1"

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_102

    .line 262
    :cond_1ae
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "gender"

    const-string v3, "2"

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b7
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_1b7} :catch_51

    goto/16 :goto_102

    :cond_1b9
    move v1, v0

    goto/16 :goto_1f
.end method
