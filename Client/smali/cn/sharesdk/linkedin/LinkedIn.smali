.class public Lcn/sharesdk/linkedin/LinkedIn;
.super Lcn/sharesdk/framework/Platform;
.source "LinkedIn.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcn/sharesdk/linkedin/LinkedIn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/linkedin/LinkedIn;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/linkedin/LinkedIn;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/linkedin/LinkedIn;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/linkedin/LinkedIn;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/linkedin/LinkedIn;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/linkedin/LinkedIn;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/linkedin/LinkedIn;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/linkedin/LinkedIn;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/linkedin/LinkedIn;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/linkedin/LinkedIn;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 7
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 151
    const/16 v0, 0x9

    if-ne p1, v0, :cond_3c

    invoke-virtual {p0}, Lcn/sharesdk/linkedin/LinkedIn;->isClientValid()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->d:Z

    if-eqz v0, :cond_3c

    move-object v0, p2

    .line 152
    check-cast v0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 153
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 154
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    :cond_3a
    move v0, v1

    .line 168
    :goto_3b
    return v0

    .line 158
    :cond_3c
    invoke-virtual {p0}, Lcn/sharesdk/linkedin/LinkedIn;->isAuthValid()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 159
    invoke-static {p0}, Lcn/sharesdk/linkedin/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/linkedin/a;

    move-result-object v0

    .line 160
    iget-object v2, p0, Lcn/sharesdk/linkedin/LinkedIn;->a:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/linkedin/LinkedIn;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/linkedin/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcn/sharesdk/linkedin/LinkedIn;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcn/sharesdk/linkedin/a;->a(Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcn/sharesdk/linkedin/LinkedIn;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {v0, v2}, Lcn/sharesdk/linkedin/a;->c(Ljava/lang/String;)V

    move v0, v1

    .line 164
    goto :goto_3b

    .line 167
    :cond_5d
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/linkedin/LinkedIn;->innerAuthorize(ILjava/lang/Object;)V

    .line 168
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # [Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0}, Lcn/sharesdk/linkedin/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/linkedin/a;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcn/sharesdk/linkedin/LinkedIn;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/linkedin/LinkedIn;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/linkedin/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcn/sharesdk/linkedin/LinkedIn;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/linkedin/a;->a(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, p1}, Lcn/sharesdk/linkedin/a;->a([Ljava/lang/String;)V

    .line 58
    new-instance v1, Lcn/sharesdk/linkedin/LinkedIn$1;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/linkedin/LinkedIn$1;-><init>(Lcn/sharesdk/linkedin/LinkedIn;Lcn/sharesdk/linkedin/a;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/linkedin/a;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 89
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
    .line 374
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_9

    .line 375
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 377
    :cond_9
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 12
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/16 v9, 0x9

    .line 99
    :try_start_2
    invoke-static {p0}, Lcn/sharesdk/linkedin/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/linkedin/a;

    move-result-object v0

    .line 100
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitleUrl()Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    .line 104
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_38

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 106
    invoke-virtual {p0, v2}, Lcn/sharesdk/linkedin/LinkedIn;->uploadImageToFileServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 107
    invoke-virtual {p1, v6}, Lcn/sharesdk/framework/Platform$ShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 110
    :cond_38
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getComment()Ljava/lang/String;

    move-result-object v7

    .line 111
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcn/sharesdk/linkedin/LinkedIn;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {p1, v4}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Lcn/sharesdk/linkedin/a;->b()Z

    move-result v1

    if-eqz v1, :cond_5c

    iget-boolean v1, p0, Lcn/sharesdk/linkedin/LinkedIn;->d:Z

    if-eqz v1, :cond_5c

    .line 115
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getShareType()I

    move-result v1

    .line 116
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 117
    iget-object v7, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual/range {v0 .. v7}, Lcn/sharesdk/linkedin/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 148
    :cond_5b
    :goto_5b
    return-void

    .line 119
    :cond_5c
    const-string v8, "anyone"

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Lcn/sharesdk/linkedin/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 122
    if-nez v0, :cond_83

    .line 123
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_5b

    .line 124
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_77} :catch_78

    goto :goto_5b

    .line 142
    :catch_78
    move-exception v0

    .line 143
    iget-object v1, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_5b

    .line 144
    iget-object v1, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v9, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_5b

    .line 129
    :cond_83
    :try_start_83
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 130
    iget-object v1, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_5b

    .line 131
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_5b

    .line 137
    :cond_a5
    const-string v1, "ShareParams"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_5b

    .line 139
    iget-object v1, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_b5} :catch_78

    goto :goto_5b
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
    .line 403
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
    .line 380
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 381
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 382
    iget-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    if-eqz p2, :cond_24

    .line 384
    const-string v1, "updateKey"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->a:Ljava/lang/String;

    .line 385
    iput-object p2, v0, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 387
    :cond_24
    return-object v0
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 173
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 175
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
    .line 399
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
    .line 395
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
    .line 391
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 367
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 368
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 370
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    sget-object v0, Lcn/sharesdk/linkedin/LinkedIn;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .registers 2

    .prologue
    .line 44
    const/16 v0, 0x10

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 407
    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, "ApiKey"

    invoke-virtual {p0, v0}, Lcn/sharesdk/linkedin/LinkedIn;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->a:Ljava/lang/String;

    .line 30
    const-string v0, "SecretKey"

    invoke-virtual {p0, v0}, Lcn/sharesdk/linkedin/LinkedIn;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->b:Ljava/lang/String;

    .line 31
    const-string v0, "RedirectUrl"

    invoke-virtual {p0, v0}, Lcn/sharesdk/linkedin/LinkedIn;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->c:Ljava/lang/String;

    .line 32
    const-string v0, "true"

    const-string v1, "ShareByAppClient"

    invoke-virtual {p0, v1}, Lcn/sharesdk/linkedin/LinkedIn;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->d:Z

    .line 33
    return-void
