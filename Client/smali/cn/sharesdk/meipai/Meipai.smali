.class public Lcn/sharesdk/meipai/Meipai;
.super Lcn/sharesdk/framework/Platform;
.source "Meipai.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/meipai/Meipai$ShareParams;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcn/sharesdk/meipai/Meipai;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/meipai/Meipai;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 6
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 47
    invoke-static {p0}, Lcn/sharesdk/meipai/c;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/meipai/c;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcn/sharesdk/meipai/c;->a()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcn/sharesdk/meipai/Meipai;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_18

    .line 49
    iget-object v1, p0, Lcn/sharesdk/meipai/Meipai;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Lcn/sharesdk/meipai/MeipaiClientNotExistException;

    invoke-direct {v2}, Lcn/sharesdk/meipai/MeipaiClientNotExistException;-><init>()V

    invoke-interface {v1, p0, p1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 51
    :cond_18
    invoke-virtual {v0}, Lcn/sharesdk/meipai/c;->a()Z

    move-result v0

    return v0
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 2
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 44
    return-void
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
    .line 108
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 7
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    .line 55
    invoke-static {p0}, Lcn/sharesdk/meipai/c;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/meipai/c;

    move-result-object v0

    .line 56
    new-instance v1, Lcn/sharesdk/meipai/Meipai$ShareParams;

    invoke-direct {v1}, Lcn/sharesdk/meipai/Meipai$ShareParams;-><init>()V

    .line 57
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2e

    const-string v3, "mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, "mkv"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 59
    :cond_23
    iput-object v2, v1, Lcn/sharesdk/meipai/Meipai$ShareParams;->videoPath:Ljava/lang/String;

    .line 60
    const/4 v2, 0x0

    iput v2, v1, Lcn/sharesdk/meipai/Meipai$ShareParams;->type:I

    .line 70
    :goto_28
    iget-object v2, p0, Lcn/sharesdk/meipai/Meipai;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v0, v2, v1}, Lcn/sharesdk/meipai/c;->a(Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/meipai/Meipai$ShareParams;)Z

    .line 71
    return-void

    .line 62
    :cond_2e
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 64
    iput-object v3, v1, Lcn/sharesdk/meipai/Meipai$ShareParams;->imagePath:Ljava/lang/String;

    .line 68
    :goto_3a
    const/4 v2, 0x1

    iput v2, v1, Lcn/sharesdk/meipai/Meipai$ShareParams;->type:I

    goto :goto_28

    .line 66
    :cond_3e
    iput-object v2, v1, Lcn/sharesdk/meipai/Meipai$ShareParams;->imagePath:Ljava/lang/String;

    goto :goto_3a
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
    .line 102
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
    .line 111
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 112
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 115
    const-string v2, "mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, "mkv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 116
    iget-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_2a
    iput-object p2, v0, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 120
    return-object v0
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 2
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 75
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
    .line 98
    const/4 v0, 0x0

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
    .line 94
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
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 4
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 87
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    sget-object v0, Lcn/sharesdk/meipai/Meipai;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getPlatformId()I
    .registers 2

    .prologue
    .line 35
    const/16 v0, 0x36

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-string v0, "ClientID"

    invoke-virtual {p0, v0}, Lcn/sharesdk/meipai/Meipai;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/meipai/Meipai;->a:Ljava/lang/String;

    .line 23
    invoke-static {p0}, Lcn/sharesdk/meipai/c;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/meipai/c;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/meipai/Meipai;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/meipai/c;->a(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method protected setNetworkDevinfo()V
    .registers 1

    .prologue
    .line 40
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 4
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 79
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 2
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 83
    return-void
.end method
