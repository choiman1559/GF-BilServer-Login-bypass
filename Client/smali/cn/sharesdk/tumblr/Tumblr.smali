.class public Lcn/sharesdk/tumblr/Tumblr;
.super Lcn/sharesdk/framework/Platform;
.source "Tumblr.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcn/sharesdk/tumblr/Tumblr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/tumblr/Tumblr;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/tumblr/Tumblr;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcn/sharesdk/tumblr/Tumblr;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/tumblr/Tumblr;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/tumblr/Tumblr;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/tumblr/Tumblr;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcn/sharesdk/tumblr/Tumblr;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/tumblr/Tumblr;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcn/sharesdk/tumblr/Tumblr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/tumblr/Tumblr;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcn/sharesdk/tumblr/Tumblr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/tumblr/Tumblr;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcn/sharesdk/tumblr/Tumblr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/tumblr/Tumblr;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcn/sharesdk/tumblr/Tumblr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 7
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcn/sharesdk/tumblr/Tumblr;->isAuthValid()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 77
    invoke-static {p0}, Lcn/sharesdk/tumblr/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tumblr/b;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcn/sharesdk/tumblr/Tumblr;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/tumblr/Tumblr;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/tumblr/Tumblr;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/tumblr/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcn/sharesdk/tumblr/Tumblr;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 80
    iget-object v2, p0, Lcn/sharesdk/tumblr/Tumblr;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getTokenSecret()Ljava/lang/String;

    move-result-object v2

    .line 81
    if-eqz v1, :cond_28

    if-eqz v2, :cond_28

    .line 82
    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/tumblr/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x1

    .line 88
    :goto_27
    return v0

    .line 87
    :cond_28
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/tumblr/Tumblr;->innerAuthorize(ILjava/lang/Object;)V

    .line 88
    const/4 v0, 0x0

    goto :goto_27
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 6
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0}, Lcn/sharesdk/tumblr/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tumblr/b;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcn/sharesdk/tumblr/Tumblr;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/tumblr/Tumblr;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/tumblr/Tumblr;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/tumblr/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v1, Lcn/sharesdk/tumblr/Tumblr$1;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/tumblr/Tumblr$1;-><init>(Lcn/sharesdk/tumblr/Tumblr;Lcn/sharesdk/tumblr/b;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/tumblr/b;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 73
    return-void
.end method

.method protected doCustomerProtocol(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)V
    .registers 8
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
    .line 188
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcn/sharesdk/tumblr/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tumblr/b;

    move-result-object v0

    .line 190
    :try_start_4
    invoke-virtual {v0, p1, p2, p4, p5}, Lcn/sharesdk/tumblr/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcn/sharesdk/tumblr/Tumblr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_11

    .line 193
    iget-object v1, p0, Lcn/sharesdk/tumblr/Tumblr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, p3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_11} :catch_12

    .line 200
    :cond_11
    :goto_11
    return-void

    .line 195
    :catch_12
    move-exception v0

    .line 196
    iget-object v1, p0, Lcn/sharesdk/tumblr/Tumblr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_11

    .line 197
    iget-object v1, p0, Lcn/sharesdk/tumblr/Tumblr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, p3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_11
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 15
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/16 v12, 0x9

    .line 92
    invoke-static {p0}, Lcn/sharesdk/tumblr/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tumblr/b;

    move-result-object v0

    .line 94
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcn/sharesdk/tumblr/Tumblr;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 95
    invoke-virtual {p1, v8}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 97
    :try_start_12
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v10

    .line 98
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v11

    .line 99
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 100
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v7

    .line 101
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Lcn/sharesdk/tumblr/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_33} :catch_59

    move-result-object v0

    .line 115
    :goto_34
    if-nez v0, :cond_64

    .line 116
    iget-object v0, p0, Lcn/sharesdk/tumblr/Tumblr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_48

    .line 117
    iget-object v0, p0, Lcn/sharesdk/tumblr/Tumblr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 126
    :cond_48
    :goto_48
    return-void

    .line 104
    :cond_49
    :try_start_49
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v9

    .line 105
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v11}, Lcn/sharesdk/tumblr/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_57} :catch_59

    move-result-object v0

    goto :goto_34

    .line 108
    :catch_59
    move-exception v0

    .line 109
    iget-object v1, p0, Lcn/sharesdk/tumblr/Tumblr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_48

    .line 110
    iget-object v1, p0, Lcn/sharesdk/tumblr/Tumblr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v12, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_48

    .line 122
    :cond_64
    const-string v1, "ShareParams"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lcn/sharesdk/tumblr/Tumblr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_48

    .line 124
    iget-object v1, p0, Lcn/sharesdk/tumblr/Tumblr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v12, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_48
