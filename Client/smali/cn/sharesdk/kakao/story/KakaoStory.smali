.class public Lcn/sharesdk/kakao/story/KakaoStory;
.super Lcn/sharesdk/framework/Platform;
.source "KakaoStory.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcn/sharesdk/framework/authorize/AuthorizeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcn/sharesdk/kakao/story/KakaoStory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/kakao/story/KakaoStory;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    .line 32
    new-instance v0, Lcn/sharesdk/kakao/story/KakaoStory$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/kakao/story/KakaoStory$1;-><init>(Lcn/sharesdk/kakao/story/KakaoStory;)V

    iput-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->b:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 51
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/kakao/story/KakaoStory;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/kakao/story/KakaoStory;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/kakao/story/KakaoStory;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcn/sharesdk/kakao/story/KakaoStory;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 114
    invoke-static {p0}, Lcn/sharesdk/kakao/story/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/kakao/story/a;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcn/sharesdk/kakao/story/KakaoStory;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/kakao/story/a;->b(Ljava/lang/String;)V

    .line 117
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcn/sharesdk/kakao/story/KakaoStory$3;

    invoke-direct {v2, p0, p1, v0}, Lcn/sharesdk/kakao/story/KakaoStory$3;-><init>(Lcn/sharesdk/kakao/story/KakaoStory;Ljava/lang/String;Lcn/sharesdk/kakao/story/a;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 126
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 127
    return-void
.end method

.method static synthetic b(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->b:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic h(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic i(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic j(Lcn/sharesdk/kakao/story/KakaoStory;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic l(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic m(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic n(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic o(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic p(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic q(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic r(Lcn/sharesdk/kakao/story/KakaoStory;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

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

    .line 137
    if-ne p1, v3, :cond_1d

    .line 138
    invoke-virtual {p0}, Lcn/sharesdk/kakao/story/KakaoStory;->isClientValid()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 139
    iget-object v1, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1a

    .line 140
    iget-object v1, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Lcn/sharesdk/kakao/story/KakaoStoryClientNotExistException;

    invoke-direct {v2}, Lcn/sharesdk/kakao/story/KakaoStoryClientNotExistException;-><init>()V

    invoke-interface {v1, p0, v3, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 151
    :cond_1a
    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    .line 144
    goto :goto_1a

    .line 147
    :cond_1d
    invoke-virtual {p0}, Lcn/sharesdk/kakao/story/KakaoStory;->isAuthValid()Z

    move-result v2

    if-eqz v2, :cond_25

    move v0, v1

    .line 148
    goto :goto_1a

    .line 150
    :cond_25
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/kakao/story/KakaoStory;->innerAuthorize(ILjava/lang/Object;)V

    goto :goto_1a
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 4
    .param p1, "permission"    # [Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p0}, Lcn/sharesdk/kakao/story/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/kakao/story/a;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcn/sharesdk/kakao/story/KakaoStory;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/kakao/story/a;->b(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Lcn/sharesdk/kakao/story/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lcn/sharesdk/kakao/story/KakaoStory;->isSSODisable()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 79
    new-instance v1, Lcn/sharesdk/kakao/story/KakaoStory$2;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/kakao/story/KakaoStory$2;-><init>(Lcn/sharesdk/kakao/story/KakaoStory;Lcn/sharesdk/kakao/story/a;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/kakao/story/a;->a(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 111
    :goto_1d
    return-void

    .line 108
    :cond_1e
    iget-object v1, p0, Lcn/sharesdk/kakao/story/KakaoStory;->b:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-virtual {v0, v1}, Lcn/sharesdk/kakao/story/a;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

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
    .line 317
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_9

    .line 318
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 320
    :cond_9
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 16
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/16 v13, 0x9

    .line 156
    invoke-static {p0}, Lcn/sharesdk/kakao/story/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/kakao/story/a;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcn/sharesdk/kakao/story/KakaoStory;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/kakao/story/a;->b(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v10

    .line 160
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getSite()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getComment()Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    .line 164
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v9

    .line 165
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 168
    :try_start_27
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_50

    .line 169
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 170
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_50

    .line 172
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 176
    :cond_50
    new-instance v6, Lcn/sharesdk/kakao/story/KakaoStory$4;

    invoke-direct {v6, p0, p1}, Lcn/sharesdk/kakao/story/KakaoStory$4;-><init>(Lcn/sharesdk/kakao/story/KakaoStory;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 203
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_67

    .line 204
    const/4 v1, 0x0

    invoke-virtual {p0, v10, v1}, Lcn/sharesdk/kakao/story/KakaoStory;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/kakao/story/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 221
    :cond_66
    :goto_66
    return-void

    .line 207
    :cond_67
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_80

    .line 208
    const/4 v8, 0x2

    move-object v7, v0

    move-object v11, v3

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Lcn/sharesdk/kakao/story/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_74} :catch_75

    goto :goto_66

    .line 216
    :catch_75
    move-exception v0

    .line 217
    iget-object v1, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_66

    .line 218
    iget-object v1, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v13, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_66

    .line 209
    :cond_80
    :try_start_80
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8f

    .line 210
    const/4 v8, 0x6

    move-object v7, v0

    move-object v9, v1

    move-object v11, v3

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Lcn/sharesdk/kakao/story/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_66

    .line 212
    :cond_8f
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_66

    .line 213
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Missing parameters"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_a1} :catch_75

    goto :goto_66
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
    .line 335
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
    .line 266
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v1}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 267
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 269
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v4

    .line 270
    const/4 v0, 0x0

    .line 271
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 272
    iput-object v2, v1, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 273
    const/4 v0, 0x1

    .line 281
    :cond_1b
    :goto_1b
    if-eqz v0, :cond_48

    .line 282
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 283
    const-string v2, "site"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getSite()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v2, "title"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v2, "comment"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getComment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 287
    iget-object v0, v1, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_48
    if-eqz p2, :cond_4c

    .line 291
    iput-object p2, v1, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 293
    :cond_4c
    return-object v1

    .line 274
    :cond_4d
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 275
    iget-object v2, v1, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 276
    :cond_59
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 277
    iget-object v2, v1, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 297
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 298
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 300
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
    .line 331
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
    .line 327
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
    .line 323
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 310
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 312
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    sget-object v0, Lcn/sharesdk/kakao/story/KakaoStory;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .registers 2

    .prologue
    .line 58
    const/16 v0, 0x2d

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string v0, "AppKey"

    invoke-virtual {p0, v0}, Lcn/sharesdk/kakao/story/KakaoStory;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->a:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public isClientValid()Z
    .registers 3

    .prologue
    .line 130
    invoke-static {p0}, Lcn/sharesdk/kakao/story/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/kakao/story/a;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcn/sharesdk/kakao/story/KakaoStory;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/kakao/story/a;->b(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Lcn/sharesdk/kakao/story/a;->a()Z

    move-result v0

    return v0
.end method

.method public removeAccount(Z)V
    .registers 3
    .param p1, "removeCookie"    # Z

    .prologue
    .line 259
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcn/sharesdk/kakao/story/KakaoStory;->isAuthValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 260
    invoke-super {p0, p1}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    .line 262
    :cond_b
    return-void
.end method

.method protected setNetworkDevinfo()V
    .registers 3

    .prologue
    .line 70
    const-string v0, "api_key"

    const-string v1, "AppKey"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/kakao/story/KakaoStory;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->a:Ljava/lang/String;

    .line 71
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 304
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 306
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 9
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x8

    .line 225
    invoke-static {p0}, Lcn/sharesdk/kakao/story/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/kakao/story/a;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcn/sharesdk/kakao/story/KakaoStory;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/kakao/story/a;->b(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcn/sharesdk/kakao/story/KakaoStory;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-static {v1}, Lcn/sharesdk/kakao/utils/a;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 229
    invoke-virtual {v0, v1}, Lcn/sharesdk/kakao/story/a;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 230
    if-eqz v2, :cond_21

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_32

    .line 231
    :cond_21
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_32

    .line 232
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "http error"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v6, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 255
    :cond_31
    :goto_31
    return-void

    .line 236
    :cond_32
    const-string v0, "error"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 237
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_57

    .line 238
    iget-object v1, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v3, Ljava/lang/Throwable;

    const-string v0, "error"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v6, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_31

    .line 242
    :cond_57
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

    move-result-object v1

    .line 244
    const-string v0, "properties"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 245
    const-string v4, "profile_image"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    iget-object v4, p0, Lcn/sharesdk/kakao/story/KakaoStory;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v4, v1}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 248
    iget-object v4, p0, Lcn/sharesdk/kakao/story/KakaoStory;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v5, "nickname"

    const-string v1, "nickName"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcn/sharesdk/kakao/story/KakaoStory;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v4, "icon"

    invoke-virtual {v1, v4, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcn/sharesdk/kakao/story/KakaoStory;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v4, "snsUserUrl"

    const-string v0, "permalink"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v0, "id"

    const-string v1, "id"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_31

    .line 253
    iget-object v0, p0, Lcn/sharesdk/kakao/story/KakaoStory;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v6, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto/16 :goto_31
.end method
