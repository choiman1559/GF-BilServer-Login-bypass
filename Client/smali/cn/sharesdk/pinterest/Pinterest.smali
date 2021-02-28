.class public Lcn/sharesdk/pinterest/Pinterest;
.super Lcn/sharesdk/framework/Platform;
.source "Pinterest.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-class v0, Lcn/sharesdk/pinterest/Pinterest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/pinterest/Pinterest;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 5
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcn/sharesdk/pinterest/Pinterest;->isClientValid()Z

    move-result v0

    if-nez v0, :cond_16

    .line 40
    iget-object v0, p0, Lcn/sharesdk/pinterest/Pinterest;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_14

    .line 41
    iget-object v0, p0, Lcn/sharesdk/pinterest/Pinterest;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Lcn/sharesdk/pinterest/PinterestClientNotExistException;

    invoke-direct {v1}, Lcn/sharesdk/pinterest/PinterestClientNotExistException;-><init>()V

    invoke-interface {v0, p0, p1, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 44
    :cond_14
    const/4 v0, 0x0

    .line 46
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 2
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 36
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
    .line 106
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/pinterest/Pinterest;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_9

    .line 107
    iget-object v0, p0, Lcn/sharesdk/pinterest/Pinterest;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 109
    :cond_9
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 9
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/16 v6, 0x9

    .line 57
    invoke-static {p0}, Lcn/sharesdk/pinterest/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/pinterest/a;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcn/sharesdk/pinterest/Pinterest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/pinterest/a;->a(Ljava/lang/String;)V

    .line 60
    :try_start_b
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 64
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5}, Lcn/sharesdk/pinterest/Pinterest;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 66
    iget-object v5, p0, Lcn/sharesdk/pinterest/Pinterest;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/pinterest/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    const-string v1, "ShareParams"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Lcn/sharesdk/pinterest/Pinterest;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_3d

    .line 70
    iget-object v1, p0, Lcn/sharesdk/pinterest/Pinterest;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_3d} :catch_3e

    .line 77
    :cond_3d
    :goto_3d
    return-void

    .line 72
    :catch_3e
    move-exception v0

    .line 73
    iget-object v1, p0, Lcn/sharesdk/pinterest/Pinterest;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_3d

    .line 74
    iget-object v1, p0, Lcn/sharesdk/pinterest/Pinterest;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v6, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_3d
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
    .line 134
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
    .line 112
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 113
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_16

    .line 116
    iget-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_16
    return-object v0
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/sharesdk/pinterest/Pinterest;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 81
    iget-object v0, p0, Lcn/sharesdk/pinterest/Pinterest;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 83
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
    .line 130
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
    .line 126
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
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "cursor"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcn/sharesdk/pinterest/Pinterest;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 99
    iget-object v0, p0, Lcn/sharesdk/pinterest/Pinterest;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 101
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    sget-object v0, Lcn/sharesdk/pinterest/Pinterest;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getPlatformId()I
    .registers 2

    .prologue
    .line 27
    const/16 v0, 0x1e

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-string v0, "ClientId"

    invoke-virtual {p0, v0}, Lcn/sharesdk/pinterest/Pinterest;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/pinterest/Pinterest;->a:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public isClientValid()Z
    .registers 3

    .prologue
    .line 51
    invoke-static {p0}, Lcn/sharesdk/pinterest/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/pinterest/a;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcn/sharesdk/pinterest/Pinterest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/pinterest/a;->a(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Lcn/sharesdk/pinterest/a;->a()Z

    move-result v0

    return v0
.end method

.method protected setNetworkDevinfo()V
    .registers 3

    .prologue
    .line 31
    const-string v0, "client_id"

    const-string v1, "ClientId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/pinterest/Pinterest;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/pinterest/Pinterest;->a:Ljava/lang/String;

    .line 32
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcn/sharesdk/pinterest/Pinterest;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 87
    iget-object v0, p0, Lcn/sharesdk/pinterest/Pinterest;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 89
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcn/sharesdk/pinterest/Pinterest;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_b

    .line 93
    iget-object v0, p0, Lcn/sharesdk/pinterest/Pinterest;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 95
    :cond_b
    return-void
.end method
