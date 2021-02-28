.class public Lcn/sharesdk/wechat/utils/WXImageObject;
.super Ljava/lang/Object;
.source "WXImageObject.java"

# interfaces
.implements Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;


# instance fields
.field public imageData:[B

.field public imagePath:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "paramBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    :try_start_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 25
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 27
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageData:[B

    .line 28
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_19

    .line 33
    :goto_18
    return-void

    .line 30
    :catch_19
    move-exception v0

    .line 31
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method public constructor <init>([B)V
    .registers 2
    .param p1, "paramArrayOfByte"    # [B

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageData:[B

    .line 20
    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .registers 8

    .prologue
    const/16 v6, 0x2800

    const/4 v0, 0x0

    .line 52
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageData:[B

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageData:[B

    array-length v1, v1

    if-nez v1, :cond_30

    :cond_c
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imagePath:Ljava/lang/String;

    .line 53
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_30

    :cond_18
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageUrl:Ljava/lang/String;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageUrl:Ljava/lang/String;

    .line 54
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_30

    .line 55
    :cond_24
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "checkArgs fail, all arguments are null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 76
    :goto_2f
    return v0

    .line 58
    :cond_30
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageData:[B

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageData:[B

    array-length v1, v1

    const/high16 v2, 0xa00000

    if-le v1, v2, :cond_47

    .line 59
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "checkArgs fail, content is too large"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_2f

    .line 62
    :cond_47
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imagePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_5f

    .line 63
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "checkArgs fail, path is invalid"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_2f

    .line 66
    :cond_5f
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_81

    .line 67
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0xa00000

    cmp-long v1, v2, v4

    if-lez v1, :cond_81

    .line 68
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "checkArgs fail, image content is too large"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_2f

    .line 72
    :cond_81
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageUrl:Ljava/lang/String;

    if-eqz v1, :cond_99

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_99

    .line 73
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "checkArgs fail, url is invalid"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_2f

    .line 76
    :cond_99
    const/4 v0, 0x1

    goto :goto_2f
.end method

.method public serialize(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 36
    const-string v0, "_wximageobject_imageData"

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageData:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 37
    const-string v0, "_wximageobject_imagePath"

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "_wximageobject_imageUrl"

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public type()I
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x2

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 42
    const-string v0, "_wximageobject_imageData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageData:[B

    .line 43
    const-string v0, "_wximageobject_imagePath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imagePath:Ljava/lang/String;

    .line 44
    const-string v0, "_wximageobject_imageUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXImageObject;->imageUrl:Ljava/lang/String;

    .line 45
    return-void
.end method
