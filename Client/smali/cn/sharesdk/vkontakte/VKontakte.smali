.class public Lcn/sharesdk/vkontakte/VKontakte;
.super Lcn/sharesdk/framework/Platform;
.source "VKontakte.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcn/sharesdk/vkontakte/VKontakte;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/vkontakte/VKontakte;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/vkontakte/VKontakte;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/vkontakte/VKontakte;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic h(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic i(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic j(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic k(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic l(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic m(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic n(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 5
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcn/sharesdk/vkontakte/VKontakte;->isAuthValid()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 84
    invoke-static {p0}, Lcn/sharesdk/vkontakte/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/vkontakte/b;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcn/sharesdk/vkontakte/VKontakte;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/vkontakte/b;->a(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcn/sharesdk/vkontakte/VKontakte;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/vkontakte/b;->b(Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x1

    .line 91
    :goto_19
    return v0

    .line 90
    :cond_1a
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/vkontakte/VKontakte;->innerAuthorize(ILjava/lang/Object;)V

    .line 91
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 4
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0}, Lcn/sharesdk/vkontakte/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/vkontakte/b;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcn/sharesdk/vkontakte/VKontakte;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/vkontakte/b;->a(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, p1}, Lcn/sharesdk/vkontakte/b;->a([Ljava/lang/String;)V

    .line 48
    new-instance v1, Lcn/sharesdk/vkontakte/VKontakte$1;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/vkontakte/VKontakte$1;-><init>(Lcn/sharesdk/vkontakte/VKontakte;Lcn/sharesdk/vkontakte/b;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/vkontakte/b;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 80
    return-void
.end method

.method protected doCustomerProtocol(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)V
    .registers 7
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
    .line 267
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_9

    .line 268
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 270
    :cond_9
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 13
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    .line 96
    :try_start_0
    invoke-static {p0}, Lcn/sharesdk/vkontakte/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/vkontakte/b;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcn/sharesdk/vkontakte/VKontakte;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcn/sharesdk/vkontakte/VKontakte;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {p1, v3}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->isFriend()Z

    move-result v2

    .line 101
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getGroupId()Ljava/lang/String;

    move-result-object v6

    .line 104
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 105
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getLatitude()F

    move-result v8

    .line 106
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getLongitude()F

    move-result v9

    .line 107
    new-instance v10, Lcn/sharesdk/vkontakte/VKontakte$2;

    invoke-direct {v10, p0, p1}, Lcn/sharesdk/vkontakte/VKontakte$2;-><init>(Lcn/sharesdk/vkontakte/VKontakte;Lcn/sharesdk/framework/Platform$ShareParams;)V

    invoke-virtual/range {v0 .. v10}, Lcn/sharesdk/vkontakte/b;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFLcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 139
    :cond_3a
    :goto_3a
    return-void

    .line 134
    :catch_3b
    move-exception v0

    .line 135
    iget-object v1, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_3a

    .line 136
    iget-object v1, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_3a
.end method

.method protected filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    .registers 15
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
    .line 330
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 331
    const-string v0, "type"

    const-string v1, "FRIENDS"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v0, "snsplat"

    invoke-virtual {p0}, Lcn/sharesdk/vkontakte/VKontakte;->getPlatformId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v0, "snsuid"

    iget-object v1, p0, Lcn/sharesdk/vkontakte/VKontakte;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v0, "current_count"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 335
    const-string v0, "current_offset"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 338
    const-string v0, "response"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 339
    if-nez v0, :cond_4a

    .line 340
    const/4 v0, 0x0

    .line 422
    :goto_49
    return-object v0

    .line 342
    :cond_4a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 343
    check-cast v0, Ljava/util/ArrayList;

    .line 344
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_59

    .line 345
    const/4 v0, 0x0

    goto :goto_49

    .line 347
    :cond_59
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5d
    :goto_5d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_246

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 348
    if-eqz v0, :cond_5d

    .line 351
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 352
    const-string v1, "snsuid"

    const-string v8, "uid"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v1, "first_name"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 354
    const-string v8, "last_name"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 355
    const-string v9, "nickname"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v1, "icon"

    const-string v8, "photo_max_orig"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v1, "sex"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 358
    const-string v8, "gender"

    const/4 v9, 0x2

    if-ne v1, v9, :cond_1ba

    const-string v1, "0"

    :goto_d1
    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v1, "snsUserUrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://vk.com/id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "uid"

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v1, "resume"

    const-string v8, "status"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :try_start_105
    const-string v1, "bdate"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    .line 363
    const-string v1, "bdate"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 364
    const-string v1, "[.]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x2

    aget-object v8, v0, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "-"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "-"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x0

    aget-object v0, v0, v8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    const-string v1, "birthday"

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->dateStrToLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_154
    .catch Ljava/lang/Throwable; {:try_start_105 .. :try_end_154} :catch_1c5

    .line 373
    :cond_154
    :goto_154
    const/4 v1, 0x0

    .line 374
    :try_start_155
    const-string v0, "universities"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 375
    if-eqz v0, :cond_1ce

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1ce

    .line 376
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 377
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_16e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ce

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 378
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 379
    const-string v10, "school_type"

    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v10, "school"

    const-string v11, "name"

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v10, "classes"

    const-string v11, "chair_name"

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v0, "background"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1ac
    .catch Ljava/lang/Throwable; {:try_start_155 .. :try_end_1ac} :catch_1ad

    goto :goto_16e

    .line 408
    :catch_1ad
    move-exception v0

    .line 409
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 411
    :cond_1b5
    :goto_1b5
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5d

    .line 358
    :cond_1ba
    const/4 v9, 0x1

    if-ne v1, v9, :cond_1c1

    const-string v1, "1"

    goto/16 :goto_d1

    :cond_1c1
    const-string v1, "2"

    goto/16 :goto_d1

    .line 368
    :catch_1c5
    move-exception v0

    .line 369
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_154

    .line 388
    :cond_1ce
    :try_start_1ce
    const-string v0, "schools"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 389
    if-eqz v0, :cond_290

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_290

    .line 390
    if-nez v1, :cond_1e5

    .line 391
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 393
    :cond_1e5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1e9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 394
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 395
    const-string v10, "school_type"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string v10, "school"

    const-string v11, "name"

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string v0, "background"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e9

    :cond_21d
    move-object v0, v1

    .line 402
    :goto_21e
    if-eqz v0, :cond_1b5

    .line 403
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 404
    const-string v8, "list"

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 406
    const-string v1, "educationJSONArrayStr"

    const/16 v8, 0x8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_244
    .catch Ljava/lang/Throwable; {:try_start_1ce .. :try_end_244} :catch_1ad

    goto/16 :goto_1b5

    .line 413
    :cond_246
    if-eqz v5, :cond_24e

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_251

    .line 414
    :cond_24e
    const/4 v0, 0x0

    goto/16 :goto_49

    .line 418
    :cond_251
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v4

    .line 419
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v3, v1, :cond_27c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    :goto_26f
    const-string v1, "nextCursor"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string v0, "list"

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 422
    goto/16 :goto_49

    .line 419
    :cond_27c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_26f

    :cond_290
    move-object v0, v1

    goto :goto_21e
.end method

.method protected filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/b/b/f$a;
    .registers 7
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
    .line 273
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v1}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 274
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 278
    iget-object v0, v1, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_1e
    :goto_1e
    if-eqz p2, :cond_36

    .line 284
    const-string v0, "response"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 285
    if-eqz v0, :cond_36

    .line 286
    const-string v2, "post_id"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/framework/b/b/f$a;->a:Ljava/lang/String;

    .line 289
    :cond_36
    iput-object p2, v1, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 290
    return-object v1

    .line 279
    :cond_39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 280
    iget-object v2, v1, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 143
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 145
    :cond_a
    return-void
.end method

.method protected getBilaterals(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 8
    .param p1, "count"    # I
    .param p2, "offset"    # I
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

    .line 302
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 303
    iget-object v1, p0, Lcn/sharesdk/vkontakte/VKontakte;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p3

    .line 305
    :cond_d
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 306
    iget-object v1, p0, Lcn/sharesdk/vkontakte/VKontakte;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getUserName()Ljava/lang/String;

    move-result-object p3

    .line 308
    :cond_19
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 325
    :cond_1f
    :goto_1f
    return-object v0

    .line 313
    :cond_20
    :try_start_20
    invoke-static {p0}, Lcn/sharesdk/vkontakte/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/vkontakte/b;

    move-result-object v1

    .line 314
    invoke-virtual {v1, p3, p1, p2}, Lcn/sharesdk/vkontakte/b;->a(Ljava/lang/String;II)Ljava/util/HashMap;

    move-result-object v1

    .line 315
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1f

    .line 319
    const-string v2, "current_count"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v2, "current_offset"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const/16 v2, 0xa

    invoke-virtual {p0, v2, v1}, Lcn/sharesdk/vkontakte/VKontakte;->filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_47} :catch_49

    move-result-object v0

    goto :goto_1f

    .line 322
    :catch_49
    move-exception v1

    .line 323
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_1f
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
    .line 298
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFollowings(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 5
    .param p1, "count"    # I
    .param p2, "offset"    # I
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
    .line 294
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "cursor"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 260
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 262
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    sget-object v0, Lcn/sharesdk/vkontakte/VKontakte;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getPlatformId()I
    .registers 2

    .prologue
    .line 37
    const/16 v0, 0x24

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 426
    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string v0, "ApplicationId"

    invoke-virtual {p0, v0}, Lcn/sharesdk/vkontakte/VKontakte;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method protected setNetworkDevinfo()V
    .registers 3

    .prologue
    .line 41
    const-string v0, "application_id"

    const-string v1, "ApplicationId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/vkontakte/VKontakte;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->a:Ljava/lang/String;

    .line 42
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 149
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 151
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 11
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/16 v7, 0x8

    const/4 v0, 0x0

    .line 154
    .line 155
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gez v2, :cond_14

    .line 156
    :cond_d
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p1

    move v0, v1

    .line 160
    :cond_14
    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gez v2, :cond_2d

    .line 161
    :cond_1c
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_2c

    .line 162
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VK account is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v7, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 256
    :cond_2c
    :goto_2c
    return-void

    .line 169
    :cond_2d
    :try_start_2d
    invoke-static {p0}, Lcn/sharesdk/vkontakte/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/vkontakte/b;

    move-result-object v2

    .line 170
    invoke-virtual {v2, p1}, Lcn/sharesdk/vkontakte/b;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 171
    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-gtz v3, :cond_59

    .line 172
    :cond_3d
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_2c

    .line 173
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_4d} :catch_4e

    goto :goto_2c

    .line 251
    :catch_4e
    move-exception v0

    .line 252
    iget-object v1, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_2c

    .line 253
    iget-object v1, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v7, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_2c

    .line 179
    :cond_59
    if-eqz v0, :cond_1c0

    .line 180
    :try_start_5b
    const-string v0, "first_name"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string v3, "last_name"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 182
    iget-object v4, p0, Lcn/sharesdk/vkontakte/VKontakte;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v5, "nickname"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "icon"

    const-string v4, "photo_max_orig"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v0, "sex"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 185
    iget-object v3, p0, Lcn/sharesdk/vkontakte/VKontakte;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v4, "gender"

    if-ne v0, v8, :cond_1cd

    const-string v0, "0"

    :goto_b2
    invoke-virtual {v3, v4, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "snsUserUrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://vk.com/id"

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

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "resume"

    const-string v3, "status"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "snsUserLevel"

    const-string v3, "verified"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fb
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_fb} :catch_4e

    .line 190
    :try_start_fb
    const-string v0, "bdate"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 191
    const-string v1, "[.]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcn/sharesdk/vkontakte/VKontakte;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "birthday"

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->dateStrToLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_144
    .catch Ljava/lang/Throwable; {:try_start_fb .. :try_end_144} :catch_1d7

    .line 198
    :goto_144
    :try_start_144
    const-string v0, "counters"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 199
    if-eqz v0, :cond_15f

    .line 200
    iget-object v1, p0, Lcn/sharesdk/vkontakte/VKontakte;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "followerCount"

    const-string v4, "followers"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15f
    .catch Ljava/lang/Throwable; {:try_start_144 .. :try_end_15f} :catch_4e

    .line 204
    :cond_15f
    const/4 v1, 0x0

    .line 206
    :try_start_160
    const-string v0, "universities"

    .line 207
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 208
    if-eqz v0, :cond_1e1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1e1

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_179
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 211
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 212
    const-string v5, "school_type"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v5, "school"

    const-string v6, "name"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v5, "classes"

    const-string v6, "chair_name"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v0, "background"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b7
    .catch Ljava/lang/Throwable; {:try_start_160 .. :try_end_1b7} :catch_1b8

    goto :goto_179

    .line 243
    :catch_1b8
    move-exception v0

    .line 244
    :try_start_1b9
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 248
    :cond_1c0
    :goto_1c0
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_2c

    .line 249
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto/16 :goto_2c

    .line 185
    :cond_1cd
    if-ne v0, v1, :cond_1d3

    const-string v0, "1"

    goto/16 :goto_b2

    :cond_1d3
    const-string v0, "2"

    goto/16 :goto_b2

    .line 194
    :catch_1d7
    move-exception v0

    .line 195
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_1df
    .catch Ljava/lang/Throwable; {:try_start_1b9 .. :try_end_1df} :catch_4e

    goto/16 :goto_144

    .line 222
    :cond_1e1
    :try_start_1e1
    const-string v0, "schools"

    .line 223
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 224
    if-eqz v0, :cond_25b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_25b

    .line 225
    if-nez v1, :cond_1f8

    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    :cond_1f8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1fc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_230

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 229
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 230
    const-string v5, "school_type"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v5, "school"

    const-string v6, "name"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v0, "background"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1fc

    :cond_230
    move-object v0, v1

    .line 237
    :goto_231
    if-eqz v0, :cond_1c0

    .line 238
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 239
    const-string v3, "list"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcn/sharesdk/vkontakte/VKontakte;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "educationJSONArrayStr"

    const/16 v4, 0x8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_259
    .catch Ljava/lang/Throwable; {:try_start_1e1 .. :try_end_259} :catch_1b8

    goto/16 :goto_1c0

    :cond_25b
    move-object v0, v1

    goto :goto_231
.end method
