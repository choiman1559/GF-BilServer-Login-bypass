.class public Lcn/sharesdk/flickr/Flickr;
.super Lcn/sharesdk/framework/Platform;
.source "Flickr.java"


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
    .line 17
    const-class v0, Lcn/sharesdk/flickr/Flickr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/flickr/Flickr;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/flickr/Flickr;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/flickr/Flickr;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/flickr/Flickr;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/flickr/Flickr;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/flickr/Flickr;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/flickr/Flickr;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/flickr/Flickr;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/flickr/Flickr;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/flickr/Flickr;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic h(Lcn/sharesdk/flickr/Flickr;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic i(Lcn/sharesdk/flickr/Flickr;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 7
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcn/sharesdk/flickr/Flickr;->isAuthValid()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 88
    invoke-static {p0}, Lcn/sharesdk/flickr/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/flickr/a;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcn/sharesdk/flickr/Flickr;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/flickr/Flickr;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/flickr/Flickr;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/flickr/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcn/sharesdk/flickr/Flickr;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcn/sharesdk/flickr/Flickr;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getTokenSecret()Ljava/lang/String;

    move-result-object v2

    .line 92
    if-eqz v1, :cond_28

    if-eqz v2, :cond_28

    .line 93
    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/flickr/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x1

    .line 99
    :goto_27
    return v0

    .line 98
    :cond_28
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/flickr/Flickr;->innerAuthorize(ILjava/lang/Object;)V

    .line 99
    const/4 v0, 0x0

    goto :goto_27
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 6
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p0}, Lcn/sharesdk/flickr/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/flickr/a;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcn/sharesdk/flickr/Flickr;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/flickr/Flickr;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/flickr/Flickr;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/flickr/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v1, Lcn/sharesdk/flickr/Flickr$1;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/flickr/Flickr$1;-><init>(Lcn/sharesdk/flickr/Flickr;Lcn/sharesdk/flickr/a;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/flickr/a;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 84
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
    .line 226
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_9

    .line 227
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 229
    :cond_9
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 14
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/16 v11, 0x9

    .line 105
    :try_start_2
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 108
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 111
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 114
    :cond_2d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_51

    .line 115
    :cond_3e
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_50

    .line 116
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "imagePath is needed"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 154
    :cond_50
    :goto_50
    return-void

    .line 121
    :cond_51
    invoke-static {p0}, Lcn/sharesdk/flickr/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/flickr/a;

    move-result-object v0

    .line 124
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v2

    .line 125
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcn/sharesdk/flickr/Flickr;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-virtual {p1, v3}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTags()[Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->isPublic()Z

    move-result v5

    .line 130
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->isFriend()Z

    move-result v6

    .line 131
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->isFamily()Z

    move-result v7

    .line 132
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getSafetyLevel()I

    move-result v8

    .line 133
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getContentType()I

    move-result v9

    .line 134
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getHidden()I

    move-result v10

    .line 135
    invoke-virtual/range {v0 .. v10}, Lcn/sharesdk/flickr/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZZIII)Ljava/util/HashMap;

    move-result-object v0

    .line 137
    if-nez v0, :cond_a5

    .line 138
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_50

    .line 139
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "respons is empty"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_99} :catch_9a

    goto :goto_50

    .line 148
    :catch_9a
    move-exception v0

    .line 149
    iget-object v1, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_50

    .line 150
    iget-object v1, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v11, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_50

    .line 144
    :cond_a5
    :try_start_a5
    iget-object v1, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_50

    .line 145
    const-string v1, "ShareParams"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_b5} :catch_9a

    goto :goto_50
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
    .line 259
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
    .line 232
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v1}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 233
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 234
    iget-object v0, v1, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    if-eqz p2, :cond_32

    .line 237
    const-string v0, "rsp"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 239
    const-string v2, "photoid"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 240
    const-string v2, "value"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/framework/b/b/f$a;->a:Ljava/lang/String;

    .line 242
    :cond_32
    iput-object p2, v1, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 243
    return-object v1
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 158
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 160
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
    .line 255
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
    .line 251
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
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "cursor"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 219
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 221
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    sget-object v0, Lcn/sharesdk/flickr/Flickr;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getPlatformId()I
    .registers 2

    .prologue
    .line 39
    const/16 v0, 0x22

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
    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string v0, "ApiKey"

    invoke-virtual {p0, v0}, Lcn/sharesdk/flickr/Flickr;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/flickr/Flickr;->a:Ljava/lang/String;

    .line 26
    const-string v0, "ApiSecret"

    invoke-virtual {p0, v0}, Lcn/sharesdk/flickr/Flickr;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/flickr/Flickr;->b:Ljava/lang/String;

    .line 27
    const-string v0, "RedirectUri"

    invoke-virtual {p0, v0}, Lcn/sharesdk/flickr/Flickr;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/flickr/Flickr;->c:Ljava/lang/String;

    .line 28
    return-void
.end method

.method protected setNetworkDevinfo()V
    .registers 3

    .prologue
    .line 43
    const-string v0, "api_key"

    const-string v1, "ApiKey"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/flickr/Flickr;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/flickr/Flickr;->a:Ljava/lang/String;

    .line 44
    const-string v0, "api_secret"

    const-string v1, "ApiSecret"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/flickr/Flickr;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/flickr/Flickr;->b:Ljava/lang/String;

    .line 45
    const-string v0, "redirect_uri"

    const-string v1, "RedirectUri"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/flickr/Flickr;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/flickr/Flickr;->c:Ljava/lang/String;

    .line 46
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 164
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 166
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 9
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x8

    .line 170
    const/4 v0, 0x0

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 172
    const/4 v0, 0x1

    .line 173
    invoke-virtual {p0}, Lcn/sharesdk/flickr/Flickr;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 176
    :cond_12
    invoke-static {p0}, Lcn/sharesdk/flickr/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/flickr/a;

    move-result-object v1

    .line 179
    :try_start_16
    invoke-virtual {v1, p1}, Lcn/sharesdk/flickr/a;->b(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_19} :catch_2e

    move-result-object v1

    move-object v2, v1

    .line 187
    :goto_1b
    if-nez v2, :cond_3b

    .line 188
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_2d

    .line 189
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "respons is empty"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v6, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 215
    :cond_2d
    :goto_2d
    return-void

    .line 180
    :catch_2e
    move-exception v2

    .line 181
    const/4 v1, 0x0

    .line 182
    iget-object v3, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v3, :cond_39

    .line 183
    iget-object v3, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v3, p0, v6, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_39
    move-object v2, v1

    goto :goto_1b

    .line 194
    :cond_3b
    if-eqz v0, :cond_a7

    .line 195
    const-string v0, "person"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 196
    if-eqz v0, :cond_a7

    .line 197
    iget-object v1, p0, Lcn/sharesdk/flickr/Flickr;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "id"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 198
    const-string v1, "username"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 199
    if-eqz v1, :cond_71

    .line 200
    iget-object v3, p0, Lcn/sharesdk/flickr/Flickr;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v4, "nickname"

    const-string v5, "_content"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_71
    const-string v1, "profileurl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 203
    if-eqz v1, :cond_8c

    .line 204
    iget-object v3, p0, Lcn/sharesdk/flickr/Flickr;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v4, "snsUserUrl"

    const-string v5, "_content"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_8c
    const-string v1, "description"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 207
    if-eqz v0, :cond_a7

    .line 208
    iget-object v1, p0, Lcn/sharesdk/flickr/Flickr;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "resume"

    const-string v4, "_content"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_a7
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_2d

    .line 213
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v6, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto/16 :goto_2d
.end method
