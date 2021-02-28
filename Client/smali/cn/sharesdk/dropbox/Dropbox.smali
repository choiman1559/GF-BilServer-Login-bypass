.class public Lcn/sharesdk/dropbox/Dropbox;
.super Lcn/sharesdk/framework/Platform;
.source "Dropbox.java"


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
    .line 18
    const-class v0, Lcn/sharesdk/dropbox/Dropbox;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/dropbox/Dropbox;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/dropbox/Dropbox;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/dropbox/Dropbox;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/dropbox/Dropbox;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/dropbox/Dropbox;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/dropbox/Dropbox;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/dropbox/Dropbox;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/dropbox/Dropbox;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/dropbox/Dropbox;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/dropbox/Dropbox;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 7
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcn/sharesdk/dropbox/Dropbox;->isAuthValid()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 88
    invoke-static {p0}, Lcn/sharesdk/dropbox/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/dropbox/b;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcn/sharesdk/dropbox/Dropbox;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/dropbox/Dropbox;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/dropbox/Dropbox;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/dropbox/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcn/sharesdk/dropbox/Dropbox;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcn/sharesdk/dropbox/Dropbox;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getTokenSecret()Ljava/lang/String;

    move-result-object v2

    .line 92
    if-eqz v1, :cond_28

    if-eqz v2, :cond_28

    .line 93
    invoke-virtual {v0, v1}, Lcn/sharesdk/dropbox/b;->e(Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x1

    .line 99
    :goto_27
    return v0

    .line 98
    :cond_28
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/dropbox/Dropbox;->innerAuthorize(ILjava/lang/Object;)V

    .line 99
    const/4 v0, 0x0

    goto :goto_27
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 6
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p0}, Lcn/sharesdk/dropbox/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/dropbox/b;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcn/sharesdk/dropbox/Dropbox;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/dropbox/Dropbox;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/dropbox/Dropbox;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/dropbox/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcn/sharesdk/dropbox/Dropbox;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/dropbox/b;->b(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcn/sharesdk/dropbox/Dropbox;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/dropbox/b;->c(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcn/sharesdk/dropbox/Dropbox;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/dropbox/b;->a(Ljava/lang/String;)V

    .line 55
    new-instance v1, Lcn/sharesdk/dropbox/Dropbox$1;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/dropbox/Dropbox$1;-><init>(Lcn/sharesdk/dropbox/Dropbox;Lcn/sharesdk/dropbox/b;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/dropbox/b;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V

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
    .line 182
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_9

    .line 183
    iget-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 185
    :cond_9
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 8
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/16 v5, 0x9

    .line 104
    :try_start_2
    invoke-static {p0}, Lcn/sharesdk/dropbox/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/dropbox/b;

    move-result-object v1

    .line 105
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getShareType()I

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 110
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 113
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_38
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 118
    const-string v0, ""

    .line 120
    :cond_40
    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/dropbox/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_5f

    .line 122
    :cond_4c
    iget-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_5e

    .line 123
    iget-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "response is empty"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 137
    :cond_5e
    :goto_5e
    return-void

    .line 128
    :cond_5f
    const-string v1, "ShareParams"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v1, p0, Lcn/sharesdk/dropbox/Dropbox;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_5e

    .line 130
    iget-object v1, p0, Lcn/sharesdk/dropbox/Dropbox;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_6f} :catch_70

    goto :goto_5e

    .line 132
    :catch_70
    move-exception v0

    .line 133
    iget-object v1, p0, Lcn/sharesdk/dropbox/Dropbox;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_5e

    .line 134
    iget-object v1, p0, Lcn/sharesdk/dropbox/Dropbox;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v5, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_5e
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
    .line 213
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
    .line 188
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 189
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    .line 190
    if-eqz v1, :cond_10

    .line 191
    iget-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_10
    if-eqz p2, :cond_1e

    .line 194
    const-string v1, "rev"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->a:Ljava/lang/String;

    .line 196
    :cond_1e
    iput-object p2, v0, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 197
    return-object v0
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 141
    iget-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 143
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
    .line 209
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
    .line 205
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
    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "cursor"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 175
    iget-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 177
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    sget-object v0, Lcn/sharesdk/dropbox/Dropbox;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getPlatformId()I
    .registers 2

    .prologue
    .line 40
    const/16 v0, 0x23

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-string v0, "AppKey"

    invoke-virtual {p0, v0}, Lcn/sharesdk/dropbox/Dropbox;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->a:Ljava/lang/String;

    .line 27
    const-string v0, "AppSecret"

    invoke-virtual {p0, v0}, Lcn/sharesdk/dropbox/Dropbox;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->b:Ljava/lang/String;

    .line 28
    const-string v0, "RedirectUri"

    invoke-virtual {p0, v0}, Lcn/sharesdk/dropbox/Dropbox;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->c:Ljava/lang/String;

    .line 29
    return-void
.end method

.method protected setNetworkDevinfo()V
    .registers 3

    .prologue
    .line 44
    const-string v0, "app_key"

    const-string v1, "AppKey"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/dropbox/Dropbox;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->a:Ljava/lang/String;

    .line 45
    const-string v0, "app_secret"

    const-string v1, "AppSecret"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/dropbox/Dropbox;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->b:Ljava/lang/String;

    .line 46
    const-string v0, "redirectUrl"

    const-string v1, "RedirectUri"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/dropbox/Dropbox;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->c:Ljava/lang/String;

    .line 47
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 147
    iget-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 149
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 7
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    .line 152
    invoke-static {p0}, Lcn/sharesdk/dropbox/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/dropbox/b;

    move-result-object v0

    .line 154
    :try_start_6
    invoke-virtual {v0}, Lcn/sharesdk/dropbox/b;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_25

    .line 156
    :cond_12
    iget-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_24

    .line 157
    iget-object v0, p0, Lcn/sharesdk/dropbox/Dropbox;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "response is empty"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 171
    :cond_24
    :goto_24
    return-void

    .line 162
    :cond_25
    iget-object v1, p0, Lcn/sharesdk/dropbox/Dropbox;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "nickname"

    const-string v3, "display_name"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcn/sharesdk/dropbox/Dropbox;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_24

    .line 164
    iget-object v1, p0, Lcn/sharesdk/dropbox/Dropbox;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x8

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_41} :catch_42

    goto :goto_24

    .line 166
    :catch_42
    move-exception v0

    .line 167
    iget-object v1, p0, Lcn/sharesdk/dropbox/Dropbox;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_24

    .line 168
    iget-object v1, p0, Lcn/sharesdk/dropbox/Dropbox;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_24
.end method
