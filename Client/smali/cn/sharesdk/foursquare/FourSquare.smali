.class public Lcn/sharesdk/foursquare/FourSquare;
.super Lcn/sharesdk/framework/Platform;
.source "FourSquare.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcn/sharesdk/foursquare/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcn/sharesdk/foursquare/FourSquare;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/foursquare/FourSquare;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    .line 34
    invoke-static {p0}, Lcn/sharesdk/foursquare/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/foursquare/b;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->c:Lcn/sharesdk/foursquare/b;

    .line 35
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/foursquare/FourSquare;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/foursquare/FourSquare;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/foursquare/FourSquare;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/foursquare/FourSquare;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/foursquare/FourSquare;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/foursquare/FourSquare;)Lcn/sharesdk/foursquare/b;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->c:Lcn/sharesdk/foursquare/b;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/foursquare/FourSquare;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/foursquare/FourSquare;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 5
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcn/sharesdk/foursquare/FourSquare;->isAuthValid()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 57
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->c:Lcn/sharesdk/foursquare/b;

    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/foursquare/b;->a(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->c:Lcn/sharesdk/foursquare/b;

    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/foursquare/b;->b(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare;->c:Lcn/sharesdk/foursquare/b;

    invoke-virtual {v1, v0}, Lcn/sharesdk/foursquare/b;->c(Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x1

    .line 65
    :goto_20
    return v0

    .line 64
    :cond_21
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/foursquare/FourSquare;->innerAuthorize(ILjava/lang/Object;)V

    .line 65
    const/4 v0, 0x0

    goto :goto_20
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 4
    .param p1, "permission"    # [Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->c:Lcn/sharesdk/foursquare/b;

    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/foursquare/b;->a(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->c:Lcn/sharesdk/foursquare/b;

    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/foursquare/b;->b(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->c:Lcn/sharesdk/foursquare/b;

    new-instance v1, Lcn/sharesdk/foursquare/FourSquare$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/foursquare/FourSquare$1;-><init>(Lcn/sharesdk/foursquare/FourSquare;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/foursquare/b;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 93
    return-void
.end method

.method protected doCustomerProtocol(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)V
    .registers 6
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
    .line 296
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 10
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/4 v5, 0x0

    const/16 v7, 0x9

    .line 103
    .line 105
    const/4 v1, 0x0

    .line 108
    :try_start_4
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getVenueName()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getLatitude()F

    move-result v2

    .line 110
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getLongitude()F

    move-result v3

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e

    cmpg-float v4, v2, v5

    if-lez v4, :cond_1e

    cmpg-float v4, v3, v5

    if-gtz v4, :cond_31

    .line 112
    :cond_1e
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_30

    .line 113
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "venueName or latitude or longtitude is empty or null!"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 189
    :cond_30
    :goto_30
    return-void

    .line 120
    :cond_31
    cmpl-float v4, v2, v5

    if-lez v4, :cond_5a

    cmpl-float v4, v3, v5

    if-lez v4, :cond_5a

    .line 121
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getVenueDescription()Ljava/lang/String;

    move-result-object v1

    .line 122
    iget-object v4, p0, Lcn/sharesdk/foursquare/FourSquare;->c:Lcn/sharesdk/foursquare/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5, v1}, Lcn/sharesdk/foursquare/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 124
    :cond_5a
    if-nez v1, :cond_79

    .line 126
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->c:Lcn/sharesdk/foursquare/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/foursquare/b;->e(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 128
    :cond_79
    if-eqz v1, :cond_83

    const-string v0, "error"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 129
    :cond_83
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_30

    .line 130
    const-string v0, ""

    .line 131
    if-eqz v1, :cond_94

    .line 132
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_94
    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_a0} :catch_a1

    goto :goto_30

    .line 184
    :catch_a1
    move-exception v0

    .line 185
    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_30

    .line 186
    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v7, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_30

    .line 138
    :cond_ac
    :try_start_ac
    const-string v0, "id"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e5

    .line 143
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    .line 144
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcn/sharesdk/foursquare/FourSquare;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare;->c:Lcn/sharesdk/foursquare/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v4, v2}, Lcn/sharesdk/foursquare/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 148
    :cond_e5
    if-eqz v1, :cond_ef

    const-string v0, "error"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 149
    :cond_ef
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_30

    .line 150
    const-string v0, ""

    .line 151
    if-eqz v1, :cond_100

    .line 152
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_100
    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_30

    .line 158
    :cond_10e
    const-string v0, "id"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_143

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_143

    .line 166
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_143

    .line 169
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 172
    :cond_143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_172

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_172

    .line 173
    iget-object v3, p0, Lcn/sharesdk/foursquare/FourSquare;->c:Lcn/sharesdk/foursquare/b;

    invoke-virtual {v3, v0, v2}, Lcn/sharesdk/foursquare/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 175
    :goto_155
    if-eqz v0, :cond_15f

    const-string v2, "error"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_160

    :cond_15f
    move-object v0, v1

    .line 180
    :cond_160
    const-string v1, "ShareParams"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_30

    .line 182
    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_170
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_170} :catch_a1

    goto/16 :goto_30

    :cond_172
    move-object v0, v1

    goto :goto_155
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
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 339
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 340
    const-string v0, "type"

    const-string v1, "FOLLOWING"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v0, "snsplat"

    invoke-virtual {p0}, Lcn/sharesdk/foursquare/FourSquare;->getPlatformId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v0, "snsuid"

    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v0, "current_limit"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 344
    const-string v0, "current_offset"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 345
    const-string v0, "count"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 346
    if-nez v0, :cond_53

    move-object v0, v2

    .line 413
    :goto_52
    return-object v0

    .line 351
    :cond_53
    const-string v0, "items"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 352
    if-nez v0, :cond_5d

    move-object v0, v2

    .line 353
    goto :goto_52

    .line 355
    :cond_5d
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 356
    check-cast v0, Ljava/util/ArrayList;

    .line 357
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_6c

    move-object v0, v2

    .line 358
    goto :goto_52

    .line 360
    :cond_6c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_70
    :goto_70
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 361
    if-eqz v0, :cond_70

    .line 364
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 365
    const-string v1, "snsuid"

    const-string v9, "id"

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v1, "nickname"

    const-string v9, "firstName"

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v1, "photo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 369
    if-eqz v1, :cond_db

    .line 370
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prefix"

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "100x100"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "suffix"

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    const-string v9, "icon"

    invoke-virtual {v8, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_db
    const-string v1, "gender"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 375
    const-string v9, "male"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_144

    .line 376
    const-string v1, "gender"

    const-string v9, "0"

    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    :goto_f4
    const-string v1, "following"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 384
    if-eqz v1, :cond_10d

    .line 385
    const-string v9, "followerCount"

    const-string v10, "count"

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_10d
    const-string v1, "friends"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 389
    if-eqz v1, :cond_126

    .line 390
    const-string v9, "favouriteCount"

    const-string v10, "count"

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_126
    const-string v1, "checkins"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 394
    if-eqz v0, :cond_13f

    .line 395
    const-string v1, "shareCount"

    const-string v9, "count"

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_13f
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_70

    .line 377
    :cond_144
    const-string v9, "female"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    .line 378
    const-string v1, "gender"

    const-string v9, "1"

    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f4

    .line 380
    :cond_154
    const-string v1, "gender"

    const-string v9, "2"

    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f4

    .line 400
    :cond_15c
    if-eqz v6, :cond_164

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_167

    :cond_164
    move-object v0, v2

    .line 401
    goto/16 :goto_52

    .line 405
    :cond_167
    const-string v0, "_false"

    .line 406
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v5

    .line 407
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v4, v2, :cond_176

    .line 408
    const-string v0, "_true"

    .line 410
    :cond_176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    const-string v1, "nextCursor"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v0, "list"

    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    .line 413
    goto/16 :goto_52
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
    .line 193
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v1}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 194
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 195
    if-eqz p2, :cond_3a

    .line 196
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/framework/b/b/f$a;->a:Ljava/lang/String;

    .line 197
    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 198
    iget-object v0, v1, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    const-string v2, "url"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_30
    const-string v0, "response"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, v1, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 202
    :cond_3a
    return-object v1
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 276
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 278
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
    .line 334
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
    .line 330
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFollowings(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 8
    .param p1, "limit"    # I
    .param p2, "offset"    # I
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
    const/4 v1, 0x0

    .line 300
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 301
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p3

    .line 303
    :cond_d
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 304
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserName()Ljava/lang/String;

    move-result-object p3

    .line 306
    :cond_19
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    move-object v0, v1

    .line 326
    :goto_20
    return-object v0

    .line 310
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->c:Lcn/sharesdk/foursquare/b;

    invoke-virtual {v0, p3, p1, p2}, Lcn/sharesdk/foursquare/b;->a(Ljava/lang/String;II)Ljava/util/HashMap;

    move-result-object v0

    .line 311
    if-nez v0, :cond_2b

    move-object v0, v1

    .line 312
    goto :goto_20

    .line 314
    :cond_2b
    const-string v2, "response"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 315
    if-eqz v0, :cond_5f

    .line 316
    const-string v2, "friends"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 317
    if-eqz v0, :cond_5f

    .line 318
    const-string v2, "current_limit"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v2, "current_offset"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0}, Lcn/sharesdk/foursquare/FourSquare;->filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_55} :catch_57

    move-result-object v0

    goto :goto_20

    .line 323
    :catch_57
    move-exception v0

    .line 324
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_5f
    move-object v0, v1

    .line 326
    goto :goto_20
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 287
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 288
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 290
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    sget-object v0, Lcn/sharesdk/foursquare/FourSquare;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .registers 2

    .prologue
    .line 51
    const/16 v0, 0xd

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string v0, "ClientID"

    invoke-virtual {p0, v0}, Lcn/sharesdk/foursquare/FourSquare;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->a:Ljava/lang/String;

    .line 39
    const-string v0, "RedirectUrl"

    invoke-virtual {p0, v0}, Lcn/sharesdk/foursquare/FourSquare;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->b:Ljava/lang/String;

    .line 40
    return-void
.end method

.method protected setNetworkDevinfo()V
    .registers 3

    .prologue
    .line 96
    const-string v0, "client_id"

    const-string v1, "ClientID"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/foursquare/FourSquare;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->a:Ljava/lang/String;

    .line 97
    const-string v0, "redirect_uri"

    const-string v1, "RedirectUrl"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/foursquare/FourSquare;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->b:Ljava/lang/String;

    .line 98
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 281
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 282
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 284
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 11
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 208
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->c:Lcn/sharesdk/foursquare/b;

    invoke-virtual {v0, p1}, Lcn/sharesdk/foursquare/b;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 209
    if-nez v1, :cond_1d

    .line 210
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1c

    .line 211
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, " response is null"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v8, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 272
    :cond_1c
    :goto_1c
    return-void

    .line 216
    :cond_1d
    const-string v0, "meta"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 218
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const-string v3, "get userInfo code == %s"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "code"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 219
    if-eqz v0, :cond_50

    const-string v2, "200"

    const-string v3, "code"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 220
    :cond_50
    iget-object v0, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1c

    .line 221
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v8, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1c

    .line 227
    :cond_68
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "%s get user infor response %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcn/sharesdk/foursquare/FourSquare;->NAME:Ljava/lang/String;

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 229
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1ad

    .line 230
    const-string v0, "response"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 231
    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 233
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "user id == %s"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "id"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 234
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "user firstName == %s"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "firstName"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 235
    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "id"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "nickname"

    const-string v3, "firstName"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v1, "photo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 239
    if-eqz v1, :cond_11a

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prefix"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "100x100"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suffix"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    iget-object v2, p0, Lcn/sharesdk/foursquare/FourSquare;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "icon"

    invoke-virtual {v2, v3, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_11a
    const-string v1, "gender"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 245
    const-string v2, "male"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_191

    .line 246
    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "gender"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_135
    const-string v1, "following"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 254
    if-eqz v1, :cond_150

    .line 255
    iget-object v2, p0, Lcn/sharesdk/foursquare/FourSquare;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "followerCount"

    const-string v4, "count"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_150
    const-string v1, "friends"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 259
    if-eqz v1, :cond_16b

    .line 260
    iget-object v2, p0, Lcn/sharesdk/foursquare/FourSquare;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "favouriteCount"

    const-string v4, "count"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_16b
    const-string v1, "checkins"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 264
    if-eqz v1, :cond_186

    .line 265
    iget-object v2, p0, Lcn/sharesdk/foursquare/FourSquare;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v3, "shareCount"

    const-string v4, "count"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_186
    :goto_186
    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1c

    .line 270
    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v8, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto/16 :goto_1c

    .line 247
    :cond_191
    const-string v2, "female"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a3

    .line 248
    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "gender"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_135

    .line 250
    :cond_1a3
    iget-object v1, p0, Lcn/sharesdk/foursquare/FourSquare;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "gender"

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_135

    :cond_1ad
    move-object v0, v1

    goto :goto_186
.end method
