.class public Lcn/sharesdk/dingding/utils/DDMediaMessage;
.super Ljava/lang/Object;
.source "DDMediaMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/dingding/utils/DDMediaMessage$a;,
        Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;
    }
.end annotation


# static fields
.field public static final MAX_THUMB_DATA_LENGTH:I = 0x8000


# instance fields
.field public content:Ljava/lang/String;

.field public mediaObject:Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;

.field public sdkVersion:I

.field public thumbData:[B

.field public thumbUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;)V
    .registers 2
    .param p1, "iMediaObject"    # Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcn/sharesdk/dingding/utils/DDMediaMessage;->mediaObject:Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;

    .line 26
    return-void
.end method


# virtual methods
.method public final checkArgs()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 44
    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDMediaMessage;->thumbData:[B

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDMediaMessage;->thumbData:[B

    array-length v1, v1

    const v2, 0x8000

    if-le v1, v2, :cond_19

    .line 45
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "checkArgs fail, thumbData is invalid"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 60
    :goto_18
    return v0

    .line 48
    :cond_19
    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDMediaMessage;->title:Ljava/lang/String;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDMediaMessage;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x200

    if-le v1, v2, :cond_33

    .line 49
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "checkArgs fail, title is invalid"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_18

    .line 52
    :cond_33
    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDMediaMessage;->content:Ljava/lang/String;

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDMediaMessage;->content:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x400

    if-le v1, v2, :cond_4d

    .line 53
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "checkArgs fail, content is invalid"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_18

    .line 56
    :cond_4d
    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDMediaMessage;->mediaObject:Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;

    if-nez v1, :cond_5d

    .line 57
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "checkArgs fail, mediaObject is null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_18

    .line 60
    :cond_5d
    iget-object v0, p0, Lcn/sharesdk/dingding/utils/DDMediaMessage;->mediaObject:Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;

    invoke-interface {v0}, Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;->checkArgs()Z

    move-result v0

    goto :goto_18
.end method

.method public final getType()I
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/dingding/utils/DDMediaMessage;->mediaObject:Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcn/sharesdk/dingding/utils/DDMediaMessage;->mediaObject:Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;

    invoke-interface {v0}, Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;->type()I

    move-result v0

    goto :goto_5
.end method

.method public final setThumbImage(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 34
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 36
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/dingding/utils/DDMediaMessage;->thumbData:[B

    .line 37
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_16

    .line 41
    :goto_15
    return-void

    .line 38
    :catch_16
    move-exception v0

    .line 39
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_15
.end method
