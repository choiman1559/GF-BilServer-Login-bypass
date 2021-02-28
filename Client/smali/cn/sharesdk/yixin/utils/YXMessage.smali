.class public final Lcn/sharesdk/yixin/utils/YXMessage;
.super Ljava/lang/Object;
.source "YXMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/yixin/utils/YXMessage$MessageType;,
        Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;,
        Lcn/sharesdk/yixin/utils/YXMessage$a;
    }
.end annotation


# static fields
.field public static final THUMB_SIZE:I = 0x10000


# instance fields
.field public description:Ljava/lang/String;

.field public messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

.field public thumbData:[B

.field public title:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;)V
    .registers 2
    .param p1, "data"    # Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    .line 23
    return-void
.end method


# virtual methods
.method final a()Z
    .registers 7

    .prologue
    const/high16 v3, 0x10000

    const/16 v5, 0xc8

    const/4 v2, 0x0

    .line 26
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    if-nez v0, :cond_16

    .line 27
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "messageData is null"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move v0, v2

    .line 68
    :goto_15
    return v0

    .line 31
    :cond_16
    const/4 v0, 0x0

    .line 32
    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    if-eqz v1, :cond_126

    .line 33
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    array-length v0, v0

    if-le v0, v3, :cond_47

    .line 34
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thumbData.length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ">65536"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move v0, v2

    .line 35
    goto :goto_15

    .line 38
    :cond_47
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    array-length v0, v0

    if-le v0, v3, :cond_73

    .line 39
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thumbData.length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ">65536"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move v0, v2

    .line 40
    goto :goto_15

    .line 43
    :cond_73
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    array-length v1, v1

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    if-nez v0, :cond_8b

    .line 45
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "thumbData is not an image"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move v0, v2

    .line 46
    goto :goto_15

    :cond_8b
    move-object v1, v0

    .line 50
    :goto_8c
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    if-eqz v0, :cond_c5

    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x200

    if-le v0, v3, :cond_c5

    .line 51
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title.length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ">512"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move v0, v2

    .line 52
    goto/16 :goto_15

    .line 55
    :cond_c5
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    if-eqz v0, :cond_f0

    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x400

    if-le v0, v3, :cond_f0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    const/16 v4, 0x3fd

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    .line 59
    :cond_f0
    if-eqz v1, :cond_11e

    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    instance-of v0, v0, Lcn/sharesdk/yixin/utils/YXImageMessageData;

    if-eqz v0, :cond_11e

    .line 60
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    check-cast v0, Lcn/sharesdk/yixin/utils/YXImageMessageData;

    .line 61
    iget-object v0, v0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11e

    .line 62
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ge v0, v5, :cond_11e

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, v5, :cond_11e

    .line 63
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "YXImageMessageData thumbData width/height must greater than 200px when dataType is url"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move v0, v2

    .line 64
    goto/16 :goto_15

    .line 68
    :cond_11e
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    invoke-interface {v0}, Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;->verifyData()Z

    move-result v0

    goto/16 :goto_15

    :cond_126
    move-object v1, v0

    goto/16 :goto_8c
.end method
