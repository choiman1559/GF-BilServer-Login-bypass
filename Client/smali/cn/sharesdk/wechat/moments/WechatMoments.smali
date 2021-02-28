.class public Lcn/sharesdk/wechat/moments/WechatMoments;
.super Lcn/sharesdk/framework/Platform;
.source "WechatMoments.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcn/sharesdk/wechat/moments/WechatMoments;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/wechat/moments/WechatMoments;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/wechat/moments/WechatMoments;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/wechat/moments/WechatMoments;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/wechat/moments/WechatMoments;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/wechat/moments/WechatMoments;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method private c()Z
    .registers 4

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0}, Lcn/sharesdk/wechat/moments/WechatMoments;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    const-string v2, "refresh_token"

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 171
    new-instance v0, Lcn/sharesdk/wechat/utils/g;

    const/16 v1, 0x17

    invoke-direct {v0, p0, v1}, Lcn/sharesdk/wechat/utils/g;-><init>(Lcn/sharesdk/framework/Platform;I)V

    .line 172
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/wechat/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/g;->a()Z

    move-result v0

    .line 175
    :cond_23
    return v0
.end method

.method static synthetic d(Lcn/sharesdk/wechat/moments/WechatMoments;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

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

    .line 179
    invoke-static {}, Lcn/sharesdk/wechat/utils/j;->a()Lcn/sharesdk/wechat/utils/j;

    move-result-object v2

    .line 180
    iget-object v3, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/sharesdk/wechat/utils/j;->c(Ljava/lang/String;)Z

    .line 181
    invoke-virtual {v2}, Lcn/sharesdk/wechat/utils/j;->c()Z

    move-result v3

    .line 182
    if-nez v3, :cond_20

    .line 183
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1f

    .line 184
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;

    invoke-direct {v2}, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;-><init>()V

    invoke-interface {v1, p0, p1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 197
    :cond_1f
    :goto_1f
    return v0

    .line 187
    :cond_20
    invoke-virtual {v2}, Lcn/sharesdk/wechat/utils/j;->d()Z

    move-result v2

    if-nez v2, :cond_35

    .line 188
    iget-object v2, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v2, :cond_1f

    .line 189
    iget-object v2, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v3, Lcn/sharesdk/wechat/utils/WechatTimelineNotSupportedException;

    invoke-direct {v3}, Lcn/sharesdk/wechat/utils/WechatTimelineNotSupportedException;-><init>()V

    invoke-interface {v2, p0, v1, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1f

    .line 193
    :cond_35
    const/16 v2, 0x9

    if-eq p1, v2, :cond_45

    invoke-virtual {p0}, Lcn/sharesdk/wechat/moments/WechatMoments;->isAuthValid()Z

    move-result v2

    if-nez v2, :cond_45

    invoke-direct {p0}, Lcn/sharesdk/wechat/moments/WechatMoments;->c()Z

    move-result v2

    if-eqz v2, :cond_47

    :cond_45
    move v0, v1

    .line 194
    goto :goto_1f

    .line 196
    :cond_47
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/wechat/moments/WechatMoments;->innerAuthorize(ILjava/lang/Object;)V

    goto :goto_1f
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 7
    .param p1, "permission"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 113
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 114
    :cond_11
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_23

    .line 115
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "The params of appID or appSecret is missing !"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 166
    :cond_23
    :goto_23
    return-void

    .line 120
    :cond_24
    invoke-static {}, Lcn/sharesdk/wechat/utils/j;->a()Lcn/sharesdk/wechat/utils/j;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/j;->c(Ljava/lang/String;)Z

    .line 122
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/j;->c()Z

    move-result v1

    if-nez v1, :cond_42

    .line 123
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_23

    .line 124
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;-><init>()V

    invoke-interface {v0, p0, v4, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_23

    .line 127
    :cond_42
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/j;->d()Z

    move-result v1

    if-nez v1, :cond_57

    .line 128
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_23

    .line 129
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Lcn/sharesdk/wechat/utils/WechatTimelineNotSupportedException;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WechatTimelineNotSupportedException;-><init>()V

    invoke-interface {v0, p0, v4, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_23

    .line 134
    :cond_57
    new-instance v1, Lcn/sharesdk/wechat/utils/g;

    const/16 v2, 0x17

    invoke-direct {v1, p0, v2}, Lcn/sharesdk/wechat/utils/g;-><init>(Lcn/sharesdk/framework/Platform;I)V

    .line 135
    iget-object v2, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/wechat/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v2, Lcn/sharesdk/wechat/utils/i;

    invoke-direct {v2, p0}, Lcn/sharesdk/wechat/utils/i;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 138
    invoke-virtual {v2, v1}, Lcn/sharesdk/wechat/utils/i;->a(Lcn/sharesdk/wechat/utils/g;)V

    .line 139
    new-instance v1, Lcn/sharesdk/wechat/moments/WechatMoments$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/wechat/moments/WechatMoments$1;-><init>(Lcn/sharesdk/wechat/moments/WechatMoments;)V

    invoke-virtual {v2, v1}, Lcn/sharesdk/wechat/utils/i;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 160
    :try_start_75
    invoke-virtual {v0, v2}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/i;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_23

    .line 161
    :catch_79
    move-exception v0

    .line 162
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_23

    .line 163
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

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
    .line 285
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_9

    .line 286
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 288
    :cond_9
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 6
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/16 v3, 0x9

    .line 212
    const-string v0, "scene"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    invoke-static {}, Lcn/sharesdk/wechat/utils/j;->a()Lcn/sharesdk/wechat/utils/j;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/j;->c(Ljava/lang/String;)Z

    .line 215
    new-instance v1, Lcn/sharesdk/wechat/utils/i;

    invoke-direct {v1, p0}, Lcn/sharesdk/wechat/utils/i;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 216
    iget-boolean v2, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->c:Z

    if-eqz v2, :cond_2f

    .line 218
    :try_start_1e
    iget-object v2, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v0, v1, p1, v2}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/i;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_23} :catch_24

    .line 242
    :cond_23
    :goto_23
    return-void

    .line 220
    :catch_24
    move-exception v0

    .line 221
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_23

    .line 222
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_23

    .line 226
    :cond_2f
    iget-object v2, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v1, p1, v2}, Lcn/sharesdk/wechat/utils/i;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 228
    :try_start_34
    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/j;->b(Lcn/sharesdk/wechat/utils/i;)V

    .line 229
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/j;->b()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 231
    const-string v1, "ShareParams"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_23

    .line 233
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_56} :catch_57

    goto :goto_23

    .line 236
    :catch_57
    move-exception v0

    .line 237
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_23

    .line 238
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

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
    .line 332
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
    .line 291
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 292
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    .line 293
    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v3

    .line 296
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 297
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5a

    .line 298
    iget-object v3, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_22
    :goto_22
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 305
    if-eqz v2, :cond_2d

    .line 306
    iget-object v3, v0, Lcn/sharesdk/framework/b/b/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_2d
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 309
    const-string v4, "title"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v4, "url"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v4, "extInfo"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v4, "content"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v1, "image"

    iget-object v4, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v1, "musicFileUrl"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iput-object v3, v0, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 316
    return-object v0

    .line 299
    :cond_5a
    if-eqz v3, :cond_62

    .line 300
    iget-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 301
    :cond_62
    if-eqz v4, :cond_22

    .line 302
    iget-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 246
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 248
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
    .line 328
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
    .line 324
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
    .line 320
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 278
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 280
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    sget-object v0, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .registers 2

    .prologue
    .line 60
    const/16 v0, 0x17

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 336
    iget-boolean v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->c:Z

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

    .line 34
    const-string v0, "AppId"

    invoke-virtual {p0, v0}, Lcn/sharesdk/wechat/moments/WechatMoments;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    .line 35
    const-string v0, "AppSecret"

    invoke-virtual {p0, v0}, Lcn/sharesdk/wechat/moments/WechatMoments;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    .line 36
    const-string v0, "true"

    const-string v1, "BypassApproval"

    invoke-virtual {p0, v1}, Lcn/sharesdk/wechat/moments/WechatMoments;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->c:Z

    .line 39
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_79

    .line 40
    :cond_2b
    const-string v0, "Wechat"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/moments/WechatMoments;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    .line 41
    const-string v0, "true"

    const-string v1, "Wechat"

    const-string v2, "BypassApproval"

    invoke-virtual {p0, v1, v2}, Lcn/sharesdk/wechat/moments/WechatMoments;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->c:Z

    .line 42
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7a

    .line 43
    const-string v0, "Wechat"

    sget-object v1, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/moments/WechatMoments;->copyDevinfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "AppId"

    invoke-virtual {p0, v0}, Lcn/sharesdk/wechat/moments/WechatMoments;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    .line 45
    const-string v0, "true"

    const-string v1, "BypassApproval"

    invoke-virtual {p0, v1}, Lcn/sharesdk/wechat/moments/WechatMoments;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->c:Z

    .line 46
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Try to use the dev info of Wechat, this will cause Id and SortId field are always 0."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 57
    :cond_79
    :goto_79
    return-void

    .line 49
    :cond_7a
    const-string v0, "WechatFavorite"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/moments/WechatMoments;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_79

    .line 51
    const-string v0, "WechatFavorite"

    sget-object v1, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/moments/WechatMoments;->copyDevinfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "AppId"

    invoke-virtual {p0, v0}, Lcn/sharesdk/wechat/moments/WechatMoments;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_79
.end method

.method public isClientValid()Z
    .registers 3

    .prologue
    .line 201
    invoke-static {}, Lcn/sharesdk/wechat/utils/j;->a()Lcn/sharesdk/wechat/utils/j;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/j;->c(Ljava/lang/String;)Z

    .line 203
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/j;->c()Z

    move-result v1

    .line 205
    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/j;->d()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 206
    const/4 v0, 0x1

    .line 208
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method protected setNetworkDevinfo()V
    .registers 8

    .prologue
    const/16 v6, 0x25

    const/16 v5, 0x16

    const/4 v4, 0x0

    const/16 v3, 0x17

    .line 72
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/moments/WechatMoments;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    .line 73
    const-string v0, "app_secret"

    const-string v1, "AppSecret"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/moments/WechatMoments;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_55

    .line 78
    :cond_27
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v5, v0, v1}, Lcn/sharesdk/wechat/moments/WechatMoments;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_90

    .line 80
    invoke-virtual {p0, v5, v3}, Lcn/sharesdk/wechat/moments/WechatMoments;->copyNetworkDevinfo(II)V

    .line 81
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/moments/WechatMoments;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Try to use the dev info of Wechat, this will cause Id and SortId field are always 0."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 93
    :cond_55
    :goto_55
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_8f

    .line 95
    :cond_61
    const-string v0, "app_secret"

    const-string v1, "AppSecret"

    invoke-virtual {p0, v5, v0, v1}, Lcn/sharesdk/wechat/moments/WechatMoments;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    if-eqz v0, :cond_bf

    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_bf

    .line 97
    invoke-virtual {p0, v5, v3}, Lcn/sharesdk/wechat/moments/WechatMoments;->copyNetworkDevinfo(II)V

    .line 98
    const-string v0, "app_secret"

    const-string v1, "AppSecret"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/moments/WechatMoments;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    .line 99
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Try to use the dev info of Wechat, this will cause Id and SortId field are always 0."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 110
    :cond_8f
    :goto_8f
    return-void

    .line 85
    :cond_90
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v6, v0, v1}, Lcn/sharesdk/wechat/moments/WechatMoments;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_55

    .line 87
    invoke-virtual {p0, v3, v3}, Lcn/sharesdk/wechat/moments/WechatMoments;->copyNetworkDevinfo(II)V

    .line 88
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/moments/WechatMoments;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_55

    .line 102
    :cond_bf
    const-string v0, "app_secret"

    const-string v1, "AppSecret"

    invoke-virtual {p0, v6, v0, v1}, Lcn/sharesdk/wechat/moments/WechatMoments;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8f

    .line 104
    invoke-virtual {p0, v3, v3}, Lcn/sharesdk/wechat/moments/WechatMoments;->copyNetworkDevinfo(II)V

    .line 105
    const-string v0, "app_secret"

    const-string v1, "AppSecret"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/wechat/moments/WechatMoments;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    .line 106
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_8f
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 252
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 254
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 6
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    .line 257
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 258
    :cond_12
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_22

    .line 259
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "The params of appID or appSecret is missing !"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 274
    :cond_22
    :goto_22
    return-void

    .line 264
    :cond_23
    new-instance v0, Lcn/sharesdk/wechat/utils/g;

    const/16 v1, 0x17

    invoke-direct {v0, p0, v1}, Lcn/sharesdk/wechat/utils/g;-><init>(Lcn/sharesdk/framework/Platform;I)V

    .line 265
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/wechat/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :try_start_31
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/g;->a(Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_36} :catch_37

    goto :goto_22

    .line 268
    :catch_37
    move-exception v0

    .line 269
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 270
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_22

    .line 271
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_22
.end method