.end method

.method public isClientValid()Z
    .registers 2

    .prologue
    .line 93
    invoke-static {p0}, Lcn/sharesdk/linkedin/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/linkedin/a;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcn/sharesdk/linkedin/a;->b()Z

    move-result v0

    return v0
.end method

.method protected setNetworkDevinfo()V
    .registers 3

    .prologue
    .line 48
    const-string v0, "api_key"

    const-string v1, "ApiKey"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/linkedin/LinkedIn;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->a:Ljava/lang/String;

    .line 49
    const-string v0, "secret_key"

    const-string v1, "SecretKey"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/linkedin/LinkedIn;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->b:Ljava/lang/String;

    .line 50
    const-string v0, "redirect_url"

    const-string v1, "RedirectUrl"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/linkedin/LinkedIn;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->c:Ljava/lang/String;

    .line 51
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 179
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 181
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 11
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/16 v8, 0x8

    const/4 v3, 0x0

    .line 184
    invoke-static {p0}, Lcn/sharesdk/linkedin/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/linkedin/a;

    move-result-object v0

    .line 186
    :try_start_8
    invoke-virtual {v0, p1}, Lcn/sharesdk/linkedin/a;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 187
    if-nez v5, :cond_21

    .line 188
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_20

    .line 189
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 364
    :cond_20
    :goto_20
    return-void

    .line 194
    :cond_21
    const-string v0, "errorCode"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 195
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_20

    .line 196
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v5}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_42} :catch_43

    goto :goto_20

    .line 359
    :catch_43
    move-exception v0

    .line 360
    iget-object v1, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_20

    .line 361
    iget-object v1, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v8, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_20

    .line 202
    :cond_4e
    if-nez p1, :cond_393

    .line 203
    :try_start_50
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "id"

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "nickname"

    const-string v2, "formattedName"

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "icon"

    const-string v2, "pictureUrl"

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "gender"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "snsUserUrl"

    const-string v2, "publicProfileUrl"

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "resume"

    const-string v2, "summary"

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "secretType"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v0, "dateOfBirth"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_bd
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_bd} :catch_43

    .line 212
    if-eqz v0, :cond_10c

    .line 213
    const/16 v1, 0x7b2

    .line 215
    :try_start_c1
    const-string v2, "year"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_c1 .. :try_end_ce} :catch_1f3

    move-result v1

    .line 221
    :goto_cf
    :try_start_cf
    const-string v2, "month"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_cf .. :try_end_dc} :catch_1fd

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 227
    :goto_df
    :try_start_df
    const-string v6, "day"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I
    :try_end_ec
    .catch Ljava/lang/Throwable; {:try_start_df .. :try_end_ec} :catch_208

    move-result v0

    .line 231
    :goto_ed
    :try_start_ed
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 232
    const/4 v6, 0x1

    invoke-virtual {v4, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 233
    const/4 v1, 0x2

    invoke-virtual {v4, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 234
    const/4 v1, 0x5

    invoke-virtual {v4, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 235
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "birthday"

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_10c
    const-string v0, "following"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 239
    if-eqz v0, :cond_17f

    .line 241
    const-string v1, "industries"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_11e
    .catch Ljava/lang/Throwable; {:try_start_ed .. :try_end_11e} :catch_43

    .line 244
    :try_start_11e
    const-string v2, "_total"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I
    :try_end_12b
    .catch Ljava/lang/Throwable; {:try_start_11e .. :try_end_12b} :catch_213

    move-result v1

    move v4, v1

    .line 249
    :goto_12d
    :try_start_12d
    const-string v1, "people"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_135
    .catch Ljava/lang/Throwable; {:try_start_12d .. :try_end_135} :catch_43

    .line 252
    :try_start_135
    const-string v2, "_total"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I
    :try_end_142
    .catch Ljava/lang/Throwable; {:try_start_135 .. :try_end_142} :catch_21e

    move-result v1

    move v2, v1

    .line 257
    :goto_144
    :try_start_144
    const-string v1, "companies"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_14c
    .catch Ljava/lang/Throwable; {:try_start_144 .. :try_end_14c} :catch_43

    .line 260
    :try_start_14c
    const-string v6, "_total"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I
    :try_end_159
    .catch Ljava/lang/Throwable; {:try_start_14c .. :try_end_159} :catch_229

    move-result v1

    .line 265
    :goto_15a
    :try_start_15a
    const-string v6, "specialEditions"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_162
    .catch Ljava/lang/Throwable; {:try_start_15a .. :try_end_162} :catch_43

    .line 268
    :try_start_162
    const-string v6, "_total"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I
    :try_end_16f
    .catch Ljava/lang/Throwable; {:try_start_162 .. :try_end_16f} :catch_234

    move-result v0

    .line 272
    :goto_170
    add-int v1, v4, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    .line 273
    :try_start_174
    iget-object v1, p0, Lcn/sharesdk/linkedin/LinkedIn;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "favouriteCount"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_17f
    const-string v0, "educations"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 277
    if-eqz v0, :cond_26e

    .line 279
    const-string v1, "values"

    .line 280
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 281
    if-eqz v0, :cond_26e

    .line 282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 283
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_248

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 284
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 285
    const-string v4, "school_type"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v4, "school"

    const-string v6, "schoolName"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c6
    .catch Ljava/lang/Throwable; {:try_start_174 .. :try_end_1c6} :catch_43

    .line 289
    :try_start_1c6
    const-string v4, "startDate"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 290
    const-string v4, "year"

    const-string v6, "year"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e5
    .catch Ljava/lang/Throwable; {:try_start_1c6 .. :try_end_1e5} :catch_23f

    .line 294
    :goto_1e5
    :try_start_1e5
    const-string v0, "background"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19c

    .line 216
    :catch_1f3
    move-exception v2

    .line 217
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto/16 :goto_cf

    .line 222
    :catch_1fd
    move-exception v2

    .line 223
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move v2, v3

    goto/16 :goto_df

    .line 228
    :catch_208
    move-exception v0

    .line 229
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move v0, v4

    goto/16 :goto_ed

    .line 245
    :catch_213
    move-exception v1

    .line 246
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move v4, v3

    goto/16 :goto_12d

    .line 253
    :catch_21e
    move-exception v1

    .line 254
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move v2, v3

    goto/16 :goto_144

    .line 261
    :catch_229
    move-exception v1

    .line 262
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move v1, v3

    goto/16 :goto_15a

    .line 269
    :catch_234
    move-exception v0

    .line 270
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move v0, v1

    goto/16 :goto_170

    .line 291
    :catch_23f
    move-exception v0

    .line 292
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_1e5

    .line 297
    :cond_248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 298
    const-string v2, "list"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcn/sharesdk/linkedin/LinkedIn;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "educationJSONArrayStr"

    const/16 v3, 0x8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_26e
    const-string v0, "positions"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 305
    if-eqz v0, :cond_393

    .line 307
    const-string v1, "values"

    .line 308
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 309
    if-eqz v0, :cond_393

    .line 310
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 311
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 312
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 314
    const-string v1, "company"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 315
    if-eqz v1, :cond_2c4

    .line 316
    const-string v6, "company"

    const-string v7, "name"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v6, "industry"

    const-string v7, "industry"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_2c4
    const-string v1, "position"

    const-string v6, "title"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v1, "startDate"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_2db
    .catch Ljava/lang/Throwable; {:try_start_1e5 .. :try_end_2db} :catch_43

    .line 322
    if-eqz v1, :cond_305

    .line 324
    :try_start_2dd
    const-string v6, "year"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 325
    const-string v7, "month"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 326
    const-string v7, "start_date"

    mul-int/lit8 v6, v6, 0x64

    add-int/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_305
    .catch Ljava/lang/Throwable; {:try_start_2dd .. :try_end_305} :catch_33c

    .line 333
    :cond_305
    :goto_305
    :try_start_305
    const-string v1, "endDate"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_30d
    .catch Ljava/lang/Throwable; {:try_start_305 .. :try_end_30d} :catch_43

    .line 334
    if-eqz v0, :cond_362

    .line 336
    :try_start_30f
    const-string v1, "year"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 337
    const-string v6, "month"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 338
    const-string v6, "end_date"

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_337
    .catch Ljava/lang/Throwable; {:try_start_30f .. :try_end_337} :catch_34f

    .line 346
    :goto_337
    :try_start_337
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28b

    .line 327
    :catch_33c
    move-exception v1

    .line 328
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 329
    const-string v1, "start_date"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_305

    .line 339
    :catch_34f
    move-exception v0

    .line 340
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 341
    const-string v0, "end_date"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_337

    .line 344
    :cond_362
    const-string v0, "end_date"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_337

    .line 348
    :cond_36d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 349
    const-string v1, "list"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcn/sharesdk/linkedin/LinkedIn;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "workJSONArrayStr"

    const/16 v3, 0x8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_393
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_20

    .line 357
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v5}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_39e
    .catch Ljava/lang/Throwable; {:try_start_337 .. :try_end_39e} :catch_43

    goto/16 :goto_20
.end method
