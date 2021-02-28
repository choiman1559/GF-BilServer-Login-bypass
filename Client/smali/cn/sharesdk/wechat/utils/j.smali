.class public Lcn/sharesdk/wechat/utils/j;
.super Ljava/lang/Object;
.source "WechatHelper.java"


# static fields
.field private static a:Lcn/sharesdk/wechat/utils/j;


# instance fields
.field private b:Lcn/sharesdk/wechat/utils/h;

.field private c:Lcn/sharesdk/wechat/utils/i;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcn/sharesdk/wechat/utils/h;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/h;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/j;->b:Lcn/sharesdk/wechat/utils/h;

    .line 59
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    .line 605
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 606
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 607
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 609
    int-to-double v4, v0

    div-double/2addr v4, v2

    double-to-int v0, v4

    .line 610
    int-to-double v4, v1

    div-double v2, v4, v2

    double-to-int v1, v2

    .line 613
    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 614
    return-object v0
.end method

.method public static a()Lcn/sharesdk/wechat/utils/j;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcn/sharesdk/wechat/utils/j;->a:Lcn/sharesdk/wechat/utils/j;

    if-nez v0, :cond_b

    .line 44
    new-instance v0, Lcn/sharesdk/wechat/utils/j;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/j;-><init>()V

    sput-object v0, Lcn/sharesdk/wechat/utils/j;->a:Lcn/sharesdk/wechat/utils/j;

    .line 46
    :cond_b
    sget-object v0, Lcn/sharesdk/wechat/utils/j;->a:Lcn/sharesdk/wechat/utils/j;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Lcn/sharesdk/wechat/utils/WXImageObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXImageObject;-><init>()V

    .line 288
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 289
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    invoke-virtual {p4, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 290
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 291
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 292
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageData:[B

    .line 294
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 295
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 296
    if-eqz p5, :cond_2a

    .line 297
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 298
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 300
    :cond_2a
    invoke-direct {p0, p1, p4}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 302
    const-string v0, "img"

    invoke-direct {p0, v1, v0, p5, p6}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 303
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 266
    new-instance v0, Lcn/sharesdk/wechat/utils/WXImageObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXImageObject;-><init>()V

    .line 267
    const-string v1, "/data/"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 268
    invoke-direct {p0, p4}, Lcn/sharesdk/wechat/utils/j;->d(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageData:[B

    .line 273
    :goto_13
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 274
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 276
    if-eqz p5, :cond_20

    .line 277
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 278
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 280
    :cond_20
    invoke-direct {p0, p1, p4}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 282
    const-string v0, "img"

    invoke-direct {p0, v1, v0, p5, p6}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 283
    return-void

    .line 270
    :cond_2c
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXImageObject;->imagePath:Ljava/lang/String;

    goto :goto_13
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 351
    new-instance v0, Lcn/sharesdk/wechat/utils/WXVideoObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXVideoObject;-><init>()V

    .line 352
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXVideoObject;->videoUrl:Ljava/lang/String;

    .line 354
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 355
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 356
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 357
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 358
    invoke-direct {p0, p1, p5}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 360
    const-string v0, "video"

    invoke-direct {p0, v1, v0, p6, p7}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 361
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 337
    new-instance v0, Lcn/sharesdk/wechat/utils/WXVideoObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXVideoObject;-><init>()V

    .line 338
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXVideoObject;->videoUrl:Ljava/lang/String;

    .line 340
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 341
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 342
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 343
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 344
    invoke-direct {p0, p1, p5}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 346
    const-string v0, "video"

    invoke-direct {p0, v1, v0, p6, p7}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 347
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Lcn/sharesdk/wechat/utils/WXMusicObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXMusicObject;-><init>()V

    .line 323
    iput-object p5, v0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicUrl:Ljava/lang/String;

    .line 324
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicDataUrl:Ljava/lang/String;

    .line 326
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 327
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 328
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 329
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 330
    invoke-direct {p0, p1, p6}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 332
    const-string v0, "music"

    invoke-direct {p0, v1, v0, p7, p8}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 333
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 307
    new-instance v0, Lcn/sharesdk/wechat/utils/WXMusicObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXMusicObject;-><init>()V

    .line 308
    iput-object p5, v0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicUrl:Ljava/lang/String;

    .line 309
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXMusicObject;->musicDataUrl:Ljava/lang/String;

    .line 311
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 312
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 313
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 314
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 315
    invoke-direct {p0, p1, p6}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 317
    const-string v0, "music"

    invoke-direct {p0, v1, v0, p7, p8}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 318
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 452
    new-instance v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;-><init>()V

    .line 453
    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->webpageUrl:Ljava/lang/String;

    .line 454
    iput-object p3, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    .line 455
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->path:Ljava/lang/String;

    .line 456
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 457
    iput-object p5, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 458
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 459
    iput-object p6, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 460
    invoke-direct {p0, p1, p7}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 461
    const-string v0, "webpage"

    invoke-direct {p0, v1, v0, p8, p9}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 462
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 466
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;-><init>()V

    .line 467
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->webpageUrl:Ljava/lang/String;

    .line 468
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5c

    const-string v0, "@app"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 469
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    .line 474
    :goto_19
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 476
    const-string v0, "\\?"

    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-le v2, v4, :cond_72

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".html?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 482
    :goto_43
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->path:Ljava/lang/String;

    .line 484
    :cond_45
    new-instance v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 485
    iput-object p5, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 486
    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 487
    iput-object p6, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 488
    invoke-direct {p0, p1, p7}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 489
    const-string v1, "webpage"

    invoke-direct {p0, v0, v1, p8, p9}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 490
    return-void

    .line 471
    :cond_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@app"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMiniProgramObject;->userName:Ljava/lang/String;

    goto :goto_19

    .line 479
    :cond_72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".html"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_43
.end method

.method private a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 635
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".wxapi.WXEntryActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 639
    :try_start_1f
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_22} :catch_7a

    move-result-object v0

    .line 644
    :goto_23
    if-eqz v0, :cond_52

    const-class v2, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not extend from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 649
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 653
    :cond_52
    new-instance v0, Lcn/sharesdk/wechat/utils/d;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/d;-><init>()V

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/d;->c:Ljava/lang/String;

    .line 655
    iput-object p1, v0, Lcn/sharesdk/wechat/utils/d;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    .line 656
    iput p3, v0, Lcn/sharesdk/wechat/utils/d;->b:I

    .line 658
    iput-object p4, p0, Lcn/sharesdk/wechat/utils/j;->c:Lcn/sharesdk/wechat/utils/i;

    .line 659
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/j;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-virtual {v1, v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/k;)V

    .line 660
    return-void

    .line 640
    :catch_7a
    move-exception v0

    .line 641
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 642
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Lcn/sharesdk/wechat/utils/WXTextObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXTextObject;-><init>()V

    .line 254
    iput-object p2, v0, Lcn/sharesdk/wechat/utils/WXTextObject;->text:Ljava/lang/String;

    .line 256
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 257
    iput-object p1, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 258
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 259
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 261
    const-string v0, "text"

    invoke-direct {p0, v1, v0, p3, p4}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 262
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 566
    if-nez p2, :cond_a

    .line 567
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_a
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 569
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is recycled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_18
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p0, p1, p2, v0}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v4, 0x64

    .line 576
    if-nez p2, :cond_c

    .line 577
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_c
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 579
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is recycled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_1a
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 583
    invoke-virtual {p2, p3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 584
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 585
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 586
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 588
    array-length v0, v1

    .line 589
    :goto_2d
    const v2, 0x8000

    if-le v0, v2, :cond_4e

    .line 590
    int-to-double v0, v0

    const-wide/high16 v2, 0x40e0000000000000L    # 32768.0

    div-double/2addr v0, v2

    .line 591
    invoke-direct {p0, p2, v0, v1}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 593
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 594
    invoke-virtual {p2, p3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 595
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 596
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 597
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 598
    array-length v0, v1

    goto :goto_2d

    .line 601
    :cond_4e
    return-object v1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 556
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_11

    .line 558
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 560
    :cond_11
    invoke-static {p2}, Lcom/mob/tools/utils/BitmapHelper;->getBmpFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    .line 561
    invoke-static {p2}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 562
    invoke-direct {p0, p1, v1, v0}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 522
    new-instance v0, Lcn/sharesdk/wechat/utils/WXEmojiObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXEmojiObject;-><init>()V

    .line 523
    invoke-direct {p0, p1, p4}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 524
    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiData:[B

    .line 526
    new-instance v2, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v2}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 527
    iput-object p2, v2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 528
    iput-object v0, v2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 529
    iput-object p3, v2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 530
    iput-object v1, v2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 532
    const-string v0, "emoji"

    invoke-direct {p0, v2, v0, p5, p6}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 533
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 508
    new-instance v0, Lcn/sharesdk/wechat/utils/WXEmojiObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXEmojiObject;-><init>()V

    .line 509
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiPath:Ljava/lang/String;

    .line 511
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 512
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 513
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 514
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 515
    invoke-direct {p0, p1, p4}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 517
    const-string v0, "emoji"

    invoke-direct {p0, v1, v0, p5, p6}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 518
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const v4, 0x8000

    .line 386
    new-instance v0, Lcn/sharesdk/wechat/utils/WXWebpageObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXWebpageObject;-><init>()V

    .line 387
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 389
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 390
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 391
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 392
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 393
    if-eqz p5, :cond_5a

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 394
    invoke-direct {p0, p1, p5}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 396
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    if-nez v0, :cond_2f

    .line 397
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_2f
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    array-length v0, v0

    if-le v0, v4, :cond_5a

    .line 399
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkArgs fail, thumbData is too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_5a
    const-string v0, "webpage"

    invoke-direct {p0, v1, v0, p6, p7}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 404
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const v4, 0x8000

    .line 365
    new-instance v0, Lcn/sharesdk/wechat/utils/WXWebpageObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXWebpageObject;-><init>()V

    .line 366
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 368
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 369
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 370
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 371
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 372
    if-eqz p5, :cond_5f

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 373
    invoke-direct {p0, p1, p5}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 374
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    if-nez v0, :cond_34

    .line 375
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_34
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    array-length v0, v0

    if-le v0, v4, :cond_5f

    .line 377
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkArgs fail, thumbData is too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_5f
    const-string v0, "webpage"

    invoke-direct {p0, v1, v0, p6, p7}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 382
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 423
    new-instance v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXAppExtendObject;-><init>()V

    .line 424
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->filePath:Ljava/lang/String;

    .line 425
    iput-object p5, v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->extInfo:Ljava/lang/String;

    .line 427
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 428
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 429
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 430
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 431
    invoke-direct {p0, p1, p6}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 433
    const-string v0, "appdata"

    invoke-direct {p0, v1, v0, p7, p8}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 434
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 408
    new-instance v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXAppExtendObject;-><init>()V

    .line 409
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->filePath:Ljava/lang/String;

    .line 410
    iput-object p5, v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->extInfo:Ljava/lang/String;

    .line 412
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 413
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 414
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 415
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 416
    invoke-direct {p0, p1, p6}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 418
    const-string v0, "appdata"

    invoke-direct {p0, v1, v0, p7, p8}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 419
    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 494
    new-instance v0, Lcn/sharesdk/wechat/utils/WXFileObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXFileObject;-><init>()V

    .line 495
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    .line 497
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 498
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 499
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 500
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 501
    invoke-direct {p0, p1, p5}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 503
    const-string v0, "filedata"

    invoke-direct {p0, v1, v0, p6, p7}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 504
    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 438
    new-instance v0, Lcn/sharesdk/wechat/utils/WXFileObject;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXFileObject;-><init>()V

    .line 439
    iput-object p4, v0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    .line 441
    new-instance v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 442
    iput-object p2, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 443
    iput-object p3, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 444
    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 445
    invoke-direct {p0, p1, p5}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 447
    const-string v0, "filedata"

    invoke-direct {p0, v1, v0, p6, p7}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    .line 448
    return-void
.end method

.method private d(Ljava/lang/String;)[B
    .registers 7

    .prologue
    .line 537
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 538
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 539
    const/16 v0, 0x400

    new-array v3, v0, [B

    .line 540
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .line 541
    :goto_12
    if-lez v0, :cond_1d

    .line 542
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 543
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    goto :goto_12

    .line 545
    :cond_1d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 546
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 547
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 548
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_29} :catch_2b

    move-result-object v0

    .line 552
    :goto_2a
    return-object v0

    .line 549
    :catch_2b
    move-exception v0

    .line 550
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 552
    const/4 v0, 0x0

    goto :goto_2a
.end method


# virtual methods
.method public a(Lcn/sharesdk/wechat/utils/i;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 66
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/j;->c:Lcn/sharesdk/wechat/utils/i;

    .line 67
    new-instance v0, Lcn/sharesdk/wechat/utils/a;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/a;-><init>()V

    .line 68
    const-string v1, "snsapi_userinfo"

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/a;->a:Ljava/lang/String;

    .line 69
    const-string v1, "sharesdk_wechat_auth"

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/a;->b:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/j;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-virtual {v1, v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/k;)V

    .line 71
    return-void
.end method

.method public a(Lcn/sharesdk/wechat/utils/i;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/i;->b()Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 80
    const-string v2, "com.tencent.mm"

    .line 81
    const-string v0, "scene"

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {p2, v0, v3}, Lcn/sharesdk/framework/Platform$ShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 82
    const/4 v3, 0x1

    if-ne v0, v3, :cond_34

    const-string v0, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    .line 85
    :goto_19
    new-instance v3, Lcn/sharesdk/framework/utils/e;

    invoke-direct {v3}, Lcn/sharesdk/framework/utils/e;-><init>()V

    .line 86
    invoke-virtual {v3, v2, v0}, Lcn/sharesdk/framework/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v3, p2, v1}, Lcn/sharesdk/framework/utils/e;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/Platform;)V

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    const-string v2, "ShareParams"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const/16 v2, 0x9

    invoke-interface {p3, v1, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 91
    return-void

    .line 82
    :cond_34
    const-string v0, "com.tencent.mm.ui.tools.ShareImgUI"

    goto :goto_19
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/j;->e:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public a(Lcn/sharesdk/wechat/utils/WechatHandlerActivity;)Z
    .registers 4

    .prologue
    .line 622
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j;->b:Lcn/sharesdk/wechat/utils/h;

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/j;->c:Lcn/sharesdk/wechat/utils/i;

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/WechatHandlerActivity;Lcn/sharesdk/wechat/utils/i;)Z

    move-result v0

    return v0
.end method

.method public b(Lcn/sharesdk/wechat/utils/i;)V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/i;->b()Lcn/sharesdk/framework/Platform;

    move-result-object v2

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/i;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v3

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/i;->c()Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v8

    .line 97
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getShareType()I

    move-result v9

    .line 98
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getScence()I

    move-result v7

    .line 101
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v6

    .line 102
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v10

    .line 103
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 104
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getMusicUrl()Ljava/lang/String;

    move-result-object v11

    .line 105
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v15

    .line 106
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v12

    .line 107
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getExtInfo()Ljava/lang/String;

    move-result-object v13

    .line 108
    packed-switch v9, :pswitch_data_458

    .line 243
    :pswitch_3b
    if-eqz v8, :cond_5a

    .line 244
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shareType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 245
    const/16 v4, 0x9

    invoke-interface {v8, v2, v4, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 249
    :cond_5a
    :goto_5a
    return-void

    .line 110
    :pswitch_5b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v5, v7, v1}, Lcn/sharesdk/wechat/utils/j;->a(Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto :goto_5a

    .line 113
    :pswitch_63
    if-eqz v6, :cond_77

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_77

    .line 114
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v2, p0

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto :goto_5a

    .line 115
    :cond_77
    if-eqz v14, :cond_8c

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_8c

    .line 116
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v2, p0

    move-object v6, v14

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V

    goto :goto_5a

    .line 117
    :cond_8c
    if-eqz v10, :cond_a8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a8

    .line 118
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 119
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v2, p0

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto :goto_5a

    .line 121
    :cond_a8
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, ""

    move-object/from16 v2, p0

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto :goto_5a

    .line 125
    :pswitch_b6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    const/4 v8, 0x0

    invoke-virtual {v2, v3, v8}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 127
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    aget-object v12, v3, v8

    .line 128
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v13, v2, v3

    .line 129
    if-eqz v6, :cond_fd

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_fd

    .line 130
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move-object v14, v6

    move v15, v7

    move-object/from16 v16, p1

    invoke-direct/range {v8 .. v16}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 131
    :cond_fd
    if-eqz v14, :cond_115

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_115

    .line 132
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move v15, v7

    move-object/from16 v16, p1

    invoke-direct/range {v8 .. v16}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 133
    :cond_115
    if-eqz v10, :cond_135

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_135

    .line 134
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 135
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move v15, v7

    move-object/from16 v16, p1

    invoke-direct/range {v8 .. v16}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 137
    :cond_135
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v14, ""

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move v15, v7

    move-object/from16 v16, p1

    invoke-direct/range {v8 .. v16}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 141
    :pswitch_147
    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/i;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcn/sharesdk/framework/Platform$ShareParams;->setUrl(Ljava/lang/String;)V

    .line 143
    if-eqz v6, :cond_16c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_16c

    .line 144
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move-object v13, v6

    move v14, v7

    move-object/from16 v15, p1

    invoke-direct/range {v8 .. v15}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 145
    :cond_16c
    if-eqz v14, :cond_18b

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_18b

    .line 146
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v15, p0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v12

    move-object/from16 v20, v14

    move/from16 v21, v7

    move-object/from16 v22, p1

    invoke-direct/range {v15 .. v22}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 147
    :cond_18b
    if-eqz v10, :cond_1ab

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1ab

    .line 148
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 149
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move v14, v7

    move-object/from16 v15, p1

    invoke-direct/range {v8 .. v15}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 151
    :cond_1ab
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v13, ""

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move v14, v7

    move-object/from16 v15, p1

    invoke-direct/range {v8 .. v15}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 155
    :pswitch_1bd
    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 156
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/i;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcn/sharesdk/framework/Platform$ShareParams;->setUrl(Ljava/lang/String;)V

    .line 157
    if-eqz v6, :cond_1e2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1e2

    .line 158
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move-object v13, v6

    move v14, v7

    move-object/from16 v15, p1

    invoke-direct/range {v8 .. v15}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 159
    :cond_1e2
    if-eqz v14, :cond_201

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_201

    .line 160
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v15, p0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v12

    move-object/from16 v20, v14

    move/from16 v21, v7

    move-object/from16 v22, p1

    invoke-direct/range {v15 .. v22}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 161
    :cond_201
    if-eqz v10, :cond_221

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_221

    .line 162
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 163
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move v14, v7

    move-object/from16 v15, p1

    invoke-direct/range {v8 .. v15}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 165
    :cond_221
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v13, ""

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move v14, v7

    move-object/from16 v15, p1

    invoke-direct/range {v8 .. v15}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 169
    :pswitch_233
    const/4 v2, 0x1

    if-ne v7, v2, :cond_23e

    .line 170
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "WechatMoments does not support SAHRE_APP"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    :cond_23e
    const/4 v2, 0x2

    if-ne v7, v2, :cond_249

    .line 172
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "WechatFavorite does not support SAHRE_APP"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_249
    if-eqz v6, :cond_262

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_262

    .line 176
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move-object v14, v6

    move v15, v7

    move-object/from16 v16, p1

    invoke-direct/range {v8 .. v16}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 177
    :cond_262
    if-eqz v14, :cond_27a

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_27a

    .line 178
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move v15, v7

    move-object/from16 v16, p1

    invoke-direct/range {v8 .. v16}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 179
    :cond_27a
    if-eqz v10, :cond_29a

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_29a

    .line 180
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 181
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move v15, v7

    move-object/from16 v16, p1

    invoke-direct/range {v8 .. v16}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 183
    :cond_29a
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v14, ""

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move v15, v7

    move-object/from16 v16, p1

    invoke-direct/range {v8 .. v16}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 187
    :pswitch_2ac
    const/4 v2, 0x1

    if-ne v7, v2, :cond_2b7

    .line 188
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "WechatMoments does not support SHARE_FILE"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    :cond_2b7
    if-eqz v6, :cond_2d0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2d0

    .line 192
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move-object v13, v6

    move v14, v7

    move-object/from16 v15, p1

    invoke-direct/range {v8 .. v15}, Lcn/sharesdk/wechat/utils/j;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 193
    :cond_2d0
    if-eqz v14, :cond_2ef

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2ef

    .line 194
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v15, p0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v12

    move-object/from16 v20, v14

    move/from16 v21, v7

    move-object/from16 v22, p1

    invoke-direct/range {v15 .. v22}, Lcn/sharesdk/wechat/utils/j;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 195
    :cond_2ef
    if-eqz v10, :cond_30f

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_30f

    .line 196
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 197
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move v14, v7

    move-object/from16 v15, p1

    invoke-direct/range {v8 .. v15}, Lcn/sharesdk/wechat/utils/j;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 199
    :cond_30f
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v13, ""

    move-object/from16 v8, p0

    move-object v10, v4

    move-object v11, v5

    move v14, v7

    move-object/from16 v15, p1

    invoke-direct/range {v8 .. v15}, Lcn/sharesdk/wechat/utils/j;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 203
    :pswitch_321
    const/4 v2, 0x1

    if-ne v7, v2, :cond_32c

    .line 204
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "WechatMoments does not support SHARE_EMOJI"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2

    .line 205
    :cond_32c
    const/4 v2, 0x2

    if-ne v7, v2, :cond_337

    .line 206
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "WechatFavorite does not support SHARE_EMOJI"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2

    .line 209
    :cond_337
    if-eqz v6, :cond_34c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_34c

    .line 210
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v2, p0

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 211
    :cond_34c
    if-eqz v10, :cond_372

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_372

    .line 212
    new-instance v8, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v8}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 213
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v11, "images"

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/mob/tools/network/NetworkHelper;->downloadCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v6

    .line 216
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v2, p0

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 217
    :cond_372
    if-eqz v14, :cond_388

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_388

    .line 218
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v2, p0

    move-object v6, v14

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 220
    :cond_388
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, ""

    move-object/from16 v2, p0

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcn/sharesdk/wechat/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 224
    :pswitch_397
    const/4 v3, 0x1

    if-ne v7, v3, :cond_3a2

    .line 225
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "WechatMoments does not support SAHRE_APP"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    :cond_3a2
    const/4 v3, 0x2

    if-ne v7, v3, :cond_3ad

    .line 227
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "WechatFavorite does not support SAHRE_APP"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2

    .line 229
    :cond_3ad
    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    .line 230
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/wechat/utils/i;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setUrl(Ljava/lang/String;)V

    .line 231
    if-eqz v6, :cond_3df

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3df

    .line 232
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/sharesdk/wechat/utils/j;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/sharesdk/wechat/utils/j;->e:Ljava/lang/String;

    move-object/from16 v8, p0

    move-object/from16 v10, v17

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    move-object/from16 v17, p1

    invoke-direct/range {v8 .. v17}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 233
    :cond_3df
    if-eqz v14, :cond_408

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_408

    .line 234
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/wechat/utils/j;->d:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/wechat/utils/j;->e:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v15, p0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v14

    move/from16 v23, v7

    move-object/from16 v24, p1

    invoke-direct/range {v15 .. v24}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 235
    :cond_408
    if-eqz v10, :cond_437

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_437

    .line 236
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 237
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/wechat/utils/j;->d:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/wechat/utils/j;->e:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v15, p0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v23, v7

    move-object/from16 v24, p1

    invoke-direct/range {v15 .. v24}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 239
    :cond_437
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/wechat/utils/j;->d:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/wechat/utils/j;->e:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v22, ""

    move-object/from16 v15, p0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v23, v7

    move-object/from16 v24, p1

    invoke-direct/range {v15 .. v24}, Lcn/sharesdk/wechat/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/i;)V

    goto/16 :goto_5a

    .line 108
    :pswitch_data_458
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_63
        :pswitch_3b
        :pswitch_1bd
        :pswitch_b6
        :pswitch_147
        :pswitch_233
        :pswitch_2ac
        :pswitch_321
        :pswitch_3b
        :pswitch_397
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/j;->d:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/h;->a()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 626
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/h;->b()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 618
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-virtual {v0, p1}, Lcn/sharesdk/wechat/utils/h;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 630
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j;->b:Lcn/sharesdk/wechat/utils/h;

    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/h;->c()Z

    move-result v0

    return v0
.end method
