.class public Lcn/sharesdk/kaixin/KaiXin;
.super Lcn/sharesdk/framework/Platform;
.source "KaiXin.java"


# static fields
.field public static final NAME:Ljava/lang/String;

.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcn/sharesdk/kaixin/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/16 v0, 0x540e

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/kaixin/KaiXin;->a:Ljava/lang/String;

    .line 27
    const/16 v0, 0x5e74

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/kaixin/KaiXin;->b:Ljava/lang/String;

    .line 28
    const/16 v0, 0x6708

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/kaixin/KaiXin;->c:Ljava/lang/String;

    .line 30
    const-class v0, Lcn/sharesdk/kaixin/KaiXin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/kaixin/KaiXin;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    .line 39
    invoke-static {p0}, Lcn/sharesdk/kaixin/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/kaixin/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->f:Lcn/sharesdk/kaixin/a;

    .line 40
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/kaixin/KaiXin;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/kaixin/KaiXin;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/kaixin/KaiXin;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/kaixin/KaiXin;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/kaixin/KaiXin;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/kaixin/KaiXin;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/kaixin/KaiXin;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/kaixin/KaiXin;)Lcn/sharesdk/kaixin/a;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->f:Lcn/sharesdk/kaixin/a;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/kaixin/KaiXin;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic h(Lcn/sharesdk/kaixin/KaiXin;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 5
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 141
    invoke-virtual {p0}, Lcn/sharesdk/kaixin/KaiXin;->isAuthValid()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 142
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->f:Lcn/sharesdk/kaixin/a;

    iget-object v1, p0, Lcn/sharesdk/kaixin/KaiXin;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/kaixin/a;->a(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->f:Lcn/sharesdk/kaixin/a;

    iget-object v1, p0, Lcn/sharesdk/kaixin/KaiXin;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/kaixin/a;->b(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcn/sharesdk/kaixin/KaiXin;->f:Lcn/sharesdk/kaixin/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/kaixin/a;->c(Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x1

    .line 150
    :goto_20
    return v0

    .line 149
    :cond_21
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/kaixin/KaiXin;->innerAuthorize(ILjava/lang/Object;)V

    .line 150
    const/4 v0, 0x0

    goto :goto_20
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 4
    .param p1, "permission"    # [Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->f:Lcn/sharesdk/kaixin/a;

    iget-object v1, p0, Lcn/sharesdk/kaixin/KaiXin;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/kaixin/a;->a(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->f:Lcn/sharesdk/kaixin/a;

    iget-object v1, p0, Lcn/sharesdk/kaixin/KaiXin;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/kaixin/a;->b(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->f:Lcn/sharesdk/kaixin/a;

    invoke-virtual {v0, p1}, Lcn/sharesdk/kaixin/a;->a([Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->f:Lcn/sharesdk/kaixin/a;

    new-instance v1, Lcn/sharesdk/kaixin/KaiXin$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/kaixin/KaiXin$1;-><init>(Lcn/sharesdk/kaixin/KaiXin;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/kaixin/a;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 98
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
    .line 313
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->f:Lcn/sharesdk/kaixin/a;

    invoke-virtual {v0, p1, p2, p4, p5}, Lcn/sharesdk/kaixin/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_1f

    .line 315
    :cond_e
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1e

    .line 316
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "response is null"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, p3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 332
    :cond_1e
    :goto_1e
    return-void

    .line 321
    :cond_1f
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 322
    :cond_2f
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1e

    .line 324
    iget-object v1, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, p3, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1e

    .line 329
    :cond_47
    iget-object v1, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1e

    .line 330
    iget-object v1, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, p3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_1e
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 7
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/16 v4, 0x9

    .line 102
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 104
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1c

    .line 105
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Share text should not be empty or null!"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 137
    :cond_1c
    :goto_1c
    return-void

    .line 111
    :cond_1d
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/kaixin/KaiXin;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 115
    iget-object v3, p0, Lcn/sharesdk/kaixin/KaiXin;->f:Lcn/sharesdk/kaixin/a;

    invoke-virtual {v3, v0, v1, v2}, Lcn/sharesdk/kaixin/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 117
    if-nez v0, :cond_46

    .line 118
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1c

    .line 119
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, " response is null"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v4, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1c

    .line 124
    :cond_46
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 125
    iget-object v1, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1c

    .line 126
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v4, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1c

    .line 133
    :cond_66
    const-string v1, "ShareParams"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1c

    .line 135
    iget-object v1, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_1c
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
    .line 391
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 392
    const-string v2, "type"

    const-string v3, "FOLLOWING"

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string v2, "snsplat"

    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/kaixin/KaiXin;->getPlatformId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string v2, "snsuid"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/sharesdk/kaixin/KaiXin;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v3}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string v2, "current_cursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 397
    const-string v2, "total"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 398
    if-nez v9, :cond_4c

    .line 399
    const/4 v2, 0x0

    .line 517
    :goto_4b
    return-object v2

    .line 402
    :cond_4c
    const-string v2, "users"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 403
    if-nez v2, :cond_58

    .line 404
    const/4 v2, 0x0

    goto :goto_4b

    .line 406
    :cond_58
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 407
    check-cast v2, Ljava/util/ArrayList;

    .line 408
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_67

    .line 409
    const/4 v2, 0x0

    goto :goto_4b

    .line 411
    :cond_67
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6b
    :goto_6b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_380

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 412
    if-eqz v2, :cond_6b

    .line 415
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 416
    const-string v3, "snsuid"

    const-string v4, "uid"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v3, "nickname"

    const-string v4, "name"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v3, "icon"

    const-string v4, "logo120"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v3, "gender"

    const-string v4, "gender"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://www.kaixin001.com/home/?uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "uid"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 423
    const-string v4, "snsUserUrl"

    invoke-virtual {v12, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v3, "resume"

    const-string v4, "intro"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-wide/16 v6, 0x0

    .line 427
    :try_start_ed
    const-string v3, "birthday"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 428
    sget-object v4, Lcn/sharesdk/kaixin/KaiXin;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1e9

    .line 429
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "19"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x0

    sget-object v7, Lcn/sharesdk/kaixin/KaiXin;->a:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 430
    sget-object v6, Lcn/sharesdk/kaixin/KaiXin;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcn/sharesdk/kaixin/KaiXin;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 431
    const/4 v7, 0x0

    aget-object v7, v6, v7

    .line 432
    const/4 v13, 0x1

    aget-object v13, v6, v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    aget-object v6, v6, v15

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v13, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 433
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "-"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " 00:00:00"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->strToDate(Ljava/lang/String;)J

    move-result-wide v6

    .line 441
    :cond_16e
    :goto_16e
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17d

    .line 442
    const-string v3, "birthday"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17d
    .catch Ljava/lang/Throwable; {:try_start_ed .. :try_end_17d} :catch_24f

    .line 449
    :cond_17d
    :goto_17d
    :try_start_17d
    const-string v3, "education"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 450
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 451
    if-eqz v3, :cond_269

    .line 452
    const/4 v4, 0x0

    move v6, v4

    :goto_18e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v6, v4, :cond_33d

    .line 453
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 454
    const-string v4, "school_type"

    const/4 v14, 0x0

    invoke-virtual {v13, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 455
    const-string v14, "school"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v15, "school"

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 456
    const-string v14, "classes"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v15, "class"

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    const-string v4, "background"

    const/4 v14, 0x0

    invoke-virtual {v13, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1cf
    .catch Ljava/lang/Throwable; {:try_start_17d .. :try_end_1cf} :catch_261

    .line 459
    :try_start_1cf
    const-string v14, "year"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v15, "year"

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v13, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e2
    .catch Ljava/lang/Throwable; {:try_start_1cf .. :try_end_1e2} :catch_259

    .line 464
    :goto_1e2
    :try_start_1e2
    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1e5
    .catch Ljava/lang/Throwable; {:try_start_1e2 .. :try_end_1e5} :catch_261

    .line 452
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_18e

    .line 434
    :cond_1e9
    :try_start_1e9
    sget-object v4, Lcn/sharesdk/kaixin/KaiXin;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16e

    .line 435
    const/4 v4, 0x0

    sget-object v6, Lcn/sharesdk/kaixin/KaiXin;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 436
    sget-object v6, Lcn/sharesdk/kaixin/KaiXin;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcn/sharesdk/kaixin/KaiXin;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 437
    const/4 v7, 0x0

    aget-object v7, v6, v7

    .line 438
    const/4 v13, 0x1

    aget-object v13, v6, v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    aget-object v6, v6, v15

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v13, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 439
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "-"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " 00:00:00"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->strToDate(Ljava/lang/String;)J
    :try_end_24c
    .catch Ljava/lang/Throwable; {:try_start_1e9 .. :try_end_24c} :catch_24f

    move-result-wide v6

    goto/16 :goto_16e

    .line 444
    :catch_24f
    move-exception v3

    .line 445
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto/16 :goto_17d

    .line 460
    :catch_259
    move-exception v4

    .line 461
    :try_start_25a
    const-string v4, "year"

    const/4 v14, 0x0

    invoke-virtual {v13, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_260
    .catch Ljava/lang/Throwable; {:try_start_25a .. :try_end_260} :catch_261

    goto :goto_1e2

    .line 470
    :catch_261
    move-exception v3

    .line 471
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 475
    :cond_269
    :goto_269
    :try_start_269
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 476
    const-string v3, "career"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 477
    if-eqz v2, :cond_361

    .line 478
    const/4 v3, 0x0

    move v6, v3

    :goto_27a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_370

    .line 479
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 480
    const-string v4, "company"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v14, "company"

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 481
    const-string v4, "dept"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v14, "dept"

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "beginmonth"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 483
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_34e

    const-string v3, "00"

    move-object v4, v3

    .line 484
    :goto_2c8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v15, "beginyear"

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2e8
    .catch Ljava/lang/Throwable; {:try_start_269 .. :try_end_2e8} :catch_359

    move-result-object v3

    .line 486
    :try_start_2e9
    const-string v4, "start_date"

    invoke-static {v3}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v13, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2f2
    .catch Ljava/lang/Throwable; {:try_start_2e9 .. :try_end_2f2} :catch_351

    .line 490
    :goto_2f2
    :try_start_2f2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "endmonth"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 491
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_366

    const-string v3, "00"

    move-object v4, v3

    .line 492
    :goto_30b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v15, "endyear"

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_32b
    .catch Ljava/lang/Throwable; {:try_start_2f2 .. :try_end_32b} :catch_359

    move-result-object v3

    .line 494
    :try_start_32c
    const-string v4, "end_date"

    invoke-static {v3}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v13, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_335
    .catch Ljava/lang/Throwable; {:try_start_32c .. :try_end_335} :catch_368

    .line 498
    :goto_335
    :try_start_335
    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_338
    .catch Ljava/lang/Throwable; {:try_start_335 .. :try_end_338} :catch_359

    .line 478
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto/16 :goto_27a

    .line 466
    :cond_33d
    :try_start_33d
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_269

    .line 467
    const-string v3, "educationJSONArrayStr"

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34c
    .catch Ljava/lang/Throwable; {:try_start_33d .. :try_end_34c} :catch_261

    goto/16 :goto_269

    :cond_34e
    move-object v4, v3

    .line 483
    goto/16 :goto_2c8

    .line 487
    :catch_351
    move-exception v3

    .line 488
    :try_start_352
    const-string v3, "start_date"

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_358
    .catch Ljava/lang/Throwable; {:try_start_352 .. :try_end_358} :catch_359

    goto :goto_2f2

    .line 504
    :catch_359
    move-exception v2

    .line 505
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 507
    :cond_361
    :goto_361
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6b

    :cond_366
    move-object v4, v3

    .line 491
    goto :goto_30b

    .line 495
    :catch_368
    move-exception v3

    .line 496
    :try_start_369
    const-string v3, "end_date"

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_335

    .line 500
    :cond_370
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_361

    .line 501
    const-string v2, "workJSONArrayStr"

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37f
    .catch Ljava/lang/Throwable; {:try_start_369 .. :try_end_37f} :catch_359

    goto :goto_361

    .line 509
    :cond_380
    if-eqz v10, :cond_388

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_38b

    .line 510
    :cond_388
    const/4 v2, 0x0

    goto/16 :goto_4b

    .line 513
    :cond_38b
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v8

    .line 514
    if-lt v2, v9, :cond_3b2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 515
    :goto_3a5
    const-string v3, "nextCursor"

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string v2, "list"

    invoke-virtual {v5, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v5

    .line 517
    goto/16 :goto_4b

    .line 514
    :cond_3b2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3a5
.end method

.method protected filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/b/b/f$a;
    .registers 9
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
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 278
    new-instance v3, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v3}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 279
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 280
    if-eqz p2, :cond_77

    .line 282
    const-string v0, "data"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 283
    if-eqz v0, :cond_77

    .line 284
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "rid"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcn/sharesdk/framework/b/b/f$a;->a:Ljava/lang/String;

    .line 286
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "main"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 288
    const-string v2, "pics"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 289
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6f

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6f

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "src"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 290
    iget-object v2, v3, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "src"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_6f
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, v3, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 295
    :cond_77
    return-object v3
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 300
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 302
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
    .line 386
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
    .line 382
    const/4 v0, 0x0

    return-object v0
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

    .line 364
    :try_start_1
    iget-object v1, p0, Lcn/sharesdk/kaixin/KaiXin;->f:Lcn/sharesdk/kaixin/a;

    invoke-virtual {v1, p1, p2, p3}, Lcn/sharesdk/kaixin/a;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 365
    if-nez v1, :cond_a

    .line 377
    :cond_9
    :goto_9
    return-object v0

    .line 369
    :cond_a
    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 373
    const-string v2, "current_cursor"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcn/sharesdk/kaixin/KaiXin;->filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1f} :catch_21

    move-result-object v0

    goto :goto_9

    .line 375
    :catch_21
    move-exception v1

    .line 376
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 9
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 336
    :try_start_1
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->f:Lcn/sharesdk/kaixin/a;

    mul-int v1, p1, p2

    invoke-virtual {v0, p1, v1, p3}, Lcn/sharesdk/kaixin/a;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 337
    if-nez v0, :cond_1d

    .line 338
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1c

    .line 339
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, " response is null"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 360
    :cond_1c
    :goto_1c
    return-void

    .line 344
    :cond_1d
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 345
    iget-object v1, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1c

    .line 346
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 347
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x2

    invoke-interface {v0, p0, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3d} :catch_3e

    goto :goto_1c

    .line 355
    :catch_3e
    move-exception v0

    .line 356
    iget-object v1, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1c

    .line 357
    iget-object v1, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1c

    .line 352
    :cond_49
    :try_start_49
    iget-object v1, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1c

    .line 353
    iget-object v1, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_53} :catch_3e

    goto :goto_1c
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    sget-object v0, Lcn/sharesdk/kaixin/KaiXin;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .registers 2

    .prologue
    .line 56
    const/16 v0, 0x8

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 521
    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "AppKey"

    invoke-virtual {p0, v0}, Lcn/sharesdk/kaixin/KaiXin;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->d:Ljava/lang/String;

    .line 44
    const-string v0, "RedirectUri"

    invoke-virtual {p0, v0}, Lcn/sharesdk/kaixin/KaiXin;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->e:Ljava/lang/String;

    .line 45
    return-void
.end method

.method protected setNetworkDevinfo()V
    .registers 3

    .prologue
    .line 60
    const-string v0, "api_key"

    const-string v1, "AppKey"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/kaixin/KaiXin;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->d:Ljava/lang/String;

    .line 61
    const-string v0, "redirect_uri"

    const-string v1, "RedirectUri"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/kaixin/KaiXin;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->e:Ljava/lang/String;

    .line 62
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 306
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 308
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 12
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 156
    .line 157
    if-nez p1, :cond_20

    .line 158
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->f:Lcn/sharesdk/kaixin/a;

    invoke-virtual {v0}, Lcn/sharesdk/kaixin/a;->a()Ljava/util/HashMap;

    move-result-object v0

    move-object v4, v0

    .line 163
    :goto_d
    if-nez v4, :cond_28

    .line 164
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1f

    .line 165
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, " response is null"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v9, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 275
    :cond_1f
    :goto_1f
    return-void

    .line 160
    :cond_20
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->f:Lcn/sharesdk/kaixin/a;

    invoke-virtual {v0, p1}, Lcn/sharesdk/kaixin/a;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    move-object v4, v0

    goto :goto_d

    .line 170
    :cond_28
    const-string v0, "error"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 171
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1f

    .line 172
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v4}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    invoke-interface {v0, p0, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1f

    .line 179
    :cond_4a
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "%s get user infor response %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v5, Lcn/sharesdk/kaixin/KaiXin;->NAME:Ljava/lang/String;

    aput-object v5, v3, v2

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 181
    if-nez p1, :cond_34d

    .line 182
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "uid"

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "nickname"

    const-string v3, "name"

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "icon"

    const-string v3, "logo120"

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "gender"

    const-string v3, "gender"

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.kaixin001.com/home/?uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcn/sharesdk/kaixin/KaiXin;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "snsUserUrl"

    invoke-virtual {v1, v3, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "resume"

    const-string v3, "intro"

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-wide/16 v0, 0x0

    .line 193
    :try_start_d7
    const-string v3, "birthday"

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 194
    sget-object v5, Lcn/sharesdk/kaixin/KaiXin;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d4

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "19"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v5, Lcn/sharesdk/kaixin/KaiXin;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    sget-object v1, Lcn/sharesdk/kaixin/KaiXin;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcn/sharesdk/kaixin/KaiXin;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 197
    const/4 v3, 0x0

    aget-object v3, v1, v3

    .line 198
    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 207
    :cond_158
    :goto_158
    iget-object v3, p0, Lcn/sharesdk/kaixin/KaiXin;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v5, "birthday"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_163
    .catch Ljava/lang/Throwable; {:try_start_d7 .. :try_end_163} :catch_23a

    .line 213
    :goto_163
    :try_start_163
    const-string v0, "education"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 214
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 215
    if-eqz v0, :cond_254

    move v3, v2

    .line 216
    :goto_173
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_327

    .line 217
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 218
    const-string v1, "school_type"

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 219
    const-string v7, "school"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v8, "school"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    const-string v7, "classes"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v8, "class"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string v1, "background"

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1b4
    .catch Ljava/lang/Throwable; {:try_start_163 .. :try_end_1b4} :catch_24c

    .line 223
    :try_start_1b4
    const-string v7, "year"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v8, "year"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1cd
    .catch Ljava/lang/Throwable; {:try_start_1b4 .. :try_end_1cd} :catch_244

    .line 227
    :goto_1cd
    :try_start_1cd
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1d0
    .catch Ljava/lang/Throwable; {:try_start_1cd .. :try_end_1d0} :catch_24c

    .line 216
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_173

    .line 200
    :cond_1d4
    :try_start_1d4
    sget-object v5, Lcn/sharesdk/kaixin/KaiXin;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_158

    .line 201
    const/4 v0, 0x0

    sget-object v1, Lcn/sharesdk/kaixin/KaiXin;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 202
    sget-object v1, Lcn/sharesdk/kaixin/KaiXin;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcn/sharesdk/kaixin/KaiXin;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 203
    const/4 v3, 0x0

    aget-object v3, v1, v3

    .line 204
    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->strToDate(Ljava/lang/String;)J
    :try_end_237
    .catch Ljava/lang/Throwable; {:try_start_1d4 .. :try_end_237} :catch_23a

    move-result-wide v0

    goto/16 :goto_158

    .line 208
    :catch_23a
    move-exception v0

    .line 209
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto/16 :goto_163

    .line 224
    :catch_244
    move-exception v1

    .line 225
    :try_start_245
    const-string v1, "year"

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_24b
    .catch Ljava/lang/Throwable; {:try_start_245 .. :try_end_24b} :catch_24c

    goto :goto_1cd

    .line 233
    :catch_24c
    move-exception v0

    .line 234
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 238
    :cond_254
    :goto_254
    :try_start_254
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 239
    const-string v0, "career"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 240
    if-eqz v0, :cond_34d

    move v3, v2

    .line 241
    :goto_264
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_362

    .line 242
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 243
    const-string v2, "company"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v7, "company"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v2, "dept"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v7, "dept"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "beginmonth"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_33a

    const-string v1, "00"

    move-object v2, v1

    .line 247
    :goto_2b2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v8, "beginyear"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2d2
    .catch Ljava/lang/Throwable; {:try_start_254 .. :try_end_2d2} :catch_345

    move-result-object v1

    .line 249
    :try_start_2d3
    const-string v2, "start_date"

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2dc
    .catch Ljava/lang/Throwable; {:try_start_2d3 .. :try_end_2dc} :catch_33d

    .line 253
    :goto_2dc
    :try_start_2dc
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "endmonth"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_358

    const-string v1, "00"

    move-object v2, v1

    .line 255
    :goto_2f5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v8, "endyear"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_315
    .catch Ljava/lang/Throwable; {:try_start_2dc .. :try_end_315} :catch_345

    move-result-object v1

    .line 257
    :try_start_316
    const-string v2, "end_date"

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_31f
    .catch Ljava/lang/Throwable; {:try_start_316 .. :try_end_31f} :catch_35a

    .line 261
    :goto_31f
    :try_start_31f
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_322
    .catch Ljava/lang/Throwable; {:try_start_31f .. :try_end_322} :catch_345

    .line 241
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_264

    .line 229
    :cond_327
    :try_start_327
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_254

    .line 230
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "educationJSONArrayStr"

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_338
    .catch Ljava/lang/Throwable; {:try_start_327 .. :try_end_338} :catch_24c

    goto/16 :goto_254

    :cond_33a
    move-object v2, v1

    .line 246
    goto/16 :goto_2b2

    .line 250
    :catch_33d
    move-exception v1

    .line 251
    :try_start_33e
    const-string v1, "start_date"

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_344
    .catch Ljava/lang/Throwable; {:try_start_33e .. :try_end_344} :catch_345

    goto :goto_2dc

    .line 267
    :catch_345
    move-exception v0

    .line 268
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 272
    :cond_34d
    :goto_34d
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1f

    .line 273
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v9, v4}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto/16 :goto_1f

    :cond_358
    move-object v2, v1

    .line 254
    goto :goto_2f5

    .line 258
    :catch_35a
    move-exception v1

    .line 259
    :try_start_35b
    const-string v1, "end_date"

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_31f

    .line 263
    :cond_362
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_34d

    .line 264
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "workJSONArrayStr"

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_373
    .catch Ljava/lang/Throwable; {:try_start_35b .. :try_end_373} :catch_345

    goto :goto_34d
.end method
