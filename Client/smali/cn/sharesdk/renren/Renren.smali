.class public Lcn/sharesdk/renren/Renren;
.super Lcn/sharesdk/framework/Platform;
.source "Renren.java"


# static fields
.field public static final NAME:Ljava/lang/String;

.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/16 v0, 0x540e

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/renren/Renren;->a:Ljava/lang/String;

    .line 28
    const/16 v0, 0x5e74

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/renren/Renren;->b:Ljava/lang/String;

    .line 29
    const/16 v0, 0x6708

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/renren/Renren;->c:Ljava/lang/String;

    .line 30
    const-class v0, Lcn/sharesdk/renren/Renren;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/renren/Renren;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/renren/Renren;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/renren/Renren;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/renren/Renren;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/renren/Renren;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/renren/Renren;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/renren/Renren;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/renren/Renren;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/renren/Renren;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/renren/Renren;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic h(Lcn/sharesdk/renren/Renren;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 6
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 102
    invoke-virtual {p0}, Lcn/sharesdk/renren/Renren;->isAuthValid()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 103
    invoke-static {p0}, Lcn/sharesdk/renren/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/renren/b;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->d:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/renren/Renren;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/renren/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lcn/sharesdk/renren/b;->a(Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x1

    .line 111
    :goto_1b
    return v0

    .line 110
    :cond_1c
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/renren/Renren;->innerAuthorize(ILjava/lang/Object;)V

    .line 111
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 5
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p0}, Lcn/sharesdk/renren/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/renren/b;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->d:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/renren/Renren;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/renren/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p1}, Lcn/sharesdk/renren/b;->a([Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcn/sharesdk/renren/Renren$1;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/renren/Renren$1;-><init>(Lcn/sharesdk/renren/Renren;Lcn/sharesdk/renren/b;)V

    .line 98
    invoke-virtual {p0}, Lcn/sharesdk/renren/Renren;->isSSODisable()Z

    move-result v2

    .line 68
    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/renren/b;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V

    .line 99
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
    .line 371
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcn/sharesdk/renren/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/renren/b;

    move-result-object v0

    .line 372
    invoke-virtual {v0, p1, p2, p4, p5}, Lcn/sharesdk/renren/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    .line 373
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_1f

    .line 374
    :cond_10
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1e

    .line 375
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, p0, p3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 391
    :cond_1e
    :goto_1e
    return-void

    .line 380
    :cond_1f
    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 381
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1e

    .line 382
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, p3, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1e

    .line 388
    :cond_3f
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1e

    .line 389
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, p3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_1e
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 12
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/16 v9, 0x9

    .line 115
    invoke-static {p0}, Lcn/sharesdk/renren/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/renren/b;

    move-result-object v0

    .line 118
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v6

    .line 119
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 122
    :try_start_e
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    .line 123
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcn/sharesdk/renren/Renren;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-virtual {p1, v4}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getComment()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitleUrl()Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 131
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_57

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_57

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_57

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_57

    .line 132
    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/renren/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_45} :catch_7d

    move-result-object v0

    .line 149
    :goto_46
    if-nez v0, :cond_88

    .line 150
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_56

    .line 151
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, p0, v9, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 169
    :cond_56
    :goto_56
    return-void

    .line 133
    :cond_57
    :try_start_57
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 134
    invoke-virtual {v0, v1, v7}, Lcn/sharesdk/renren/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_46

    .line 135
    :cond_62
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 136
    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/renren/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_46

    .line 137
    :cond_6d
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 138
    invoke-virtual {v0, v4, v6}, Lcn/sharesdk/renren/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_46

    .line 140
    :cond_78
    invoke-virtual {v0, v4}, Lcn/sharesdk/renren/b;->c(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_7b} :catch_7d

    move-result-object v0

    goto :goto_46

    .line 142
    :catch_7d
    move-exception v0

    .line 143
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_56

    .line 144
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v9, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_56

    .line 156
    :cond_88
    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_98

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 157
    :cond_98
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_56

    .line 158
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 159
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v9, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_56

    .line 165
    :cond_b0
    const-string v1, "ShareParams"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_56

    .line 167
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v9, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_56
.end method

.method protected filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    .registers 19
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
    .line 494
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 495
    const-string v2, "type"

    const-string v3, "FOLLOWING"

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v2, "snsplat"

    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/renren/Renren;->getPlatformId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const-string v2, "snsuid"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/sharesdk/renren/Renren;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v3}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string v2, "current_cursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 500
    const-string v2, "page_count"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 502
    const-string v2, "response"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 503
    if-nez v2, :cond_4e

    .line 504
    const/4 v2, 0x0

    .line 664
    :goto_4d
    return-object v2

    .line 506
    :cond_4e
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 507
    check-cast v2, Ljava/util/ArrayList;

    .line 508
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_5d

    .line 509
    const/4 v2, 0x0

    goto :goto_4d

    .line 511
    :cond_5d
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_61
    :goto_61
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 512
    if-eqz v2, :cond_61

    .line 515
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 516
    const-string v3, "snsuid"

    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v3, "nickname"

    const-string v4, "name"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string v3, "secretType"

    const-string v4, "star"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const-string v3, "avatar"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24c

    const-string v3, "avatar"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 520
    :goto_b1
    if-eqz v3, :cond_ea

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_ea

    .line 522
    :try_start_b9
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_bd
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ea

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 523
    const-string v5, "LARGE"

    const-string v12, "size"

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bd

    .line 524
    const-string v4, "icon"

    const-string v5, "url"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ea
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_ea} :catch_24f

    .line 533
    :cond_ea
    :goto_ea
    const-string v3, "basicInformation"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 534
    if-eqz v3, :cond_19f

    .line 535
    const-string v4, "sex"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 536
    const-string v5, "MALE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_259

    .line 537
    const-string v4, "gender"

    const-string v5, "0"

    invoke-virtual {v11, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    :goto_10d
    const-wide/16 v4, 0x0

    .line 543
    :try_start_10f
    const-string v12, "birthday"

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 544
    sget-object v12, Lcn/sharesdk/renren/Renren;->a:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_262

    .line 545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "19"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v12, Lcn/sharesdk/renren/Renren;->a:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v3, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 546
    const-string v5, "AFTER"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    sget-object v12, Lcn/sharesdk/renren/Renren;->c:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 547
    const/4 v12, 0x0

    aget-object v12, v5, v12

    .line 548
    const/4 v13, 0x1

    aget-object v13, v5, v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    aget-object v5, v5, v15

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v13, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 549
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "-"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, "-"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " 00:00:00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->strToDate(Ljava/lang/String;)J

    move-result-wide v4

    .line 559
    :cond_190
    :goto_190
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19f

    .line 560
    const-string v3, "birthday"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19f
    .catch Ljava/lang/Throwable; {:try_start_10f .. :try_end_19f} :catch_2d4

    .line 567
    :cond_19f
    :goto_19f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://www.renren.com/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 568
    const-string v4, "snsUserUrl"

    invoke-virtual {v11, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string v3, "education"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 570
    if-eqz v3, :cond_332

    .line 571
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 572
    const/4 v4, 0x0

    move v5, v4

    :goto_1d2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v5, v4, :cond_329

    .line 573
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 575
    :try_start_1dd
    const-string v4, "school_type"

    const/4 v14, 0x0

    invoke-virtual {v13, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 576
    const-string v14, "school"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v15, "name"

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 577
    const-string v14, "classes"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v15, "department"

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20d
    .catch Lorg/json/JSONException; {:try_start_1dd .. :try_end_20d} :catch_30f

    .line 579
    :try_start_20d
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v14, "educationBackground"

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 580
    const/4 v4, 0x0

    .line 594
    const-string v15, "COLLEGE"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2de

    .line 595
    const/4 v4, 0x4

    .line 603
    :cond_227
    :goto_227
    const-string v14, "background"

    invoke-virtual {v13, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_22c
    .catch Ljava/lang/Throwable; {:try_start_20d .. :try_end_22c} :catch_2ff
    .catch Lorg/json/JSONException; {:try_start_20d .. :try_end_22c} :catch_30f

    .line 609
    :goto_22c
    :try_start_22c
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v14, "year"

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 610
    const-string v14, "year"

    invoke-virtual {v13, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_245
    .catch Ljava/lang/Throwable; {:try_start_22c .. :try_end_245} :catch_319
    .catch Lorg/json/JSONException; {:try_start_22c .. :try_end_245} :catch_30f

    .line 618
    :goto_245
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 572
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1d2

    .line 519
    :cond_24c
    const/4 v3, 0x0

    goto/16 :goto_b1

    .line 528
    :catch_24f
    move-exception v3

    .line 529
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto/16 :goto_ea

    .line 539
    :cond_259
    const-string v4, "gender"

    const-string v5, "1"

    invoke-virtual {v11, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10d

    .line 550
    :cond_262
    :try_start_262
    sget-object v12, Lcn/sharesdk/renren/Renren;->b:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2c8

    .line 551
    const/4 v4, 0x0

    sget-object v5, Lcn/sharesdk/renren/Renren;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 552
    sget-object v5, Lcn/sharesdk/renren/Renren;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    sget-object v12, Lcn/sharesdk/renren/Renren;->c:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 553
    const/4 v12, 0x0

    aget-object v12, v5, v12

    .line 554
    const/4 v13, 0x1

    aget-object v13, v5, v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    aget-object v5, v5, v15

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v13, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 555
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "-"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, "-"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " 00:00:00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->strToDate(Ljava/lang/String;)J

    move-result-wide v4

    goto/16 :goto_190

    .line 556
    :cond_2c8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_190

    .line 557
    invoke-static {v3}, Lcom/mob/tools/utils/ResHelper;->dateStrToLong(Ljava/lang/String;)J
    :try_end_2d1
    .catch Ljava/lang/Throwable; {:try_start_262 .. :try_end_2d1} :catch_2d4

    move-result-wide v4

    goto/16 :goto_190

    .line 562
    :catch_2d4
    move-exception v3

    .line 563
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto/16 :goto_19f

    .line 596
    :cond_2de
    :try_start_2de
    const-string v15, "PRIMARY"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2e9

    .line 597
    const/4 v4, 0x1

    goto/16 :goto_227

    .line 598
    :cond_2e9
    const-string v15, "HIGHSCHOOL"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2f4

    .line 599
    const/4 v4, 0x3

    goto/16 :goto_227

    .line 600
    :cond_2f4
    const-string v15, "JUNIOR"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2f9
    .catch Ljava/lang/Throwable; {:try_start_2de .. :try_end_2f9} :catch_2ff
    .catch Lorg/json/JSONException; {:try_start_2de .. :try_end_2f9} :catch_30f

    move-result v14

    if-eqz v14, :cond_227

    .line 601
    const/4 v4, 0x2

    goto/16 :goto_227

    .line 604
    :catch_2ff
    move-exception v4

    .line 605
    :try_start_300
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 606
    const-string v4, "background"

    const/4 v14, 0x0

    invoke-virtual {v13, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_30d
    .catch Lorg/json/JSONException; {:try_start_300 .. :try_end_30d} :catch_30f

    goto/16 :goto_22c

    .line 615
    :catch_30f
    move-exception v4

    .line 616
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto/16 :goto_245

    .line 611
    :catch_319
    move-exception v4

    .line 612
    :try_start_31a
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 613
    const-string v4, "year"

    const/4 v14, 0x0

    invoke-virtual {v13, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_327
    .catch Lorg/json/JSONException; {:try_start_31a .. :try_end_327} :catch_30f

    goto/16 :goto_245

    .line 620
    :cond_329
    const-string v3, "educationJSONArrayStr"

    invoke-virtual {v12}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    :cond_332
    const-string v3, "work"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 624
    if-eqz v3, :cond_3f0

    .line 625
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 626
    const/4 v4, 0x0

    move v5, v4

    :goto_343
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v5, v4, :cond_3e7

    .line 627
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 629
    :try_start_34e
    const-string v14, "company"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v15, "name"

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 630
    const-string v4, "dept"

    const-string v14, ""

    invoke-virtual {v13, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36a
    .catch Lorg/json/JSONException; {:try_start_34e .. :try_end_36a} :catch_3de

    .line 632
    :try_start_36a
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v14, "time"

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    .line 633
    const-string v14, "start_date"

    invoke-virtual {v13, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_385
    .catch Ljava/lang/Throwable; {:try_start_36a .. :try_end_385} :catch_3cf
    .catch Lorg/json/JSONException; {:try_start_36a .. :try_end_385} :catch_3de

    .line 639
    :goto_385
    :try_start_385
    const-string v4, "industry"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 640
    if-eqz v4, :cond_3a6

    const-string v14, "industryCategory"

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3a6

    .line 641
    const-string v14, "industry"

    const-string v15, "industryCategory"

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 644
    :cond_3a6
    const-string v4, "job"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 645
    if-eqz v4, :cond_3c7

    const-string v14, "jobCategory"

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3c7

    .line 646
    const-string v14, "position"

    const-string v15, "jobCategory"

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3c7
    .catch Lorg/json/JSONException; {:try_start_385 .. :try_end_3c7} :catch_3de

    .line 651
    :cond_3c7
    :goto_3c7
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 626
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_343

    .line 634
    :catch_3cf
    move-exception v4

    .line 635
    :try_start_3d0
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 636
    const-string v4, "start_date"

    const/4 v14, 0x0

    invoke-virtual {v13, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3dd
    .catch Lorg/json/JSONException; {:try_start_3d0 .. :try_end_3dd} :catch_3de

    goto :goto_385

    .line 648
    :catch_3de
    move-exception v4

    .line 649
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_3c7

    .line 653
    :cond_3e7
    const-string v2, "workJSONArrayStr"

    invoke-virtual {v12}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    :cond_3f0
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_61

    .line 657
    :cond_3f5
    if-eqz v9, :cond_3fd

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_400

    .line 658
    :cond_3fd
    const/4 v2, 0x0

    goto/16 :goto_4d

    .line 661
    :cond_400
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v8, v2, :cond_426

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 662
    :goto_419
    const-string v3, "nextCursor"

    invoke-virtual {v6, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const-string v2, "list"

    invoke-virtual {v6, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v6

    .line 664
    goto/16 :goto_4d

    .line 661
    :cond_426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_419
.end method

.method protected filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/b/b/f$a;
    .registers 10
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
    .line 394
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 395
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    .line 396
    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 397
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 398
    if-eqz v2, :cond_16

    .line 399
    iget-object v3, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_16
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitleUrl()Ljava/lang/String;

    move-result-object v3

    .line 402
    if-eqz v3, :cond_21

    .line 403
    iget-object v4, v0, Lcn/sharesdk/framework/b/b/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_21
    if-eqz p2, :cond_2f

    .line 406
    const-string v4, "post_id"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcn/sharesdk/framework/b/b/f$a;->a:Ljava/lang/String;

    .line 408
    :cond_2f
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 409
    const-string v5, "name"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string v5, "url"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string v3, "message"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getComment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v3, "description"

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string v1, "image"

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const-string v1, "caption"

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iput-object v4, v0, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 416
    return-object v0
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 173
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 175
    :cond_a
    return-void
.end method

.method protected getBilaterals(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 5
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
    .line 489
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFollowers(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 5
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
    .line 485
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFollowings(IILjava/lang/String;)Ljava/util/HashMap;
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

    .line 459
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 460
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p3

    .line 462
    :cond_d
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 480
    :cond_13
    :goto_13
    return-object v0

    .line 465
    :cond_14
    invoke-static {p0}, Lcn/sharesdk/renren/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/renren/b;

    move-result-object v1

    .line 467
    add-int/lit8 v2, p2, 0x1

    :try_start_1a
    invoke-virtual {v1, p1, v2, p3}, Lcn/sharesdk/renren/b;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 468
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 472
    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 476
    const-string v2, "page_count"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string v2, "current_cursor"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcn/sharesdk/renren/Renren;->filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_44} :catch_46

    move-result-object v0

    goto :goto_13

    .line 479
    :catch_46
    move-exception v1

    goto :goto_13
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 9
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 420
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 421
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p3

    .line 423
    :cond_d
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 424
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_23

    .line 425
    const-string v0, "Doban account id is null"

    .line 426
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v4, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 456
    :cond_23
    :goto_23
    return-void

    .line 430
    :cond_24
    invoke-static {p0}, Lcn/sharesdk/renren/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/renren/b;

    move-result-object v0

    .line 432
    add-int/lit8 v1, p2, 0x1

    :try_start_2a
    invoke-virtual {v0, p1, v1, p3}, Lcn/sharesdk/renren/b;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_51

    .line 434
    :cond_36
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_23

    .line 435
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_45} :catch_46

    goto :goto_23

    .line 451
    :catch_46
    move-exception v0

    .line 452
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_23

    .line 453
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_23

    .line 440
    :cond_51
    :try_start_51
    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 441
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_23

    .line 442
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_23

    .line 448
    :cond_72
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_23

    .line 449
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_7c} :catch_46

    goto :goto_23
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    sget-object v0, Lcn/sharesdk/renren/Renren;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x7

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x2

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 668
    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string v0, "ApiKey"

    invoke-virtual {p0, v0}, Lcn/sharesdk/renren/Renren;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/renren/Renren;->d:Ljava/lang/String;

    .line 38
    const-string v0, "SecretKey"

    invoke-virtual {p0, v0}, Lcn/sharesdk/renren/Renren;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/renren/Renren;->e:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public isClientValid()Z
    .registers 2

    .prologue
    .line 60
    invoke-static {p0}, Lcn/sharesdk/renren/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/renren/b;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcn/sharesdk/renren/b;->b()Z

    move-result v0

    return v0
.end method

.method protected setNetworkDevinfo()V
    .registers 3

    .prologue
    .line 54
    const-string v0, "app_key"

    const-string v1, "ApiKey"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/renren/Renren;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/renren/Renren;->d:Ljava/lang/String;

    .line 55
    const-string v0, "secret_key"

    const-string v1, "SecretKey"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/renren/Renren;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/renren/Renren;->e:Ljava/lang/String;

    .line 56
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 179
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 181
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 13
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 185
    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41f

    .line 188
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p1

    move v4, v3

    .line 191
    :goto_12
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gez v0, :cond_2b

    .line 192
    :cond_1a
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_2a

    .line 193
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "renren id is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v10, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 366
    :cond_2a
    :goto_2a
    return-void

    .line 198
    :cond_2b
    invoke-static {p0}, Lcn/sharesdk/renren/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/renren/b;

    move-result-object v0

    .line 200
    :try_start_2f
    invoke-virtual {v0, p1}, Lcn/sharesdk/renren/b;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v5

    if-gtz v5, :cond_57

    .line 202
    :cond_3b
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_2a

    .line 203
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_4b} :catch_4c

    goto :goto_2a

    .line 361
    :catch_4c
    move-exception v0

    .line 362
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_2a

    .line 363
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v10, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_2a

    .line 208
    :cond_57
    :try_start_57
    const-string v5, "error"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 209
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_2a

    .line 210
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_2a

    .line 216
    :cond_79
    const-string v5, "response"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_261

    const-string v5, "response"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    move-object v6, v0

    .line 217
    :goto_8a
    if-eqz v4, :cond_40c

    if-eqz v6, :cond_40c

    .line 218
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v4, "nickname"

    const-string v5, "name"

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v4, "secretType"

    const-string v5, "star"

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v0, "avatar"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_264

    const-string v0, "avatar"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 222
    :goto_c0
    if-eqz v0, :cond_fb

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_c5} :catch_4c

    move-result v1

    if-lez v1, :cond_fb

    .line 224
    :try_start_c8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_cc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 225
    const-string v4, "LARGE"

    const-string v5, "size"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 226
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v4, "icon"

    const-string v5, "url"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fb
    .catch Ljava/lang/Throwable; {:try_start_c8 .. :try_end_fb} :catch_267

    .line 235
    :cond_fb
    :goto_fb
    :try_start_fb
    const-string v0, "basicInformation"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 236
    if-eqz v0, :cond_1b4

    .line 237
    const-string v1, "sex"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 238
    const-string v4, "MALE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_271

    .line 239
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v4, "gender"

    const-string v5, "0"

    invoke-virtual {v1, v4, v5}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_120
    .catch Ljava/lang/Throwable; {:try_start_fb .. :try_end_120} :catch_4c

    .line 244
    :goto_120
    const-wide/16 v4, 0x0

    .line 245
    :try_start_122
    const-string v1, "birthday"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 246
    sget-object v0, Lcn/sharesdk/renren/Renren;->a:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27c

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "19"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v4, Lcn/sharesdk/renren/Renren;->a:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v7, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    const-string v1, "AFTER"

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcn/sharesdk/renren/Renren;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 249
    const/4 v4, 0x0

    aget-object v4, v1, v4

    .line 250
    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 251
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->strToDate(Ljava/lang/String;)J

    move-result-wide v0

    .line 261
    :goto_1a3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b4

    .line 262
    iget-object v4, p0, Lcn/sharesdk/renren/Renren;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v5, "birthday"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b4
    .catch Ljava/lang/Throwable; {:try_start_122 .. :try_end_1b4} :catch_2ee

    .line 269
    :cond_1b4
    :goto_1b4
    :try_start_1b4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.renren.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v4, "snsUserUrl"

    invoke-virtual {v1, v4, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v0, "education"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 272
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 273
    if-eqz v0, :cond_34e

    move v4, v2

    .line 274
    :goto_1e8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_343

    .line 275
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_1f3
    .catch Ljava/lang/Throwable; {:try_start_1b4 .. :try_end_1f3} :catch_4c

    .line 277
    :try_start_1f3
    const-string v1, "school_type"

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 278
    const-string v8, "school"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v9, "name"

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    const-string v8, "classes"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v9, "department"

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_223
    .catch Lorg/json/JSONException; {:try_start_1f3 .. :try_end_223} :catch_329
    .catch Ljava/lang/Throwable; {:try_start_1f3 .. :try_end_223} :catch_4c

    .line 281
    :try_start_223
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v8, "educationBackground"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 296
    const-string v8, "COLLEGE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f8

    .line 297
    const/4 v1, 0x4

    .line 305
    :goto_23c
    const-string v8, "background"

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_241
    .catch Ljava/lang/Throwable; {:try_start_223 .. :try_end_241} :catch_319
    .catch Lorg/json/JSONException; {:try_start_223 .. :try_end_241} :catch_329

    .line 311
    :goto_241
    :try_start_241
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v8, "year"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 312
    const-string v8, "year"

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_25a
    .catch Ljava/lang/Throwable; {:try_start_241 .. :try_end_25a} :catch_333
    .catch Lorg/json/JSONException; {:try_start_241 .. :try_end_25a} :catch_329

    .line 320
    :goto_25a
    :try_start_25a
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 274
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1e8

    :cond_261
    move-object v6, v1

    .line 216
    goto/16 :goto_8a

    :cond_264
    move-object v0, v1

    .line 221
    goto/16 :goto_c0

    .line 230
    :catch_267
    move-exception v0

    .line 231
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto/16 :goto_fb

    .line 241
    :cond_271
    iget-object v1, p0, Lcn/sharesdk/renren/Renren;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v4, "gender"

    const-string v5, "1"

    invoke-virtual {v1, v4, v5}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27a
    .catch Ljava/lang/Throwable; {:try_start_25a .. :try_end_27a} :catch_4c

    goto/16 :goto_120

    .line 252
    :cond_27c
    :try_start_27c
    sget-object v0, Lcn/sharesdk/renren/Renren;->b:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e2

    .line 253
    const/4 v0, 0x0

    sget-object v1, Lcn/sharesdk/renren/Renren;->b:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 254
    sget-object v1, Lcn/sharesdk/renren/Renren;->b:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcn/sharesdk/renren/Renren;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 255
    const/4 v4, 0x0

    aget-object v4, v1, v4

    .line 256
    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->strToDate(Ljava/lang/String;)J

    move-result-wide v0

    goto/16 :goto_1a3

    .line 258
    :cond_2e2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41c

    .line 259
    invoke-static {v7}, Lcom/mob/tools/utils/ResHelper;->dateStrToLong(Ljava/lang/String;)J
    :try_end_2eb
    .catch Ljava/lang/Throwable; {:try_start_27c .. :try_end_2eb} :catch_2ee

    move-result-wide v0

    goto/16 :goto_1a3

    .line 264
    :catch_2ee
    move-exception v0

    .line 265
    :try_start_2ef
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2f6
    .catch Ljava/lang/Throwable; {:try_start_2ef .. :try_end_2f6} :catch_4c

    goto/16 :goto_1b4

    .line 298
    :cond_2f8
    :try_start_2f8
    const-string v8, "PRIMARY"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_303

    move v1, v3

    .line 299
    goto/16 :goto_23c

    .line 300
    :cond_303
    const-string v8, "HIGHSCHOOL"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30e

    .line 301
    const/4 v1, 0x3

    goto/16 :goto_23c

    .line 302
    :cond_30e
    const-string v8, "JUNIOR"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_313
    .catch Ljava/lang/Throwable; {:try_start_2f8 .. :try_end_313} :catch_319
    .catch Lorg/json/JSONException; {:try_start_2f8 .. :try_end_313} :catch_329

    move-result v1

    if-eqz v1, :cond_419

    .line 303
    const/4 v1, 0x2

    goto/16 :goto_23c

    .line 306
    :catch_319
    move-exception v1

    .line 307
    :try_start_31a
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 308
    const-string v1, "background"

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_327
    .catch Lorg/json/JSONException; {:try_start_31a .. :try_end_327} :catch_329
    .catch Ljava/lang/Throwable; {:try_start_31a .. :try_end_327} :catch_4c

    goto/16 :goto_241

    .line 317
    :catch_329
    move-exception v1

    .line 318
    :try_start_32a
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_331
    .catch Ljava/lang/Throwable; {:try_start_32a .. :try_end_331} :catch_4c

    goto/16 :goto_25a

    .line 313
    :catch_333
    move-exception v1

    .line 314
    :try_start_334
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 315
    const-string v1, "year"

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_341
    .catch Lorg/json/JSONException; {:try_start_334 .. :try_end_341} :catch_329
    .catch Ljava/lang/Throwable; {:try_start_334 .. :try_end_341} :catch_4c

    goto/16 :goto_25a

    .line 322
    :cond_343
    :try_start_343
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "educationJSONArrayStr"

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_34e
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 326
    const-string v0, "work"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 327
    if-eqz v0, :cond_40c

    .line 328
    :goto_35d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_401

    .line 329
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_368
    .catch Ljava/lang/Throwable; {:try_start_343 .. :try_end_368} :catch_4c

    .line 331
    :try_start_368
    const-string v5, "company"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v7, "name"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    const-string v1, "dept"

    const-string v5, ""

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_384
    .catch Lorg/json/JSONException; {:try_start_368 .. :try_end_384} :catch_3f8
    .catch Ljava/lang/Throwable; {:try_start_368 .. :try_end_384} :catch_4c

    .line 334
    :try_start_384
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v5, "time"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    .line 335
    const-string v5, "start_date"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_39f
    .catch Ljava/lang/Throwable; {:try_start_384 .. :try_end_39f} :catch_3e9
    .catch Lorg/json/JSONException; {:try_start_384 .. :try_end_39f} :catch_3f8

    .line 341
    :goto_39f
    :try_start_39f
    const-string v1, "industry"

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 342
    if-eqz v1, :cond_3c0

    const-string v5, "industryCategory"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c0

    .line 343
    const-string v5, "industry"

    const-string v7, "industryCategory"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    :cond_3c0
    const-string v1, "job"

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 347
    if-eqz v1, :cond_3e1

    const-string v5, "jobCategory"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e1

    .line 348
    const-string v5, "position"

    const-string v7, "jobCategory"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3e1
    .catch Lorg/json/JSONException; {:try_start_39f .. :try_end_3e1} :catch_3f8
    .catch Ljava/lang/Throwable; {:try_start_39f .. :try_end_3e1} :catch_4c

    .line 353
    :cond_3e1
    :goto_3e1
    :try_start_3e1
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3e4
    .catch Ljava/lang/Throwable; {:try_start_3e1 .. :try_end_3e4} :catch_4c

    .line 328
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_35d

    .line 336
    :catch_3e9
    move-exception v1

    .line 337
    :try_start_3ea
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 338
    const-string v1, "start_date"

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3f7
    .catch Lorg/json/JSONException; {:try_start_3ea .. :try_end_3f7} :catch_3f8
    .catch Ljava/lang/Throwable; {:try_start_3ea .. :try_end_3f7} :catch_4c

    goto :goto_39f

    .line 350
    :catch_3f8
    move-exception v1

    .line 351
    :try_start_3f9
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_3e1

    .line 355
    :cond_401
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "workJSONArrayStr"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_40c
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_2a

    .line 359
    iget-object v0, p0, Lcn/sharesdk/renren/Renren;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v6}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_417
    .catch Ljava/lang/Throwable; {:try_start_3f9 .. :try_end_417} :catch_4c

    goto/16 :goto_2a

    :cond_419
    move v1, v2

    goto/16 :goto_23c

    :cond_41c
    move-wide v0, v4

    goto/16 :goto_1a3

    :cond_41f
    move v4, v2

    goto/16 :goto_12
.end method
