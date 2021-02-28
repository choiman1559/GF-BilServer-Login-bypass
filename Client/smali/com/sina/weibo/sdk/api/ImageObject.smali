.class public Lcom/sina/weibo/sdk/api/ImageObject;
.super Ljava/lang/Object;
.source "ImageObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sina/weibo/sdk/api/ImageObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATA_SIZE:I


# instance fields
.field public imageData:[B

.field public imagePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/high16 v0, 0x200000

    sput v0, Lcom/sina/weibo/sdk/api/ImageObject;->DATA_SIZE:I

    .line 18
    new-instance v0, Lcom/sina/weibo/sdk/api/ImageObject$1;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/ImageObject$1;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/api/ImageObject;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    if-nez v1, :cond_14

    .line 68
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "imageData and imagePath are null"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    :goto_13
    return v0

    .line 71
    :cond_14
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    array-length v1, v1

    sget v2, Lcom/sina/weibo/sdk/api/ImageObject;->DATA_SIZE:I

    if-le v1, v2, :cond_2a

    .line 72
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "imageData is too large"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_13

    .line 75
    :cond_2a
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x200

    if-le v1, v2, :cond_43

    .line 76
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "imagePath is too length"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_13

    .line 79
    :cond_43
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_80

    .line 81
    :try_start_47
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_69

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0xa00000

    cmp-long v1, v2, v4

    if-lez v1, :cond_80

    .line 83
    :cond_69
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "checkArgs fail, image content is too large or not exists"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_73} :catch_74

    goto :goto_13

    .line 86
    :catch_74
    move-exception v1

    .line 87
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "checkArgs fail, image content is too large or not exists"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_13

    .line 91
    :cond_80
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getObjType()I
    .registers 2

    .prologue
    .line 95
    const/4 v0, 0x2

    return v0
.end method

.method public final setImageObject(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 39
    const/4 v2, 0x0

    .line 41
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_22
    .catchall {:try_start_1 .. :try_end_6} :catchall_3a

    .line 42
    :try_start_6
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 43
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_13} :catch_4d
    .catchall {:try_start_6 .. :try_end_13} :catchall_4b

    .line 47
    if-eqz v1, :cond_18

    .line 49
    :try_start_15
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_19

    .line 55
    :cond_18
    :goto_18
    return-void

    .line 50
    :catch_19
    move-exception v0

    .line 51
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_18

    .line 44
    :catch_22
    move-exception v0

    move-object v1, v2

    .line 45
    :goto_24
    :try_start_24
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_4b

    .line 47
    if-eqz v1, :cond_18

    .line 49
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_18

    .line 50
    :catch_31
    move-exception v0

    .line 51
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_18

    .line 47
    :catchall_3a
    move-exception v0

    move-object v1, v2

    :goto_3c
    if-eqz v1, :cond_41

    .line 49
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_42

    .line 52
    :cond_41
    :goto_41
    throw v0

    .line 50
    :catch_42
    move-exception v1

    .line 51
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_41

    .line 47
    :catchall_4b
    move-exception v0

    goto :goto_3c

    .line 44
    :catch_4d
    move-exception v0

    goto :goto_24
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 63
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    return-void
.end method
