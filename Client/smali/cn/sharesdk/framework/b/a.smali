.class public Lcn/sharesdk/framework/b/a;
.super Ljava/lang/Object;
.source "EventManager.java"


# static fields
.field private static a:Lcn/sharesdk/framework/b/a;


# instance fields
.field private b:Lcn/sharesdk/framework/b/c;

.field private c:Lcom/mob/tools/utils/DeviceHelper;

.field private d:Lcn/sharesdk/framework/b/a/e;

.field private e:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/framework/b/a;->e:Z

    .line 52
    new-instance v0, Lcn/sharesdk/framework/b/c;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/c;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    .line 53
    invoke-static {}, Lcn/sharesdk/framework/b/a/e;->a()Lcn/sharesdk/framework/b/a/e;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    .line 54
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/b/a;->c:Lcom/mob/tools/utils/DeviceHelper;

    .line 55
    return-void
.end method

.method public static a()Lcn/sharesdk/framework/b/a;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcn/sharesdk/framework/b/a;->a:Lcn/sharesdk/framework/b/a;

    if-nez v0, :cond_b

    .line 45
    new-instance v0, Lcn/sharesdk/framework/b/a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/a;-><init>()V

    sput-object v0, Lcn/sharesdk/framework/b/a;->a:Lcn/sharesdk/framework/b/a;

    .line 47
    :cond_b
    sget-object v0, Lcn/sharesdk/framework/b/a;->a:Lcn/sharesdk/framework/b/a;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;Lcn/sharesdk/framework/b/b;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 338
    const-string v0, "bm_tmp"

    const-string v1, ".png"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 339
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 340
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 341
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 342
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 343
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcn/sharesdk/framework/b/a;->a(Ljava/lang/String;Lcn/sharesdk/framework/b/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcn/sharesdk/framework/b/b;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_14

    .line 315
    :cond_13
    :goto_13
    return-object v0

    .line 269
    :cond_14
    iget-object v2, p0, Lcn/sharesdk/framework/b/a;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    .line 270
    const-string v3, "none"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 274
    invoke-static {p1}, Lcom/mob/tools/utils/BitmapHelper;->getBmpFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    .line 276
    const/high16 v0, 0x43480000    # 200.0f

    .line 277
    sget-object v3, Lcn/sharesdk/framework/b/b;->b:Lcn/sharesdk/framework/b/b;

    if-ne p2, v3, :cond_34

    .line 278
    const/high16 v0, 0x44160000    # 600.0f

    .line 281
    :cond_34
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 282
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 283
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 284
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 286
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 287
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 289
    if-lt v4, v5, :cond_aa

    int-to-float v6, v5

    cmpl-float v6, v6, v0

    if-lez v6, :cond_aa

    .line 290
    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    div-float v0, v3, v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 296
    :goto_57
    if-gtz v0, :cond_5a

    move v0, v1

    .line 301
    :cond_5a
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 302
    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 303
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 304
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 305
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 307
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    const-string v3, "bm_tmp2"

    invoke-static {v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 310
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 311
    const/16 v4, 0x50

    invoke-virtual {v0, v2, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 312
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 313
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 315
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/framework/b/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 291
    :cond_aa
    if-ge v4, v5, :cond_bd

    int-to-float v4, v4

    cmpl-float v4, v4, v0

    if-lez v4, :cond_bd

    .line 292
    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v3, v3

    div-float v0, v3, v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    goto :goto_57

    .line 294
    :cond_bd
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 445
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 493
    :cond_7
    :goto_7
    return-object p1

    .line 449
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 450
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 451
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 452
    :cond_15
    :goto_15
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 453
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    .line 454
    if-eqz v4, :cond_15

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_15

    .line 455
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 458
    :cond_2b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_7

    .line 462
    iget-object v3, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v3, p1, v0, p3, p4}, Lcn/sharesdk/framework/b/c;->a(Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 463
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 467
    const-string v3, "data"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 472
    const-string v3, "data"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 473
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 474
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_58
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 475
    const-string v5, "surl"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 476
    const-string v6, "source"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 477
    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_58

    .line 480
    :cond_7c
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 481
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 483
    :goto_86
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 484
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    .line 485
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    goto :goto_86

    .line 489
    :cond_a9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 492
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "> SERVER_SHORT_LINK_URL content after replace link ===  %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto/16 :goto_7
.end method

.method private a(Lcn/sharesdk/framework/b/b/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 218
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->d()Z

    move-result v0

    .line 219
    iget-object v1, p1, Lcn/sharesdk/framework/b/b/b;->c:Ljava/lang/String;

    .line 220
    if-eqz v0, :cond_21

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 222
    iget-object v0, p1, Lcn/sharesdk/framework/b/b/b;->f:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v1, v0}, Lcom/mob/tools/utils/Data;->Base64AES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/framework/b/b/b;->c:Ljava/lang/String;

    .line 229
    :goto_20
    return-void

    .line 226
    :cond_21
    iput-object v2, p1, Lcn/sharesdk/framework/b/b/b;->d:Ljava/lang/String;

    .line 227
    iput-object v2, p1, Lcn/sharesdk/framework/b/b/b;->c:Ljava/lang/String;

    goto :goto_20
.end method

.method private a(Lcn/sharesdk/framework/b/b/f;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 232
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->f()I

    move-result v0

    .line 233
    iget-object v1, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v1}, Lcn/sharesdk/framework/b/a/e;->d()Z

    move-result v4

    .line 234
    iget-object v5, p1, Lcn/sharesdk/framework/b/b/f;->d:Lcn/sharesdk/framework/b/b/f$a;

    .line 235
    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    if-nez v0, :cond_75

    iget-boolean v0, p0, Lcn/sharesdk/framework/b/a;->e:Z

    if-eqz v0, :cond_75

    .line 237
    :cond_19
    if-eqz v5, :cond_1f

    iget-object v0, v5, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_40

    :cond_1f
    move v1, v2

    :goto_20
    move v3, v2

    .line 238
    :goto_21
    if-ge v3, v1, :cond_48

    .line 239
    iget-object v0, v5, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 240
    sget-object v6, Lcn/sharesdk/framework/b/b;->a:Lcn/sharesdk/framework/b/b;

    invoke-direct {p0, v0, v6}, Lcn/sharesdk/framework/b/a;->a(Ljava/lang/String;Lcn/sharesdk/framework/b/b;)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3c

    .line 243
    iget-object v6, v5, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_3c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_21

    .line 237
    :cond_40
    iget-object v0, v5, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    goto :goto_20

    .line 247
    :cond_48
    if-eqz v5, :cond_4e

    iget-object v0, v5, Lcn/sharesdk/framework/b/b/f$a;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_6d

    :cond_4e
    move v1, v2

    .line 248
    :goto_4f
    if-ge v2, v1, :cond_77

    .line 249
    iget-object v0, v5, Lcn/sharesdk/framework/b/b/f$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 250
    sget-object v3, Lcn/sharesdk/framework/b/b;->a:Lcn/sharesdk/framework/b/b;

    invoke-direct {p0, v0, v3}, Lcn/sharesdk/framework/b/a;->a(Landroid/graphics/Bitmap;Lcn/sharesdk/framework/b/b;)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6a

    .line 252
    iget-object v3, v5, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 247
    :cond_6d
    iget-object v0, v5, Lcn/sharesdk/framework/b/b/f$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    goto :goto_4f

    .line 256
    :cond_75
    iput-object v7, p1, Lcn/sharesdk/framework/b/b/f;->d:Lcn/sharesdk/framework/b/b/f$a;

    .line 259
    :cond_77
    if-nez v4, :cond_7b

    .line 260
    iput-object v7, p1, Lcn/sharesdk/framework/b/b/f;->m:Ljava/lang/String;

    .line 262
    :cond_7b
    return-void
.end method

.method private a(Ljava/lang/String;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/b/c;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 320
    iget-object v1, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v1, p1}, Lcn/sharesdk/framework/b/c;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 321
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_10

    .line 334
    :cond_f
    :goto_f
    return-object v0

    .line 325
    :cond_10
    const-string v2, "status"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 329
    const-string v2, "status"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 330
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_f

    .line 334
    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v0, "url"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_f
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v7, 0x400

    const/4 v6, 0x0

    .line 380
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 381
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 384
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 386
    new-array v3, v7, [B

    .line 387
    :goto_18
    invoke-virtual {v0, v3, v6, v7}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_23

    .line 388
    invoke-virtual {v2, v3, v6, v4}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_18

    .line 393
    :cond_23
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 394
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 396
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 397
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 398
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 400
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 402
    const/4 v0, 0x2

    invoke-static {v2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 511
    iget-object v1, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v1}, Lcn/sharesdk/framework/b/a/e;->i()Z

    move-result v1

    if-nez v1, :cond_a

    .line 519
    :goto_9
    return-object v0

    .line 515
    :cond_a
    :try_start_a
    sget-object v1, Lcn/sharesdk/framework/b/b;->b:Lcn/sharesdk/framework/b/b;

    invoke-direct {p0, p1, v1}, Lcn/sharesdk/framework/b/a;->a(Landroid/graphics/Bitmap;Lcn/sharesdk/framework/b/b;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_9

    .line 516
    :catch_11
    move-exception v1

    .line 517
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public a(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 415
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->i()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->e()Z

    move-result v0

    if-nez v0, :cond_11

    .line 440
    :cond_10
    :goto_10
    return-object p1

    .line 418
    :cond_11
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    .line 419
    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 423
    if-eqz p3, :cond_37

    .line 424
    const-string v0, "<a[^>]*?href[\\s]*=[\\s]*[\"\']?([^\'\">]+?)[\'\"]?>"

    .line 425
    invoke-direct {p0, p1, v0, p2, p4}, Lcn/sharesdk/framework/b/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_37

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    move-object p1, v0

    .line 427
    goto :goto_10

    .line 431
    :cond_37
    const-string v0, "(http://|https://){1}[\\w\\.\\-/:\\?&%=,;\\[\\]\\{\\}`~!@#\\$\\^\\*\\(\\)_\\+\\\\\\|]+"

    .line 432
    invoke-direct {p0, p1, v0, p2, p4}, Lcn/sharesdk/framework/b/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_42} :catch_47

    move-result v1

    if-nez v1, :cond_10

    move-object p1, v0

    .line 437
    goto :goto_10

    .line 438
    :catch_47
    move-exception v0

    .line 439
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public a(Lcn/sharesdk/framework/b/b/c;)V
    .registers 8

    .prologue
    .line 186
    :try_start_0
    iget-object v2, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v2}, Lcn/sharesdk/framework/b/a/e;->i()Z

    move-result v2

    if-nez v2, :cond_9

    .line 215
    :goto_8
    return-void

    .line 191
    :cond_9
    instance-of v2, p1, Lcn/sharesdk/framework/b/b/b;

    if-eqz v2, :cond_48

    .line 192
    move-object v0, p1

    check-cast v0, Lcn/sharesdk/framework/b/b/b;

    move-object v2, v0

    invoke-direct {p0, v2}, Lcn/sharesdk/framework/b/a;->a(Lcn/sharesdk/framework/b/b/b;)V

    .line 198
    :cond_14
    :goto_14
    iget-object v2, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v2}, Lcn/sharesdk/framework/b/a/e;->c()Z

    move-result v2

    .line 199
    if-nez v2, :cond_1f

    .line 200
    const/4 v2, 0x0

    iput-object v2, p1, Lcn/sharesdk/framework/b/b/c;->l:Ljava/lang/String;

    .line 204
    :cond_1f
    iget-object v2, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v2}, Lcn/sharesdk/framework/b/a/e;->b()J

    move-result-wide v2

    .line 205
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_31

    .line 206
    iget-object v2, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v2}, Lcn/sharesdk/framework/b/c;->b()J

    move-result-wide v2

    .line 208
    :cond_31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    iput-wide v2, p1, Lcn/sharesdk/framework/b/b/c;->e:J

    .line 211
    iget-object v2, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v2, p1}, Lcn/sharesdk/framework/b/c;->a(Lcn/sharesdk/framework/b/b/c;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3e} :catch_3f

    goto :goto_8

    .line 212
    :catch_3f
    move-exception v2

    .line 213
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_8

    .line 193
    :cond_48
    :try_start_48
    instance-of v2, p1, Lcn/sharesdk/framework/b/b/f;

    if-eqz v2, :cond_14

    .line 194
    move-object v0, p1

    check-cast v0, Lcn/sharesdk/framework/b/b/f;

    move-object v2, v0

    invoke-direct {p0, v2}, Lcn/sharesdk/framework/b/a;->a(Lcn/sharesdk/framework/b/b/f;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_53} :catch_3f

    goto :goto_14
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    if-eqz v0, :cond_f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 59
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/b/c;->a(Ljava/lang/String;)V

    .line 61
    :cond_f
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 548
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/b/c;->b(Ljava/util/HashMap;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 552
    :goto_5
    return-void

    .line 549
    :catch_6
    move-exception v0

    .line 550
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 181
    iput-boolean p1, p0, Lcn/sharesdk/framework/b/a;->e:Z

    .line 182
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 498
    iget-object v1, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v1}, Lcn/sharesdk/framework/b/a/e;->i()Z

    move-result v1

    if-nez v1, :cond_a

    .line 506
    :goto_9
    return-object v0

    .line 502
    :cond_a
    :try_start_a
    sget-object v1, Lcn/sharesdk/framework/b/b;->b:Lcn/sharesdk/framework/b/b;

    invoke-direct {p0, p1, v1}, Lcn/sharesdk/framework/b/a;->a(Ljava/lang/String;Lcn/sharesdk/framework/b/b;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_9

    .line 503
    :catch_11
    move-exception v1

    .line 504
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public b()V
    .registers 10

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 94
    :cond_14
    :goto_14
    return-void

    .line 71
    :cond_15
    const-wide/32 v0, 0x5265c00

    .line 72
    iget-object v2, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v2}, Lcn/sharesdk/framework/b/a/e;->j()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 74
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 75
    invoke-virtual {v6, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 76
    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 77
    invoke-virtual {v6, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 78
    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 79
    sub-long v2, v4, v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_42

    if-eq v7, v6, :cond_14

    .line 84
    :cond_42
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/c;->a()Ljava/util/HashMap;

    move-result-object v1

    .line 85
    const-string v0, "res"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    const-string v0, "true"

    const-string v2, "res"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 86
    :goto_60
    iget-object v2, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/b/a/e;->a(Z)V

    .line 88
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 89
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/framework/b/a/e;->b(J)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_76} :catch_77

    goto :goto_14

    .line 91
    :catch_77
    move-exception v0

    .line 92
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_14

    .line 85
    :cond_80
    const/4 v0, 0x1

    goto :goto_60
.end method

.method public c(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 556
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/b/c;->d(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 559
    :goto_6
    return-object v0

    .line 557
    :catch_7
    move-exception v0

    .line 558
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 559
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_6
.end method

.method public c()V
    .registers 9

    .prologue
    .line 99
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 178
    :cond_14
    :goto_14
    return-void

    .line 103
    :cond_15
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->i()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 108
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/framework/b/a/e;->a(J)V

    .line 109
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/c;->c()Ljava/util/HashMap;

    move-result-object v1

    .line 112
    const-string v0, "status"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 113
    const-string v0, "status"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 114
    const/16 v2, -0xc8

    if-ne v0, v2, :cond_62

    .line 115
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const-string v0, "error"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_58} :catch_59

    goto :goto_14

    .line 175
    :catch_59
    move-exception v0

    .line 176
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_14

    .line 121
    :cond_62
    :try_start_62
    const-string v0, "timestamp"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 122
    const-string v0, "timestamp"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 124
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    const-string v4, "service_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcn/sharesdk/framework/b/a/e;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 128
    :cond_89
    const-string v0, "switchs"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 129
    const-string v0, "switchs"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 130
    if-eqz v0, :cond_d7

    .line 131
    const-string v2, "device"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 132
    const-string v3, "share"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 133
    const-string v4, "auth"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 134
    const-string v5, "backflow"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 136
    iget-object v5, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v5, v2}, Lcn/sharesdk/framework/b/a/e;->b(Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/b/a/e;->d(Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v2, v4}, Lcn/sharesdk/framework/b/a/e;->c(Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/b/a/e;->a(Ljava/lang/String;)V

    .line 144
    :cond_d7
    const-string v0, "serpaths"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 145
    const-string v0, "serpaths"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 146
    if-eqz v0, :cond_14

    .line 147
    const-string v1, "defhost"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 148
    const-string v2, "defport"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12b

    .line 150
    iget-object v3, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcn/sharesdk/framework/b/c;->b(Ljava/lang/String;)V

    .line 153
    :cond_12b
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 154
    const-string v1, "assigns"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 155
    const-string v1, "assigns"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 156
    if-eqz v0, :cond_148

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_150

    .line 158
    :cond_148
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/b/c;->a(Ljava/util/HashMap;)V

    goto/16 :goto_14

    .line 161
    :cond_150
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_158
    :goto_158
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 162
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 163
    const-string v5, "host"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 164
    const-string v6, "port"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_158

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_158

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_158

    .line 166
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_158

    .line 169
    :cond_1b1
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v0, v3}, Lcn/sharesdk/framework/b/c;->a(Ljava/util/HashMap;)V
    :try_end_1b6
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_1b6} :catch_59

    goto/16 :goto_14
.end method

.method public d()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 349
    :try_start_2
    iget-object v1, p0, Lcn/sharesdk/framework/b/a;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    .line 350
    const-string v2, "none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 377
    :cond_16
    :goto_16
    return-void

    .line 353
    :cond_17
    iget-object v1, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v1}, Lcn/sharesdk/framework/b/a/e;->i()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 358
    iget-object v1, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v1}, Lcn/sharesdk/framework/b/c;->e()Ljava/util/ArrayList;

    move-result-object v3

    move v2, v0

    .line 360
    :goto_26
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_16

    .line 362
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/b/a/c;

    .line 364
    iget-object v1, v0, Lcn/sharesdk/framework/b/a/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v5, :cond_4e

    .line 365
    iget-object v1, v0, Lcn/sharesdk/framework/b/a/c;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcn/sharesdk/framework/b/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 369
    :goto_41
    if-eqz v1, :cond_4a

    .line 371
    iget-object v1, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    iget-object v0, v0, Lcn/sharesdk/framework/b/a/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/b/c;->a(Ljava/util/ArrayList;)V

    .line 360
    :cond_4a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_26

    .line 367
    :cond_4e
    iget-object v1, v0, Lcn/sharesdk/framework/b/a/c;->a:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/sharesdk/framework/b/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {p0, v1, v4}, Lcn/sharesdk/framework/b/a;->a(Ljava/lang/String;Z)Z
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_58} :catch_5a

    move-result v1

    goto :goto_41

    .line 374
    :catch_5a
    move-exception v0

    .line 375
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method public e()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/c;->f()Ljava/util/HashMap;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 527
    :goto_6
    return-object v0

    .line 525
    :catch_7
    move-exception v0

    .line 526
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 527
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_6
.end method

.method public f()Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->i()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->k()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 533
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 542
    :goto_15
    return-object v0

    .line 536
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcn/sharesdk/framework/b/a;->b:Lcn/sharesdk/framework/b/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/c;->d()Ljava/util/HashMap;

    move-result-object v0

    .line 537
    iget-object v1, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/b/a/e;->b(Z)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_22} :catch_23

    goto :goto_15

    .line 539
    :catch_23
    move-exception v0

    .line 540
    iget-object v1, p0, Lcn/sharesdk/framework/b/a;->d:Lcn/sharesdk/framework/b/a/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/b/a/e;->b(Z)V

    .line 541
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 542
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_15
.end method
