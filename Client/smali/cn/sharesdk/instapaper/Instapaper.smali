.class public Lcn/sharesdk/instapaper/Instapaper;
.super Lcn/sharesdk/framework/Platform;
.source "Instapaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/instapaper/Instapaper$ShareParams;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcn/sharesdk/instapaper/Instapaper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/instapaper/Instapaper;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/instapaper/Instapaper;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/instapaper/Instapaper;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/instapaper/Instapaper;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/instapaper/Instapaper;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/instapaper/Instapaper;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/instapaper/Instapaper;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/instapaper/Instapaper;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/instapaper/Instapaper;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 6
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 108
    invoke-virtual {p0}, Lcn/sharesdk/instapaper/Instapaper;->isAuthValid()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 109
    invoke-static {p0}, Lcn/sharesdk/instapaper/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/instapaper/b;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcn/sharesdk/instapaper/Instapaper;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/instapaper/Instapaper;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/instapaper/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcn/sharesdk/instapaper/Instapaper;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcn/sharesdk/instapaper/Instapaper;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getTokenSecret()Ljava/lang/String;

    move-result-object v2

    .line 113
    if-eqz v1, :cond_26

    if-eqz v2, :cond_26

    .line 114
    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/instapaper/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x1

    .line 120
    :goto_25
    return v0

    .line 119
    :cond_26
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/instapaper/Instapaper;->innerAuthorize(ILjava/lang/Object;)V

    .line 120
    const/4 v0, 0x0

    goto :goto_25
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # [Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p0}, Lcn/sharesdk/instapaper/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/instapaper/b;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcn/sharesdk/instapaper/Instapaper;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/instapaper/Instapaper;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/instapaper/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v1, Lcn/sharesdk/instapaper/Instapaper$1;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/instapaper/Instapaper$1;-><init>(Lcn/sharesdk/instapaper/Instapaper;Lcn/sharesdk/instapaper/b;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/instapaper/b;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 105
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
    .line 172
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcn/sharesdk/instapaper/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/instapaper/b;

    move-result-object v0

    .line 174
    :try_start_4
    invoke-virtual {v0, p1, p2, p4, p5}, Lcn/sharesdk/instapaper/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_21

    .line 176
    :cond_10
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_20

    .line 177
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "response is null"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, p3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 198
    :cond_20
    :goto_20
    return-void

    .line 182
    :cond_21
    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 183
    :cond_31
    iget-object v1, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_20

    .line 184
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, p3, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_48} :catch_49

    goto :goto_20

    .line 193
    :catch_49
    move-exception v0

    .line 194
    iget-object v1, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_20

    .line 195
    iget-object v1, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, p3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_20

    .line 190
    :cond_54
    :try_start_54
    iget-object v1, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_20

    .line 191
    iget-object v1, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, p3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_5d} :catch_49

    goto :goto_20
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 8
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/16 v5, 0x9

    const/16 v4, 0x8

    .line 44
    invoke-static {p0}, Lcn/sharesdk/instapaper/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/instapaper/b;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcn/sharesdk/instapaper/Instapaper;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 49
    :try_start_14
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcn/sharesdk/instapaper/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1f} :catch_33

    move-result-object v0

    .line 57
    if-nez v0, :cond_3e

    .line 58
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_32

    .line 59
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "response is null"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v4, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 76
    :cond_32
    :goto_32
    return-void

    .line 50
    :catch_33
    move-exception v0

    .line 51
    iget-object v1, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_32

    .line 52
    iget-object v1, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v5, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_32

    .line 64
    :cond_3e
    const-string v1, "fakelist"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 65
    iget-object v1, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_32

    .line 66
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v4, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_32

    .line 72
    :cond_5e
    const-string v1, "ShareParams"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_32

    .line 74
    iget-object v1, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v5, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_32
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
    .line 224
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
    .line 201
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 202
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 203
    iget-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    if-eqz p2, :cond_24

    .line 205
    const-string v1, "id"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->a:Ljava/lang/String;

    .line 206
    iput-object p2, v0, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 208
    :cond_24
    return-object v0
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 125
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 127
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
    .line 220
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
    .line 216
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
    .line 212
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 165
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 167
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    sget-object v0, Lcn/sharesdk/instapaper/Instapaper;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .registers 2

    .prologue
    .line 27
    const/16 v0, 0x19

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
    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-string v0, "ConsumerKey"

    invoke-virtual {p0, v0}, Lcn/sharesdk/instapaper/Instapaper;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/instapaper/Instapaper;->a:Ljava/lang/String;

    .line 23
    const-string v0, "ConsumerSecret"

    invoke-virtual {p0, v0}, Lcn/sharesdk/instapaper/Instapaper;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/instapaper/Instapaper;->b:Ljava/lang/String;

    .line 24
    return-void
.end method

.method protected setNetworkDevinfo()V
    .registers 3

    .prologue
    .line 39
    const-string v0, "consumer_key"

    const-string v1, "ConsumerKey"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/instapaper/Instapaper;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/instapaper/Instapaper;->a:Ljava/lang/String;

    .line 40
    const-string v0, "consumer_secret"

    const-string v1, "ConsumerSecret"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/instapaper/Instapaper;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/instapaper/Instapaper;->b:Ljava/lang/String;

    .line 41
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 131
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 133
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 8
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    .line 136
    invoke-static {p0}, Lcn/sharesdk/instapaper/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/instapaper/b;

    move-result-object v0

    .line 138
    :try_start_6
    invoke-virtual {v0, p1}, Lcn/sharesdk/instapaper/b;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_25

    .line 140
    :cond_12
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_24

    .line 141
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 161
    :cond_24
    :goto_24
    return-void

    .line 148
    :cond_25
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 149
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 150
    iget-object v2, p0, Lcn/sharesdk/instapaper/Instapaper;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "nickname"

    const-string v4, "username"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcn/sharesdk/instapaper/Instapaper;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "user_id"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_24

    .line 154
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x8

    invoke-interface {v0, p0, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6b} :catch_6c

    goto :goto_24

    .line 156
    :catch_6c
    move-exception v0

    .line 157
    iget-object v1, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_24

    .line 158
    iget-object v1, p0, Lcn/sharesdk/instapaper/Instapaper;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v5, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_24
.end method
