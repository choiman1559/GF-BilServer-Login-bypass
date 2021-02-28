.class public Lcn/sharesdk/tencent/qq/QQ;
.super Lcn/sharesdk/framework/Platform;
.source "QQ.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcn/sharesdk/tencent/qq/QQ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/tencent/qq/QQ;->c:Z

    .line 36
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qq/QQ;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/tencent/qq/QQ;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic h(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic i(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic j(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic k(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic l(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic m(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic n(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic o(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic p(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic q(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 7
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    const/16 v3, 0x9

    const/4 v1, 0x1

    .line 137
    invoke-static {p0}, Lcn/sharesdk/tencent/qq/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qq/b;

    move-result-object v2

    .line 138
    invoke-virtual {v2}, Lcn/sharesdk/tencent/qq/b;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcn/sharesdk/tencent/qq/QQ;->d:Z

    if-eqz v0, :cond_15

    if-ne p1, v3, :cond_15

    move v0, v1

    .line 151
    :goto_14
    return v0

    .line 141
    :cond_15
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/QQ;->isAuthValid()Z

    move-result v0

    if-nez v0, :cond_2c

    if-ne p1, v3, :cond_45

    if-eqz p2, :cond_45

    instance-of v0, p2, Lcn/sharesdk/framework/Platform$ShareParams;

    if-eqz v0, :cond_45

    move-object v0, p2

    check-cast v0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 143
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->isShareTencentWeibo()Z

    move-result v0

    if-nez v0, :cond_45

    .line 144
    :cond_2c
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcn/sharesdk/tencent/qq/b;->a(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/sharesdk/tencent/qq/b;->b(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {v2, v0}, Lcn/sharesdk/tencent/qq/b;->d(Ljava/lang/String;)V

    move v0, v1

    .line 148
    goto :goto_14

    .line 150
    :cond_45
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/tencent/qq/QQ;->innerAuthorize(ILjava/lang/Object;)V

    .line 151
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 5
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {p0}, Lcn/sharesdk/tencent/qq/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qq/b;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qq/b;->a(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, p1}, Lcn/sharesdk/tencent/qq/b;->a([Ljava/lang/String;)V

    .line 92
    new-instance v1, Lcn/sharesdk/tencent/qq/QQ$1;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/tencent/qq/QQ$1;-><init>(Lcn/sharesdk/tencent/qq/QQ;Lcn/sharesdk/tencent/qq/b;)V

    .line 133
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/QQ;->isSSODisable()Z

    move-result v2

    .line 92
    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/tencent/qq/b;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V

    .line 134
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
    .line 327
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_9

    .line 328
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 330
    :cond_9
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 14
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/16 v11, 0x9

    const/4 v8, 0x0

    .line 155
    invoke-static {p0}, Lcn/sharesdk/tencent/qq/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qq/b;

    move-result-object v0

    .line 156
    iget-boolean v1, p0, Lcn/sharesdk/tencent/qq/QQ;->d:Z

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qq/b;->b()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 158
    :try_start_11
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v0, p0, p1, v1}, Lcn/sharesdk/tencent/qq/b;->a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_16} :catch_17

    .line 223
    :cond_16
    :goto_16
    return-void

    .line 159
    :catch_17
    move-exception v0

    .line 160
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_16

    .line 161
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v11, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_16

    .line 165
    :cond_22
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v4

    .line 168
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getMusicUrl()Ljava/lang/String;

    move-result-object v6

    .line 170
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitleUrl()Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->isShareTencentWeibo()Z

    move-result v9

    .line 172
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getHidden()I

    move-result v10

    .line 174
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_71

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 175
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_71

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 176
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 177
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_16

    .line 178
    const-string v0, "qq share must have one param at least"

    .line 179
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v11, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_16

    .line 184
    :cond_71
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7e

    .line 185
    invoke-virtual {p0, v2, v8}, Lcn/sharesdk/tencent/qq/QQ;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-virtual {p1, v2}, Lcn/sharesdk/framework/Platform$ShareParams;->setTitleUrl(Ljava/lang/String;)V

    .line 188
    :cond_7e
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8b

    .line 189
    invoke-virtual {p0, v3, v8}, Lcn/sharesdk/tencent/qq/QQ;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-virtual {p1, v3}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 193
    :cond_8b
    new-instance v8, Lcn/sharesdk/tencent/qq/QQ$2;

    invoke-direct {v8, p0, p1}, Lcn/sharesdk/tencent/qq/QQ$2;-><init>(Lcn/sharesdk/tencent/qq/QQ;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 221
    iget-boolean v7, p0, Lcn/sharesdk/tencent/qq/QQ;->b:Z

    invoke-virtual/range {v0 .. v10}, Lcn/sharesdk/tencent/qq/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcn/sharesdk/framework/PlatformActionListener;ZI)V

    goto :goto_16
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
    .line 378
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/b/b/f$a;
    .registers 10
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
    .line 333
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 334
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitleUrl()Ljava/lang/String;

    move-result-object v1

    .line 335
    iget-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v2, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    iput-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->a:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 339
    iput-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 341
    :cond_1e
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 342
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v4

    .line 343
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_62

    .line 344
    iget-object v3, v0, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_31
    :goto_31
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 350
    const-string v5, "title"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v5, "url"

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v1, "imageLocalUrl"

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v1, "summary"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    .line 355
    const-string v2, "appName"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iput-object v3, v0, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 358
    return-object v0

    .line 345
    :cond_62
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_31

    .line 346
    iget-object v5, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 227
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 229
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
    .line 374
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
    .line 370
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
    .line 366
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 319
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 320
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 322
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    sget-object v0, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .registers 2

    .prologue
    .line 55
    const/16 v0, 0x18

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x2

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 382
    iget-boolean v0, p0, Lcn/sharesdk/tencent/qq/QQ;->c:Z

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string v0, "AppId"

    invoke-virtual {p0, v0}, Lcn/sharesdk/tencent/qq/QQ;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    .line 40
    const-string v0, "true"

    const-string v1, "ShareByAppClient"

    invoke-virtual {p0, v1}, Lcn/sharesdk/tencent/qq/QQ;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/tencent/qq/QQ;->b:Z

    .line 41
    const-string v0, "true"

    const-string v1, "BypassApproval"

    invoke-virtual {p0, v1}, Lcn/sharesdk/tencent/qq/QQ;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/tencent/qq/QQ;->d:Z

    .line 43
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_6f

    .line 44
    :cond_30
    const-string v0, "QZone"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/tencent/qq/QQ;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6f

    .line 46
    const-string v0, "QZone"

    sget-object v1, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/tencent/qq/QQ;->copyDevinfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "AppId"

    invoke-virtual {p0, v0}, Lcn/sharesdk/tencent/qq/QQ;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    .line 48
    const-string v0, "true"

    const-string v1, "ShareByAppClient"

    invoke-virtual {p0, v1}, Lcn/sharesdk/tencent/qq/QQ;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/tencent/qq/QQ;->b:Z

    .line 49
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Try to use the dev info of QZone, this will cause Id and SortId field are always 0."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 52
    :cond_6f
    return-void
.end method

.method public isClientValid()Z
    .registers 3

    .prologue
    .line 83
    invoke-static {p0}, Lcn/sharesdk/tencent/qq/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qq/b;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qq/b;->a(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qq/b;->b()Z

    move-result v0

    return v0
.end method

.method protected setNetworkDevinfo()V
    .registers 4

    .prologue
    const/4 v2, 0x6

    .line 67
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/tencent/qq/QQ;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_48

    .line 72
    :cond_17
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v2, v0, v1}, Lcn/sharesdk/tencent/qq/QQ;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_48

    .line 74
    const/16 v0, 0x18

    invoke-virtual {p0, v2, v0}, Lcn/sharesdk/tencent/qq/QQ;->copyNetworkDevinfo(II)V

    .line 75
    const-string v0, "app_id"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/tencent/qq/QQ;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    .line 76
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Try to use the dev info of QZone, this will cause Id and SortId field are always 0."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 79
    :cond_48
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 232
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 233
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 235
    :cond_a
    return-void
.end method

.method protected uploadImageToFileServer(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-super {p0, p1}, Lcn/sharesdk/framework/Platform;->uploadImageToFileServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 8
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    .line 238
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gez v0, :cond_10

    .line 239
    :cond_a
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 242
    :cond_10
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gez v0, :cond_29

    .line 243
    :cond_18
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_28

    .line 244
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "qq account is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v5, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 316
    :cond_28
    :goto_28
    return-void

    .line 250
    :cond_29
    invoke-static {p0}, Lcn/sharesdk/tencent/qq/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qq/b;

    move-result-object v0

    .line 253
    :try_start_2d
    invoke-virtual {v0, p1}, Lcn/sharesdk/tencent/qq/b;->e(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 254
    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_55

    .line 255
    :cond_39
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_28

    .line 256
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_49} :catch_4a

    goto :goto_28

    .line 311
    :catch_4a
    move-exception v0

    .line 312
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_28

    .line 313
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v5, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_28

    .line 261
    :cond_55
    :try_start_55
    const-string v0, "ret"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 262
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_28

    .line 263
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_28

    .line 268
    :cond_6e
    const-string v0, "ret"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 269
    if-eqz v0, :cond_96

    .line 270
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_28

    .line 271
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_28

    .line 276
    :cond_96
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_14a

    .line 277
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "nickname"

    const-string v3, "nickname"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v0, "figureurl_qq_2"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_157

    .line 279
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "icon"

    const-string v3, "figureurl_qq_2"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_c8
    :goto_c8
    const-string v0, "figureurl_2"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_172

    .line 285
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "iconQzone"

    const-string v3, "figureurl_2"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_e1
    :goto_e1
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "secretType"

    const-string v3, "is_yellow_vip"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v0, "is_yellow_vip"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 295
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "snsUserLevel"

    const-string v3, "level"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_115
    const-string v0, "gender"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ssdk_gender_male"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 299
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ssdk_gender_female"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 300
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    .line 301
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "gender"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_14a
    :goto_14a
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_28

    .line 309
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x8

    invoke-interface {v0, p0, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto/16 :goto_28

    .line 280
    :cond_157
    const-string v0, "figureurl_qq_1"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 281
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "icon"

    const-string v3, "figureurl_qq_1"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c8

    .line 286
    :cond_172
    const-string v0, "figureurl_1"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18d

    .line 287
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "iconQzone"

    const-string v3, "figureurl_1"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e1

    .line 288
    :cond_18d
    const-string v0, "figureurl"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 289
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "iconQzone"

    const-string v3, "figureurl"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e1

    .line 302
    :cond_1a8
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c0

    .line 303
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "gender"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14a

    .line 305
    :cond_1c0
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "gender"

    const-string v3, "2"

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c9
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_1c9} :catch_4a

    goto :goto_14a
.end method
