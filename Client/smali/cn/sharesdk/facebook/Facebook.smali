.class public Lcn/sharesdk/facebook/Facebook;
.super Lcn/sharesdk/framework/Platform;
.source "Facebook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/facebook/Facebook$ShareParams;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcn/sharesdk/facebook/Facebook;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/facebook/Facebook;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/facebook/Facebook;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/facebook/Facebook;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/facebook/Facebook;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/facebook/Facebook;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/facebook/Facebook;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/facebook/Facebook;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/facebook/Facebook;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/facebook/Facebook;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/facebook/Facebook;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic h(Lcn/sharesdk/facebook/Facebook;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic i(Lcn/sharesdk/facebook/Facebook;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic j(Lcn/sharesdk/facebook/Facebook;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic k(Lcn/sharesdk/facebook/Facebook;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic l(Lcn/sharesdk/facebook/Facebook;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 9
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 115
    const/16 v0, 0x9

    if-ne p1, v0, :cond_3c

    iget-boolean v0, p0, Lcn/sharesdk/facebook/Facebook;->c:Z

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcn/sharesdk/facebook/Facebook;->isClientValid()Z

    move-result v0

    if-eqz v0, :cond_3c

    move-object v0, p2

    .line 116
    check-cast v0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 117
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

    .line 118
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    :cond_3a
    move v0, v1

    .line 143
    :goto_3b
    return v0

    .line 122
    :cond_3c
    const/4 v0, 0x6

    if-ne p1, v0, :cond_41

    move v0, v1

    .line 123
    goto :goto_3b

    .line 125
    :cond_41
    invoke-virtual {p0}, Lcn/sharesdk/facebook/Facebook;->isAuthValid()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 126
    invoke-static {p0}, Lcn/sharesdk/facebook/d;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/facebook/d;

    move-result-object v0

    .line 127
    iget-object v2, p0, Lcn/sharesdk/facebook/Facebook;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcn/sharesdk/facebook/d;->a(Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Lcn/sharesdk/facebook/Facebook;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 129
    iget-object v3, p0, Lcn/sharesdk/facebook/Facebook;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v3}, Lcn/sharesdk/framework/PlatformDb;->getExpiresIn()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 130
    if-eqz v2, :cond_7f

    if-eqz v3, :cond_7f

    .line 131
    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/facebook/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Lcn/sharesdk/facebook/d;->a()Z

    move-result v0

    if-eqz v0, :cond_7f

    move v0, v1

    .line 133
    goto :goto_3b

    .line 136
    :cond_6f
    instance-of v0, p2, Lcn/sharesdk/framework/Platform$ShareParams;

    if-eqz v0, :cond_7f

    move-object v0, p2

    .line 137
    check-cast v0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 138
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getShareType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_7f

    move v0, v1

    .line 139
    goto :goto_3b

    .line 142
    :cond_7f
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/facebook/Facebook;->innerAuthorize(ILjava/lang/Object;)V

    .line 143
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # [Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p0}, Lcn/sharesdk/facebook/d;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/facebook/d;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/facebook/d;->a(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/facebook/d;->d(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p1}, Lcn/sharesdk/facebook/d;->a([Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcn/sharesdk/facebook/Facebook$1;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/facebook/Facebook$1;-><init>(Lcn/sharesdk/facebook/Facebook;Lcn/sharesdk/facebook/d;)V

    .line 103
    invoke-virtual {p0}, Lcn/sharesdk/facebook/Facebook;->isSSODisable()Z

    move-result v2

    .line 68
    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/facebook/d;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V

    .line 104
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
    .line 476
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcn/sharesdk/facebook/d;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/facebook/d;

    move-result-object v0

    .line 478
    :try_start_4
    invoke-virtual {v0, p1, p2, p4, p5}, Lcn/sharesdk/facebook/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    .line 480
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_21

    .line 481
    :cond_10
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_20

    .line 482
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "response is null"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, p3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 503
    :cond_20
    :goto_20
    return-void

    .line 487
    :cond_21
    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 488
    :cond_31
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_20

    .line 489
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 490
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, p3, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_48} :catch_49

    goto :goto_20

    .line 498
    :catch_49
    move-exception v0

    .line 499
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_20

    .line 500
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, p3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_20

    .line 495
    :cond_54
    :try_start_54
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_20

    .line 496
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, p3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_5d} :catch_49

    goto :goto_20
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 15
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/4 v0, 0x0

    const/16 v12, 0x9

    .line 148
    invoke-static {p0}, Lcn/sharesdk/facebook/d;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/facebook/d;

    move-result-object v3

    .line 149
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcn/sharesdk/facebook/d;->a(Ljava/lang/String;)V

    .line 152
    :try_start_c
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcn/sharesdk/facebook/Facebook;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    .line 156
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 157
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_55

    .line 160
    :goto_2c
    iget-boolean v7, p0, Lcn/sharesdk/facebook/Facebook;->c:Z

    if-eqz v7, :cond_173

    invoke-virtual {v3}, Lcn/sharesdk/facebook/d;->b()Z

    move-result v7

    if-eqz v7, :cond_173

    .line 162
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getShareType()I

    move-result v4

    const/4 v6, 0x7

    if-ne v4, v6, :cond_5e

    .line 163
    new-instance v0, Lcn/sharesdk/facebook/e;

    invoke-direct {v0}, Lcn/sharesdk/facebook/e;-><init>()V

    .line 164
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v0, v1, p0, p1}, Lcn/sharesdk/facebook/e;->a(Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 165
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/facebook/e;->a(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/facebook/e;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 285
    :cond_54
    :goto_54
    return-void

    .line 158
    :cond_55
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_2c

    .line 169
    :cond_5e
    if-eqz v2, :cond_66

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_f9

    .line 170
    :cond_66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_77

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_23b

    .line 171
    :cond_77
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_ea

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_ea

    .line 173
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "images"

    invoke-static {v1, v4}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 176
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v0, v5, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 177
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 178
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 179
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_bf
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d7

    .line 185
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setImageArray([Ljava/lang/String;)V

    .line 214
    :cond_d7
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v3, v0, p1}, Lcn/sharesdk/facebook/d;->a(Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform$ShareParams;)V
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_dc} :catch_de

    goto/16 :goto_54

    .line 280
    :catch_de
    move-exception v0

    .line 281
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_54

    .line 282
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v12, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_54

    .line 180
    :cond_ea
    :try_start_ea
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23b

    .line 181
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_bf

    .line 190
    :cond_f9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_fe
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 191
    const-string v5, "http"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11d

    .line 192
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_11d
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_16f

    .line 198
    const-string v6, "/data/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16f

    .line 199
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 200
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "images"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 201
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 203
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 204
    invoke-static {v0, v6}, Lcom/mob/tools/utils/ResHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 205
    if-eqz v0, :cond_16f

    .line 206
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_16f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 211
    goto :goto_fe

    .line 219
    :cond_173
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a1

    .line 220
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_197

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_197

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_197

    .line 221
    invoke-virtual {p0, v1}, Lcn/sharesdk/facebook/Facebook;->uploadImageToFileServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 225
    :cond_197
    new-instance v0, Lcn/sharesdk/facebook/Facebook$2;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/facebook/Facebook$2;-><init>(Lcn/sharesdk/facebook/Facebook;Lcn/sharesdk/framework/Platform$ShareParams;)V

    invoke-virtual {v3, p1, v0}, Lcn/sharesdk/facebook/d;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V

    goto/16 :goto_54

    .line 246
    :cond_1a1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d2

    .line 247
    invoke-virtual {v3, v4, v1}, Lcn/sharesdk/facebook/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 261
    :goto_1b6
    if-eqz v0, :cond_1be

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_1fe

    .line 262
    :cond_1be
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_54

    .line 263
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_54

    .line 248
    :cond_1d2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f9

    .line 249
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1f4

    .line 252
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-virtual {v3, v4, v0}, Lcn/sharesdk/facebook/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_1b6

    .line 255
    :cond_1f4
    invoke-virtual {v3, v4}, Lcn/sharesdk/facebook/d;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_1b6

    .line 258
    :cond_1f9
    invoke-virtual {v3, v4}, Lcn/sharesdk/facebook/d;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_1b6

    .line 268
    :cond_1fe
    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20e

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_229

    .line 269
    :cond_20e
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_54

    .line 270
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_54

    .line 276
    :cond_229
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_54

    .line 277
    const-string v1, "ShareParams"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_239
    .catch Ljava/lang/Throwable; {:try_start_ea .. :try_end_239} :catch_de

    goto/16 :goto_54

    :cond_23b
    move-object v0, v1

    goto/16 :goto_bf
.end method

.method protected filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    .registers 19
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
    .line 536
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 537
    if-nez v3, :cond_c

    .line 538
    const/4 v2, 0x0

    .line 661
    :goto_b
    return-object v2

    .line 541
    :cond_c
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 542
    const-string v2, "type"

    const-string v4, "FOLLOWING"

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const-string v2, "snsplat"

    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/facebook/Facebook;->getPlatformId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string v2, "snsuid"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/sharesdk/facebook/Facebook;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v4}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string v2, "current_cursor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 547
    const-string v2, "current_limit"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 549
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 550
    check-cast v2, Ljava/util/ArrayList;

    .line 551
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_5e

    .line 552
    const/4 v2, 0x0

    goto :goto_b

    .line 554
    :cond_5e
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_62
    :goto_62
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_325

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 555
    if-eqz v2, :cond_62

    .line 558
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 559
    const-string v3, "snsuid"

    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string v3, "nickname"

    const-string v4, "name"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string v4, "gender"

    const-string v3, "male"

    const-string v11, "gender"

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1de

    const-string v3, "0"

    :goto_a9
    invoke-virtual {v10, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string v4, "secretType"

    const-string v3, "true"

    const-string v11, "verified"

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e2

    const-string v3, "1"

    :goto_c2
    invoke-virtual {v10, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string v3, "snsUserUrl"

    const-string v4, "link"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const-string v3, "resume"

    const-string v4, "link"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string v3, "picture"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e6

    const-string v3, "picture"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 567
    :goto_f3
    if-eqz v3, :cond_116

    .line 568
    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e9

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 569
    :goto_105
    if-eqz v3, :cond_116

    .line 570
    const-string v4, "icon"

    const-string v11, "url"

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    :cond_116
    :try_start_116
    const-string v3, "birthday"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_162

    .line 575
    const-string v3, "birthday"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 576
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 577
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 578
    const/4 v11, 0x1

    const/4 v12, 0x2

    aget-object v12, v3, v12

    invoke-static {v12}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v4, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 579
    const/4 v11, 0x2

    const/4 v12, 0x0

    aget-object v12, v3, v12

    invoke-static {v12}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v4, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 580
    const/4 v11, 0x5

    const/4 v12, 0x1

    aget-object v3, v3, v12

    invoke-static {v3}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v11, v3}, Ljava/util/Calendar;->set(II)V

    .line 581
    const-string v3, "birthday"

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_162
    .catch Ljava/lang/Throwable; {:try_start_116 .. :try_end_162} :catch_1ec

    .line 586
    :cond_162
    :goto_162
    const-string v3, "education"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f6

    const-string v3, "education"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 587
    :goto_172
    if-eqz v3, :cond_226

    .line 588
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 589
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_17d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_202

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 590
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 591
    const-string v4, "school_type"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const-string v4, "school"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 593
    if-eqz v4, :cond_1b1

    .line 594
    const-string v14, "school"

    const-string v15, "name"

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    :cond_1b1
    :try_start_1b1
    const-string v4, "year"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 598
    const-string v4, "year"

    const-string v14, "name"

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d0
    .catch Ljava/lang/Throwable; {:try_start_1b1 .. :try_end_1d0} :catch_1f9

    .line 602
    :goto_1d0
    const-string v3, "background"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17d

    .line 561
    :cond_1de
    const-string v3, "1"

    goto/16 :goto_a9

    .line 562
    :cond_1e2
    const-string v3, "0"

    goto/16 :goto_c2

    .line 566
    :cond_1e6
    const/4 v3, 0x0

    goto/16 :goto_f3

    .line 568
    :cond_1e9
    const/4 v3, 0x0

    goto/16 :goto_105

    .line 583
    :catch_1ec
    move-exception v3

    .line 584
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto/16 :goto_162

    .line 586
    :cond_1f6
    const/4 v3, 0x0

    goto/16 :goto_172

    .line 599
    :catch_1f9
    move-exception v3

    .line 600
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_1d0

    .line 605
    :cond_202
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 606
    const-string v4, "list"

    invoke-virtual {v3, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    new-instance v4, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v4}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v4, v3}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    .line 608
    const-string v4, "educationJSONArrayStr"

    const/16 v11, 0x8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    :cond_226
    const-string v3, "work"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2dd

    const-string v3, "work"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 611
    :goto_236
    if-eqz v2, :cond_320

    .line 612
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 613
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_241
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2fc

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 614
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 615
    const-string v3, "employer"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 616
    if-eqz v3, :cond_26b

    .line 617
    const-string v13, "company"

    const-string v14, "name"

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    :cond_26b
    const-string v3, "position"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 620
    if-eqz v3, :cond_284

    .line 621
    const-string v13, "position"

    const-string v14, "name"

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    :cond_284
    :try_start_284
    const-string v3, "start_date"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 625
    const-string v13, "-"

    invoke-virtual {v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 626
    const/4 v13, 0x0

    aget-object v13, v3, v13

    invoke-static {v13}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v13

    mul-int/lit8 v13, v13, 0x64

    const/4 v14, 0x1

    aget-object v3, v3, v14

    invoke-static {v3}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v13

    .line 627
    const-string v13, "start_date"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2ae
    .catch Ljava/lang/Throwable; {:try_start_284 .. :try_end_2ae} :catch_2e0

    .line 632
    :goto_2ae
    :try_start_2ae
    const-string v3, "end_date"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 633
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 634
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    const/4 v13, 0x1

    aget-object v2, v2, v13

    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    .line 635
    const-string v3, "end_date"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d8
    .catch Ljava/lang/Throwable; {:try_start_2ae .. :try_end_2d8} :catch_2e9

    .line 640
    :goto_2d8
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_241

    .line 610
    :cond_2dd
    const/4 v2, 0x0

    goto/16 :goto_236

    .line 628
    :catch_2e0
    move-exception v3

    .line 629
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_2ae

    .line 636
    :catch_2e9
    move-exception v2

    .line 637
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 638
    const-string v2, "end_date"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d8

    .line 642
    :cond_2fc
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 643
    const-string v3, "list"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    new-instance v3, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v3}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v3, v2}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    .line 645
    const-string v3, "workJSONArrayStr"

    const/16 v4, 0x8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v2, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    :cond_320
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_62

    .line 649
    :cond_325
    if-eqz v8, :cond_32d

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_330

    .line 650
    :cond_32d
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 654
    :cond_330
    const-string v2, "_false"

    .line 655
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v7, v3, :cond_33a

    .line 656
    const-string v2, "_true"

    .line 658
    :cond_33a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 659
    const-string v3, "nextCursor"

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    const-string v2, "list"

    invoke-virtual {v5, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v5

    .line 661
    goto/16 :goto_b
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
    .line 412
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v1}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 413
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 414
    if-eqz p2, :cond_33

    .line 415
    if-eqz p2, :cond_34

    const-string v0, "source"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 416
    iget-object v0, v1, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    const-string v2, "source"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_26
    :goto_26
    const-string v0, "post_id"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 426
    if-nez v0, :cond_58

    const/4 v0, 0x0

    :goto_2f
    iput-object v0, v1, Lcn/sharesdk/framework/b/b/f$a;->a:Ljava/lang/String;

    .line 427
    iput-object p2, v1, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 429
    :cond_33
    return-object v1

    .line 417
    :cond_34
    const/4 v0, 0x4

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getShareType()I

    move-result v2

    if-ne v0, v2, :cond_26

    .line 418
    iget-object v0, v1, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitleUrl()Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 421
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 423
    :cond_52
    iget-object v2, v1, Lcn/sharesdk/framework/b/b/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 426
    :cond_58
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 433
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 434
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 436
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
    .line 531
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
    .line 527
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
    const/4 v0, 0x0

    .line 506
    invoke-static {p0}, Lcn/sharesdk/facebook/d;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/facebook/d;

    move-result-object v1

    .line 508
    :try_start_5
    invoke-virtual {v1, p1, p2, p3}, Lcn/sharesdk/facebook/d;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 509
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_12

    .line 522
    :cond_11
    :goto_11
    return-object v0

    .line 513
    :cond_12
    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 517
    const-string v2, "current_limit"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string v2, "current_cursor"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcn/sharesdk/facebook/Facebook;->filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_38} :catch_3a

    move-result-object v0

    goto :goto_11

    .line 520
    :catch_3a
    move-exception v1

    .line 521
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 9
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 445
    invoke-static {p0}, Lcn/sharesdk/facebook/d;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/facebook/d;

    move-result-object v0

    .line 447
    mul-int v1, p2, p1

    :try_start_7
    invoke-virtual {v0, p1, v1, p3}, Lcn/sharesdk/facebook/d;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 448
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_25

    .line 449
    :cond_13
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_24

    .line 450
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 471
    :cond_24
    :goto_24
    return-void

    .line 455
    :cond_25
    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 456
    :cond_35
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_24

    .line 457
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_4d} :catch_4e

    goto :goto_24

    .line 466
    :catch_4e
    move-exception v0

    .line 467
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_24

    .line 468
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_24

    .line 463
    :cond_59
    :try_start_59
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_24

    .line 464
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_63} :catch_4e

    goto :goto_24
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    sget-object v0, Lcn/sharesdk/facebook/Facebook;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .registers 2

    .prologue
    .line 43
    const/16 v0, 0xa

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x2

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 665
    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string v0, "ConsumerKey"

    invoke-virtual {p0, v0}, Lcn/sharesdk/facebook/Facebook;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/facebook/Facebook;->a:Ljava/lang/String;

    .line 38
    const-string v0, "RedirectUrl"

    invoke-virtual {p0, v0}, Lcn/sharesdk/facebook/Facebook;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/facebook/Facebook;->b:Ljava/lang/String;

    .line 39
    const-string v0, "true"

    const-string v1, "ShareByAppClient"

    invoke-virtual {p0, v1}, Lcn/sharesdk/facebook/Facebook;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/facebook/Facebook;->c:Z

    .line 40
    return-void
