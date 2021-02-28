.class public Lcn/sharesdk/pocket/Pocket;
.super Lcn/sharesdk/framework/Platform;
.source "Pocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/pocket/Pocket$ShareParams;
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
    .line 19
    const-class v0, Lcn/sharesdk/pocket/Pocket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/pocket/Pocket;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/pocket/Pocket;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/pocket/Pocket;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/pocket/Pocket;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/pocket/Pocket;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/pocket/Pocket;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/pocket/Pocket;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/pocket/Pocket;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/pocket/Pocket;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 5
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcn/sharesdk/pocket/Pocket;->isAuthValid()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 84
    invoke-static {p0}, Lcn/sharesdk/pocket/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/pocket/b;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcn/sharesdk/pocket/Pocket;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/pocket/b;->a(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 88
    const/4 v0, 0x1

    .line 93
    :goto_1c
    return v0

    .line 92
    :cond_1d
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/pocket/Pocket;->innerAuthorize(ILjava/lang/Object;)V

    .line 93
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 4
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0}, Lcn/sharesdk/pocket/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/pocket/b;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcn/sharesdk/pocket/Pocket;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/pocket/b;->a(Ljava/lang/String;)V

    .line 56
    new-instance v1, Lcn/sharesdk/pocket/Pocket$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/pocket/Pocket$1;-><init>(Lcn/sharesdk/pocket/Pocket;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/pocket/b;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 79
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
    .line 184
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_9

    .line 185
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 187
    :cond_9
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 12
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/16 v9, 0x9

    .line 98
    invoke-static {p0}, Lcn/sharesdk/pocket/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/pocket/b;

    move-result-object v1

    .line 101
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTags()[Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 106
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_28

    .line 107
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "The param of url is necessary"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v9, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 150
    :cond_28
    :goto_28
    return-void

    .line 113
    :cond_29
    :try_start_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    if-eqz v4, :cond_4a

    array-length v0, v4

    if-lez v0, :cond_4a

    .line 115
    array-length v6, v4

    const/4 v0, 0x0

    :goto_35
    if-ge v0, v6, :cond_4a

    aget-object v7, v4, v0

    .line 116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_44

    .line 117
    const/16 v8, 0x2c

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    :cond_44
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 122
    :cond_4a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {v1, v2, v3, v0}, Lcn/sharesdk/pocket/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_51} :catch_65

    move-result-object v0

    .line 131
    if-nez v0, :cond_70

    .line 132
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_28

    .line 133
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "response is null"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v9, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_28

    .line 124
    :catch_65
    move-exception v0

    .line 125
    iget-object v1, p0, Lcn/sharesdk/pocket/Pocket;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_28

    .line 126
    iget-object v1, p0, Lcn/sharesdk/pocket/Pocket;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v9, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_28

    .line 138
    :cond_70
    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a2

    .line 139
    :cond_8a
    iget-object v1, p0, Lcn/sharesdk/pocket/Pocket;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_28

    .line 140
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcn/sharesdk/pocket/Pocket;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v9, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_28

    .line 146
    :cond_a2
    const-string v1, "ShareParams"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v1, p0, Lcn/sharesdk/pocket/Pocket;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_28

    .line 148
    iget-object v1, p0, Lcn/sharesdk/pocket/Pocket;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v9, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto/16 :goto_28
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
    .line 212
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
    .line 191
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 192
    iget-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 194
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 196
    :cond_1e
    return-object v0
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 155
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 157
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
    .line 208
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
    .line 204
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
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "cursor"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 177
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 179
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    sget-object v0, Lcn/sharesdk/pocket/Pocket;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getPlatformId()I
    .registers 2

    .prologue
    .line 44
    const/16 v0, 0x1a

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, "ConsumerKey"

    invoke-virtual {p0, v0}, Lcn/sharesdk/pocket/Pocket;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/pocket/Pocket;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method protected setNetworkDevinfo()V
    .registers 3

    .prologue
    .line 49
    const-string v0, "consumer_key"

    const-string v1, "ConsumerKey"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/pocket/Pocket;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/pocket/Pocket;->a:Ljava/lang/String;

    .line 50
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 162
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 164
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_b

    .line 170
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 172
    :cond_b
    return-void
.end method
