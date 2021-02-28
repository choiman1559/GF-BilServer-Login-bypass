.class public Lcn/sharesdk/dingding/utils/c;
.super Ljava/lang/Object;
.source "DingdingImpl.java"


# static fields
.field private static a:Lcn/sharesdk/dingding/utils/c;


# instance fields
.field private b:Lcn/sharesdk/dingding/utils/a;

.field private c:Lcn/sharesdk/dingding/utils/b;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcn/sharesdk/dingding/utils/a;

    invoke-direct {v0}, Lcn/sharesdk/dingding/utils/a;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/dingding/utils/c;->b:Lcn/sharesdk/dingding/utils/a;

    .line 49
    return-void
.end method

.method public static a()Lcn/sharesdk/dingding/utils/c;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcn/sharesdk/dingding/utils/c;->a:Lcn/sharesdk/dingding/utils/c;

    if-nez v0, :cond_b

    .line 42
    new-instance v0, Lcn/sharesdk/dingding/utils/c;

    invoke-direct {v0}, Lcn/sharesdk/dingding/utils/c;-><init>()V

    sput-object v0, Lcn/sharesdk/dingding/utils/c;->a:Lcn/sharesdk/dingding/utils/c;

    .line 44
    :cond_b
    sget-object v0, Lcn/sharesdk/dingding/utils/c;->a:Lcn/sharesdk/dingding/utils/c;

    return-object v0
.end method

