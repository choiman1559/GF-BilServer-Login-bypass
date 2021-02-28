.class public Lcn/sharesdk/alipay/friends/Alipay;
.super Lcn/sharesdk/framework/Platform;
.source "Alipay.java"


# static fields
.field public static final ACTION_SEND:I = 0x7fffffff

.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcn/sharesdk/alipay/friends/Alipay;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/alipay/friends/Alipay;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 4
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 4
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 44
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/alipay/friends/Alipay;->afterRegister(ILjava/lang/Object;)V

    .line 45
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
    .line 108
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/alipay/friends/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_9

    .line 109
    iget-object v0, p0, Lcn/sharesdk/alipay/friends/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 111
    :cond_9
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 7
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/16 v4, 0x9

    .line 59
    :try_start_2
    invoke-static {}, Lcn/sharesdk/alipay/utils/c;->a()Lcn/sharesdk/alipay/utils/c;

    move-result-object v1

    .line 60
    iget-object v0, p0, Lcn/sharesdk/alipay/friends/Alipay;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/sharesdk/alipay/utils/c;->a(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1}, Lcn/sharesdk/alipay/utils/c;->d()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 62
    new-instance v0, Ljava/lang/Throwable;

    const-string v2, "The alipay is not available!"

    invoke-direct {v0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Lcn/sharesdk/alipay/utils/c;->c()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 64
    new-instance v0, Lcn/sharesdk/alipay/utils/AlipayClientNotExistException;

    invoke-direct {v0}, Lcn/sharesdk/alipay/utils/AlipayClientNotExistException;-><init>()V

    .line 68
    :cond_23
    :goto_23
    iget-object v2, p0, Lcn/sharesdk/alipay/friends/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v2, :cond_2e

    .line 69
    iget-object v2, p0, Lcn/sharesdk/alipay/friends/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v3, 0x9

    invoke-interface {v2, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 72
    :cond_2e
    new-instance v0, Lcn/sharesdk/alipay/utils/a;

    invoke-direct {v0, p0}, Lcn/sharesdk/alipay/utils/a;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 73
    iget-object v2, p0, Lcn/sharesdk/alipay/friends/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v0, p1, v2}, Lcn/sharesdk/alipay/utils/a;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 74
    invoke-virtual {v1, v0}, Lcn/sharesdk/alipay/utils/c;->a(Lcn/sharesdk/alipay/utils/a;)V

    .line 80
    :cond_3b
    :goto_3b
    return-void

    .line 65
    :cond_3c
    invoke-virtual {v1}, Lcn/sharesdk/alipay/utils/c;->b()Z

    move-result v2

    if-nez v2, :cond_23

    .line 66
    new-instance v0, Lcn/sharesdk/alipay/utils/AlipayNotSupportedException;

    invoke-direct {v0}, Lcn/sharesdk/alipay/utils/AlipayNotSupportedException;-><init>()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_47} :catch_48

    goto :goto_23

    .line 75
    :catch_48
    move-exception v0

    .line 76
    iget-object v1, p0, Lcn/sharesdk/alipay/friends/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_3b

    .line 77
    iget-object v1, p0, Lcn/sharesdk/alipay/friends/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_3b
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
    .line 153
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
    .line 114
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 115
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 119
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 120
    iget-object v3, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_20
    :goto_20
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 127
    if-eqz v2, :cond_2b

    .line 128
    iget-object v3, v0, Lcn/sharesdk/framework/b/b/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_2b
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 131
    const-string v4, "title"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v4, "url"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v2, "content"

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v2, "image"

    iget-object v4, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 136
    iput-object v3, v0, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 137
    return-object v0

    .line 121
    :cond_4f
    if-eqz v3, :cond_57

    .line 122
    iget-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 123
    :cond_57
    if-eqz v4, :cond_20

    .line 124
    iget-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcn/sharesdk/alipay/friends/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 84
    iget-object v0, p0, Lcn/sharesdk/alipay/friends/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 86
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
    .line 149
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
    .line 145
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
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "cursor"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcn/sharesdk/alipay/friends/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 102
    iget-object v0, p0, Lcn/sharesdk/alipay/friends/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 104
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    sget-object v0, Lcn/sharesdk/alipay/friends/Alipay;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getPlatformId()I
    .registers 2

    .prologue
    .line 36
    const/16 v0, 0x32

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string v0, "AppId"

    invoke-virtual {p0, v0}, Lcn/sharesdk/alipay/friends/Alipay;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/alipay/friends/Alipay;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public isClientValid()Z
    .registers 3

    .prologue
    .line 52
    invoke-static {}, Lcn/sharesdk/alipay/utils/c;->a()Lcn/sharesdk/alipay/utils/c;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcn/sharesdk/alipay/friends/Alipay;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/alipay/utils/c;->a(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Lcn/sharesdk/alipay/utils/c;->d()Z

    move-result v0

    return v0
.end method

.method protected setNetworkDevinfo()V
    .registers 3

    .prologue
    .line 40
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/alipay/friends/Alipay;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/alipay/friends/Alipay;->a:Ljava/lang/String;

    .line 41
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcn/sharesdk/alipay/friends/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 90
    iget-object v0, p0, Lcn/sharesdk/alipay/friends/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 92
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcn/sharesdk/alipay/friends/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_b

    .line 96
    iget-object v0, p0, Lcn/sharesdk/alipay/friends/Alipay;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 98
    :cond_b
    return-void
.end method
