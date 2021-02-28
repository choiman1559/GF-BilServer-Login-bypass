.class public Lcn/sharesdk/wechat/friends/Wechat;
.super Lcn/sharesdk/framework/Platform;
.source "Wechat.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcn/sharesdk/wechat/friends/Wechat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/wechat/friends/Wechat;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/wechat/friends/Wechat;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/wechat/friends/Wechat;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/wechat/friends/Wechat;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/wechat/friends/Wechat;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method private c()Z
    .registers 4

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0}, Lcn/sharesdk/wechat/friends/Wechat;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    const-string v2, "refresh_token"

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 181
    new-instance v0, Lcn/sharesdk/wechat/utils/g;

    const/16 v1, 0x16

    invoke-direct {v0, p0, v1}, Lcn/sharesdk/wechat/utils/g;-><init>(Lcn/sharesdk/framework/Platform;I)V

    .line 182
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/wechat/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/g;->a()Z

    move-result v0

    .line 185
    :cond_23
    return v0
.end method

.method static synthetic d(Lcn/sharesdk/wechat/friends/Wechat;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 8
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0}, Lcn/sharesdk/wechat/friends/Wechat;->isClientValid()Z

    move-result v2

    if-nez v2, :cond_17

    .line 190
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_16

    .line 191
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;

    invoke-direct {v2}, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;-><init>()V

    invoke-interface {v1, p0, p1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 215
    :cond_16
    :goto_16
    return v0

    .line 195
    :cond_17
    const/16 v2, 0x9

    if-eq p1, v2, :cond_27

    invoke-virtual {p0}, Lcn/sharesdk/wechat/friends/Wechat;->isAuthValid()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-direct {p0}, Lcn/sharesdk/wechat/friends/Wechat;->c()Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_27
    move v0, v1

    .line 196
    goto :goto_16

    .line 200
    :cond_29
    invoke-virtual {p0}, Lcn/sharesdk/wechat/friends/Wechat;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    const-string v3, "refresh_token"

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 203
    :try_start_39
    new-instance v2, Lcn/sharesdk/wechat/utils/g;

    const/16 v3, 0x16

    invoke-direct {v2, p0, v3}, Lcn/sharesdk/wechat/utils/g;-><init>(Lcn/sharesdk/framework/Platform;I)V

    .line 204
    iget-object v3, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    iget-object v4, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcn/sharesdk/wechat/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v2}, Lcn/sharesdk/wechat/utils/g;->a()Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_4a} :catch_4f

    move-result v2

    .line 206
    if-eqz v2, :cond_57

    move v0, v1

    .line 207
    goto :goto_16

    .line 209
    :catch_4f
    move-exception v1

    .line 210
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 214
    :cond_57
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/wechat/friends/Wechat;->innerAuthorize(ILjava/lang/Object;)V

    goto :goto_16
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 7
    .param p1, "permission"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 119
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 120
    :cond_11
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_23

    .line 121
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "The params of appID or appSecret is missing !"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 165
    :cond_23
    :goto_23
    return-void

    .line 125
    :cond_24
    invoke-static {}, Lcn/sharesdk/wechat/utils/j;->a()Lcn/sharesdk/wechat/utils/j;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/j;->c(Ljava/lang/String;)Z

    .line 127
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/j;->c()Z

    move-result v1

    if-nez v1, :cond_42

    .line 128
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_23

    .line 129
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;-><init>()V

    invoke-interface {v0, p0, v4, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_23

    .line 134
    :cond_42
    new-instance v1, Lcn/sharesdk/wechat/utils/g;

    const/16 v2, 0x16

    invoke-direct {v1, p0, v2}, Lcn/sharesdk/wechat/utils/g;-><init>(Lcn/sharesdk/framework/Platform;I)V

    .line 135
    iget-object v2, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/wechat/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v2, Lcn/sharesdk/wechat/utils/i;

    invoke-direct {v2, p0}, Lcn/sharesdk/wechat/utils/i;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 138
    invoke-virtual {v2, v1}, Lcn/sharesdk/wechat/utils/i;->a(Lcn/sharesdk/wechat/utils/g;)V

    .line 139
    new-instance v1, Lcn/sharesdk/wechat/friends/Wechat$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/wechat/friends/Wechat$1;-><init>(Lcn/sharesdk/wechat/friends/Wechat;)V

    invoke-virtual {v2, v1}, Lcn/sharesdk/wechat/utils/i;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 159
    :try_start_60
    invoke-virtual {v0, v2}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/i;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_23

    .line 160
    :catch_64
    move-exception v0

    .line 161
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_23

    .line 162
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

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
    .line 284
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_9

    .line 285
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 287
    :cond_9
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 6
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/16 v3, 0x9

    .line 219
    const-string v0, "scene"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 220
    invoke-static {}, Lcn/sharesdk/wechat/utils/j;->a()Lcn/sharesdk/wechat/utils/j;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/j;->c(Ljava/lang/String;)Z

    .line 222
    new-instance v1, Lcn/sharesdk/wechat/utils/i;

    invoke-direct {v1, p0}, Lcn/sharesdk/wechat/utils/i;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 223
    iget-boolean v2, p0, Lcn/sharesdk/wechat/friends/Wechat;->c:Z

    if-eqz v2, :cond_2f

    .line 225
    :try_start_1e
    iget-object v2, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v0, v1, p1, v2}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/i;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_23} :catch_24

    .line 241
    :cond_23
    :goto_23
    return-void

    .line 226
    :catch_24
    move-exception v0

    .line 227
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_23

    .line 228
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_23

    .line 232
    :cond_2f
    iget-object v2, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v1, p1, v2}, Lcn/sharesdk/wechat/utils/i;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 234
    :try_start_34
    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/j;->b(Lcn/sharesdk/wechat/utils/i;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_23

    .line 235
    :catch_38
    move-exception v0

    .line 236
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_23

    .line 237
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_23
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
    .line 331
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
    .line 290
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 291
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    .line 292
    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 296
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5a

    .line 297
    iget-object v3, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_22
    :goto_22
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 304
    if-eqz v2, :cond_2d

    .line 305
    iget-object v3, v0, Lcn/sharesdk/framework/b/b/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_2d
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 308
    const-string v4, "title"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v4, "url"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v4, "extInfo"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v4, "content"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v1, "image"

    iget-object v4, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v1, "musicFileUrl"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iput-object v3, v0, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 315
    return-object v0

    .line 298
    :cond_5a
    if-eqz v3, :cond_62

    .line 299
    iget-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 300
    :cond_62
    if-eqz v4, :cond_22

    .line 301
    iget-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 245
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 247
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
    .line 327
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
    .line 323
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
    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 276
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 277
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 279
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    sget-object v0, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .registers 2

    .prologue
    .line 66
    const/16 v0, 0x16

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 335
    iget-boolean v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->c:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 35
    const-string v0, "AppId"

    invoke-virtual {p0, v0}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    .line 36
    const-string v0, "AppSecret"

    invoke-virtual {p0, v0}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    .line 37
    const-string v0, "true"

    const-string v1, "BypassApproval"

    invoke-virtual {p0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->c:Z

    .line 38
    const-string v0, "userName"

    invoke-virtual {p0, v0}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->d:Ljava/lang/String;

    .line 39
    const-string v0, "path"

    invoke-virtual {p0, v0}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->e:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcn/sharesdk/wechat/utils/j;->a()Lcn/sharesdk/wechat/utils/j;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/j;->a(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/j;->b(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_97

    .line 46
    :cond_49
    const-string v0, "WechatMoments"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    .line 47
    const-string v0, "true"

    const-string v1, "WechatMoments"

    const-string v2, "BypassApproval"

    invoke-virtual {p0, v1, v2}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->c:Z

    .line 48
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_98

    .line 49
    const-string v0, "WechatMoments"

    sget-object v1, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->copyDevinfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "AppId"

    invoke-virtual {p0, v0}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    .line 51
    const-string v0, "true"

    const-string v1, "BypassApproval"

    invoke-virtual {p0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->c:Z

    .line 52
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Try to use the dev info of WechatMoments, this will cause Id and SortId field are always 0."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 63
    :cond_97
    :goto_97
    return-void

    .line 55
    :cond_98
    const-string v0, "WechatFavorite"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_97

    .line 57
    const-string v0, "WechatFavorite"

    sget-object v1, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->copyDevinfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "AppId"

    invoke-virtual {p0, v0}, Lcn/sharesdk/wechat/friends/Wechat;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_97
.end method

.method public isClientValid()Z
    .registers 3

    .prologue
    .line 168
    invoke-static {}, Lcn/sharesdk/wechat/utils/j;->a()Lcn/sharesdk/wechat/utils/j;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/j;->c(Ljava/lang/String;)Z

    .line 170
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/j;->c()Z

    move-result v0

    .line 172
    if-eqz v0, :cond_11

    .line 173
    const/4 v0, 0x1

    .line 175
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

    .line 78
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    .line 79
    const-string v0, "app_secret"

    const-string v1, "AppSecret"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_55

    .line 84
    :cond_27
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v5, v0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_90

    .line 86
    invoke-virtual {p0, v5, v4}, Lcn/sharesdk/wechat/friends/Wechat;->copyNetworkDevinfo(II)V

    .line 87
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Try to use the dev info of WechatMoments, this will cause Id and SortId field are always 0."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 99
    :cond_55
    :goto_55
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_8f

    .line 101
    :cond_61
    const-string v0, "app_secret"

    const-string v1, "AppSecret"

    invoke-virtual {p0, v5, v0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    if-eqz v0, :cond_bf

    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_bf

    .line 103
    invoke-virtual {p0, v5, v4}, Lcn/sharesdk/wechat/friends/Wechat;->copyNetworkDevinfo(II)V

    .line 104
    const-string v0, "app_secret"

    const-string v1, "AppSecret"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    .line 105
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Try to use the dev info of WechatMoments, this will cause Id and SortId field are always 0."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 116
    :cond_8f
    :goto_8f
    return-void

    .line 91
    :cond_90
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v6, v0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_55

    .line 93
    invoke-virtual {p0, v6, v4}, Lcn/sharesdk/wechat/friends/Wechat;->copyNetworkDevinfo(II)V

    .line 94
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    .line 95
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_55

    .line 108
    :cond_bf
    const-string v0, "app_secret"

    const-string v1, "AppSecret"

    invoke-virtual {p0, v6, v0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8f

    .line 110
    invoke-virtual {p0, v6, v4}, Lcn/sharesdk/wechat/friends/Wechat;->copyNetworkDevinfo(II)V

    .line 111
    const-string v0, "app_secret"

    const-string v1, "AppSecret"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0."

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
    .line 250
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 251
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 253
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 6
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    .line 256
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 257
    :cond_12
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_22

    .line 258
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "The params of appID or appSecret is missing !"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 273
    :cond_22
    :goto_22
    return-void

    .line 263
    :cond_23
    new-instance v0, Lcn/sharesdk/wechat/utils/g;

    const/16 v1, 0x16

    invoke-direct {v0, p0, v1}, Lcn/sharesdk/wechat/utils/g;-><init>(Lcn/sharesdk/framework/Platform;I)V

    .line 264
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/wechat/friends/Wechat;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/wechat/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :try_start_31
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/g;->a(Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_36} :catch_37

    goto :goto_22

    .line 267
    :catch_37
    move-exception v0

    .line 268
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 269
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_22

    .line 270
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_22
.end method
