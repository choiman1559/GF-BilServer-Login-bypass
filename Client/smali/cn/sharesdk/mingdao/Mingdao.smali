.class public Lcn/sharesdk/mingdao/Mingdao;
.super Lcn/sharesdk/framework/Platform;
.source "Mingdao.java"


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
    .line 23
    const-class v0, Lcn/sharesdk/mingdao/Mingdao;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/mingdao/Mingdao;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method private a(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 7

    .prologue
    .line 190
    invoke-static {p0}, Lcn/sharesdk/mingdao/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/mingdao/b;

    move-result-object v1

    .line 193
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 197
    invoke-virtual {p0, v2}, Lcn/sharesdk/mingdao/Mingdao;->uploadImageToFileServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 201
    :cond_2a
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v3

    .line 206
    :try_start_32
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_42

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 207
    :cond_42
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "text is needed"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_4a} :catch_4a

    .line 240
    :catch_4a
    move-exception v0

    .line 241
    iget-object v1, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_56

    .line 242
    iget-object v1, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 245
    :cond_56
    :goto_56
    return-void

    .line 210
    :cond_57
    :try_start_57
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_67

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 211
    :cond_67
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "url is needed"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_6f
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcn/sharesdk/mingdao/Mingdao;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-virtual {p1, v3}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 216
    new-instance v4, Lcn/sharesdk/mingdao/Mingdao$2;

    invoke-direct {v4, p0, p1}, Lcn/sharesdk/mingdao/Mingdao$2;-><init>(Lcn/sharesdk/mingdao/Mingdao;Lcn/sharesdk/framework/Platform$ShareParams;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcn/sharesdk/mingdao/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_7f} :catch_4a

    goto :goto_56
.end method

.method static synthetic a(Lcn/sharesdk/mingdao/Mingdao;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/mingdao/Mingdao;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic h(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic i(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic j(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic k(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic l(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic m(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic n(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 7
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcn/sharesdk/mingdao/Mingdao;->isAuthValid()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 84
    invoke-static {p0}, Lcn/sharesdk/mingdao/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/mingdao/b;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcn/sharesdk/mingdao/Mingdao;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcn/sharesdk/mingdao/Mingdao;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getExpiresIn()J

    move-result-wide v2

    .line 87
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/mingdao/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcn/sharesdk/mingdao/Mingdao;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/mingdao/Mingdao;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/mingdao/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x1

    .line 92
    :goto_25
    return v0

    .line 91
    :cond_26
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/mingdao/Mingdao;->innerAuthorize(ILjava/lang/Object;)V

    .line 92
    const/4 v0, 0x0

    goto :goto_25
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 5
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p0}, Lcn/sharesdk/mingdao/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/mingdao/b;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcn/sharesdk/mingdao/Mingdao;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/mingdao/Mingdao;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/mingdao/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcn/sharesdk/mingdao/Mingdao;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/mingdao/b;->a(Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcn/sharesdk/mingdao/Mingdao$1;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/mingdao/Mingdao$1;-><init>(Lcn/sharesdk/mingdao/Mingdao;Lcn/sharesdk/mingdao/b;)V

    .line 79
    invoke-virtual {p0}, Lcn/sharesdk/mingdao/Mingdao;->isSSODisable()Z

    move-result v2

    .line 47
    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/mingdao/b;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V

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
    .line 278
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_9

    .line 279
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 281
    :cond_9
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 6
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    .line 96
    const-string v0, "webShare"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 99
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_mingdao_share_content"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 100
    if-lez v0, :cond_2b

    .line 101
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 106
    :cond_2b
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 108
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-nez v0, :cond_47

    .line 109
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "url is needed"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 114
    :cond_47
    :goto_47
    return-void

    .line 112
    :cond_48
    invoke-direct {p0, p1}, Lcn/sharesdk/mingdao/Mingdao;->a(Lcn/sharesdk/framework/Platform$ShareParams;)V

    goto :goto_47
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
    .line 344
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return-object v0
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
    .line 284
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v1}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 285
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 286
    if-eqz p2, :cond_32

    .line 287
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    iput-object v0, v1, Lcn/sharesdk/framework/b/b/f$a;->a:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 290
    iget-object v2, v1, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_30
    iput-object p2, v1, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 294
    :cond_32
    return-object v1

    .line 287
    :cond_33
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 298
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 299
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 301
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
    .line 340
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
    .line 336
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
    .line 332
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "cursor"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 310
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 311
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 313
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    sget-object v0, Lcn/sharesdk/mingdao/Mingdao;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getPlatformId()I
    .registers 2

    .prologue
    .line 322
    const/16 v0, 0x29

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 316
    const-string v0, "AppKey"

    invoke-virtual {p0, v0}, Lcn/sharesdk/mingdao/Mingdao;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->a:Ljava/lang/String;

    .line 317
    const-string v0, "AppSecret"

    invoke-virtual {p0, v0}, Lcn/sharesdk/mingdao/Mingdao;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->b:Ljava/lang/String;

    .line 318
    const-string v0, "RedirectUri"

    invoke-virtual {p0, v0}, Lcn/sharesdk/mingdao/Mingdao;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->c:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public isClientValid()Z
    .registers 2

    .prologue
    .line 40
    invoke-static {p0}, Lcn/sharesdk/mingdao/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/mingdao/b;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcn/sharesdk/mingdao/b;->a()Z

    move-result v0

    return v0
.end method

.method protected setNetworkDevinfo()V
    .registers 3

    .prologue
    .line 326
    const-string v0, "app_key"

    const-string v1, "AppKey"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/mingdao/Mingdao;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->a:Ljava/lang/String;

    .line 327
    const-string v0, "app_secret"

    const-string v1, "AppSecret"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/mingdao/Mingdao;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->b:Ljava/lang/String;

    .line 328
    const-string v0, "redirect_uri"

    const-string v1, "RedirectUri"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/mingdao/Mingdao;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->c:Ljava/lang/String;

    .line 329
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 305
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 307
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 7
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    .line 248
    if-nez p1, :cond_26

    const/4 v0, 0x1

    .line 250
    :goto_5
    :try_start_5
    invoke-static {p0}, Lcn/sharesdk/mingdao/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/mingdao/b;

    move-result-object v1

    .line 251
    invoke-virtual {v1, p1}, Lcn/sharesdk/mingdao/b;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 252
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_28

    .line 253
    :cond_15
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_25

    .line 254
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 273
    :cond_25
    :goto_25
    return-void

    .line 248
    :cond_26
    const/4 v0, 0x0

    goto :goto_5

    .line 259
    :cond_28
    if-eqz v0, :cond_39

    .line 260
    const-string v0, "user"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 261
    invoke-static {p0}, Lcn/sharesdk/mingdao/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/mingdao/b;

    move-result-object v2

    .line 262
    iget-object v3, p0, Lcn/sharesdk/mingdao/Mingdao;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v2, v0, v3}, Lcn/sharesdk/mingdao/b;->a(Ljava/lang/Object;Lcn/sharesdk/framework/PlatformDb;)V

    .line 265
    :cond_39
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_25

    .line 266
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x8

    invoke-interface {v0, p0, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_44} :catch_45

    goto :goto_25

    .line 268
    :catch_45
    move-exception v0

    .line 269
    iget-object v1, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_25

    .line 270
    iget-object v1, p0, Lcn/sharesdk/mingdao/Mingdao;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_25
.end method
