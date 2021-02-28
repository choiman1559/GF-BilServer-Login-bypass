.class public Lcn/sharesdk/yixin/utils/YXImageMessageData;
.super Ljava/lang/Object;
.source "YXImageMessageData.java"

# interfaces
.implements Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;


# instance fields
.field public imageData:[B

.field public imagePath:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    :try_start_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 27
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 28
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imageData:[B

    .line 29
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_18} :catch_19

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
    .param p1, "data"    # [B

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imageData:[B

    .line 22
    return-void
.end method


# virtual methods
.method public dataType()Lcn/sharesdk/yixin/utils/YXMessage$MessageType;
    .registers 2

    .prologue
    .line 73
    sget-object v0, Lcn/sharesdk/yixin/utils/YXMessage$MessageType;->IMAGE:Lcn/sharesdk/yixin/utils/YXMessage$MessageType;

    return-object v0
.end method

.method public read(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 61
    const-string v0, "_yixinImageMessageData_imageData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imageData:[B

    .line 62
    const-string v0, "_yixinImageMessageData_imagePath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imagePath:Ljava/lang/String;

    .line 63
    const-string v0, "_yixinImageMessageData_imageUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imageUrl:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public verifyData()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 36
    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imageData:[B

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imageData:[B

    array-length v1, v1

    if-nez v1, :cond_26

    :cond_a
    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imagePath:Ljava/lang/String;

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 38
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "imageData imagePath imageUrl is all blank"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 57
    :goto_25
    return v0

    .line 41
    :cond_26
    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imageData:[B

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imageData:[B

    array-length v1, v1

    const/high16 v2, 0xa00000

    if-le v1, v2, :cond_57

    .line 42
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageData.length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imageData:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">10485760"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_25

    .line 45
    :cond_57
    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_9a

    .line 46
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0xa00000

    cmp-long v2, v2, v4

    if-lez v2, :cond_9a

    .line 48
    :cond_73
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file.length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ">10485760"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_25

    .line 52
    :cond_9a
    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imageUrl:Ljava/lang/String;

    if-eqz v1, :cond_d2

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2800

    if-le v1, v2, :cond_d2

    .line 53
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageUrl.length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imageUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">10240"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto/16 :goto_25

    .line 57
    :cond_d2
    const/4 v0, 0x1

    goto/16 :goto_25
.end method

.method public write(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 67
    const-string v0, "_yixinImageMessageData_imageData"

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imageData:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 68
    const-string v0, "_yixinImageMessageData_imagePath"

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "_yixinImageMessageData_imageUrl"

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method
