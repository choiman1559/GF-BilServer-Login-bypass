.class public Lcn/sharesdk/yixin/moments/YixinMoments;
.super Lcn/sharesdk/framework/Platform;
.source "YixinMoments.java"


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
    const-class v0, Lcn/sharesdk/yixin/moments/YixinMoments;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/yixin/moments/YixinMoments;->NAME:Ljava/lang/String;

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
    .line 82
    invoke-virtual {p0}, Lcn/sharesdk/yixin/moments/YixinMoments;->isClientValid()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_14

    .line 83
    iget-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Lcn/sharesdk/yixin/utils/YixinClientNotExistException;

    invoke-direct {v1}, Lcn/sharesdk/yixin/utils/YixinClientNotExistException;-><init>()V

    invoke-interface {v0, p0, p1, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 85
    :cond_14
    invoke-virtual {p0}, Lcn/sharesdk/yixin/moments/YixinMoments;->isClientValid()Z

    move-result v0

    return v0
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 5
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 67
    invoke-virtual {p0}, Lcn/sharesdk/yixin/moments/YixinMoments;->isClientValid()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcn/sharesdk/yixin/moments/YixinMoments;->afterRegister(ILjava/lang/Object;)V

    .line 73
    :cond_b
    :goto_b
    return-void

    .line 70
    :cond_c
    iget-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_b

    .line 71
    iget-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Lcn/sharesdk/yixin/utils/YixinClientNotExistException;

    invoke-direct {v1}, Lcn/sharesdk/yixin/utils/YixinClientNotExistException;-><init>()V

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
    .line 140
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_9

    .line 141
    iget-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 143
    :cond_9
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 6
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/16 v3, 0x9

    .line 89
    const-string v0, "scene"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    invoke-static {}, Lcn/sharesdk/yixin/utils/e;->a()Lcn/sharesdk/yixin/utils/e;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/yixin/utils/e;->a(Ljava/lang/String;)Z

    .line 92
    new-instance v1, Lcn/sharesdk/yixin/utils/d;

    invoke-direct {v1, p0}, Lcn/sharesdk/yixin/utils/d;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 93
    iget-object v2, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v1, p1, v2}, Lcn/sharesdk/yixin/utils/d;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 94
    iget-boolean v2, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->b:Z

    if-eqz v2, :cond_34

    .line 96
    :try_start_23
    iget-object v2, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v0, v1, p1, v2}, Lcn/sharesdk/yixin/utils/e;->a(Lcn/sharesdk/yixin/utils/d;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_28} :catch_29

    .line 111
    :cond_28
    :goto_28
    return-void

    .line 97
    :catch_29
    move-exception v0

    .line 98
    iget-object v1, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_28

    .line 99
    iget-object v1, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_28

    .line 104
    :cond_34
    :try_start_34
    invoke-virtual {v0, v1}, Lcn/sharesdk/yixin/utils/e;->a(Lcn/sharesdk/yixin/utils/d;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_28

    .line 105
    :catch_38
    move-exception v0

    .line 106
    iget-object v1, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_28

    .line 107
    iget-object v1, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

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
    .line 187
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
    .line 146
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 147
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    .line 148
    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 152
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5a

    .line 153
    iget-object v3, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_22
    :goto_22
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 160
    if-eqz v2, :cond_2d

    .line 161
    iget-object v3, v0, Lcn/sharesdk/framework/b/b/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_2d
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 164
    const-string v4, "title"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v4, "url"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v4, "extInfo"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v4, "content"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v1, "image"

    iget-object v4, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v1, "musicFileUrl"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iput-object v3, v0, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 171
    return-object v0

    .line 154
    :cond_5a
    if-eqz v3, :cond_62

    .line 155
    iget-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 156
    :cond_62
    if-eqz v4, :cond_22

    .line 157
    iget-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 115
    iget-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 117
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
    .line 183
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
    .line 179
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
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "cursor"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 133
    iget-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 135
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    sget-object v0, Lcn/sharesdk/yixin/moments/YixinMoments;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getPlatformId()I
    .registers 2

    .prologue
    .line 48
    const/16 v0, 0x27

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
    .line 191
    iget-boolean v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->b:Z

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

    invoke-virtual {p0, v0}, Lcn/sharesdk/yixin/moments/YixinMoments;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->a:Ljava/lang/String;

    .line 25
    const-string v0, "true"

    const-string v1, "BypassApproval"

    invoke-virtual {p0, v1}, Lcn/sharesdk/yixin/moments/YixinMoments;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->b:Z

    .line 28
    iget-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->a:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_61

    .line 29
    :cond_22
    const-string v0, "Yixin"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/yixin/moments/YixinMoments;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->a:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->a:Ljava/lang/String;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_61

    .line 31
    const-string v0, "Yixin"

    sget-object v1, Lcn/sharesdk/yixin/moments/YixinMoments;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/yixin/moments/YixinMoments;->copyDevinfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "AppId"

    invoke-virtual {p0, v0}, Lcn/sharesdk/yixin/moments/YixinMoments;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->a:Ljava/lang/String;

    .line 33
    const-string v0, "true"

    const-string v1, "BypassApproval"

    invoke-virtual {p0, v1}, Lcn/sharesdk/yixin/moments/YixinMoments;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->b:Z

    .line 34
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Try to use the dev info of Yixin, this will cause Id and SortId field are always 0."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 37
    :cond_61
    return-void
.end method

.method public isClientValid()Z
    .registers 3

    .prologue
    .line 76
    invoke-static {}, Lcn/sharesdk/yixin/utils/e;->a()Lcn/sharesdk/yixin/utils/e;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/yixin/utils/e;->a(Ljava/lang/String;)Z

    .line 78
    invoke-virtual {v0}, Lcn/sharesdk/yixin/utils/e;->b()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcn/sharesdk/yixin/utils/e;->c()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method protected setNetworkDevinfo()V
    .registers 4

    .prologue
    const/16 v2, 0x26

    .line 52
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/yixin/moments/YixinMoments;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->a:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->a:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_49

    .line 57
    :cond_18
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v2, v0, v1}, Lcn/sharesdk/yixin/moments/YixinMoments;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->a:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->a:Ljava/lang/String;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_49

    .line 59
    const/16 v0, 0x27

    invoke-virtual {p0, v2, v0}, Lcn/sharesdk/yixin/moments/YixinMoments;->copyNetworkDevinfo(II)V

    .line 60
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/yixin/moments/YixinMoments;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->a:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Try to use the dev info of Yixin, this will cause Id and SortId field are always 0."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 64
    :cond_49
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 121
    iget-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 123
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_b

    .line 127
    iget-object v0, p0, Lcn/sharesdk/yixin/moments/YixinMoments;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 129
    :cond_b
    return-void
.end method
