.class public Lcn/sharesdk/alipay/utils/c;
.super Ljava/lang/Object;
.source "AlipayShareHelper.java"


# static fields
.field private static b:Lcn/sharesdk/alipay/utils/c;


# instance fields
.field private a:Lcn/sharesdk/alipay/utils/a;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method private a(I)I
    .registers 5

    .prologue
    .line 486
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.eg.android.AlipayGphone"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 487
    iget p1, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 491
    :goto_12
    return p1

    .line 488
    :catch_13
    move-exception v0

    .line 489
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 405
    const/16 v1, 0x64

    invoke-virtual {p1, p2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 406
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    .line 407
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 408
    return v1
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 7

    .prologue
    .line 392
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 393
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 394
    const/4 v0, 0x1

    .line 395
    div-int/lit8 v2, v2, 0x2

    .line 396
    div-int/lit8 v1, v1, 0x2

    .line 397
    :goto_9
    div-int v3, v2, v0

    if-gt v3, p1, :cond_11

    div-int v3, v1, v0

    if-le v3, p2, :cond_14

    .line 398
    :cond_11
    mul-int/lit8 v0, v0, 0x2

    goto :goto_9

    .line 400
    :cond_14
    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    .line 412
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 413
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 415
    if-gt v3, p2, :cond_1a

    if-gt v2, p2, :cond_1a

    .line 416
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 423
    :goto_e
    int-to-double v4, v2

    mul-double/2addr v4, v0

    double-to-int v2, v4

    .line 424
    int-to-double v4, v3

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 427
    const/4 v1, 0x1

    invoke-static {p1, v2, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 428
    return-object v0

    .line 417
    :cond_1a
    if-le v3, v2, :cond_20

    .line 418
    int-to-double v0, p2

    int-to-double v4, v3

    div-double/2addr v0, v4

    goto :goto_e

    .line 420
    :cond_20
    int-to-double v0, p2

    int-to-double v4, v2

    div-double/2addr v0, v4

    goto :goto_e
.end method

.method public static a()Lcn/sharesdk/alipay/utils/c;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcn/sharesdk/alipay/utils/c;->b:Lcn/sharesdk/alipay/utils/c;

    if-nez v0, :cond_b

    .line 76
    new-instance v0, Lcn/sharesdk/alipay/utils/c;

    invoke-direct {v0}, Lcn/sharesdk/alipay/utils/c;-><init>()V

    sput-object v0, Lcn/sharesdk/alipay/utils/c;->b:Lcn/sharesdk/alipay/utils/c;

    .line 78
    :cond_b
    sget-object v0, Lcn/sharesdk/alipay/utils/c;->b:Lcn/sharesdk/alipay/utils/c;

    return-object v0
.end method

.method private a(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 207
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "The params of text is empty !"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_10
    iget-object v0, p0, Lcn/sharesdk/alipay/utils/c;->a:Lcn/sharesdk/alipay/utils/a;

    invoke-virtual {v0}, Lcn/sharesdk/alipay/utils/a;->b()Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcn/sharesdk/alipay/utils/c;->a:Lcn/sharesdk/alipay/utils/a;

    invoke-virtual {v1}, Lcn/sharesdk/alipay/utils/a;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2800

    if-le v1, v2, :cond_33

    .line 213
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "The params of text is too long !"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_33
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 217
    const-string v2, "alipay_object_sdkVer"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    const-string v2, "alipay_object_title"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v2, "alipay_object_description"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v2, "alipay_object_thumb_data"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 221
    const-string v2, "alipay_object_thumb_url"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v2, "alipay_object_identifier"

    const-string v3, "APTextObject"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v2, "alipay_textobject_text"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "text"

    invoke-direct {p0, v0, v1, p2}, Lcn/sharesdk/alipay/utils/c;->a(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 227
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 278
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 282
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 283
    const-string v0, "alipay_imageobject_imageUrl"

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    move-object v2, v1

    .line 294
    :goto_13
    if-eqz v0, :cond_55

    array-length v4, v0

    const v5, 0x8000

    if-le v4, v5, :cond_55

    .line 295
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Alipay share thumbData is too large"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 285
    const-string v0, "alipay_imageobject_imagePath"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcn/sharesdk/alipay/utils/c;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    move-object v2, v1

    goto :goto_13

    .line 287
    :cond_38
    if-eqz p2, :cond_4d

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 288
    invoke-direct {p0, p2}, Lcn/sharesdk/alipay/utils/c;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 289
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcn/sharesdk/alipay/utils/c;->a(Landroid/content/Context;[B)[B

    move-result-object v0

    goto :goto_13

    .line 291
    :cond_4d
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "The params of image is empty !"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_55
    const-string v4, "alipay_object_sdkVer"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 299
    const-string v4, "alipay_object_title"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v4, "alipay_object_description"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v4, "alipay_object_thumb_data"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 302
    const-string v0, "alipay_object_thumb_url"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v0, "alipay_object_identifier"

    const-string v1, "APImageObject"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v0, "alipay_imageobject_imageData"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 307
    if-eqz p2, :cond_86

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_86

    .line 308
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 311
    :cond_86
    const-string v0, "image"

    invoke-direct {p0, v0, v3, p4}, Lcn/sharesdk/alipay/utils/c;->a(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 312
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alipays://sendreq?appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/alipay/utils/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 448
    const-string v2, "alipay_command_type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 449
    const-string v2, "alipay_basereq_transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-virtual {v1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 451
    const-string v2, "alipay_sendmessag_req_scene"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 452
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_b8

    iget-object v2, p0, Lcn/sharesdk/alipay/utils/c;->c:Ljava/lang/String;

    if-eqz v2, :cond_b8

    iget-object v2, p0, Lcn/sharesdk/alipay/utils/c;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b8

    .line 453
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "alipays://platformapi/startapp?appId=20000167&actionType=outShare"

    .line 454
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 455
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 457
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 458
    const-string v3, "alipay_message_sdkVersion"

    const v4, 0x1337966

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 459
    const-string v3, "alipay_message_appPackage"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string v3, "alipay_message_content"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    const-string v3, "actionType"

    const-string v4, "outShare"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    const-string v3, "alipay_message_checksum"

    invoke-direct {p0, v0, v1}, Lcn/sharesdk/alipay/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 463
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 465
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 466
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send alipay message, intent="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 467
    return-void

    .line 470
    :cond_b8
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Alipay share send fail, invalid arguments"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 231
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x200

    if-le v0, v2, :cond_14

    .line 232
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Alipay share title is too long"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_14
    if-eqz p2, :cond_26

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x400

    if-le v0, v2, :cond_26

    .line 235
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Alipay share description is too long"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_26
    iget-object v0, p0, Lcn/sharesdk/alipay/utils/c;->a:Lcn/sharesdk/alipay/utils/a;

    invoke-virtual {v0}, Lcn/sharesdk/alipay/utils/a;->b()Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-virtual {v0, p3, v6}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 239
    iget-object v0, p0, Lcn/sharesdk/alipay/utils/c;->a:Lcn/sharesdk/alipay/utils/a;

    invoke-virtual {v0}, Lcn/sharesdk/alipay/utils/a;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/Platform$ShareParams;->setUrl(Ljava/lang/String;)V

    .line 241
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 245
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 260
    :goto_44
    if-eqz v1, :cond_a3

    array-length v0, v1

    const v4, 0x8000

    if-le v0, v4, :cond_a3

    .line 261
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Alipay share thumbData is too large"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_54
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7a

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 249
    :try_start_65
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcn/sharesdk/alipay/utils/c;->a(Landroid/content/Context;Ljava/lang/String;)[B
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_6c} :catch_70

    move-result-object v0

    move-object p6, v1

    move-object v1, v0

    .line 252
    goto :goto_44

    .line 250
    :catch_70
    move-exception v0

    .line 251
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object p6, v1

    .line 252
    goto :goto_44

    .line 253
    :cond_7a
    if-eqz p5, :cond_ce

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 254
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 255
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p5, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 256
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 257
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 258
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcn/sharesdk/alipay/utils/c;->a(Landroid/content/Context;[B)[B

    move-result-object v0

    move-object p6, v1

    move-object v1, v0

    goto :goto_44

    .line 264
    :cond_a3
    const-string v0, "alipay_object_sdkVer"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    const-string v0, "alipay_object_title"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v0, "alipay_object_description"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v0, "alipay_object_thumb_data"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 268
    const-string v0, "alipay_object_thumb_url"

    invoke-virtual {v3, v0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v0, "alipay_object_identifier"

    const-string v1, "APWebPageObject"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v0, "alipay_webpageobject_webpageUrl"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v0, "webpage"

    invoke-direct {p0, v0, v3, p7}, Lcn/sharesdk/alipay/utils/c;->a(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 274
    return-void

    :cond_ce
    move-object p6, v1

    goto/16 :goto_44
.end method

.method private static a([B[B)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 495
    if-eqz p0, :cond_2a

    array-length v0, p0

    if-eqz v0, :cond_2a

    if-eqz p1, :cond_2a

    array-length v0, p1

    if-eqz v0, :cond_2a

    .line 496
    array-length v0, p0

    array-length v2, p1

    if-eq v0, v2, :cond_1b

    .line 497
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "Alipay checkSumConsistent fail, length is different"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 508
    :cond_1a
    :goto_1a
    return v1

    :cond_1b
    move v0, v1

    .line 500
    :goto_1c
    array-length v2, p0

    if-ge v0, v2, :cond_28

    .line 501
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_1a

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 505
    :cond_28
    const/4 v1, 0x1

    goto :goto_1a

    .line 507
    :cond_2a
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "Alipay checkSumConsistent fail, invalid arguments"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_1a
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 369
    if-nez p2, :cond_a

    .line 370
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_a
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 372
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is recycled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_18
    const/16 v0, 0x78

    .line 377
    :goto_1a
    const/16 v1, 0x28

    if-le v0, v1, :cond_32

    invoke-direct {p0, p2, p3}, Lcn/sharesdk/alipay/utils/c;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)I

    move-result v1

    const v2, 0x8000

    if-le v1, v2, :cond_32

    .line 378
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 379
    add-int/lit8 v0, v0, -0x5

    .line 380
    invoke-direct {p0, p2, v1}, Lcn/sharesdk/alipay/utils/c;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_1a

    .line 382
    :cond_32
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 383
    const/16 v1, 0x64

    invoke-virtual {p2, p3, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 384
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 385
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 387
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 338
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_11

    .line 340
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 342
    :cond_11
    invoke-static {p2}, Lcom/mob/tools/utils/BitmapHelper;->getBmpFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    .line 344
    const/16 v0, 0x78

    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 345
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v3, v2, :cond_25

    .line 346
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 349
    :cond_25
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 350
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x8000

    cmp-long v4, v4, v6

    if-lez v4, :cond_41

    .line 351
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 352
    invoke-static {p2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 354
    invoke-static {v3, v0, v0}, Lcn/sharesdk/alipay/utils/c;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 358
    :cond_41
    const/4 v0, 0x0

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 360
    invoke-static {p2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 361
    if-nez v0, :cond_55

    .line 362
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 363
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_55
    invoke-direct {p0, p1, v0, v2}, Lcn/sharesdk/alipay/utils/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;[B)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 315
    invoke-static {p2}, Lcom/mob/tools/utils/BitmapHelper;->getBmpFormat([B)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    .line 317
    const/16 v0, 0x78

    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 318
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v2, v1, :cond_15

    .line 319
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 322
    :cond_15
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 323
    array-length v3, p2

    const v4, 0x8000

    if-le v3, v4, :cond_2d

    .line 324
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 325
    array-length v3, p2

    invoke-static {p2, v5, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 327
    invoke-static {v2, v0, v0}, Lcn/sharesdk/alipay/utils/c;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 330
    :cond_2d
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 332
    array-length v0, p2

    invoke-static {p2, v5, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 333
    invoke-direct {p0, p1, v0, v1}, Lcn/sharesdk/alipay/utils/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)[B
    .registers 7

    .prologue
    .line 432
    const/4 v1, 0x0

    .line 434
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 435
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    invoke-virtual {p1, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 436
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_15

    move-result-object v0

    .line 437
    :try_start_11
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_1d

    .line 442
    :goto_14
    return-object v0

    .line 438
    :catch_15
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 439
    :goto_19
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14

    .line 438
    :catch_1d
    move-exception v1

    goto :goto_19
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6

    .prologue
    .line 474
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 475
    if-eqz p1, :cond_a

    .line 476
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 478
    :cond_a
    const v1, 0x1337966

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 479
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 480
    const-string v1, "alipay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 481
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 134
    const-string v0, "alipay_message_content"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    const-string v1, "alipay_message_sdkVersion"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 137
    const-string v2, "alipay_message_appPackage"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 138
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5e

    .line 139
    const-string v3, "alipay_message_checksum"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 140
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    if-eqz v0, :cond_2b

    .line 142
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    :cond_2b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 145
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    const-string v0, "alipay"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 148
    invoke-static {v3, v0}, Lcn/sharesdk/alipay/utils/c;->a([B[B)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 149
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Alipay checksum fail"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 161
    :cond_5e
    :goto_5e
    return-void

    .line 153
    :cond_5f
    const-string v0, "alipay_command_type"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_78

    goto :goto_5e

    .line 156
    :pswitch_69
    new-instance v0, Lcn/sharesdk/alipay/utils/b;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/alipay/utils/b;-><init>(Landroid/os/Bundle;)V

    .line 157
    iget-object v1, p0, Lcn/sharesdk/alipay/utils/c;->a:Lcn/sharesdk/alipay/utils/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/alipay/utils/a;->a(Lcn/sharesdk/alipay/utils/b;)V

    goto :goto_5e

    .line 153
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_69
        :pswitch_69
    .end packed-switch
.end method

.method public a(Lcn/sharesdk/alipay/utils/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/sharesdk/alipay/utils/c;->a(Lcn/sharesdk/alipay/utils/a;I)V

    .line 165
    return-void
.end method

.method public a(Lcn/sharesdk/alipay/utils/a;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 172
    iput-object p1, p0, Lcn/sharesdk/alipay/utils/c;->a:Lcn/sharesdk/alipay/utils/a;

    .line 173
    invoke-virtual {p1}, Lcn/sharesdk/alipay/utils/a;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    .line 178
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 180
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getShareType()I

    move-result v0

    .line 182
    packed-switch v0, :pswitch_data_4a

    .line 202
    :goto_26
    :pswitch_26
    return-void

    .line 184
    :pswitch_27
    if-ne p2, v7, :cond_31

    .line 185
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, alipay moments only support to share webpage"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_31
    invoke-direct {p0, v2, p2}, Lcn/sharesdk/alipay/utils/c;->a(Ljava/lang/String;I)V

    goto :goto_26

    .line 191
    :pswitch_35
    if-ne p2, v7, :cond_3f

    .line 192
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, alipay moments only support to share webpage"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_3f
    invoke-direct {p0, v4, v5, v6, p2}, Lcn/sharesdk/alipay/utils/c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    goto :goto_26

    :pswitch_43
    move-object v0, p0

    move v7, p2

    .line 198
    invoke-direct/range {v0 .. v7}, Lcn/sharesdk/alipay/utils/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    goto :goto_26

    .line 182
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_35
        :pswitch_26
        :pswitch_43
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 83
    :try_start_0
    iput-object p1, p0, Lcn/sharesdk/alipay/utils/c;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_3

    .line 87
    :goto_2
    return-void

    .line 84
    :catch_3
    move-exception v0

    .line 85
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public b()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 91
    :try_start_1
    invoke-virtual {p0}, Lcn/sharesdk/alipay/utils/c;->c()Z

    move-result v1

    if-nez v1, :cond_8

    .line 98
    :cond_7
    :goto_7
    return v0

    .line 94
    :cond_8
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcn/sharesdk/alipay/utils/c;->a(I)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_13

    move-result v1

    .line 95
    const/16 v2, 0x4d

    if-lt v1, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    .line 96
    :catch_13
    move-exception v1

    .line 97
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public c()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 105
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.eg.android.AlipayGphone"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_15

    move-result-object v1

    .line 106
    if-eqz v1, :cond_14

    const/4 v0, 0x1

    .line 109
    :cond_14
    :goto_14
    return v0

    .line 107
    :catch_15
    move-exception v1

    .line 108
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcn/sharesdk/alipay/utils/c;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcn/sharesdk/alipay/utils/c;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 115
    const/4 v0, 0x1

    .line 117
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public e()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 122
    :try_start_1
    invoke-virtual {p0}, Lcn/sharesdk/alipay/utils/c;->c()Z

    move-result v1

    if-nez v1, :cond_8

    .line 129
    :cond_7
    :goto_7
    return v0

    .line 125
    :cond_8
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcn/sharesdk/alipay/utils/c;->a(I)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_13

    move-result v1

    .line 126
    const/16 v2, 0x54

    if-lt v1, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    .line 127
    :catch_13
    move-exception v1

    .line 128
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_7
.end method