.end method

.method public isClientValid()Z
    .registers 3

    .prologue
    .line 108
    invoke-static {p0}, Lcn/sharesdk/facebook/d;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/facebook/d;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/facebook/d;->a(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Lcn/sharesdk/facebook/d;->b()Z

    move-result v0

    return v0
.end method

.method protected setNetworkDevinfo()V
    .registers 3

    .prologue
    .line 55
    const-string v0, "api_key"

    const-string v1, "ConsumerKey"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/facebook/Facebook;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/facebook/Facebook;->a:Ljava/lang/String;

    .line 56
    const-string v0, "redirect_uri"

    const-string v1, "RedirectUrl"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/facebook/Facebook;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/facebook/Facebook;->b:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 58
    const-string v0, "fbconnect://success"

    iput-object v0, p0, Lcn/sharesdk/facebook/Facebook;->b:Ljava/lang/String;

    .line 60
    :cond_20
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 439
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 440
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 442
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 12
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/16 v9, 0x8

    .line 290
    invoke-static {p0}, Lcn/sharesdk/facebook/d;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/facebook/d;

    move-result-object v0

    .line 292
    :try_start_7
    invoke-virtual {v0, p1}, Lcn/sharesdk/facebook/d;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 293
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_26

    .line 294
    :cond_13
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_25

    .line 295
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 408
    :cond_25
    :goto_25
    return-void

    .line 300
    :cond_26
    const-string v0, "error_code"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    const-string v0, "error"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 301
    :cond_36
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_25

    .line 302
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v3}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_4f} :catch_50

    goto :goto_25

    .line 403
    :catch_50
    move-exception v0

    .line 404
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_25

    .line 405
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v9, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_25

    .line 308
    :cond_5b
    if-nez p1, :cond_332

    .line 309
    :try_start_5d
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "id"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "nickname"

    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v4, "gender"

    const-string v0, "male"

    const-string v5, "gender"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1eb

    const-string v0, "0"

    :goto_95
    invoke-virtual {v1, v4, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v4, "token_for_business"

    const-string v0, "token_for_business"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v0, "picture"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ef

    const-string v0, "picture"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 314
    :goto_b7
    if-eqz v0, :cond_d4

    .line 315
    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 316
    if-eqz v0, :cond_d4

    .line 317
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v4, "icon"

    const-string v5, "url"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d4
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_d4} :catch_50

    .line 321
    :cond_d4
    :try_start_d4
    const-string v0, "birthday"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 322
    const-string v0, "birthday"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 323
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 325
    const/4 v4, 0x1

    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-static {v5}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 326
    const/4 v4, 0x2

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-static {v5}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 327
    const/4 v4, 0x5

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 328
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v4, "birthday"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_122
    .catch Ljava/lang/Throwable; {:try_start_d4 .. :try_end_122} :catch_1f2

    .line 333
    :cond_122
    :goto_122
    :try_start_122
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v4, "secretType"

    const-string v0, "true"

    const-string v5, "verified"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fc

    const-string v0, "1"

    :goto_13a
    invoke-virtual {v1, v4, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "snsUserUrl"

    const-string v4, "link"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "resume"

    const-string v4, "link"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v0, "education"

    .line 337
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_200

    const-string v0, "education"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 338
    :goto_16f
    if-eqz v0, :cond_236

    .line 339
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 340
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_17a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_210

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 341
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 342
    const-string v1, "school_type"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v1, "school"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_203

    const-string v1, "school"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 344
    :goto_1a5
    if-eqz v1, :cond_1b6

    .line 345
    const-string v7, "school"

    const-string v8, "name"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b6
    .catch Ljava/lang/Throwable; {:try_start_122 .. :try_end_1b6} :catch_50

    .line 348
    :cond_1b6
    :try_start_1b6
    const-string v1, "year"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_205

    const-string v1, "year"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 349
    :goto_1c6
    const-string v1, "year"

    const-string v7, "name"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1dd
    .catch Ljava/lang/Throwable; {:try_start_1b6 .. :try_end_1dd} :catch_207

    .line 353
    :goto_1dd
    :try_start_1dd
    const-string v0, "background"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17a

    .line 311
    :cond_1eb
    const-string v0, "1"

    goto/16 :goto_95

    :cond_1ef
    move-object v0, v2

    .line 313
    goto/16 :goto_b7

    .line 330
    :catch_1f2
    move-exception v0

    .line 331
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto/16 :goto_122

    .line 333
    :cond_1fc
    const-string v0, "0"

    goto/16 :goto_13a

    :cond_200
    move-object v0, v2

    .line 337
    goto/16 :goto_16f

    :cond_203
    move-object v1, v2

    .line 343
    goto :goto_1a5

    :cond_205
    move-object v0, v2

    .line 348
    goto :goto_1c6

    .line 350
    :catch_207
    move-exception v0

    .line 351
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_1dd

    .line 356
    :cond_210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 357
    const-string v1, "list"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v4, "educationJSONArrayStr"

    const/16 v5, 0x8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_236
    const-string v0, "work"

    .line 362
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ed

    const-string v0, "work"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 363
    :goto_246
    if-eqz v0, :cond_332

    .line 364
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 365
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_251
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 366
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 367
    const-string v1, "employer"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 368
    if-eqz v1, :cond_27b

    .line 369
    const-string v6, "company"

    const-string v7, "name"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_27b
    const-string v1, "position"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 372
    if-eqz v1, :cond_294

    .line 373
    const-string v6, "position"

    const-string v7, "name"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_294
    .catch Ljava/lang/Throwable; {:try_start_1dd .. :try_end_294} :catch_50

    .line 376
    :cond_294
    :try_start_294
    const-string v1, "start_date"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 377
    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 378
    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-static {v6}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x64

    const/4 v7, 0x1

    aget-object v1, v1, v7

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v6

    .line 379
    const-string v6, "start_date"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2be
    .catch Ljava/lang/Throwable; {:try_start_294 .. :try_end_2be} :catch_2f0

    .line 384
    :goto_2be
    :try_start_2be
    const-string v1, "end_date"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 385
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 386
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    const/4 v6, 0x1

    aget-object v0, v0, v6

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    .line 387
    const-string v1, "end_date"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e8
    .catch Ljava/lang/Throwable; {:try_start_2be .. :try_end_2e8} :catch_2f9

    .line 392
    :goto_2e8
    :try_start_2e8
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_251

    :cond_2ed
    move-object v0, v2

    .line 362
    goto/16 :goto_246

    .line 380
    :catch_2f0
    move-exception v1

    .line 381
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_2be

    .line 388
    :catch_2f9
    move-exception v0

    .line 389
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 390
    const-string v0, "end_date"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e8

    .line 394
    :cond_30c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 395
    const-string v1, "list"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcn/sharesdk/facebook/Facebook;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "workJSONArrayStr"

    const/16 v4, 0x8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_332
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_25

    .line 401
    iget-object v0, p0, Lcn/sharesdk/facebook/Facebook;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_33d
    .catch Ljava/lang/Throwable; {:try_start_2e8 .. :try_end_33d} :catch_50

    goto/16 :goto_25
.end method
