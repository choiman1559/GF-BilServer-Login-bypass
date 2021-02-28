.class public Lcom/sina/weibo/sdk/api/WebpageObject;
.super Ljava/lang/Object;
.source "WebpageObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sina/weibo/sdk/api/WebpageObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_KEY_DEFAULTTEXT:Ljava/lang/String;


# instance fields
.field public actionUrl:Ljava/lang/String;

.field public defaultText:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public identify:Ljava/lang/String;

.field public schema:Ljava/lang/String;

.field public thumbData:[B

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-string v0, "extra_key_defaulttext"

    sput-object v0, Lcom/sina/weibo/sdk/api/WebpageObject;->EXTRA_KEY_DEFAULTTEXT:Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/sina/weibo/sdk/api/WebpageObject$1;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/WebpageObject$1;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/api/WebpageObject;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->actionUrl:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->schema:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->identify:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->title:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->description:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->thumbData:[B

    .line 46
    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .registers 6

    .prologue
    const/16 v3, 0x200

    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->actionUrl:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->actionUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1c

    .line 78
    :cond_f
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "checkArgs fail, actionUrl is invalid"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move v0, v1

    .line 98
    :goto_1b
    return v0

    .line 81
    :cond_1c
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->identify:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->identify:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_35

    .line 82
    :cond_28
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "checkArgs fail, identify is invalid"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move v0, v1

    .line 83
    goto :goto_1b

    .line 85
    :cond_35
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->thumbData:[B

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->thumbData:[B

    array-length v0, v0

    const v2, 0x8000

    if-le v0, v2, :cond_6d

    .line 86
    :cond_41
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->thumbData:[B

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->thumbData:[B

    array-length v0, v0

    .line 87
    :goto_48
    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkArgs fail, thumbData is invalid,size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "! more then 32768."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    .line 88
    goto :goto_1b

    .line 86
    :cond_6b
    const/4 v0, -0x1

    goto :goto_48

    .line 90
    :cond_6d
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->title:Ljava/lang/String;

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_86

    .line 91
    :cond_79
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "checkArgs fail, title is invalid"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move v0, v1

    .line 92
    goto :goto_1b

    .line 94
    :cond_86
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->description:Ljava/lang/String;

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x400

    if-le v0, v2, :cond_a2

    .line 95
    :cond_94
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "checkArgs fail, description is invalid"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move v0, v1

    .line 96
    goto/16 :goto_1b

    .line 98
    :cond_a2
    const/4 v0, 0x1

    goto/16 :goto_1b
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getObjType()I
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x5

    return v0
.end method

.method public final setThumbImage(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 58
    const/4 v2, 0x0

    .line 60
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_22
    .catchall {:try_start_1 .. :try_end_6} :catchall_3a

    .line 61
    :try_start_6
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 62
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->thumbData:[B
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_13} :catch_4d
    .catchall {:try_start_6 .. :try_end_13} :catchall_4b

    .line 66
    if-eqz v1, :cond_18

    .line 68
    :try_start_15
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_19

    .line 74
    :cond_18
    :goto_18
    return-void

    .line 69
    :catch_19
    move-exception v0

    .line 70
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_18

    .line 63
    :catch_22
    move-exception v0

    move-object v1, v2

    .line 64
    :goto_24
    :try_start_24
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_4b

    .line 66
    if-eqz v1, :cond_18

    .line 68
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_18

    .line 69
    :catch_31
    move-exception v0

    .line 70
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_18

    .line 66
    :catchall_3a
    move-exception v0

    move-object v1, v2

    :goto_3c
    if-eqz v1, :cond_41

    .line 68
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_42

    .line 71
    :cond_41
    :goto_41
    throw v0

    .line 69
    :catch_42
    move-exception v1

    .line 70
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_41

    .line 66
    :catchall_4b
    move-exception v0

    goto :goto_3c

    .line 63
    :catch_4d
    move-exception v0

    goto :goto_24
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->actionUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->schema:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->identify:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->thumbData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 55
    return-void
.end method
