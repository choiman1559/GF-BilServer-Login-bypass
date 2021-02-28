.class public Lcn/sharesdk/framework/utils/e;
.super Ljava/lang/Object;
.source "ShareBypassApproval.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/framework/utils/e;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/Platform;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 38
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_122

    .line 43
    :goto_19
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v4

    .line 44
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_34

    .line 45
    invoke-virtual {p2, v4, v10}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-virtual {p1, v4}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 47
    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v5, "Kdescription"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    :cond_34
    if-eqz v0, :cond_3c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_9e

    .line 53
    :cond_3c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4d

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_95

    .line 54
    :cond_4d
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 55
    if-eqz v4, :cond_12c

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_12c

    .line 56
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "images"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    new-instance v2, Ljava/io/File;

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

    invoke-direct {v2, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 59
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 60
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 61
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 62
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 67
    :cond_95
    :goto_95
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9e

    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_9e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a7
    :goto_a7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_145

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 74
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_c3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 78
    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1be

    .line 79
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v6, "images"

    invoke-static {v1, v6}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 80
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 83
    invoke-static {v0, v6}, Lcom/mob/tools/utils/ResHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 84
    if-eqz v0, :cond_1be

    move-object v0, v1

    .line 88
    :goto_10c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_13c

    .line 89
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mob/tools/utils/ResHelper;->pathToContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a7

    .line 42
    :cond_122
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_19

    .line 63
    :cond_12c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_95

    .line 64
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_95

    .line 91
    :cond_13c
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a7

    .line 95
    :cond_145
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_16f

    .line 96
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v0, "text/plain"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    :goto_155
    iget-object v0, p0, Lcn/sharesdk/framework/utils/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b6

    .line 112
    iget-object v0, p0, Lcn/sharesdk/framework/utils/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    :goto_162
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void

    .line 98
    :cond_16f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a6

    .line 99
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 101
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v1

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_1a0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1a2

    .line 103
    :cond_1a0
    const-string v0, "image/*"

    .line 105
    :cond_1a2
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_155

    .line 107
    :cond_1a6
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 109
    const-string v0, "image/*"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_155

    .line 114
    :cond_1b6
    iget-object v0, p0, Lcn/sharesdk/framework/utils/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/sharesdk/framework/utils/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_162

    :cond_1be
    move-object v0, v2

    goto/16 :goto_10c
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 28
    iput-object p1, p0, Lcn/sharesdk/framework/utils/e;->a:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcn/sharesdk/framework/utils/e;->b:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 33
    iput-object p1, p0, Lcn/sharesdk/framework/utils/e;->a:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcn/sharesdk/framework/utils/e;->b:Ljava/lang/String;

    .line 35
    return-void
.end method