.end method

.method protected filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    .registers 13
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

    .line 261
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 262
    const-string v0, "type"

    const-string v3, "FOLLOWERS"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v0, "snsplat"

    invoke-virtual {p0}, Lcn/sharesdk/tumblr/Tumblr;->getPlatformId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v0, "snsuid"

    iget-object v3, p0, Lcn/sharesdk/tumblr/Tumblr;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v3}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v0, "current_cursor"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 266
    const-string v0, "total_users"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 267
    if-nez v4, :cond_45

    move-object v0, v1

    .line 300
    :goto_44
    return-object v0

    .line 272
    :cond_45
    const-string v0, "users"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 273
    if-nez v0, :cond_4f

    move-object v0, v1

    .line 274
    goto :goto_44

    .line 276
    :cond_4f
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 277
    check-cast v0, Ljava/util/ArrayList;

    .line 278
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_5e

    move-object v0, v1

    .line 279
    goto :goto_44

    .line 281
    :cond_5e
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_62
    :goto_62
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 282
    if-eqz v0, :cond_62

    .line 285
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 286
    const-string v8, "gender"

    const-string v9, "2"

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v8, "nickname"

    const-string v9, "name"

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v8, "snsUserUrl"

    const-string v9, "url"

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 291
    :cond_9e
    if-eqz v5, :cond_a6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_a8

    :cond_a6
    move-object v0, v1

    .line 292
    goto :goto_44

    .line 296
    :cond_a8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v3

    .line 297
    if-lt v0, v4, :cond_cf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    :goto_c2
    const-string v1, "nextCursor"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v0, "list"

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 300
    goto/16 :goto_44

    .line 297
    :cond_cf
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c2
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
    .line 203
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v1}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 204
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 205
    if-eqz p2, :cond_20

    .line 206
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 209
    iget-object v2, v1, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_20
    :goto_20
    const-string v0, "response"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 216
    if-eqz v0, :cond_36

    .line 217
    const-string v2, "id"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/framework/b/b/f$a;->a:Ljava/lang/String;

    .line 219
    :cond_36
    iput-object p2, v1, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 220
    return-object v1

    .line 210
    :cond_39
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 211
    iget-object v0, v1, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lcn/sharesdk/tumblr/Tumblr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 130
    iget-object v0, p0, Lcn/sharesdk/tumblr/Tumblr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 132
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
    .line 256
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFollowers(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 8
    .param p1, "limit"    # I
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
    const/4 v1, 0x0

    .line 228
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 229
    iget-object v0, p0, Lcn/sharesdk/tumblr/Tumblr;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p3

    .line 231
    :cond_d
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 232
    iget-object v0, p0, Lcn/sharesdk/tumblr/Tumblr;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserName()Ljava/lang/String;

    move-result-object p3

    .line 234
    :cond_19
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    move-object v0, v1

    .line 252
    :goto_20
    return-object v0

    .line 237
    :cond_21
    invoke-static {p0}, Lcn/sharesdk/tumblr/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tumblr/b;

    move-result-object v0

    .line 239
    :try_start_25
    invoke-virtual {v0, p3, p1, p2}, Lcn/sharesdk/tumblr/b;->a(Ljava/lang/String;II)Ljava/util/HashMap;

    move-result-object v0

    .line 240
    if-nez v0, :cond_2d

    move-object v0, v1

    .line 241
    goto :goto_20

    .line 244
    :cond_2d
    const-string v2, "response"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 245
    if-eqz v0, :cond_4f

    .line 246
    const-string v2, "current_cursor"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const/16 v2, 0xb

    invoke-virtual {p0, v2, v0}, Lcn/sharesdk/tumblr/Tumblr;->filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_45} :catch_47

    move-result-object v0

    goto :goto_20

    .line 249
    :catch_47
    move-exception v0

    .line 250
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_4f
    move-object v0, v1

    .line 252
    goto :goto_20
