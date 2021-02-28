.class public Lcn/sharesdk/yixin/utils/e;
.super Ljava/lang/Object;
.source "YixinImpl.java"


# static fields
.field private static a:Lcn/sharesdk/yixin/utils/e;


# instance fields
.field private b:Lcn/sharesdk/yixin/utils/c;

.field private c:Lcn/sharesdk/yixin/utils/d;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcn/sharesdk/yixin/utils/c;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/c;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/yixin/utils/e;->b:Lcn/sharesdk/yixin/utils/c;

    .line 49
    return-void
.end method

.method public static a()Lcn/sharesdk/yixin/utils/e;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcn/sharesdk/yixin/utils/e;->a:Lcn/sharesdk/yixin/utils/e;

    if-nez v0, :cond_b

    .line 42
    new-instance v0, Lcn/sharesdk/yixin/utils/e;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/e;-><init>()V

    sput-object v0, Lcn/sharesdk/yixin/utils/e;->a:Lcn/sharesdk/yixin/utils/e;

    .line 44
    :cond_b
    sget-object v0, Lcn/sharesdk/yixin/utils/e;->a:Lcn/sharesdk/yixin/utils/e;

    return-object v0
.end method

.method private a(Lcn/sharesdk/yixin/utils/YXMessage;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 326
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".yxapi.YXEntryActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    :try_start_1f
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_22} :catch_7a

    move-result-object v0

    .line 335
    :goto_23
    if-eqz v0, :cond_52

    const-class v2, Lcn/sharesdk/yixin/utils/YixinHandlerActivity;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not extend from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcn/sharesdk/yixin/utils/YixinHandlerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 344
    :cond_52
    new-instance v0, Lcn/sharesdk/yixin/utils/a;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/a;-><init>()V

    .line 345
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

    iput-object v1, v0, Lcn/sharesdk/yixin/utils/a;->c:Ljava/lang/String;

    .line 346
    iput-object p1, v0, Lcn/sharesdk/yixin/utils/a;->a:Lcn/sharesdk/yixin/utils/YXMessage;

    .line 347
    iput p3, v0, Lcn/sharesdk/yixin/utils/a;->b:I

    .line 349
    iput-object p4, p0, Lcn/sharesdk/yixin/utils/e;->c:Lcn/sharesdk/yixin/utils/d;

    .line 350
    iget-object v1, p0, Lcn/sharesdk/yixin/utils/e;->b:Lcn/sharesdk/yixin/utils/c;

    invoke-virtual {v1, v0}, Lcn/sharesdk/yixin/utils/c;->a(Lcn/sharesdk/yixin/utils/a;)V

    .line 351
    return-void

    .line 331
    :catch_7a
    move-exception v0

    .line 332
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 333
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Lcn/sharesdk/yixin/utils/YXTextMessageData;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/YXTextMessageData;-><init>()V

    .line 160
    iput-object p2, v0, Lcn/sharesdk/yixin/utils/YXTextMessageData;->text:Ljava/lang/String;

    .line 162
    new-instance v1, Lcn/sharesdk/yixin/utils/YXMessage;

    invoke-direct {v1}, Lcn/sharesdk/yixin/utils/YXMessage;-><init>()V

    .line 163
    iput-object p1, v1, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    .line 164
    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    .line 165
    iput-object p2, v1, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    .line 167
    const-string v0, "text"

    invoke-direct {p0, v1, v0, p3, p4}, Lcn/sharesdk/yixin/utils/e;->a(Lcn/sharesdk/yixin/utils/YXMessage;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    .line 168
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/yixin/utils/d;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Lcn/sharesdk/yixin/utils/YXImageMessageData;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/YXImageMessageData;-><init>()V

    .line 173
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 174
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p3, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 175
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 176
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 177
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imageData:[B

    .line 179
    new-instance v1, Lcn/sharesdk/yixin/utils/YXMessage;

    invoke-direct {v1}, Lcn/sharesdk/yixin/utils/YXMessage;-><init>()V

    .line 180
    iput-object p1, v1, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    .line 181
    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    .line 182
    iput-object p2, v1, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    .line 183
    iget-object v0, v0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imageData:[B

    invoke-direct {p0, v0}, Lcn/sharesdk/yixin/utils/e;->a([B)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    .line 185
    const-string v0, "img"

    invoke-direct {p0, v1, v0, p4, p5}, Lcn/sharesdk/yixin/utils/e;->a(Lcn/sharesdk/yixin/utils/YXMessage;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    .line 186
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Lcn/sharesdk/yixin/utils/YXImageMessageData;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/YXImageMessageData;-><init>()V

    .line 191
    const-string v1, "/data/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 192
    invoke-direct {p0, p3}, Lcn/sharesdk/yixin/utils/e;->b(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imageData:[B

    .line 197
    :goto_13
    new-instance v1, Lcn/sharesdk/yixin/utils/YXMessage;

    invoke-direct {v1}, Lcn/sharesdk/yixin/utils/YXMessage;-><init>()V

    .line 198
    iput-object p1, v1, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    .line 199
    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    .line 200
    iput-object p2, v1, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    .line 201
    invoke-direct {p0, p3}, Lcn/sharesdk/yixin/utils/e;->c(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    .line 203
    const-string v0, "img"

    invoke-direct {p0, v1, v0, p4, p5}, Lcn/sharesdk/yixin/utils/e;->a(Lcn/sharesdk/yixin/utils/YXMessage;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    .line 204
    return-void

    .line 194
    :cond_2a
    iput-object p3, v0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imagePath:Ljava/lang/String;

    goto :goto_13
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/yixin/utils/d;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 245
    new-instance v0, Lcn/sharesdk/yixin/utils/YXVideoMessageData;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/YXVideoMessageData;-><init>()V

    .line 246
    iput-object p3, v0, Lcn/sharesdk/yixin/utils/YXVideoMessageData;->videoUrl:Ljava/lang/String;

    .line 248
    new-instance v1, Lcn/sharesdk/yixin/utils/YXMessage;

    invoke-direct {v1}, Lcn/sharesdk/yixin/utils/YXMessage;-><init>()V

    .line 249
    iput-object p1, v1, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    .line 250
    iput-object p2, v1, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    .line 251
    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    .line 252
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 253
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p4, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 254
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 255
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 256
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 257
    invoke-direct {p0, v0}, Lcn/sharesdk/yixin/utils/e;->a([B)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    .line 259
    const-string v0, "video"

    invoke-direct {p0, v1, v0, p5, p6}, Lcn/sharesdk/yixin/utils/e;->a(Lcn/sharesdk/yixin/utils/YXMessage;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    .line 260
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Lcn/sharesdk/yixin/utils/YXVideoMessageData;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/YXVideoMessageData;-><init>()V

    .line 265
    iput-object p3, v0, Lcn/sharesdk/yixin/utils/YXVideoMessageData;->videoUrl:Ljava/lang/String;

    .line 267
    new-instance v1, Lcn/sharesdk/yixin/utils/YXMessage;

    invoke-direct {v1}, Lcn/sharesdk/yixin/utils/YXMessage;-><init>()V

    .line 268
    iput-object p1, v1, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    .line 269
    iput-object p2, v1, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    .line 270
    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    .line 271
    invoke-direct {p0, p4}, Lcn/sharesdk/yixin/utils/e;->c(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    .line 273
    const-string v0, "video"

    invoke-direct {p0, v1, v0, p5, p6}, Lcn/sharesdk/yixin/utils/e;->a(Lcn/sharesdk/yixin/utils/YXMessage;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    .line 274
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/yixin/utils/d;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lcn/sharesdk/yixin/utils/YXMusicMessageData;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/YXMusicMessageData;-><init>()V

    .line 210
    iput-object p4, v0, Lcn/sharesdk/yixin/utils/YXMusicMessageData;->musicUrl:Ljava/lang/String;

    .line 211
    iput-object p3, v0, Lcn/sharesdk/yixin/utils/YXMusicMessageData;->musicDataUrl:Ljava/lang/String;

    .line 213
    new-instance v1, Lcn/sharesdk/yixin/utils/YXMessage;

    invoke-direct {v1}, Lcn/sharesdk/yixin/utils/YXMessage;-><init>()V

    .line 214
    iput-object p1, v1, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    .line 215
    iput-object p2, v1, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    .line 216
    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    .line 217
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 218
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p5, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 219
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 220
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 221
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 222
    invoke-direct {p0, v0}, Lcn/sharesdk/yixin/utils/e;->a([B)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    .line 224
    const-string v0, "music"

    invoke-direct {p0, v1, v0, p6, p7}, Lcn/sharesdk/yixin/utils/e;->a(Lcn/sharesdk/yixin/utils/YXMessage;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    .line 225
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Lcn/sharesdk/yixin/utils/YXMusicMessageData;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/YXMusicMessageData;-><init>()V

    .line 231
    iput-object p4, v0, Lcn/sharesdk/yixin/utils/YXMusicMessageData;->musicUrl:Ljava/lang/String;

    .line 232
    iput-object p3, v0, Lcn/sharesdk/yixin/utils/YXMusicMessageData;->musicDataUrl:Ljava/lang/String;

    .line 234
    new-instance v1, Lcn/sharesdk/yixin/utils/YXMessage;

    invoke-direct {v1}, Lcn/sharesdk/yixin/utils/YXMessage;-><init>()V

    .line 235
    iput-object p1, v1, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    .line 236
    iput-object p2, v1, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    .line 237
    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    .line 238
    invoke-direct {p0, p5}, Lcn/sharesdk/yixin/utils/e;->c(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    .line 240
    const-string v0, "music"

    invoke-direct {p0, v1, v0, p6, p7}, Lcn/sharesdk/yixin/utils/e;->a(Lcn/sharesdk/yixin/utils/YXMessage;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    .line 241
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

    .line 374
    .line 375
    array-length v0, p1

    int-to-double v0, v0

    const-wide/high16 v2, 0x40f0000000000000L    # 65536.0

    div-double/2addr v0, v2

    .line 376
    sub-double v2, v0, v8

    .line 378
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 379
    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 380
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 381
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 382
    if-eqz v1, :cond_2c

    const-string v4, "png"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2a

    const-string v4, "gif"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 383
    :cond_2a
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 386
    :cond_2c
    add-double/2addr v2, v8

    .line 387
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 388
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 389
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 390
    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 391
    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 392
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 393
    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 394
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 396
    if-nez v4, :cond_58

    .line 397
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_58
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 399
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is recycled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_66
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 403
    const/16 v5, 0x64

    invoke-virtual {v4, v0, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 404
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 405
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 407
    if-eqz v4, :cond_81

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_81

    .line 408
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 410
    :cond_81
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 411
    if-eqz v1, :cond_8c

    array-length v4, v1

    const/high16 v5, 0x10000

    if-gt v4, v5, :cond_2c

    .line 413
    :cond_8c
    return-object v1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/yixin/utils/d;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/high16 v4, 0x10000

    .line 278
    new-instance v0, Lcn/sharesdk/yixin/utils/YXWebPageMessageData;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/YXWebPageMessageData;-><init>()V

    .line 279
    iput-object p3, v0, Lcn/sharesdk/yixin/utils/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    .line 281
    new-instance v1, Lcn/sharesdk/yixin/utils/YXMessage;

    invoke-direct {v1}, Lcn/sharesdk/yixin/utils/YXMessage;-><init>()V

    .line 282
    iput-object p1, v1, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    .line 283
    iput-object p2, v1, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    .line 284
    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    .line 285
    if-eqz p4, :cond_6f

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 286
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 287
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p4, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 288
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 289
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 290
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 291
    invoke-direct {p0, v0}, Lcn/sharesdk/yixin/utils/e;->a([B)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    .line 293
    iget-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    if-nez v0, :cond_44

    .line 294
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_44
    iget-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    array-length v0, v0

    if-le v0, v4, :cond_6f

    .line 296
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkArgs fail, thumbData is too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

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

    .line 300
    :cond_6f
    const-string v0, "webpage"

    invoke-direct {p0, v1, v0, p5, p6}, Lcn/sharesdk/yixin/utils/e;->a(Lcn/sharesdk/yixin/utils/YXMessage;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    .line 301
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/high16 v4, 0x10000

    .line 305
    new-instance v0, Lcn/sharesdk/yixin/utils/YXWebPageMessageData;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/YXWebPageMessageData;-><init>()V

    .line 306
    iput-object p3, v0, Lcn/sharesdk/yixin/utils/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    .line 308
    new-instance v1, Lcn/sharesdk/yixin/utils/YXMessage;

    invoke-direct {v1}, Lcn/sharesdk/yixin/utils/YXMessage;-><init>()V

    .line 309
    iput-object p1, v1, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    .line 310
    iput-object p2, v1, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    .line 311
    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    .line 312
    if-eqz p4, :cond_5e

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 313
    invoke-direct {p0, p4}, Lcn/sharesdk/yixin/utils/e;->c(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    .line 314
    iget-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    if-nez v0, :cond_33

    .line 315
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_33
    iget-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    array-length v0, v0

    if-le v0, v4, :cond_5e

    .line 317
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkArgs fail, thumbData is too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

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

    .line 321
    :cond_5e
    const-string v0, "webpage"

    invoke-direct {p0, v1, v0, p5, p6}, Lcn/sharesdk/yixin/utils/e;->a(Lcn/sharesdk/yixin/utils/YXMessage;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    .line 322
    return-void
.end method

.method private b(Ljava/lang/String;)[B
    .registers 7

    .prologue
    .line 355
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 356
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 357
    const/16 v0, 0x400

    new-array v3, v0, [B

    .line 358
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .line 359
    :goto_12
    if-lez v0, :cond_1d

    .line 360
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 361
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    goto :goto_12

    .line 363
    :cond_1d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 364
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 365
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 366
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_29} :catch_2b

    move-result-object v0

    .line 370
    :goto_2a
    return-object v0

    .line 367
    :catch_2b
    move-exception v0

    .line 368
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 370
    const/4 v0, 0x0

    goto :goto_2a
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

    .line 417
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    .line 419
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 422
    :cond_13
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 423
    invoke-direct {p0, p1}, Lcn/sharesdk/yixin/utils/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 424
    const-string v3, "png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29

    const-string v3, "gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 425
    :cond_29
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 429
    :cond_2b
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x40f0000000000000L    # 65536.0

    div-double/2addr v2, v4

    .line 430
    sub-double/2addr v2, v6

    .line 432
    :cond_34
    add-double/2addr v2, v6

    .line 433
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-static {p1, v1}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 435
    if-nez v1, :cond_48

    .line 436
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_48
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 438
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is recycled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_56
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 442
    const/16 v5, 0x64

    invoke-virtual {v1, v0, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 443
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 444
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 446
    if-eqz v1, :cond_71

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_71

    .line 447
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 449
    :cond_71
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 450
    if-eqz v1, :cond_7c

    array-length v4, v1

    const/high16 v5, 0x10000

    if-gt v4, v5, :cond_34

    .line 452
    :cond_7c
    return-object v1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 456
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2a

    .line 458
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 459
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jepg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 460
    :cond_28
    const-string v0, "image/jpeg"

    .line 480
    :cond_2a
    :goto_2a
    return-object v0

    .line 461
    :cond_2b
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 462
    const-string v0, "image/png"

    goto :goto_2a

    .line 463
    :cond_3a
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 464
    const-string v0, "image/gif"

    goto :goto_2a

    .line 467
    :cond_49
    :try_start_49
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-static {v1}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_55} :catch_60

    .line 475
    :goto_55
    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2a

    .line 476
    :cond_5d
    const-string v0, "application/octet-stream"

    goto :goto_2a

    .line 470
    :catch_60
    move-exception v0

    .line 471
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 472
    const/4 v0, 0x0

    goto :goto_55
.end method


# virtual methods
.method public a(Lcn/sharesdk/yixin/utils/d;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/yixin/utils/d;->a()Lcn/sharesdk/framework/Platform;

    move-result-object v2

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/yixin/utils/d;->b()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v7

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/yixin/utils/d;->c()Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v8

    .line 79
    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getShareType()I

    move-result v9

    .line 80
    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getScence()I

    move-result v6

    .line 83
    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v13

    .line 85
    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 86
    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getMusicUrl()Ljava/lang/String;

    move-result-object v10

    .line 87
    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 88
    packed-switch v9, :pswitch_data_1e8

    .line 149
    :pswitch_33
    if-eqz v8, :cond_52

    .line 150
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

    .line 151
    const/16 v4, 0x9

    invoke-interface {v8, v2, v4, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 155
    :cond_52
    :goto_52
    return-void

    .line 90
    :pswitch_53
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v4, v6, v1}, Lcn/sharesdk/yixin/utils/e;->a(Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto :goto_52

    .line 93
    :pswitch_5b
    if-eqz v5, :cond_6b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6b

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    .line 94
    invoke-direct/range {v2 .. v7}, Lcn/sharesdk/yixin/utils/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto :goto_52

    .line 95
    :cond_6b
    if-eqz v12, :cond_7c

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_7c

    move-object/from16 v2, p0

    move-object v5, v12

    move-object/from16 v7, p1

    .line 96
    invoke-direct/range {v2 .. v7}, Lcn/sharesdk/yixin/utils/e;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/yixin/utils/d;)V

    goto :goto_52

    .line 97
    :cond_7c
    if-eqz v13, :cond_94

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_94

    .line 98
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v13}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    .line 99
    invoke-direct/range {v2 .. v7}, Lcn/sharesdk/yixin/utils/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto :goto_52

    .line 101
    :cond_94
    const-string v5, ""

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcn/sharesdk/yixin/utils/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto :goto_52

    .line 105
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

    .line 106
    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 107
    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v10, v7, v8

    .line 108
    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    aget-object v11, v2, v7

    .line 109
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

    .line 110
    invoke-direct/range {v7 .. v14}, Lcn/sharesdk/yixin/utils/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto/16 :goto_52

    .line 111
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

    .line 112
    invoke-direct/range {v7 .. v14}, Lcn/sharesdk/yixin/utils/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/yixin/utils/d;)V

    goto/16 :goto_52

    .line 113
    :cond_f5
    if-eqz v13, :cond_111

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_111

    .line 114
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v13}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move v13, v6

    move-object/from16 v14, p1

    .line 115
    invoke-direct/range {v7 .. v14}, Lcn/sharesdk/yixin/utils/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto/16 :goto_52

    .line 117
    :cond_111
    const-string v12, ""

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move v13, v6

    move-object/from16 v14, p1

    invoke-direct/range {v7 .. v14}, Lcn/sharesdk/yixin/utils/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto/16 :goto_52

    .line 121
    :pswitch_11f
    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 122
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/yixin/utils/d;->b()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcn/sharesdk/framework/Platform$ShareParams;->setUrl(Ljava/lang/String;)V

    .line 123
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

    .line 124
    invoke-direct/range {v7 .. v13}, Lcn/sharesdk/yixin/utils/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto/16 :goto_52

    .line 125
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

    .line 126
    invoke-direct/range {v13 .. v19}, Lcn/sharesdk/yixin/utils/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/yixin/utils/d;)V

    goto/16 :goto_52

    .line 127
    :cond_159
    if-eqz v13, :cond_175

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_175

    .line 128
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v13}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move v12, v6

    move-object/from16 v13, p1

    .line 129
    invoke-direct/range {v7 .. v13}, Lcn/sharesdk/yixin/utils/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto/16 :goto_52

    .line 131
    :cond_175
    const-string v11, ""

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move v12, v6

    move-object/from16 v13, p1

    invoke-direct/range {v7 .. v13}, Lcn/sharesdk/yixin/utils/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto/16 :goto_52

    .line 135
    :pswitch_183
    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/yixin/utils/d;->b()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcn/sharesdk/framework/Platform$ShareParams;->setUrl(Ljava/lang/String;)V

    .line 137
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

    .line 138
    invoke-direct/range {v7 .. v13}, Lcn/sharesdk/yixin/utils/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto/16 :goto_52

    .line 139
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

    .line 140
    invoke-direct/range {v13 .. v19}, Lcn/sharesdk/yixin/utils/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/yixin/utils/d;)V

    goto/16 :goto_52

    .line 141
    :cond_1bd
    if-eqz v13, :cond_1d9

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1d9

    .line 142
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v13}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move v12, v6

    move-object/from16 v13, p1

    .line 143
    invoke-direct/range {v7 .. v13}, Lcn/sharesdk/yixin/utils/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto/16 :goto_52

    .line 145
    :cond_1d9
    const-string v11, ""

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move v12, v6

    move-object/from16 v13, p1

    invoke-direct/range {v7 .. v13}, Lcn/sharesdk/yixin/utils/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto/16 :goto_52

    .line 88
    nop

    :pswitch_data_1e8
    .packed-switch 0x1
        :pswitch_53
        :pswitch_5b
        :pswitch_33
        :pswitch_183
        :pswitch_9e
        :pswitch_11f
    .end packed-switch
.end method

.method public a(Lcn/sharesdk/yixin/utils/d;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p1}, Lcn/sharesdk/yixin/utils/d;->a()Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 62
    const-string v2, "im.yixin"

    .line 63
    const-string v0, "scene"

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {p2, v0, v3}, Lcn/sharesdk/framework/Platform$ShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 64
    const/4 v3, 0x1

    if-ne v0, v3, :cond_34

    const-string v0, "im.yixin.activity.share.ShareToSnsActivity"

    .line 67
    :goto_19
    new-instance v3, Lcn/sharesdk/framework/utils/e;

    invoke-direct {v3}, Lcn/sharesdk/framework/utils/e;-><init>()V

    .line 68
    invoke-virtual {v3, v2, v0}, Lcn/sharesdk/framework/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v3, p2, v1}, Lcn/sharesdk/framework/utils/e;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/Platform;)V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    const-string v2, "ShareParams"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const/16 v2, 0x9

    invoke-interface {p3, v1, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 73
    return-void

    .line 64
    :cond_34
    const-string v0, "im.yixin.activity.share.ShareToSessionActivity"

    goto :goto_19
.end method

.method public a(Lcn/sharesdk/yixin/utils/YixinHandlerActivity;)Z
    .registers 4

    .prologue
    .line 484
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/e;->b:Lcn/sharesdk/yixin/utils/c;

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/e;->c:Lcn/sharesdk/yixin/utils/d;

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/yixin/utils/c;->a(Lcn/sharesdk/yixin/utils/YixinHandlerActivity;Lcn/sharesdk/yixin/utils/d;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/e;->b:Lcn/sharesdk/yixin/utils/c;

    invoke-virtual {v0, p1}, Lcn/sharesdk/yixin/utils/c;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/e;->b:Lcn/sharesdk/yixin/utils/c;

    invoke-virtual {v0}, Lcn/sharesdk/yixin/utils/c;->a()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 488
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/e;->b:Lcn/sharesdk/yixin/utils/c;

    invoke-virtual {v0}, Lcn/sharesdk/yixin/utils/c;->b()Z

    move-result v0

    return v0
.end method
