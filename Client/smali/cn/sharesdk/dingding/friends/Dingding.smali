.class public Lcn/sharesdk/dingding/friends/Dingding;
.super Lcn/sharesdk/framework/Platform;
.source "Dingding.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcn/sharesdk/dingding/friends/Dingding;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/dingding/friends/Dingding;->NAME:Ljava/lang/String;

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
    .registers 5
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcn/sharesdk/dingding/friends/Dingding;->isClientValid()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_14

    .line 80
    iget-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Lcn/sharesdk/dingding/utils/DingdingClientNotExistException;

    invoke-direct {v1}, Lcn/sharesdk/dingding/utils/DingdingClientNotExistException;-><init>()V

    invoke-interface {v0, p0, p1, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 82
    :cond_14
    invoke-virtual {p0}, Lcn/sharesdk/dingding/friends/Dingding;->isClientValid()Z

    move-result v0

    return v0
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 5
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 65
    invoke-virtual {p0}, Lcn/sharesdk/dingding/friends/Dingding;->isClientValid()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcn/sharesdk/dingding/friends/Dingding;->afterRegister(ILjava/lang/Object;)V

    .line 70
    :cond_b
    :goto_b
    return-void

    .line 67
    :cond_c
    iget-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_b

    .line 68
    iget-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Lcn/sharesdk/dingding/utils/DingdingClientNotExistException;

    invoke-direct {v1}, Lcn/sharesdk/dingding/utils/DingdingClientNotExistException;-><init>()V

    invoke-interface {v0, p0, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_b
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
    .line 154
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_9

    .line 155
    iget-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 157
    :cond_9
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 6
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/16 v3, 0x9

    .line 87
    const-string v0, "scene"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    invoke-static {}, Lcn/sharesdk/dingding/utils/c;->a()Lcn/sharesdk/dingding/utils/c;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcn/sharesdk/dingding/friends/Dingding;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/dingding/utils/c;->a(Ljava/lang/String;)Z

    .line 90
    new-instance v1, Lcn/sharesdk/dingding/utils/b;

    invoke-direct {v1, p0}, Lcn/sharesdk/dingding/utils/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 91
    iget-object v2, p0, Lcn/sharesdk/dingding/friends/Dingding;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v1, p1, v2}, Lcn/sharesdk/dingding/utils/b;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 92
    iget-boolean v2, p0, Lcn/sharesdk/dingding/friends/Dingding;->b:Z

    if-eqz v2, :cond_34

    .line 94
    :try_start_23
    iget-object v2, p0, Lcn/sharesdk/dingding/friends/Dingding;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v0, v1, p1, v2}, Lcn/sharesdk/dingding/utils/c;->a(Lcn/sharesdk/dingding/utils/b;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_28} :catch_29

    .line 110
    :cond_28
    :goto_28
    return-void

    .line 95
    :catch_29
    move-exception v0

    .line 96
    iget-object v1, p0, Lcn/sharesdk/dingding/friends/Dingding;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_28

    .line 97
    iget-object v1, p0, Lcn/sharesdk/dingding/friends/Dingding;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_28

    .line 102
    :cond_34
    :try_start_34
    invoke-virtual {v0, v1}, Lcn/sharesdk/dingding/utils/c;->a(Lcn/sharesdk/dingding/utils/b;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_28

    .line 103
    :catch_38
    move-exception v0

    .line 104
    iget-object v1, p0, Lcn/sharesdk/dingding/friends/Dingding;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_28

    .line 105
    iget-object v1, p0, Lcn/sharesdk/dingding/friends/Dingding;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_28
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
    .line 149
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/b/b/f$a;
    .registers 8
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
    .line 160
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 161
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    .line 162
    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 166
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 167
    iget-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_22
    :goto_22
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 174
    if-eqz v1, :cond_2d

    .line 175
    iget-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_2d
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 178
    const-string v3, "title"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v3, "url"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v3, "extInfo"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v3, "image"

    iget-object v4, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v3, "musicFileUrl"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iput-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 184
    return-object v0

    .line 168
    :cond_55
    if-eqz v2, :cond_5d

    .line 169
    iget-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 170
    :cond_5d
    if-eqz v3, :cond_22

    .line 171
    iget-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 114
    iget-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 116
    :cond_a
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
    .line 145
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
    .line 141
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
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 132
    iget-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 134
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    sget-object v0, Lcn/sharesdk/dingding/friends/Dingding;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getPlatformId()I
    .registers 2

    .prologue
    .line 48
    const/16 v0, 0x34

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 188
    iget-boolean v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->b:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string v0, "AppId"

    invoke-virtual {p0, v0}, Lcn/sharesdk/dingding/friends/Dingding;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->a:Ljava/lang/String;

    .line 25
    const-string v0, "true"

    const-string v1, "BypassApproval"

    invoke-virtual {p0, v1}, Lcn/sharesdk/dingding/friends/Dingding;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->b:Z

    .line 27
    iget-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->a:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_61

    .line 28
    :cond_22
    const-string v0, "DingDing"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/dingding/friends/Dingding;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->a:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->a:Ljava/lang/String;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_61

    .line 30
    const-string v0, "DingDing"

    sget-object v1, Lcn/sharesdk/dingding/friends/Dingding;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/dingding/friends/Dingding;->copyDevinfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v0, "AppId"

    invoke-virtual {p0, v0}, Lcn/sharesdk/dingding/friends/Dingding;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->a:Ljava/lang/String;

    .line 32
    const-string v0, "true"

    const-string v1, "BypassApproval"

    invoke-virtual {p0, v1}, Lcn/sharesdk/dingding/friends/Dingding;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->b:Z

    .line 33
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Try to use the dev info of DingDing,this will cause Id and SortId field are always 0."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 36
    :cond_61
    return-void
.end method

.method public isClientValid()Z
    .registers 3

    .prologue
    .line 73
    invoke-static {}, Lcn/sharesdk/dingding/utils/c;->a()Lcn/sharesdk/dingding/utils/c;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcn/sharesdk/dingding/friends/Dingding;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/dingding/utils/c;->a(Ljava/lang/String;)Z

    .line 75
    invoke-virtual {v0}, Lcn/sharesdk/dingding/utils/c;->b()Z

    move-result v0

    return v0
.end method

.method protected setNetworkDevinfo()V
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 52
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/dingding/friends/Dingding;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->a:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->a:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_49

    .line 55
    :cond_18
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v2, v0, v1}, Lcn/sharesdk/dingding/friends/Dingding;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->a:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->a:Ljava/lang/String;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_49

    .line 57
    const/16 v0, 0x34

    invoke-virtual {p0, v2, v0}, Lcn/sharesdk/dingding/friends/Dingding;->copyNetworkDevinfo(II)V

    .line 58
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/dingding/friends/Dingding;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->a:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Try to use the dev info of DingDing,this will cause Id and SortId field are always 0."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 62
    :cond_49
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 120
    iget-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 122
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_b

    .line 126
    iget-object v0, p0, Lcn/sharesdk/dingding/friends/Dingding;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 128
    :cond_b
    return-void
.end method
