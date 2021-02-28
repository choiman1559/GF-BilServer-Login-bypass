.class public Lcom/sina/weibo/sdk/api/MultiImageObject;
.super Ljava/lang/Object;
.source "MultiImageObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sina/weibo/sdk/api/MultiImageObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public actionUrl:Ljava/lang/String;

.field public defaultText:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public identify:Ljava/lang/String;

.field public imageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public schema:Ljava/lang/String;

.field public thumbData:[B

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Lcom/sina/weibo/sdk/api/MultiImageObject$1;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/MultiImageObject$1;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/api/MultiImageObject;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/MultiImageObject;->actionUrl:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/MultiImageObject;->schema:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/MultiImageObject;->identify:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/MultiImageObject;->title:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/MultiImageObject;->description:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/MultiImageObject;->thumbData:[B

    .line 95
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/MultiImageObject;->imageList:Ljava/util/ArrayList;

    .line 96
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getImageList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/MultiImageObject;->imageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getObjType()I
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public setImageList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/sina/weibo/sdk/api/MultiImageObject;->imageList:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method public final setThumbImage(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 45
    const/4 v2, 0x0

    .line 47
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_22
    .catchall {:try_start_1 .. :try_end_6} :catchall_3a

    .line 48
    :try_start_6
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 49
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/MultiImageObject;->thumbData:[B
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_13} :catch_4d
    .catchall {:try_start_6 .. :try_end_13} :catchall_4b

    .line 53
    if-eqz v1, :cond_18

    .line 55
    :try_start_15
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_19

    .line 61
    :cond_18
    :goto_18
    return-void

    .line 56
    :catch_19
    move-exception v0

    .line 57
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_18

    .line 50
    :catch_22
    move-exception v0

    move-object v1, v2

    .line 51
    :goto_24
    :try_start_24
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_4b

    .line 53
    if-eqz v1, :cond_18

    .line 55
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_18

    .line 56
    :catch_31
    move-exception v0

    .line 57
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_18

    .line 53
    :catchall_3a
    move-exception v0

    move-object v1, v2

    :goto_3c
    if-eqz v1, :cond_41

    .line 55
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_42

    .line 58
    :cond_41
    :goto_41
    throw v0

    .line 56
    :catch_42
    move-exception v1

    .line 57
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_41

    .line 53
    :catchall_4b
    move-exception v0

    goto :goto_3c

    .line 50
    :catch_4d
    move-exception v0

    goto :goto_24
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/MultiImageObject;->actionUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/MultiImageObject;->schema:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/MultiImageObject;->identify:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/MultiImageObject;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/MultiImageObject;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/MultiImageObject;->thumbData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 85
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/MultiImageObject;->imageList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 86
    return-void
.end method
