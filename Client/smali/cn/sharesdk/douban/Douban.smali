.class public Lcn/sharesdk/douban/Douban;
.super Lcn/sharesdk/framework/Platform;
.source "Douban.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/douban/Douban$ShareParams;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcn/sharesdk/douban/Douban;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/douban/Douban;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/douban/Douban;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method private a(Ljava/lang/String;I)Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 286
    iget-object v1, p0, Lcn/sharesdk/douban/Douban;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 288
    :cond_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 311
    :cond_13
    :goto_13
    return-object v0

    .line 292
    :cond_14
    invoke-static {p0}, Lcn/sharesdk/douban/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/douban/a;

    move-result-object v1

    .line 295
    const/4 v2, 0x2

    if-ne v2, p2, :cond_26

    .line 296
    :try_start_1b
    invoke-virtual {v1, p1}, Lcn/sharesdk/douban/a;->e(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 303
    :goto_1f
    if-eqz v1, :cond_13

    .line 307
    invoke-virtual {p0, p2, v1}, Lcn/sharesdk/douban/Douban;->filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_13

    .line 297
    :cond_26
    const/16 v2, 0xb

    if-ne v2, p2, :cond_2f

    .line 298
    invoke-virtual {v1, p1}, Lcn/sharesdk/douban/a;->g(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    goto :goto_1f

    .line 300
    :cond_2f
    invoke-virtual {v1, p1}, Lcn/sharesdk/douban/a;->f(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_32} :catch_34

    move-result-object v1

    goto :goto_1f

    .line 309
    :catch_34
    move-exception v1

    .line 310
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method static synthetic a(Lcn/sharesdk/douban/Douban;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/douban/Douban;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/douban/Douban;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/douban/Douban;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/douban/Douban;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/douban/Douban;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/douban/Douban;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/douban/Douban;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic h(Lcn/sharesdk/douban/Douban;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 6
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcn/sharesdk/douban/Douban;->isAuthValid()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 94
    invoke-static {p0}, Lcn/sharesdk/douban/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/douban/a;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcn/sharesdk/douban/Douban;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/douban/Douban;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/douban/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcn/sharesdk/douban/Douban;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/douban/a;->a(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcn/sharesdk/douban/Douban;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/douban/a;->c(Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x1

    .line 102
    :goto_20
    return v0

    .line 101
    :cond_21
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/douban/Douban;->innerAuthorize(ILjava/lang/Object;)V

    .line 102
    const/4 v0, 0x0

    goto :goto_20
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # [Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0}, Lcn/sharesdk/douban/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/douban/a;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcn/sharesdk/douban/Douban;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/douban/Douban;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/douban/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcn/sharesdk/douban/Douban;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/douban/a;->a(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, p1}, Lcn/sharesdk/douban/a;->a([Ljava/lang/String;)V

    .line 57
    new-instance v1, Lcn/sharesdk/douban/Douban$1;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/douban/Douban$1;-><init>(Lcn/sharesdk/douban/Douban;Lcn/sharesdk/douban/a;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/douban/a;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 90
    return-void
.end method

.method protected doCustomerProtocol(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)V
    .registers 9
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
    .line 210
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p0}, Lcn/sharesdk/douban/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/douban/a;

    move-result-object v0

    .line 211
    invoke-virtual {v0, p1, p2, p4, p5}, Lcn/sharesdk/douban/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 213
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_2a

    .line 214
    :cond_19
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_29

    .line 215
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, " response is null"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, p3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 235
    :cond_29
    :goto_29
    return-void

    .line 220
    :cond_2a
    const-string v2, "code"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 221
    iget-object v1, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_29

    .line 222
    iget-object v1, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, p3, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_29

    .line 230
    :catch_41
    move-exception v0

    .line 231
    iget-object v1, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_29

    .line 232
    iget-object v1, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x8

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_29

    .line 227
    :cond_4e
    :try_start_4e
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_29

    .line 228
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_57} :catch_41

    goto :goto_29
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 8
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/16 v5, 0x9

    .line 106
    invoke-static {p0}, Lcn/sharesdk/douban/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/douban/a;

    move-result-object v1

    .line 108
    :try_start_6
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    .line 109
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcn/sharesdk/douban/Douban;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-virtual {p1, v2}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 114
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 117
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_3d
    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/douban/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 123
    if-nez v1, :cond_5f

    .line 124
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_5e

    .line 125
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, " response is null"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 144
    :cond_5e
    :goto_5e
    return-void

    .line 130
    :cond_5f
    const-string v2, "code"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 131
    iget-object v1, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_5e

    .line 132
    iget-object v1, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_77} :catch_78

    goto :goto_5e

    .line 141
    :catch_78
    move-exception v0

    .line 142
    iget-object v1, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v5, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_5e

    .line 137
    :cond_7f
    :try_start_7f
    const-string v0, "ShareParams"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_5e

    .line 139
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    invoke-interface {v0, p0, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_8f} :catch_78

    goto :goto_5e
.end method

.method protected filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    .registers 11
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
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 316
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 317
    sparse-switch p1, :sswitch_data_10c

    move-object v0, v2

    .line 376
    :goto_a
    return-object v0

    .line 319
    :sswitch_b
    const-string v0, "type"

    const-string v1, "FOLLOWING"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :goto_12
    const-string v0, "snsplat"

    invoke-virtual {p0}, Lcn/sharesdk/douban/Douban;->getPlatformId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v0, "snsuid"

    iget-object v1, p0, Lcn/sharesdk/douban/Douban;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v0, "fakelist"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 336
    if-nez v0, :cond_44

    move-object v0, v2

    .line 337
    goto :goto_a

    .line 322
    :sswitch_34
    const-string v0, "type"

    const-string v1, "FOLLOWERS"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 325
    :sswitch_3c
    const-string v0, "type"

    const-string v1, "FRIENDS"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 339
    :cond_44
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 341
    check-cast v0, Ljava/util/ArrayList;

    .line 342
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_53

    move-object v0, v2

    .line 343
    goto :goto_a

    .line 345
    :cond_53
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_57
    :goto_57
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 346
    if-eqz v0, :cond_57

    .line 349
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 350
    const-string v1, "snsuid"

    const-string v7, "id"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v1, "nickname"

    const-string v7, "screen_name"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v1, "snsUserUrl"

    const-string v7, "url"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v1, "large_avatar"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 354
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_bb

    .line 355
    const-string v1, "icon_avatar"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 356
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_bb

    .line 357
    const-string v1, "small_avatar"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 360
    :cond_bb
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c6

    .line 361
    const-string v7, "icon"

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_c6
    const-string v1, "resume"

    const-string v7, "description"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v1, "created_at"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->strToDate(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 367
    const-string v1, "snsregat"

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_57

    .line 370
    :cond_f1
    if-eqz v4, :cond_f9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_fc

    :cond_f9
    move-object v0, v2

    .line 371
    goto/16 :goto_a

    .line 374
    :cond_fc
    const-string v0, "nextCursor"

    const-string v1, "0_true"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v0, "list"

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    .line 376
    goto/16 :goto_a

    .line 317
    nop

    :sswitch_data_10c
    .sparse-switch
        0x2 -> :sswitch_b
        0xa -> :sswitch_3c
        0xb -> :sswitch_34
    .end sparse-switch
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
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 238
    new-instance v1, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v1}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 239
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 240
    if-eqz p2, :cond_5b

    .line 241
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/framework/b/b/f$a;->a:Ljava/lang/String;

    .line 243
    const-string v0, "attachments"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 244
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_59

    .line 245
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 246
    if-eqz v0, :cond_59

    .line 248
    const-string v2, "media"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 249
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_59

    .line 250
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 251
    if-eqz v0, :cond_59

    .line 252
    iget-object v2, v1, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    const-string v3, "src"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_59
    iput-object p2, v1, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 259
    :cond_5b
    return-object v1
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 148
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 150
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
    .line 281
    const/16 v0, 0xa

    invoke-direct {p0, p3, v0}, Lcn/sharesdk/douban/Douban;->a(Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object v0

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
    .line 276
    const/16 v0, 0xb

    invoke-direct {p0, p3, v0}, Lcn/sharesdk/douban/Douban;->a(Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object v0

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
    .line 271
    const/4 v0, 0x2

    invoke-direct {p0, p3, v0}, Lcn/sharesdk/douban/Douban;->a(Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 264
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 265
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 267
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    sget-object v0, Lcn/sharesdk/douban/Douban;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x5

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, "ApiKey"

    invoke-virtual {p0, v0}, Lcn/sharesdk/douban/Douban;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/douban/Douban;->a:Ljava/lang/String;

    .line 30
    const-string v0, "Secret"

    invoke-virtual {p0, v0}, Lcn/sharesdk/douban/Douban;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/douban/Douban;->b:Ljava/lang/String;

    .line 31
    const-string v0, "RedirectUri"

    invoke-virtual {p0, v0}, Lcn/sharesdk/douban/Douban;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/douban/Douban;->c:Ljava/lang/String;

    .line 32
    return-void
.end method

.method protected setNetworkDevinfo()V
    .registers 3

    .prologue
    .line 47
    const-string v0, "api_key"

    const-string v1, "ApiKey"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/douban/Douban;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/douban/Douban;->a:Ljava/lang/String;

    .line 48
    const-string v0, "secret"

    const-string v1, "Secret"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/douban/Douban;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/douban/Douban;->b:Ljava/lang/String;

    .line 49
    const-string v0, "redirect_uri"

    const-string v1, "RedirectUri"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/douban/Douban;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/douban/Douban;->c:Ljava/lang/String;

    .line 50
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 154
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 156
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 7
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    .line 160
    :try_start_2
    invoke-static {p0}, Lcn/sharesdk/douban/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/douban/a;

    move-result-object v0

    .line 161
    invoke-virtual {v0, p1}, Lcn/sharesdk/douban/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 164
    if-nez v1, :cond_28

    .line 165
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_27

    .line 166
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, " response is null"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 204
    :cond_27
    :goto_27
    return-void

    .line 171
    :cond_28
    const-string v2, "code"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 172
    iget-object v1, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_27

    .line 173
    iget-object v1, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_40} :catch_41

    goto :goto_27

    .line 199
    :catch_41
    move-exception v0

    .line 200
    iget-object v1, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_27

    .line 201
    iget-object v1, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_27

    .line 178
    :cond_4c
    if-nez p1, :cond_c9

    .line 179
    :try_start_4e
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "nickname"

    const-string v3, "name"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "snsUserUrl"

    const-string v3, "alt"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "large_avatar"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 183
    const-string v0, "avatar"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 185
    const-string v0, "small_avatar"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    :cond_94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a1

    .line 189
    iget-object v2, p0, Lcn/sharesdk/douban/Douban;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "icon"

    invoke-virtual {v2, v3, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_a1
    iget-object v2, p0, Lcn/sharesdk/douban/Douban;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "resume"

    const-string v0, "desc"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v0, "created"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->strToDate(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v2, p0, Lcn/sharesdk/douban/Douban;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "snsregat"

    invoke-virtual {v2, v3, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_c9
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_27

    .line 197
    iget-object v0, p0, Lcn/sharesdk/douban/Douban;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x8

    invoke-interface {v0, p0, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_d4
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_d4} :catch_41

    goto/16 :goto_27
.end method
