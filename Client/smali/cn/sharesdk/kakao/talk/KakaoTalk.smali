.class public Lcn/sharesdk/kakao/talk/KakaoTalk;
.super Lcn/sharesdk/framework/Platform;
.source "KakaoTalk.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcn/sharesdk/kakao/talk/KakaoTalk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/kakao/talk/KakaoTalk;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/kakao/talk/KakaoTalk;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/kakao/talk/KakaoTalk;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/kakao/talk/KakaoTalk;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcn/sharesdk/kakao/talk/KakaoTalk;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 114
    invoke-static {p0}, Lcn/sharesdk/kakao/talk/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/kakao/talk/a;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/kakao/talk/a;->a(Ljava/lang/String;)V

    .line 117
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcn/sharesdk/kakao/talk/KakaoTalk$3;

    invoke-direct {v2, p0, p1, v0}, Lcn/sharesdk/kakao/talk/KakaoTalk$3;-><init>(Lcn/sharesdk/kakao/talk/KakaoTalk;Ljava/lang/String;Lcn/sharesdk/kakao/talk/a;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 128
    return-void
.end method

.method static synthetic b(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 87
    invoke-static {p0}, Lcn/sharesdk/kakao/talk/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/kakao/talk/a;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/kakao/talk/a;->a(Ljava/lang/String;)V

    .line 89
    new-instance v1, Lcn/sharesdk/kakao/talk/KakaoTalk$2;

    invoke-direct {v1, p0}, Lcn/sharesdk/kakao/talk/KakaoTalk$2;-><init>(Lcn/sharesdk/kakao/talk/KakaoTalk;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/kakao/talk/a;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 111
    return-void
.end method

.method static synthetic c(Lcn/sharesdk/kakao/talk/KakaoTalk;)V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcn/sharesdk/kakao/talk/KakaoTalk;->c()V

    return-void
.end method

.method static synthetic d(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic h(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic i(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic j(Lcn/sharesdk/kakao/talk/KakaoTalk;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic l(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic m(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic n(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic o(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic p(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic q(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic r(Lcn/sharesdk/kakao/talk/KakaoTalk;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

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

    const/4 v0, 0x0

    .line 138
    if-ne p1, v3, :cond_1d

    .line 139
    invoke-virtual {p0}, Lcn/sharesdk/kakao/talk/KakaoTalk;->isClientValid()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 140
    iget-object v1, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1a

    .line 141
    iget-object v1, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Lcn/sharesdk/kakao/talk/KakaoTalkClientNotExistException;

    invoke-direct {v2}, Lcn/sharesdk/kakao/talk/KakaoTalkClientNotExistException;-><init>()V

    invoke-interface {v1, p0, v3, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 152
    :cond_1a
    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    .line 145
    goto :goto_1a

    .line 148
    :cond_1d
    invoke-virtual {p0}, Lcn/sharesdk/kakao/talk/KakaoTalk;->isAuthValid()Z

    move-result v2

    if-eqz v2, :cond_25

    move v0, v1

    .line 149
    goto :goto_1a

    .line 151
    :cond_25
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/kakao/talk/KakaoTalk;->innerAuthorize(ILjava/lang/Object;)V

    goto :goto_1a
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 4
    .param p1, "permission"    # [Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0}, Lcn/sharesdk/kakao/talk/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/kakao/talk/a;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/kakao/talk/a;->a(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Lcn/sharesdk/kakao/talk/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lcn/sharesdk/kakao/talk/KakaoTalk;->isSSODisable()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 50
    new-instance v1, Lcn/sharesdk/kakao/talk/KakaoTalk$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/kakao/talk/KakaoTalk$1;-><init>(Lcn/sharesdk/kakao/talk/KakaoTalk;)V

    .line 79
    invoke-virtual {v0, v1}, Lcn/sharesdk/kakao/talk/a;->a(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 84
    :goto_1d
    return-void

    .line 82
    :cond_1e
    invoke-direct {p0}, Lcn/sharesdk/kakao/talk/KakaoTalk;->c()V

    goto :goto_1d
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
    .line 280
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_9

    .line 281
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 283
    :cond_9
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 8
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    .line 157
    invoke-static {p0}, Lcn/sharesdk/kakao/talk/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/kakao/talk/a;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/kakao/talk/a;->a(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcn/sharesdk/kakao/talk/KakaoTalk;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getSite()Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 166
    :try_start_21
    new-instance v5, Lcn/sharesdk/kakao/talk/KakaoTalk$4;

    invoke-direct {v5, p0, p1}, Lcn/sharesdk/kakao/talk/KakaoTalk$4;-><init>(Lcn/sharesdk/kakao/talk/KakaoTalk;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 193
    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/kakao/talk/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_29} :catch_2a

    .line 199
    :cond_29
    :goto_29
    return-void

    .line 194
    :catch_2a
    move-exception v0

    .line 195
    iget-object v1, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_29

    .line 196
    iget-object v1, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_29
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
    .line 298
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/b/b/f$a;
    .registers 7
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
    .line 234
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 235
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 236
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 238
    :cond_15
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 239
    iget-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_28
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 242
    iget-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_3b
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getSite()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 245
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 246
    const-string v2, "site"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getSite()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 249
    :cond_55
    return-object v0
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 260
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 261
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 263
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
    .line 294
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
    .line 290
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
    .line 286
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 273
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 275
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    sget-object v0, Lcn/sharesdk/kakao/talk/KakaoTalk;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .registers 2

    .prologue
    .line 30
    const/16 v0, 0x2c

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 302
    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-string v0, "AppKey"

    invoke-virtual {p0, v0}, Lcn/sharesdk/kakao/talk/KakaoTalk;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->a:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public isClientValid()Z
    .registers 3

    .prologue
    .line 131
    invoke-static {p0}, Lcn/sharesdk/kakao/talk/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/kakao/talk/a;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/kakao/talk/a;->a(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Lcn/sharesdk/kakao/talk/a;->a()Z

    move-result v0

    return v0
.end method

.method public removeAccount(Z)V
    .registers 3
    .param p1, "removeCookie"    # Z

    .prologue
    .line 254
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcn/sharesdk/kakao/talk/KakaoTalk;->isAuthValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 255
    invoke-super {p0, p1}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    .line 257
    :cond_b
    return-void
.end method

.method protected setNetworkDevinfo()V
    .registers 3

    .prologue
    .line 42
    const-string v0, "api_key"

    const-string v1, "AppKey"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/kakao/talk/KakaoTalk;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->a:Ljava/lang/String;

    .line 43
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 266
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 267
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 269
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 8
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    .line 203
    invoke-static {p0}, Lcn/sharesdk/kakao/talk/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/kakao/talk/a;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/kakao/talk/a;->a(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lcn/sharesdk/kakao/utils/a;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 207
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2e

    .line 208
    :cond_1d
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_2e

    .line 209
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "http error"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v5, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 230
    :cond_2d
    :goto_2d
    return-void

    .line 213
    :cond_2e
    const-string v0, "error"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 214
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_53

    .line 215
    iget-object v1, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v3, Ljava/lang/Throwable;

    const-string v0, "error"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v5, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_2d

    .line 219
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 221
    const-string v0, "properties"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 222
    const-string v1, "nickname"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 223
    const-string v4, "profile_image"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    iget-object v4, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v4, v3}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 225
    iget-object v3, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v4, "nickname"

    invoke-virtual {v3, v4, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "icon"

    invoke-virtual {v1, v3, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_2d

    .line 228
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/KakaoTalk;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v5, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_2d
.end method