.method private a(Lcn/sharesdk/dingding/utils/DDMediaMessage;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 343
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ddshare.DDShareActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 347
    :try_start_1f
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_22} :catch_7a

    move-result-object v0

    .line 353
    :goto_23
    if-eqz v0, :cond_52

    const-class v2, Lcn/sharesdk/dingding/utils/DingdingHandlerActivity;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not extend from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcn/sharesdk/dingding/utils/DingdingHandlerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 362
    :cond_52
    new-instance v0, Lcn/sharesdk/dingding/utils/e;

    invoke-direct {v0}, Lcn/sharesdk/dingding/utils/e;-><init>()V

    .line 363
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

    iput-object v1, v0, Lcn/sharesdk/dingding/utils/e;->a:Ljava/lang/String;

    .line 364
    iput-object p1, v0, Lcn/sharesdk/dingding/utils/e;->b:Lcn/sharesdk/dingding/utils/DDMediaMessage;

    .line 365
    iput p3, v0, Lcn/sharesdk/dingding/utils/e;->c:I

    .line 367
    iput-object p4, p0, Lcn/sharesdk/dingding/utils/c;->c:Lcn/sharesdk/dingding/utils/b;

    .line 368
    iget-object v1, p0, Lcn/sharesdk/dingding/utils/c;->b:Lcn/sharesdk/dingding/utils/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/dingding/utils/a;->a(Lcn/sharesdk/dingding/utils/d;)Z

    .line 369
    return-void

    .line 348
    :catch_7a
    move-exception v0

    .line 349
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 350
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Lcn/sharesdk/dingding/utils/DDTextMessage;

    invoke-direct {v0}, Lcn/sharesdk/dingding/utils/DDTextMessage;-><init>()V

    .line 172
    iput-object p2, v0, Lcn/sharesdk/dingding/utils/DDTextMessage;->text:Ljava/lang/String;

    .line 174
    new-instance v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/dingding/utils/DDMediaMessage;-><init>()V

    .line 175
    iput-object p1, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->title:Ljava/lang/String;

    .line 176
    iput-object p2, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->content:Ljava/lang/String;

    .line 177
    iput-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->mediaObject:Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;

    .line 179
    const-string v0, "text"

    invoke-direct {p0, v1, v0, p3, p4}, Lcn/sharesdk/dingding/utils/c;->a(Lcn/sharesdk/dingding/utils/DDMediaMessage;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V

    .line 180
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/dingding/utils/b;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 184
    new-instance v0, Lcn/sharesdk/dingding/utils/DDImageMessage;

    invoke-direct {v0}, Lcn/sharesdk/dingding/utils/DDImageMessage;-><init>()V

    .line 185
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 186
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    invoke-virtual {p3, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 187
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 188
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 189
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imageData:[B

    .line 191
    new-instance v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/dingding/utils/DDMediaMessage;-><init>()V

    .line 192
    iput-object p1, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->title:Ljava/lang/String;

    .line 193
    iput-object p2, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->content:Ljava/lang/String;

    .line 194
    iput-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->mediaObject:Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;

    .line 196
    const-string v0, "img"

    invoke-direct {p0, v1, v0, p4, p5}, Lcn/sharesdk/dingding/utils/c;->a(Lcn/sharesdk/dingding/utils/DDMediaMessage;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V

    .line 197
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Lcn/sharesdk/dingding/utils/DDImageMessage;

    invoke-direct {v0}, Lcn/sharesdk/dingding/utils/DDImageMessage;-><init>()V

    .line 203
    const-string v1, "/data/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 204
    invoke-direct {p0, p3}, Lcn/sharesdk/dingding/utils/c;->b(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imageData:[B

    .line 209
    :goto_13
    new-instance v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/dingding/utils/DDMediaMessage;-><init>()V

    .line 210
    iput-object p1, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->title:Ljava/lang/String;

    .line 211
    iput-object p2, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->content:Ljava/lang/String;

    .line 212
    iput-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->mediaObject:Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;

    .line 213
    invoke-direct {p0, p3}, Lcn/sharesdk/dingding/utils/c;->c(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->thumbData:[B

    .line 215
    const-string v0, "img"

    invoke-direct {p0, v1, v0, p4, p5}, Lcn/sharesdk/dingding/utils/c;->a(Lcn/sharesdk/dingding/utils/DDMediaMessage;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V

    .line 216
    return-void

    .line 206
    :cond_2a
    iput-object p3, v0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imagePath:Ljava/lang/String;

    goto :goto_13
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/dingding/utils/b;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 233
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 238
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/dingding/utils/b;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 222
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 228
    return-void
.end method

.method private a([B)[B
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 392
    .line 393
    array-length v0, p1

    int-to-double v0, v0

    const-wide/high16 v2, 0x40e0000000000000L    # 32768.0

    div-double/2addr v0, v2

    .line 394
    sub-double v2, v0, v8

    .line 396
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 397
    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 398
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 399
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 400
    if-eqz v1, :cond_2c

    const-string v4, "png"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2a

    const-string v4, "gif"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 401
    :cond_2a
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 404
    :cond_2c
    add-double/2addr v2, v8

    .line 405
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 406
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 407
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 408
    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 409
    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 410
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 411
    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 412
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 414
    if-nez v4, :cond_58

    .line 415
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_58
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 417
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is recycled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_66
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 421
    const/16 v5, 0x64

    invoke-virtual {v4, v0, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 422
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 423
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 425
    if-eqz v4, :cond_81

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_81

    .line 426
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 428
    :cond_81
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 429
    if-eqz v1, :cond_8d

    array-length v4, v1

    const v5, 0x8000

    if-gt v4, v5, :cond_2c

    .line 431
    :cond_8d
    return-object v1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/dingding/utils/b;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const v4, 0x8000

    .line 242
    new-instance v0, Lcn/sharesdk/dingding/utils/DDWebpageMessage;

    invoke-direct {v0}, Lcn/sharesdk/dingding/utils/DDWebpageMessage;-><init>()V

    .line 243
    iput-object p3, v0, Lcn/sharesdk/dingding/utils/DDWebpageMessage;->url:Ljava/lang/String;

    .line 245
    new-instance v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/dingding/utils/DDMediaMessage;-><init>()V

    .line 246
    iput-object p1, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->title:Ljava/lang/String;

    .line 247
    iput-object p2, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->content:Ljava/lang/String;

    .line 248
    iput-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->mediaObject:Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;

    .line 250
    if-eqz p4, :cond_70

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_70

    .line 251
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 252
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p4, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 253
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 254
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 255
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 256
    invoke-direct {p0, v0}, Lcn/sharesdk/dingding/utils/c;->a([B)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->thumbData:[B

    .line 258
    iget-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->thumbData:[B

    if-nez v0, :cond_45

    .line 259
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_45
    iget-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->thumbData:[B

    array-length v0, v0

    if-le v0, v4, :cond_70

    .line 261
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkArgs fail, thumbData is too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->thumbData:[B

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

    .line 266
    :cond_70
    const-string v0, "webpage"

    invoke-direct {p0, v1, v0, p5, p6}, Lcn/sharesdk/dingding/utils/c;->a(Lcn/sharesdk/dingding/utils/DDMediaMessage;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V

    .line 267
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const v4, 0x8000

    .line 271
    new-instance v0, Lcn/sharesdk/dingding/utils/DDWebpageMessage;

    invoke-direct {v0}, Lcn/sharesdk/dingding/utils/DDWebpageMessage;-><init>()V

    .line 272
    iput-object p3, v0, Lcn/sharesdk/dingding/utils/DDWebpageMessage;->url:Ljava/lang/String;

    .line 274
    new-instance v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/dingding/utils/DDMediaMessage;-><init>()V

    .line 275
    iput-object p1, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->title:Ljava/lang/String;

    .line 276
    iput-object p2, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->content:Ljava/lang/String;

    .line 277
    iput-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->mediaObject:Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;

    .line 279
    if-eqz p4, :cond_5f

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 280
    invoke-direct {p0, p4}, Lcn/sharesdk/dingding/utils/c;->c(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->thumbData:[B

    .line 281
    iget-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->thumbData:[B

    if-nez v0, :cond_34

    .line 282
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_34
    iget-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->thumbData:[B

    array-length v0, v0

    if-le v0, v4, :cond_5f

    .line 284
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkArgs fail, thumbData is too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->thumbData:[B

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

    .line 288
    :cond_5f
    const-string v0, "webpage"

    invoke-direct {p0, v1, v0, p5, p6}, Lcn/sharesdk/dingding/utils/c;->a(Lcn/sharesdk/dingding/utils/DDMediaMessage;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V

    .line 289
    return-void
.end method

.method private b(Ljava/lang/String;)[B
    .registers 7

    .prologue
    .line 373
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 374
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 375
    const/16 v0, 0x400

    new-array v3, v0, [B

    .line 376
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .line 377
    :goto_12
    if-lez v0, :cond_1d

    .line 378
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 379
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    goto :goto_12

    .line 381
    :cond_1d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 382
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 383
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 384
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_29} :catch_2b

    move-result-object v0

    .line 388
    :goto_2a
    return-object v0

    .line 385
    :catch_2b
    move-exception v0

    .line 386
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 388
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/dingding/utils/b;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const v4, 0x8000

    .line 293
    new-instance v0, Lcn/sharesdk/dingding/utils/DDZhiFuBaoMesseage;

    invoke-direct {v0}, Lcn/sharesdk/dingding/utils/DDZhiFuBaoMesseage;-><init>()V

    .line 294
    iput-object p3, v0, Lcn/sharesdk/dingding/utils/DDZhiFuBaoMesseage;->url:Ljava/lang/String;

    .line 296
    new-instance v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/dingding/utils/DDMediaMessage;-><init>()V

    .line 297
    iput-object p1, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->title:Ljava/lang/String;

    .line 298
    iput-object p2, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->content:Ljava/lang/String;

    .line 299
    iput-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->mediaObject:Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;

    .line 301
    if-eqz p4, :cond_70

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_70

    .line 302
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 303
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p4, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 304
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 305
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 306
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 307
    invoke-direct {p0, v0}, Lcn/sharesdk/dingding/utils/c;->a([B)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->thumbData:[B

    .line 309
    iget-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->thumbData:[B

    if-nez v0, :cond_45

    .line 310
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_45
    iget-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->thumbData:[B

    array-length v0, v0

    if-le v0, v4, :cond_70

    .line 312
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkArgs fail, thumbData is too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->thumbData:[B

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

    .line 316
    :cond_70
    const-string v0, "zfb"

    invoke-direct {p0, v1, v0, p5, p6}, Lcn/sharesdk/dingding/utils/c;->a(Lcn/sharesdk/dingding/utils/DDMediaMessage;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V

    .line 317
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const v4, 0x8000

    .line 320
    new-instance v0, Lcn/sharesdk/dingding/utils/DDZhiFuBaoMesseage;

    invoke-direct {v0}, Lcn/sharesdk/dingding/utils/DDZhiFuBaoMesseage;-><init>()V

    .line 321
    iput-object p3, v0, Lcn/sharesdk/dingding/utils/DDZhiFuBaoMesseage;->url:Ljava/lang/String;

    .line 323
    new-instance v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;

    invoke-direct {v1}, Lcn/sharesdk/dingding/utils/DDMediaMessage;-><init>()V

    .line 324
    iput-object p1, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->title:Ljava/lang/String;

    .line 325
    iput-object p2, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->content:Ljava/lang/String;

    .line 326
    iput-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->mediaObject:Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;

    .line 328
    if-eqz p4, :cond_5f

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 329
    invoke-direct {p0, p4}, Lcn/sharesdk/dingding/utils/c;->c(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->thumbData:[B

    .line 330
    iget-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->thumbData:[B

    if-nez v0, :cond_34

    .line 331
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_34
    iget-object v0, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->thumbData:[B

    array-length v0, v0

    if-le v0, v4, :cond_5f

    .line 333
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkArgs fail, thumbData is too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcn/sharesdk/dingding/utils/DDMediaMessage;->thumbData:[B

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

    .line 338
    :cond_5f
    const-string v0, "zfb"

    invoke-direct {p0, v1, v0, p5, p6}, Lcn/sharesdk/dingding/utils/c;->a(Lcn/sharesdk/dingding/utils/DDMediaMessage;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V

    .line 339
    return-void
.end method

.method private c(Ljava/lang/String;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 435
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    .line 437
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 440
    :cond_13
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 441
    invoke-direct {p0, p1}, Lcn/sharesdk/dingding/utils/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 442
    const-string v3, "png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29

    const-string v3, "gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 443
    :cond_29
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 447
    :cond_2b
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x40e0000000000000L    # 32768.0

    div-double/2addr v2, v4

    .line 448
    sub-double/2addr v2, v6

    .line 450
    :cond_34
    add-double/2addr v2, v6

    .line 451
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-static {p1, v1}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 453
    if-nez v1, :cond_48

    .line 454
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_48
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 456
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is recycled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_56
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 460
    const/16 v5, 0x64

    invoke-virtual {v1, v0, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 461
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 462
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 464
    if-eqz v1, :cond_71

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_71

    .line 465
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 467
    :cond_71
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 468
    if-eqz v1, :cond_7d

    array-length v4, v1

    const v5, 0x8000

    if-gt v4, v5, :cond_34

    .line 470
    :cond_7d
    return-object v1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 474
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2a

    .line 476
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 477
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jepg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 478
    :cond_28
    const-string v0, "image/jpeg"

    .line 498
    :cond_2a
    :goto_2a
    return-object v0

    .line 479
    :cond_2b
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 480
    const-string v0, "image/png"

    goto :goto_2a

    .line 481
    :cond_3a
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 482
    const-string v0, "image/gif"

    goto :goto_2a

    .line 485
    :cond_49
    :try_start_49
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 486
    invoke-static {v1}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_55} :catch_60

    .line 493
    :goto_55
    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2a

    .line 494
    :cond_5d
    const-string v0, "application/octet-stream"

    goto :goto_2a

    .line 488
    :catch_60
    move-exception v0

    .line 489
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 490
    const/4 v0, 0x0

    goto :goto_55
.end method


# virtual methods
.method public a(Lcn/sharesdk/dingding/utils/b;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/dingding/utils/b;->b()Lcn/sharesdk/framework/Platform;

    move-result-object v2

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/dingding/utils/b;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v7

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/dingding/utils/b;->c()Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v8

    .line 76
    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getShareType()I

    move-result v9

    .line 77
    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getScence()I

    move-result v6

    .line 80
    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v13

    .line 82
    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 83
    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getMusicUrl()Ljava/lang/String;

    move-result-object v10

    .line 84
    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 85
    packed-switch v9, :pswitch_data_24c

    .line 160
    :pswitch_33
    if-eqz v8, :cond_52

    .line 161
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

    .line 162
    const/16 v4, 0x9

    invoke-interface {v8, v2, v4, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 167
    :cond_52
    :goto_52
    return-void

    .line 87
    :pswitch_53
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v4, v6, v1}, Lcn/sharesdk/dingding/utils/c;->a(Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V

    goto :goto_52

    .line 90
    :pswitch_5b
    if-eqz v5, :cond_6b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6b

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    .line 91
    invoke-direct/range {v2 .. v7}, Lcn/sharesdk/dingding/utils/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V

    goto :goto_52

    .line 92
    :cond_6b
    if-eqz v12, :cond_7c

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_7c

    move-object/from16 v2, p0

    move-object v5, v12

    move-object/from16 v7, p1

    .line 93
    invoke-direct/range {v2 .. v7}, Lcn/sharesdk/dingding/utils/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/dingding/utils/b;)V

    goto :goto_52

    .line 94
    :cond_7c
    if-eqz v13, :cond_94

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_94

    .line 95
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v13}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    .line 96
    invoke-direct/range {v2 .. v7}, Lcn/sharesdk/dingding/utils/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V

    goto :goto_52

    .line 98
    :cond_94
    const-string v5, ""

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcn/sharesdk/dingding/utils/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V

    goto :goto_52

    .line 102
    :pswitch_9e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 103
    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 104
    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v10, v7, v8

    .line 105
    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    aget-object v11, v2, v7

    .line 106
    if-eqz v5, :cond_e1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e1

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move-object v12, v5

    move v13, v6

    move-object/from16 v14, p1

    .line 107
    invoke-direct/range {v7 .. v14}, Lcn/sharesdk/dingding/utils/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V

    goto/16 :goto_52

    .line 108
    :cond_e1
    if-eqz v12, :cond_f5

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_f5

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move v13, v6

    move-object/from16 v14, p1

    .line 109
    invoke-direct/range {v7 .. v14}, Lcn/sharesdk/dingding/utils/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/dingding/utils/b;)V

    goto/16 :goto_52

    .line 110
    :cond_f5
    if-eqz v13, :cond_111

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_111

    .line 111
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v13}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move v13, v6

    move-object/from16 v14, p1

    .line 112
    invoke-direct/range {v7 .. v14}, Lcn/sharesdk/dingding/utils/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V

    goto/16 :goto_52

    .line 114
    :cond_111
    const-string v12, ""

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move v13, v6

    move-object/from16 v14, p1

    invoke-direct/range {v7 .. v14}, Lcn/sharesdk/dingding/utils/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V

    goto/16 :goto_52

    .line 118
    :pswitch_11f
    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/dingding/utils/b;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcn/sharesdk/framework/Platform$ShareParams;->setUrl(Ljava/lang/String;)V

    .line 120
    if-eqz v5, :cond_140

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_140

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move-object v11, v5

    move v12, v6

    move-object/from16 v13, p1

    .line 121
    invoke-direct/range {v7 .. v13}, Lcn/sharesdk/dingding/utils/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V

    goto/16 :goto_52

    .line 122
    :cond_140
    if-eqz v12, :cond_159

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_159

    move-object/from16 v13, p0

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v10

    move-object/from16 v17, v12

    move/from16 v18, v6

    move-object/from16 v19, p1

    .line 123
    invoke-direct/range {v13 .. v19}, Lcn/sharesdk/dingding/utils/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/dingding/utils/b;)V

    goto/16 :goto_52

    .line 124
    :cond_159
    if-eqz v13, :cond_175

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_175

    .line 125
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v13}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move v12, v6

    move-object/from16 v13, p1

    .line 126
    invoke-direct/range {v7 .. v13}, Lcn/sharesdk/dingding/utils/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V

    goto/16 :goto_52

    .line 128
    :cond_175
    const-string v11, ""

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move v12, v6

    move-object/from16 v13, p1

    invoke-direct/range {v7 .. v13}, Lcn/sharesdk/dingding/utils/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V

    goto/16 :goto_52

    .line 132
    :pswitch_183
    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 133
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/dingding/utils/b;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcn/sharesdk/framework/Platform$ShareParams;->setUrl(Ljava/lang/String;)V

    .line 134
    if-eqz v5, :cond_1a4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1a4

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move-object v11, v5

    move v12, v6

    move-object/from16 v13, p1

    .line 135
    invoke-direct/range {v7 .. v13}, Lcn/sharesdk/dingding/utils/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V

    goto/16 :goto_52

    .line 136
    :cond_1a4
    if-eqz v12, :cond_1bd

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1bd

    move-object/from16 v13, p0

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v10

    move-object/from16 v17, v12

    move/from16 v18, v6

    move-object/from16 v19, p1

    .line 137
    invoke-direct/range {v13 .. v19}, Lcn/sharesdk/dingding/utils/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/dingding/utils/b;)V

    goto/16 :goto_52

    .line 138
    :cond_1bd
    if-eqz v13, :cond_1d9

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1d9

    .line 139
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v13}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move v12, v6

    move-object/from16 v13, p1

    .line 140
    invoke-direct/range {v7 .. v13}, Lcn/sharesdk/dingding/utils/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V

    goto/16 :goto_52

    .line 142
    :cond_1d9
    const-string v11, ""

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move v12, v6

    move-object/from16 v13, p1

    invoke-direct/range {v7 .. v13}, Lcn/sharesdk/dingding/utils/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V

    goto/16 :goto_52

    .line 146
    :pswitch_1e7
    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 147
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/dingding/utils/b;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcn/sharesdk/framework/Platform$ShareParams;->setUrl(Ljava/lang/String;)V

    .line 148
    if-eqz v5, :cond_208

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_208

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move-object v11, v5

    move v12, v6

    move-object/from16 v13, p1

    .line 149
    invoke-direct/range {v7 .. v13}, Lcn/sharesdk/dingding/utils/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V

    goto/16 :goto_52

    .line 150
    :cond_208
    if-eqz v12, :cond_221

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_221

    move-object/from16 v13, p0

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v10

    move-object/from16 v17, v12

    move/from16 v18, v6

    move-object/from16 v19, p1

    .line 151
    invoke-direct/range {v13 .. v19}, Lcn/sharesdk/dingding/utils/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/dingding/utils/b;)V

    goto/16 :goto_52

    .line 152
    :cond_221
    if-eqz v13, :cond_23d

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_23d

    .line 153
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v13}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move v12, v6

    move-object/from16 v13, p1

    .line 154
    invoke-direct/range {v7 .. v13}, Lcn/sharesdk/dingding/utils/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V

    goto/16 :goto_52

    .line 156
    :cond_23d
    const-string v11, ""

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move v12, v6

    move-object/from16 v13, p1

    invoke-direct/range {v7 .. v13}, Lcn/sharesdk/dingding/utils/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/dingding/utils/b;)V

    goto/16 :goto_52

    .line 85
    nop

    :pswitch_data_24c
    .packed-switch 0x1
        :pswitch_53
        :pswitch_5b
        :pswitch_33
        :pswitch_183
        :pswitch_9e
        :pswitch_11f
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_1e7
    .end packed-switch
.end method

.method public a(Lcn/sharesdk/dingding/utils/b;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p1}, Lcn/sharesdk/dingding/utils/b;->b()Lcn/sharesdk/framework/Platform;

    move-result-object v0

    .line 62
    const-string v1, "com.alibaba.android.rimet"

    .line 63
    new-instance v2, Lcn/sharesdk/framework/utils/e;

    invoke-direct {v2}, Lcn/sharesdk/framework/utils/e;-><init>()V

    .line 64
    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/e;->a(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2, p2, v0}, Lcn/sharesdk/framework/utils/e;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/Platform;)V

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 68
    const-string v2, "ShareParams"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const/16 v2, 0x9

    invoke-interface {p3, v0, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 70
    return-void
.end method

.method public a(Lcn/sharesdk/dingding/utils/DingdingHandlerActivity;)Z
    .registers 4

    .prologue
    .line 502
    iget-object v0, p0, Lcn/sharesdk/dingding/utils/c;->b:Lcn/sharesdk/dingding/utils/a;

    iget-object v1, p0, Lcn/sharesdk/dingding/utils/c;->c:Lcn/sharesdk/dingding/utils/b;

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/dingding/utils/a;->a(Lcn/sharesdk/dingding/utils/DingdingHandlerActivity;Lcn/sharesdk/dingding/utils/b;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcn/sharesdk/dingding/utils/c;->b:Lcn/sharesdk/dingding/utils/a;

    invoke-virtual {v0, p1}, Lcn/sharesdk/dingding/utils/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcn/sharesdk/dingding/utils/c;->b:Lcn/sharesdk/dingding/utils/a;

    invoke-virtual {v0}, Lcn/sharesdk/dingding/utils/a;->a()Z

    move-result v0

    return v0
.end method
