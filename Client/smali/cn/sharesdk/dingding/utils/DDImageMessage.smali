.class public Lcn/sharesdk/dingding/utils/DDImageMessage;
.super Ljava/lang/Object;
.source "DDImageMessage.java"

# interfaces
.implements Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;


# static fields
.field private static final MAX_IMAGE_DATA_LENGTH:I = 0xa00000

.field private static final MAX_IMAGE_THUMB_DATA_LENGTH:I = 0x8000

.field private static final MAX_IMAGE_URL_LENGTH:I = 0x2800


# instance fields
.field public imageData:[B

.field public imagePath:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    :try_start_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 29
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imageData:[B

    .line 30
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_19

    .line 34
    :goto_18
    return-void

    .line 31
    :catch_19
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method public constructor <init>([B)V
    .registers 2
    .param p1, "imageData"    # [B

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imageData:[B

    .line 23
    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .registers 8

    .prologue
    const/16 v6, 0x2800

    const/4 v0, 0x0

    .line 53
    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imageData:[B

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imageData:[B

    array-length v1, v1

    if-nez v1, :cond_24

    :cond_c
    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imagePath:Ljava/lang/String;

    .line 54
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_24

    :cond_18
    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imageUrl:Ljava/lang/String;

    if-eqz v1, :cond_99

    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_99

    .line 55
    :cond_24
    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imageData:[B

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imageData:[B

    array-length v1, v1

    const/high16 v2, 0xa00000

    if-le v1, v2, :cond_3b

    .line 56
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "checkArgs fail, content is too large"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 78
    :goto_3a
    return v0

    .line 59
    :cond_3b
    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imagePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_53

    .line 60
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "checkArgs fail, path is invalid"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_3a

    .line 63
    :cond_53
    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_7f

    .line 64
    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imagePath:Ljava/lang/String;

    .line 66
    iget-object v2, p0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imagePath:Ljava/lang/String;

    if-eqz v2, :cond_7f

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0xa00000

    cmp-long v1, v2, v4

    if-lez v1, :cond_7f

    .line 67
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "checkArgs fail, image content is too large"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_3a

    .line 71
    :cond_7f
    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imageUrl:Ljava/lang/String;

    if-eqz v1, :cond_97

    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_97

    .line 72
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "checkArgs fail, url is invalid"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_3a

    .line 75
    :cond_97
    const/4 v0, 0x1

    goto :goto_3a

    .line 77
    :cond_99
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "checkArgs fail, all arguments are null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_3a
.end method

.method public serialize(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 37
    const-string v0, "android.intent.ding.EXTRA_IMAGE_OBJECT_IMAGE_DATA"

    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imageData:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 38
    const-string v0, "android.intent.ding.EXTRA_IMAGE_OBJECT_IMAGE_PATH"

    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "android.intent.ding.EXTRA_IMAGE_OBJECT_IMAGE_URL"

    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public type()I
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x3

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 43
    const-string v0, "android.intent.ding.EXTRA_IMAGE_OBJECT_IMAGE_DATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imageData:[B

    .line 44
    const-string v0, "android.intent.ding.EXTRA_IMAGE_OBJECT_IMAGE_PATH"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imagePath:Ljava/lang/String;

    .line 45
    const-string v0, "android.intent.ding.EXTRA_IMAGE_OBJECT_IMAGE_URL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/dingding/utils/DDImageMessage;->imageUrl:Ljava/lang/String;

    .line 46
    return-void
.end method
