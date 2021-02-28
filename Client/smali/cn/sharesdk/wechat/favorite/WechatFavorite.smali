.class public Lcn/sharesdk/wechat/favorite/WechatFavorite;
.super Lcn/sharesdk/framework/Platform;
.source "WechatFavorite.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcn/sharesdk/wechat/favorite/WechatFavorite;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/wechat/favorite/WechatFavorite;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/wechat/favorite/WechatFavorite;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/wechat/favorite/WechatFavorite;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/wechat/favorite/WechatFavorite;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method private c()Z
    .registers 4

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    const-string v2, "refresh_token"

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 166
    new-instance v0, Lcn/sharesdk/wechat/utils/g;

    const/16 v1, 0x25

    invoke-direct {v0, p0, v1}, Lcn/sharesdk/wechat/utils/g;-><init>(Lcn/sharesdk/framework/Platform;I)V

    .line 167
    iget-object v1, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/wechat/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/g;->a()Z

    move-result v0

    .line 170
    :cond_23
    return v0
.end method

.method static synthetic d(Lcn/sharesdk/wechat/favorite/WechatFavorite;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 7
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 174
    invoke-static {}, Lcn/sharesdk/wechat/utils/j;->a()Lcn/sharesdk/wechat/utils/j;

    move-result-object v2

    .line 175
    iget-object v3, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/sharesdk/wechat/utils/j;->c(Ljava/lang/String;)Z

    .line 176
    invoke-virtual {v2}, Lcn/sharesdk/wechat/utils/j;->c()Z

    move-result v3

    .line 177
    if-nez v3, :cond_20

    .line 178
    iget-object v1, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1f

    .line 179
    iget-object v1, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;

    invoke-direct {v2}, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;-><init>()V

    invoke-interface {v1, p0, p1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 192
    :cond_1f
    :goto_1f
    return v0

    .line 182
    :cond_20
    invoke-virtual {v2}, Lcn/sharesdk/wechat/utils/j;->d()Z

    move-result v2

    if-nez v2, :cond_35

    .line 183
    iget-object v2, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v2, :cond_1f

    .line 184
    iget-object v2, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v3, Lcn/sharesdk/wechat/utils/WechatTimelineNotSupportedException;

    invoke-direct {v3}, Lcn/sharesdk/wechat/utils/WechatTimelineNotSupportedException;-><init>()V

    invoke-interface {v2, p0, v1, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1f

    .line 188
    :cond_35
    const/16 v2, 0x9

    if-eq p1, v2, :cond_45

    invoke-virtual {p0}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->isAuthValid()Z

    move-result v2

    if-nez v2, :cond_45

    invoke-direct {p0}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->c()Z

    move-result v2

    if-eqz v2, :cond_47

    :cond_45
    move v0, v1

    .line 189
    goto :goto_1f

    .line 191
    :cond_47
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->innerAuthorize(ILjava/lang/Object;)V

    goto :goto_1f
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 7
    .param p1, "permission"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 108
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 109
    :cond_11
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_23

    .line 110
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "The params of appID or appSecret is missing !"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 161
    :cond_23
    :goto_23
    return-void

    .line 114
    :cond_24
    invoke-static {}, Lcn/sharesdk/wechat/utils/j;->a()Lcn/sharesdk/wechat/utils/j;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/j;->c(Ljava/lang/String;)Z

    .line 116
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/j;->c()Z

    move-result v1

    if-nez v1, :cond_42

    .line 117
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_23

    .line 118
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;-><init>()V

    invoke-interface {v0, p0, v4, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_23

    .line 121
    :cond_42
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/j;->d()Z

    move-result v1

    if-nez v1, :cond_57

    .line 122
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_23

    .line 123
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Lcn/sharesdk/wechat/utils/WechatTimelineNotSupportedException;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WechatTimelineNotSupportedException;-><init>()V

    invoke-interface {v0, p0, v4, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_23

    .line 128
    :cond_57
    new-instance v1, Lcn/sharesdk/wechat/utils/g;

    const/16 v2, 0x25

    invoke-direct {v1, p0, v2}, Lcn/sharesdk/wechat/utils/g;-><init>(Lcn/sharesdk/framework/Platform;I)V

    .line 129
    iget-object v2, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/wechat/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v2, Lcn/sharesdk/wechat/utils/i;

    invoke-direct {v2, p0}, Lcn/sharesdk/wechat/utils/i;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 132
    invoke-virtual {v2, v1}, Lcn/sharesdk/wechat/utils/i;->a(Lcn/sharesdk/wechat/utils/g;)V

    .line 133
    new-instance v1, Lcn/sharesdk/wechat/favorite/WechatFavorite$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/wechat/favorite/WechatFavorite$1;-><init>(Lcn/sharesdk/wechat/favorite/WechatFavorite;)V

    invoke-virtual {v2, v1}, Lcn/sharesdk/wechat/utils/i;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 154
    :try_start_75
    invoke-virtual {v0, v2}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/i;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_23

    .line 155
    :catch_79
    move-exception v0

    .line 156
    iget-object v1, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_23

    .line 157
    iget-object v1, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_23
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
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_9

    .line 268
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 270
    :cond_9
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 5
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    .line 207
    const-string v0, "scene"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    invoke-static {}, Lcn/sharesdk/wechat/utils/j;->a()Lcn/sharesdk/wechat/utils/j;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/j;->c(Ljava/lang/String;)Z

    .line 210
    new-instance v1, Lcn/sharesdk/wechat/utils/i;

    invoke-direct {v1, p0}, Lcn/sharesdk/wechat/utils/i;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 211
    iget-object v2, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v1, p1, v2}, Lcn/sharesdk/wechat/utils/i;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 213
    :try_start_1d
    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/j;->b(Lcn/sharesdk/wechat/utils/i;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_21

    .line 224
    :cond_20
    :goto_20
    return-void

    .line 219
    :catch_21
    move-exception v0

    .line 220
    iget-object v1, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_20

    .line 221
    iget-object v1, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_20
.end method

.method protected filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    .registers 4
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
    .line 314
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return-object v0
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
    .line 273
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 274
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    .line 275
    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v3

    .line 278
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 279
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5a

    .line 280
    iget-object v3, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_22
    :goto_22
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 287
    if-eqz v2, :cond_2d

    .line 288
    iget-object v3, v0, Lcn/sharesdk/framework/b/b/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_2d
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 291
    const-string v4, "title"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v4, "url"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v4, "extInfo"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v4, "content"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v1, "image"

    iget-object v4, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v1, "musicFileUrl"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iput-object v3, v0, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 298
    return-object v0

    .line 281
    :cond_5a
    if-eqz v3, :cond_62

    .line 282
    iget-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 283
    :cond_62
    if-eqz v4, :cond_22

    .line 284
    iget-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 228
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 230
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
    .line 310
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
    .line 306
    const/4 v0, 0x0

    return-object v0
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
    .line 302
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 260
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 262
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    sget-object v0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .registers 2

    .prologue
    .line 55
    const/16 v0, 0x25

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 33
    const-string v0, "AppId"

    invoke-virtual {p0, v0}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    .line 34
    const-string v0, "AppSecret"

    invoke-virtual {p0, v0}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->b:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_4d

    .line 38
    :cond_1d
    const-string v0, "Wechat"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4e

    .line 40
    const-string v0, "Wechat"

    sget-object v1, Lcn/sharesdk/wechat/favorite/WechatFavorite;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->copyDevinfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "AppId"

    invoke-virtual {p0, v0}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Try to use the dev info of Wechat, this will cause Id and SortId field are always 0."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 52
    :cond_4d
    :goto_4d
    return-void

    .line 44
    :cond_4e
    const-string v0, "WechatMoments"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4d

    .line 46
    const-string v0, "WechatMoments"

    sget-object v1, Lcn/sharesdk/wechat/favorite/WechatFavorite;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->copyDevinfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "AppId"

    invoke-virtual {p0, v0}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Try to use the dev info of WechatMoments, this will cause Id and SortId field are always 0."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_4d
.end method

.method public isClientValid()Z
    .registers 3

    .prologue
    .line 196
    invoke-static {}, Lcn/sharesdk/wechat/utils/j;->a()Lcn/sharesdk/wechat/utils/j;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/j;->c(Ljava/lang/String;)Z

    .line 198
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/j;->c()Z

    move-result v0

    .line 200
    if-eqz v0, :cond_11

    .line 201
    const/4 v0, 0x1

    .line 203
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected setNetworkDevinfo()V
    .registers 8

    .prologue
    const/16 v6, 0x25

    const/16 v5, 0x17

    const/16 v4, 0x16

    const/4 v3, 0x0

    .line 67
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    .line 68
    const-string v0, "app_secret"

    const-string v1, "AppSecret"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->b:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_55

    .line 73
    :cond_27
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v4, v0, v1}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_90

    .line 75
    invoke-virtual {p0, v4, v6}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->copyNetworkDevinfo(II)V

    .line 76
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    .line 77
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Try to use the dev info of Wechat, this will cause Id and SortId field are always 0."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 88
    :cond_55
    :goto_55
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->b:Ljava/lang/String;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_8f

    .line 90
    :cond_61
    const-string v0, "app_secret"

    const-string v1, "AppSecret"

    invoke-virtual {p0, v4, v0, v1}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->b:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->b:Ljava/lang/String;

    if-eqz v0, :cond_bf

    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_bf

    .line 92
    invoke-virtual {p0, v4, v6}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->copyNetworkDevinfo(II)V

    .line 93
    const-string v0, "app_secret"

    const-string v1, "AppSecret"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->b:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Try to use the dev info of Wechat, this will cause Id and SortId field are always 0."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 105
    :cond_8f
    :goto_8f
    return-void

    .line 80
    :cond_90
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v5, v0, v1}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_55

    .line 82
    invoke-virtual {p0, v5, v6}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->copyNetworkDevinfo(II)V

    .line 83
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    .line 84
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Try to use the dev info of WechatMoments, this will cause Id and SortId field are always 0."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_55

    .line 97
    :cond_bf
    const-string v0, "app_secret"

    const-string v1, "AppSecret"

    invoke-virtual {p0, v5, v0, v1}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->b:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->b:Ljava/lang/String;

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8f

    .line 99
    invoke-virtual {p0, v5, v6}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->copyNetworkDevinfo(II)V

    .line 100
    const-string v0, "app_secret"

    const-string v1, "AppSecret"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/favorite/WechatFavorite;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->b:Ljava/lang/String;

    .line 101
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Try to use the dev info of WechatMoments, this will cause Id and SortId field are always 0."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_8f
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 233
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 234
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 236
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 6
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    .line 239
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 240
    :cond_12
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_22

    .line 241
    iget-object v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "The params of appID or appSecret is missing !"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 256
    :cond_22
    :goto_22
    return-void

    .line 246
    :cond_23
    new-instance v0, Lcn/sharesdk/wechat/utils/g;

    const/16 v1, 0x25

    invoke-direct {v0, p0, v1}, Lcn/sharesdk/wechat/utils/g;-><init>(Lcn/sharesdk/framework/Platform;I)V

    .line 247
    iget-object v1, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/wechat/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :try_start_31
    iget-object v1, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/g;->a(Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_36} :catch_37

    goto :goto_22

    .line 250
    :catch_37
    move-exception v0

    .line 251
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 252
    iget-object v1, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_22

    .line 253
    iget-object v1, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_22
.end method
