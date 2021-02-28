.class public Lcn/sharesdk/google/GooglePlus;
.super Lcn/sharesdk/framework/Platform;
.source "GooglePlus.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Lcn/sharesdk/google/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcn/sharesdk/google/GooglePlus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/google/GooglePlus;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    .line 40
    invoke-static {p0}, Lcn/sharesdk/google/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/google/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/google/GooglePlus;->a:Lcn/sharesdk/google/a;

    .line 41
    return-void
.end method

.method static synthetic A(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/google/GooglePlus;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/google/GooglePlus;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/google/a;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->a:Lcn/sharesdk/google/a;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic h(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic i(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic j(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic k(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic l(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic m(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic n(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic o(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic p(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic q(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic r(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic s(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic t(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic u(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic v(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic w(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic x(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic y(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic z(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 6
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 180
    const/16 v1, 0x9

    if-ne p1, v1, :cond_6

    .line 198
    :cond_5
    :goto_5
    return v0

    .line 184
    :cond_6
    invoke-super {p0}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 185
    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus;->a:Lcn/sharesdk/google/a;

    iget-object v2, p0, Lcn/sharesdk/google/GooglePlus;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/sharesdk/google/a;->a(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus;->a:Lcn/sharesdk/google/a;

    iget-object v2, p0, Lcn/sharesdk/google/GooglePlus;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/sharesdk/google/a;->b(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus;->a:Lcn/sharesdk/google/a;

    iget-object v2, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/sharesdk/google/a;->d(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 190
    iget-object v2, p0, Lcn/sharesdk/google/GooglePlus;->a:Lcn/sharesdk/google/a;

    invoke-virtual {v2, v1}, Lcn/sharesdk/google/a;->d(Ljava/lang/String;)V

    goto :goto_5

    .line 193
    :cond_37
    invoke-virtual {p0}, Lcn/sharesdk/google/GooglePlus;->isClientValid()Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "isSigin"

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 197
    :cond_4d
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/google/GooglePlus;->innerAuthorize(ILjava/lang/Object;)V

    .line 198
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # [Ljava/lang/String;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcn/sharesdk/google/GooglePlus;->isClientValid()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcn/sharesdk/google/GooglePlus;->isSSODisable()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 94
    :cond_c
    invoke-virtual {p0, p1}, Lcn/sharesdk/google/GooglePlus;->doWebAuthorize([Ljava/lang/String;)V

    .line 137
    :goto_f
    return-void

    .line 98
    :cond_10
    new-instance v0, Lcn/sharesdk/google/GooglePlus$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/google/GooglePlus$1;-><init>(Lcn/sharesdk/google/GooglePlus;)V

    .line 136
    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus;->a:Lcn/sharesdk/google/a;

    iget-object v2, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1, p1, v0, v2}, Lcn/sharesdk/google/a;->a([Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/PlatformDb;)V

    goto :goto_f
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
    .line 471
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_9

    .line 472
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 474
    :cond_9
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 12
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/16 v8, 0x9

    const/4 v1, 0x0

    .line 203
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 207
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getShareType()I

    move-result v5

    .line 208
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v6

    .line 210
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 211
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_31

    .line 212
    const-string v0, "share text should not null or empty!"

    .line 213
    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v8, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 278
    :cond_31
    :goto_31
    return-void

    .line 220
    :cond_32
    :try_start_32
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6a

    const-string v7, "http"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6a

    move-object v0, v1

    .line 237
    :goto_41
    new-instance v3, Lcn/sharesdk/google/GooglePlus$3;

    invoke-direct {v3, p0, p1}, Lcn/sharesdk/google/GooglePlus$3;-><init>(Lcn/sharesdk/google/GooglePlus;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 264
    invoke-virtual {p0}, Lcn/sharesdk/google/GooglePlus;->isClientValid()Z

    move-result v7

    if-eqz v7, :cond_b0

    iget-boolean v7, p0, Lcn/sharesdk/google/GooglePlus;->d:Z

    if-eqz v7, :cond_b0

    .line 265
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_aa

    const/4 v4, 0x6

    if-ne v5, v4, :cond_aa

    .line 266
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->a:Lcn/sharesdk/google/a;

    invoke-virtual {v0, v2, v6, v3}, Lcn/sharesdk/google/a;->a(Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_5e} :catch_5f

    goto :goto_31

    .line 273
    :catch_5f
    move-exception v0

    .line 274
    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_31

    .line 275
    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v8, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_31

    .line 223
    :cond_6a
    :try_start_6a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7f

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7f

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 224
    goto :goto_41

    .line 225
    :cond_7f
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a8

    const-string v7, "http"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a8

    .line 226
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 227
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 229
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_a4
    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 232
    goto :goto_41

    :cond_a8
    move-object v0, v1

    .line 234
    goto :goto_41

    .line 268
    :cond_aa
    iget-object v4, p0, Lcn/sharesdk/google/GooglePlus;->a:Lcn/sharesdk/google/a;

    invoke-virtual {v4, v2, v0, v1, v3}, Lcn/sharesdk/google/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_31

    .line 271
    :cond_b0
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->a:Lcn/sharesdk/google/a;

    invoke-virtual {v0, v2, v4, v3}, Lcn/sharesdk/google/a;->b(Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_b5} :catch_5f

    goto/16 :goto_31
.end method

.method protected doWebAuthorize([Ljava/lang/String;)V
    .registers 4
    .param p1, "permission"    # [Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->a:Lcn/sharesdk/google/a;

    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/google/a;->a(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->a:Lcn/sharesdk/google/a;

    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/google/a;->b(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->a:Lcn/sharesdk/google/a;

    invoke-virtual {v0, p1}, Lcn/sharesdk/google/a;->a([Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->a:Lcn/sharesdk/google/a;

    new-instance v1, Lcn/sharesdk/google/GooglePlus$2;

    invoke-direct {v1, p0}, Lcn/sharesdk/google/GooglePlus$2;-><init>(Lcn/sharesdk/google/GooglePlus;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/google/a;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 176
    return-void
.end method

.method protected filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    .registers 14
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
    .line 490
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 491
    sparse-switch p1, :sswitch_data_2b4

    .line 502
    const/4 v0, 0x0

    .line 620
    :goto_9
    return-object v0

    .line 493
    :sswitch_a
    const-string v0, "type"

    const-string v1, "FOLLOWING"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    :goto_11
    const-string v0, "snsplat"

    invoke-virtual {p0}, Lcn/sharesdk/google/GooglePlus;->getPlatformId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const-string v0, "snsuid"

    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string v0, "totalItems"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 509
    if-nez v0, :cond_4b

    .line 510
    const/4 v0, 0x0

    goto :goto_9

    .line 496
    :sswitch_3b
    const-string v0, "type"

    const-string v1, "FOLLOWERS"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 499
    :sswitch_43
    const-string v0, "type"

    const-string v1, "FRIENDS"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 514
    :cond_4b
    const-string v0, "items"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 515
    if-nez v0, :cond_55

    .line 516
    const/4 v0, 0x0

    goto :goto_9

    .line 518
    :cond_55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 519
    check-cast v0, Ljava/util/ArrayList;

    .line 520
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_64

    .line 521
    const/4 v0, 0x0

    goto :goto_9

    .line 523
    :cond_64
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_68
    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_293

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 524
    if-eqz v0, :cond_68

    .line 527
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 528
    const-string v1, "snsuid"

    const-string v6, "id"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string v1, "nickname"

    const-string v6, "displayName"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 531
    :goto_a9
    if-eqz v1, :cond_ba

    .line 532
    const-string v6, "icon"

    const-string v7, "url"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    :cond_ba
    const-string v1, "verified"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 535
    const-string v6, "true"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d3

    .line 537
    const-string v1, "secretType"

    const-string v6, "1"

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    :goto_d3
    const-string v1, "gender"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 543
    const-string v6, "male"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1dc

    .line 544
    const-string v1, "gender"

    const-string v6, "0"

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :goto_ec
    const-string v1, "snsUserUrl"

    const-string v6, "url"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string v1, "resume"

    const-string v6, "aboutMe"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const-string v1, "birthday"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_156

    .line 552
    :try_start_112
    const-string v1, "birthday"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 553
    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 554
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 555
    const/4 v7, 0x1

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-static {v8}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 556
    const/4 v7, 0x2

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-static {v8}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 557
    const/4 v7, 0x5

    const/4 v8, 0x2

    aget-object v1, v1, v8

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v7, v1}, Ljava/util/Calendar;->set(II)V

    .line 558
    const-string v1, "birthday"

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_156
    .catch Ljava/lang/Throwable; {:try_start_112 .. :try_end_156} :catch_1e5

    .line 564
    :cond_156
    :goto_156
    const-string v1, "organizations"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28e

    .line 565
    const-string v1, "organizations"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 566
    if-eqz v0, :cond_28e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_28e

    .line 567
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 568
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 569
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_17c
    :goto_17c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 570
    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 571
    const-string v9, "school|college|university"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 572
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 573
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    .line 574
    if-eqz v9, :cond_1ef

    .line 575
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 576
    const-string v9, "school_type"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-string v9, "school"

    const-string v10, "name"

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const-string v0, "background"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17c

    .line 530
    :cond_1d0
    const/4 v1, 0x0

    goto/16 :goto_a9

    .line 539
    :cond_1d3
    const-string v1, "secretType"

    const-string v6, "0"

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d3

    .line 546
    :cond_1dc
    const-string v1, "gender"

    const-string v6, "1"

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_ec

    .line 559
    :catch_1e5
    move-exception v1

    .line 560
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto/16 :goto_156

    .line 583
    :cond_1ef
    const-string v9, "work|company|firm|enterprise"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 584
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 585
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    .line 586
    if-eqz v1, :cond_17c

    .line 587
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 588
    const-string v9, "company"

    const-string v10, "name"

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const-string v9, "dept"

    const-string v10, "department"

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const-string v9, "position"

    const-string v10, "title"

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17c

    .line 595
    :cond_23a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_264

    .line 596
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 597
    const-string v1, "list"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 599
    const-string v1, "educationJSONArrayStr"

    const/16 v6, 0x8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    :cond_264
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28e

    .line 603
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 604
    const-string v1, "list"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 606
    const-string v1, "workJSONArrayStr"

    const/16 v6, 0x8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    :cond_28e
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_68

    .line 613
    :cond_293
    if-eqz v3, :cond_29b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_29e

    .line 614
    :cond_29b
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 616
    :cond_29e
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2ac

    .line 617
    const-string v0, "nextPageToken"

    const-string v1, "nextPageToken"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    :cond_2ac
    const-string v0, "list"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 620
    goto/16 :goto_9

    .line 491
    :sswitch_data_2b4
    .sparse-switch
        0x2 -> :sswitch_a
        0xa -> :sswitch_43
        0xb -> :sswitch_3b
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
    .line 409
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 410
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 411
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 413
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 414
    iget-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_1e
    :goto_1e
    return-object v0

    .line 415
    :cond_1f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 416
    iget-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 422
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 423
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 425
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
    .line 485
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
    .line 481
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
    .line 477
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 9
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 434
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 435
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p3

    .line 437
    :cond_d
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 438
    const-string p3, "me"

    .line 441
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->a:Lcn/sharesdk/google/a;

    invoke-virtual {v0, p3}, Lcn/sharesdk/google/a;->f(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 442
    if-nez v1, :cond_2d

    .line 443
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_2c

    .line 444
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 466
    :cond_2c
    :goto_2c
    return-void

    .line 449
    :cond_2d
    const-string v0, "error_code"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 450
    const-string v0, "error_code"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 451
    if-eqz v0, :cond_63

    .line 452
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_2c

    .line 453
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_5b} :catch_5c

    goto :goto_2c

    .line 463
    :catch_5c
    move-exception v0

    .line 464
    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_2c

    .line 460
    :cond_63
    :try_start_63
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_2c

    .line 461
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x2

    invoke-interface {v0, p0, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_6d} :catch_5c

    goto :goto_2c
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    sget-object v0, Lcn/sharesdk/google/GooglePlus;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .registers 2

    .prologue
    .line 50
    const/16 v0, 0xe

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "ClientID"

    invoke-virtual {p0, v0}, Lcn/sharesdk/google/GooglePlus;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/google/GooglePlus;->b:Ljava/lang/String;

    .line 45
    const-string v0, "RedirectUrl"

    invoke-virtual {p0, v0}, Lcn/sharesdk/google/GooglePlus;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/google/GooglePlus;->c:Ljava/lang/String;

    .line 46
    const-string v0, "true"

    const-string v1, "ShareByAppClient"

    invoke-virtual {p0, v1}, Lcn/sharesdk/google/GooglePlus;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/google/GooglePlus;->d:Z

    .line 47
    return-void
.end method

.method public isAuthValid()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 63
    invoke-super {p0}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 66
    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcn/sharesdk/google/GooglePlus;->isClientValid()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "isSigin"

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_1e
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isClientValid()Z
    .registers 2

    .prologue
    .line 72
    invoke-static {}, Lcn/sharesdk/google/b;->d()I

    move-result v0

    .line 73
    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public removeAccount(Z)V
    .registers 5
    .param p1, "removeCookie"    # Z

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    .line 84
    :try_start_3
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "isSigin"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->a:Lcn/sharesdk/google/a;

    invoke-virtual {v0}, Lcn/sharesdk/google/a;->a()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_11} :catch_12

    .line 89
    :goto_11
    return-void

    .line 86
    :catch_12
    move-exception v0

    .line 87
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method protected setNetworkDevinfo()V
    .registers 1

    .prologue
    .line 79
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 428
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 429
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 431
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 11
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x8

    .line 283
    invoke-virtual {p0}, Lcn/sharesdk/google/GooglePlus;->isClientValid()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "isSigin"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 285
    const-string v1, "DisplayName"

    iget-object v2, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "nickname"

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v1, "image"

    iget-object v2, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "icon"

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v1, "gender"

    iget-object v2, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "gender"

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v1, "url"

    iget-object v2, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "snsUserUrl"

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v1, "birthday"

    iget-object v2, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "birthday"

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v1, "id"

    iget-object v2, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_72

    .line 293
    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v8, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 405
    :cond_72
    :goto_72
    return-void

    .line 298
    :cond_73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 299
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 301
    :cond_7f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 302
    const-string p1, "me"

    .line 307
    :cond_87
    :try_start_87
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->a:Lcn/sharesdk/google/a;

    invoke-virtual {v0, p1}, Lcn/sharesdk/google/a;->e(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_8c} :catch_213

    move-result-object v2

    .line 316
    if-eqz v2, :cond_72

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_72

    .line 317
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "id"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "nickname"

    const-string v3, "displayName"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v0, "image"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21f

    const-string v0, "image"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 320
    :goto_c5
    if-eqz v0, :cond_d8

    .line 321
    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "icon"

    const-string v4, "url"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_d8
    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "gender"

    const-string v0, "male"

    const-string v4, "gender"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_222

    const-string v0, "0"

    :goto_f0
    invoke-virtual {v1, v3, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "snsUserUrl"

    const-string v3, "url"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "resume"

    const-string v3, "aboutMe"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v0, "verified"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 327
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_226

    .line 329
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "secretType"

    const-string v3, "1"

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :goto_130
    const-string v0, "birthday"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_186

    const-string v0, "birthday"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_186

    .line 337
    :try_start_140
    const-string v0, "birthday"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 338
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 340
    const/4 v3, 0x1

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 341
    const/4 v3, 0x2

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 342
    const/4 v3, 0x5

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 343
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "birthday"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_186
    .catch Ljava/lang/Throwable; {:try_start_140 .. :try_end_186} :catch_231

    .line 349
    :cond_186
    :goto_186
    const-string v0, "organizations"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_208

    .line 351
    :try_start_18e
    const-string v0, "organizations"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 352
    if-eqz v0, :cond_208

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_208

    .line 353
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 354
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 355
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1ac
    :goto_1ac
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_286

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 356
    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 357
    const-string v6, "school|college|university"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 358
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 359
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    .line 360
    if-eqz v6, :cond_23b

    .line 361
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 362
    const-string v6, "school_type"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v6, "school"

    const-string v7, "name"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v0, "background"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1ff
    .catch Ljava/lang/Throwable; {:try_start_18e .. :try_end_1ff} :catch_200

    goto :goto_1ac

    .line 396
    :catch_200
    move-exception v0

    .line 397
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 401
    :cond_208
    :goto_208
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_72

    .line 402
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v8, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto/16 :goto_72

    .line 308
    :catch_213
    move-exception v0

    .line 310
    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_72

    .line 311
    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v8, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_72

    .line 319
    :cond_21f
    const/4 v0, 0x0

    goto/16 :goto_c5

    .line 323
    :cond_222
    const-string v0, "1"

    goto/16 :goto_f0

    .line 332
    :cond_226
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "secretType"

    const-string v3, "0"

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_130

    .line 344
    :catch_231
    move-exception v0

    .line 345
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto/16 :goto_186

    .line 369
    :cond_23b
    :try_start_23b
    const-string v6, "work|company|firm|enterprise"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 370
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 371
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    .line 372
    if-eqz v1, :cond_1ac

    .line 373
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 374
    const-string v6, "company"

    const-string v7, "name"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v6, "dept"

    const-string v7, "department"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v6, "position"

    const-string v7, "title"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1ac

    .line 381
    :cond_286
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2b2

    .line 382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 383
    const-string v1, "list"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "educationJSONArrayStr"

    const/16 v5, 0x8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_2b2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_208

    .line 389
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 390
    const-string v1, "list"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "workJSONArrayStr"

    const/16 v4, 0x8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2de
    .catch Ljava/lang/Throwable; {:try_start_23b .. :try_end_2de} :catch_200

    goto/16 :goto_208
.end method
