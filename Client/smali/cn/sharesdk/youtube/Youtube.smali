.class public Lcn/sharesdk/youtube/Youtube;
.super Lcn/sharesdk/framework/Platform;
.source "Youtube.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Lcn/sharesdk/youtube/b;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Lcn/sharesdk/framework/PlatformActionListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcn/sharesdk/youtube/Youtube;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/youtube/Youtube;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    .line 39
    invoke-static {p0}, Lcn/sharesdk/youtube/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/youtube/b;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    .line 40
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/youtube/Youtube;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/youtube/Youtube;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/youtube/b;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    return-object v0
.end method

.method static synthetic b(Lcn/sharesdk/youtube/Youtube;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/youtube/Youtube;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic h(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic i(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic j(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic k(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic l(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic m(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic n(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic o(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic p(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic q(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic r(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic s(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic t(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic u(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 6
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 233
    const/16 v1, 0x9

    if-ne p1, v1, :cond_10

    iget-boolean v1, p0, Lcn/sharesdk/youtube/Youtube;->d:Z

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcn/sharesdk/youtube/Youtube;->isClientValid()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 248
    :goto_f
    return v0

    .line 237
    :cond_10
    invoke-super {p0}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 238
    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    iget-object v2, p0, Lcn/sharesdk/youtube/Youtube;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/sharesdk/youtube/b;->d(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    iget-object v2, p0, Lcn/sharesdk/youtube/Youtube;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/sharesdk/youtube/b;->b(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    iget-object v2, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/sharesdk/youtube/b;->c(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 243
    iget-object v2, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    invoke-virtual {v2, v1}, Lcn/sharesdk/youtube/b;->c(Ljava/lang/String;)V

    goto :goto_f

    .line 247
    :cond_41
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/youtube/Youtube;->innerAuthorize(ILjava/lang/Object;)V

    .line 248
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 4
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 164
    invoke-virtual {p0}, Lcn/sharesdk/youtube/Youtube;->isClientValid()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcn/sharesdk/youtube/Youtube;->isSSODisable()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 165
    :cond_c
    invoke-virtual {p0, p1}, Lcn/sharesdk/youtube/Youtube;->doWebAuthorize([Ljava/lang/String;)V

    .line 222
    :goto_f
    return-void

    .line 168
    :cond_10
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/youtube/b;->d(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/youtube/b;->b(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/youtube/b;->e(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    invoke-virtual {v0, p1}, Lcn/sharesdk/youtube/b;->a([Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    new-instance v1, Lcn/sharesdk/youtube/Youtube$2;

    invoke-direct {v1, p0}, Lcn/sharesdk/youtube/Youtube$2;-><init>(Lcn/sharesdk/youtube/Youtube;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/youtube/b;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    goto :goto_f
.end method

.method protected doCustomerProtocol(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)V
    .registers 6
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
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 9
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/16 v6, 0x9

    .line 252
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 253
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTags()[Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-virtual {p0}, Lcn/sharesdk/youtube/Youtube;->isClientValid()Z

    move-result v1

    if-eqz v1, :cond_81

    iget-boolean v1, p0, Lcn/sharesdk/youtube/Youtube;->d:Z

    if-eqz v1, :cond_81

    .line 257
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b

    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "mkv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 259
    :cond_32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_6c

    .line 260
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mob/tools/utils/ResHelper;->videoPathToContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 265
    :goto_49
    :try_start_49
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v3}, Lcn/sharesdk/youtube/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/youtube/b;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_6b

    .line 267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 268
    const-string v1, "ShareParams"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_6b} :catch_76

    .line 284
    :cond_6b
    :goto_6b
    return-void

    .line 262
    :cond_6c
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_49

    .line 271
    :catch_76
    move-exception v0

    .line 272
    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_6b

    .line 273
    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v6, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_6b

    .line 278
    :cond_81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9f

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_97

    const-string v1, ".mkv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 279
    :cond_97
    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    iget-object v2, p0, Lcn/sharesdk/youtube/Youtube;->f:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v1, v5, v4, v0, v2}, Lcn/sharesdk/youtube/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_6b

    .line 281
    :cond_9f
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "invalite video url."

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v6, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_6b
.end method

.method public doWebAuthorize([Ljava/lang/String;)V
    .registers 4
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/youtube/b;->d(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/youtube/b;->b(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/youtube/b;->e(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    invoke-virtual {v0, p1}, Lcn/sharesdk/youtube/b;->a([Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    new-instance v1, Lcn/sharesdk/youtube/Youtube$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/youtube/Youtube$1;-><init>(Lcn/sharesdk/youtube/Youtube;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/youtube/b;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 161
    return-void
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
    .line 324
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/b/b/f$a;
    .registers 5
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
    .line 333
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 334
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 335
    iput-object p2, v0, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 336
    return-object v0
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 2
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 288
    return-void
.end method

.method protected getBilaterals(IILjava/lang/String;)Ljava/util/HashMap;
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

.method public getClientId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected getFollowers(IILjava/lang/String;)Ljava/util/HashMap;
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
    .line 316
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
    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 4
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 309
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    sget-object v0, Lcn/sharesdk/youtube/Youtube;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getPlatformId()I
    .registers 2

    .prologue
    .line 96
    const/16 v0, 0x35

    return v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v0, "ClientID"

    invoke-virtual {p0, v0}, Lcn/sharesdk/youtube/Youtube;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/youtube/Youtube;->b:Ljava/lang/String;

    .line 73
    const-string v0, "RedirectUrl"

    invoke-virtual {p0, v0}, Lcn/sharesdk/youtube/Youtube;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/youtube/Youtube;->c:Ljava/lang/String;

    .line 74
    const-string v0, "true"

    const-string v1, "ShareByAppClient"

    invoke-virtual {p0, v1}, Lcn/sharesdk/youtube/Youtube;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/youtube/Youtube;->d:Z

    .line 75
    const-string v0, "AppSecret"

    invoke-virtual {p0, v0}, Lcn/sharesdk/youtube/Youtube;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/youtube/Youtube;->e:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public isAuthValid()Z
    .registers 2

    .prologue
    .line 225
    invoke-super {p0}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 226
    const/4 v0, 0x1

    .line 228
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isClientValid()Z
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->a:Lcn/sharesdk/youtube/b;

    invoke-virtual {v0}, Lcn/sharesdk/youtube/b;->a()Z

    move-result v0

    return v0
.end method

.method public isShareByAppClient()Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcn/sharesdk/youtube/Youtube;->d:Z

    return v0
.end method

.method public removeAccount(Z)V
    .registers 5
    .param p1, "removeCookie"    # Z

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    .line 81
    :try_start_3
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "isSigin"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_d

    .line 85
    :goto_c
    return-void

    .line 82
    :catch_d
    move-exception v0

    .line 83
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public setClientId(Ljava/lang/String;)V
    .registers 2
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcn/sharesdk/youtube/Youtube;->b:Ljava/lang/String;

    .line 53
    return-void
.end method

.method protected setNetworkDevinfo()V
    .registers 1

    .prologue
    .line 101
    return-void
.end method

.method public setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 2
    .param p1, "l"    # Lcn/sharesdk/framework/PlatformActionListener;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 44
    iput-object p1, p0, Lcn/sharesdk/youtube/Youtube;->f:Lcn/sharesdk/framework/PlatformActionListener;

    .line 45
    return-void
.end method

.method public setRedirectUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "redirectUrl"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcn/sharesdk/youtube/Youtube;->c:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setShareByAppClient(Z)V
    .registers 2
    .param p1, "shareByAppClient"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcn/sharesdk/youtube/Youtube;->d:Z

    .line 69
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 4
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 292
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 5
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 297
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 301
    :goto_f
    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1a

    .line 302
    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x8

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 304
    :cond_1a
    return-void

    .line 299
    :cond_1b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_f
.end method