.end method

.method protected getFollowings(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 5
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
    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "cursor"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Lcn/sharesdk/tumblr/Tumblr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 181
    iget-object v0, p0, Lcn/sharesdk/tumblr/Tumblr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 183
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    sget-object v0, Lcn/sharesdk/tumblr/Tumblr;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getPlatformId()I
    .registers 2

    .prologue
    .line 37
    const/16 v0, 0x11

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
    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-string v0, "OAuthConsumerKey"

    invoke-virtual {p0, v0}, Lcn/sharesdk/tumblr/Tumblr;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tumblr/Tumblr;->a:Ljava/lang/String;

    .line 24
    const-string v0, "SecretKey"

    invoke-virtual {p0, v0}, Lcn/sharesdk/tumblr/Tumblr;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tumblr/Tumblr;->b:Ljava/lang/String;

    .line 25
    const-string v0, "CallbackUrl"

    invoke-virtual {p0, v0}, Lcn/sharesdk/tumblr/Tumblr;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tumblr/Tumblr;->c:Ljava/lang/String;

    .line 26
    return-void
.end method

.method protected setNetworkDevinfo()V
    .registers 3

    .prologue
    .line 41
    const-string v0, "consumer_key"

    const-string v1, "OAuthConsumerKey"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/tumblr/Tumblr;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tumblr/Tumblr;->a:Ljava/lang/String;

    .line 42
    const-string v0, "consumer_secret"

    const-string v1, "SecretKey"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/tumblr/Tumblr;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tumblr/Tumblr;->b:Ljava/lang/String;

    .line 43
    const-string v0, "callback_url"

    const-string v1, "CallbackUrl"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/tumblr/Tumblr;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tumblr/Tumblr;->c:Ljava/lang/String;

    .line 44
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/sharesdk/tumblr/Tumblr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 136
    iget-object v0, p0, Lcn/sharesdk/tumblr/Tumblr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 138
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 8
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    .line 141
    invoke-static {p0}, Lcn/sharesdk/tumblr/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tumblr/b;

    move-result-object v0

    .line 143
    :try_start_6
    invoke-virtual {v0, p1}, Lcn/sharesdk/tumblr/b;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 146
    const-string v0, "response"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 147
    if-eqz v0, :cond_ab

    .line 149
    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 150
    if-eqz v0, :cond_ab

    .line 151
    iget-object v2, p0, Lcn/sharesdk/tumblr/Tumblr;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "name"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lcn/sharesdk/tumblr/Tumblr;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "nickname"

    const-string v4, "name"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcn/sharesdk/tumblr/Tumblr;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "gender"

    const-string v4, "2"

    invoke-virtual {v2, v3, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcn/sharesdk/tumblr/Tumblr;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "secretType"

    const-string v4, "-1"

    invoke-virtual {v2, v3, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcn/sharesdk/tumblr/Tumblr;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "favouriteCount"

    const-string v4, "following"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v2, "blogs"

    .line 159
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 160
    if-eqz v0, :cond_ab

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_ab

    .line 161
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 162
    iget-object v2, p0, Lcn/sharesdk/tumblr/Tumblr;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "url"

    const-string v4, "url"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lcn/sharesdk/tumblr/Tumblr;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "snsUserUrl"

    const-string v4, "url"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcn/sharesdk/tumblr/Tumblr;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "shareCount"

    const-string v4, "posts"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_ab
    iget-object v0, p0, Lcn/sharesdk/tumblr/Tumblr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_b6

    .line 170
    iget-object v0, p0, Lcn/sharesdk/tumblr/Tumblr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x8

    invoke-interface {v0, p0, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b6} :catch_b7

    .line 177
    :cond_b6
    :goto_b6
    return-void

    .line 172
    :catch_b7
    move-exception v0

    .line 173
    iget-object v1, p0, Lcn/sharesdk/tumblr/Tumblr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_b6

    .line 174
    iget-object v1, p0, Lcn/sharesdk/tumblr/Tumblr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v5, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_b6
.end method
