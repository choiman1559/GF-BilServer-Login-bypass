.class public Lcom/mob/tools/gui/AsyncImageView;
.super Landroid/widget/ImageView;
.source "AsyncImageView.java"

# interfaces
.implements Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_IMG_GOT:I = 0x1

.field private static final RND:Ljava/util/Random;


# instance fields
.field private defaultBm:Landroid/graphics/Bitmap;

.field private defaultRes:I

.field private desiredHeight:I

.field private desiredWidth:I

.field private diskCacheTime:J

.field private errorBm:Landroid/graphics/Bitmap;

.field private errorRes:I

.field private lastReqIsOk:Z

.field private maxBytes:J

.field private path:Landroid/graphics/Path;

.field private quality:I

.field private rect:[F

.field private refAiv:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mob/tools/gui/AsyncImageView;",
            ">;"
        }
    .end annotation
.end field

.field private result:Landroid/graphics/Bitmap;

.field private scaleToCrop:Z

.field private url:Ljava/lang/String;

.field private useDiskCache:Z

.field private useRamCache:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/mob/tools/gui/AsyncImageView;->RND:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 35
    iput v0, p0, Lcom/mob/tools/gui/AsyncImageView;->errorRes:I

    .line 37
    iput-object v2, p0, Lcom/mob/tools/gui/AsyncImageView;->errorBm:Landroid/graphics/Bitmap;

    .line 41
    iput-object v2, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    .line 43
    iput-boolean v1, p0, Lcom/mob/tools/gui/AsyncImageView;->useRamCache:Z

    .line 44
    iput-boolean v1, p0, Lcom/mob/tools/gui/AsyncImageView;->useDiskCache:Z

    .line 46
    iput-wide v4, p0, Lcom/mob/tools/gui/AsyncImageView;->diskCacheTime:J

    .line 48
    iput v0, p0, Lcom/mob/tools/gui/AsyncImageView;->desiredWidth:I

    .line 49
    iput v0, p0, Lcom/mob/tools/gui/AsyncImageView;->desiredHeight:I

    .line 50
    iput-wide v4, p0, Lcom/mob/tools/gui/AsyncImageView;->maxBytes:J

    .line 51
    iput v0, p0, Lcom/mob/tools/gui/AsyncImageView;->quality:I

    .line 55
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/AsyncImageView;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput v0, p0, Lcom/mob/tools/gui/AsyncImageView;->errorRes:I

    .line 37
    iput-object v2, p0, Lcom/mob/tools/gui/AsyncImageView;->errorBm:Landroid/graphics/Bitmap;

    .line 41
    iput-object v2, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    .line 43
    iput-boolean v1, p0, Lcom/mob/tools/gui/AsyncImageView;->useRamCache:Z

    .line 44
    iput-boolean v1, p0, Lcom/mob/tools/gui/AsyncImageView;->useDiskCache:Z

    .line 46
    iput-wide v4, p0, Lcom/mob/tools/gui/AsyncImageView;->diskCacheTime:J

    .line 48
    iput v0, p0, Lcom/mob/tools/gui/AsyncImageView;->desiredWidth:I

    .line 49
    iput v0, p0, Lcom/mob/tools/gui/AsyncImageView;->desiredHeight:I

    .line 50
    iput-wide v4, p0, Lcom/mob/tools/gui/AsyncImageView;->maxBytes:J

    .line 51
    iput v0, p0, Lcom/mob/tools/gui/AsyncImageView;->quality:I

    .line 60
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/AsyncImageView;->init(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput v0, p0, Lcom/mob/tools/gui/AsyncImageView;->errorRes:I

    .line 37
    iput-object v2, p0, Lcom/mob/tools/gui/AsyncImageView;->errorBm:Landroid/graphics/Bitmap;

    .line 41
    iput-object v2, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    .line 43
    iput-boolean v1, p0, Lcom/mob/tools/gui/AsyncImageView;->useRamCache:Z

    .line 44
    iput-boolean v1, p0, Lcom/mob/tools/gui/AsyncImageView;->useDiskCache:Z

    .line 46
    iput-wide v4, p0, Lcom/mob/tools/gui/AsyncImageView;->diskCacheTime:J

    .line 48
    iput v0, p0, Lcom/mob/tools/gui/AsyncImageView;->desiredWidth:I

    .line 49
    iput v0, p0, Lcom/mob/tools/gui/AsyncImageView;->desiredHeight:I

    .line 50
    iput-wide v4, p0, Lcom/mob/tools/gui/AsyncImageView;->maxBytes:J

    .line 51
    iput v0, p0, Lcom/mob/tools/gui/AsyncImageView;->quality:I

    .line 65
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/AsyncImageView;->init(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method private getBitmapDesiredOptions()Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, "options":Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;
    iget v1, p0, Lcom/mob/tools/gui/AsyncImageView;->desiredWidth:I

    if-le v1, v2, :cond_a

    iget v1, p0, Lcom/mob/tools/gui/AsyncImageView;->desiredHeight:I

    if-gt v1, v2, :cond_16

    :cond_a
    iget-wide v2, p0, Lcom/mob/tools/gui/AsyncImageView;->maxBytes:J

    const-wide/16 v4, 0x2800

    cmp-long v1, v2, v4

    if-gez v1, :cond_16

    iget v1, p0, Lcom/mob/tools/gui/AsyncImageView;->quality:I

    if-lez v1, :cond_2b

    .line 198
    :cond_16
    new-instance v0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    .end local v0    # "options":Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;
    invoke-direct {v0}, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;-><init>()V

    .line 199
    .restart local v0    # "options":Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;
    iget v1, p0, Lcom/mob/tools/gui/AsyncImageView;->desiredWidth:I

    iput v1, v0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->desiredWidth:I

    .line 200
    iget v1, p0, Lcom/mob/tools/gui/AsyncImageView;->desiredHeight:I

    iput v1, v0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->desiredHeight:I

    .line 201
    iget-wide v2, p0, Lcom/mob/tools/gui/AsyncImageView;->maxBytes:J

    iput-wide v2, v0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->maxBytes:J

    .line 202
    iget v1, p0, Lcom/mob/tools/gui/AsyncImageView;->quality:I

    iput v1, v0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->quality:I

    .line 204
    :cond_2b
    return-object v0
.end method

.method private getSize()[I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 274
    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getWidth()I

    move-result v2

    .line 275
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getHeight()I

    move-result v0

    .line 276
    .local v0, "height":I
    if-eqz v2, :cond_d

    if-nez v0, :cond_17

    .line 277
    :cond_d
    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 278
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_17

    .line 279
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 280
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 283
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_17
    if-eqz v2, :cond_1b

    if-nez v0, :cond_26

    .line 284
    :cond_1b
    invoke-virtual {p0, v4, v4}, Lcom/mob/tools/gui/AsyncImageView;->measure(II)V

    .line 285
    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getMeasuredWidth()I

    move-result v2

    .line 286
    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getMeasuredHeight()I

    move-result v0

    .line 289
    :cond_26
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    return-object v3
.end method

.method private goCrop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 16
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v13, 0x2

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 238
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v7, v8

    .line 239
    .local v7, "width":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v1, v8

    .line 240
    .local v1, "height":F
    cmpl-float v8, v7, v9

    if-eqz v8, :cond_18

    cmpl-float v8, v1, v9

    if-nez v8, :cond_1a

    :cond_18
    move-object v0, p1

    .line 270
    .end local p1    # "bm":Landroid/graphics/Bitmap;
    .local v0, "bm":Landroid/graphics/Bitmap;
    :goto_19
    return-object v0

    .line 244
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local p1    # "bm":Landroid/graphics/Bitmap;
    :cond_1a
    invoke-direct {p0}, Lcom/mob/tools/gui/AsyncImageView;->getSize()[I

    move-result-object v5

    .line 245
    .local v5, "size":[I
    aget v8, v5, v10

    if-eqz v8, :cond_26

    aget v8, v5, v11

    if-nez v8, :cond_28

    :cond_26
    move-object v0, p1

    .line 246
    .end local p1    # "bm":Landroid/graphics/Bitmap;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    goto :goto_19

    .line 249
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local p1    # "bm":Landroid/graphics/Bitmap;
    :cond_28
    aget v8, v5, v11

    int-to-float v8, v8

    mul-float/2addr v8, v7

    aget v9, v5, v10

    int-to-float v9, v9

    div-float v3, v8, v9

    .line 250
    .local v3, "respHeight":F
    cmpl-float v8, v3, v1

    if-nez v8, :cond_37

    move-object v0, p1

    .line 251
    .end local p1    # "bm":Landroid/graphics/Bitmap;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    goto :goto_19

    .line 254
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local p1    # "bm":Landroid/graphics/Bitmap;
    :cond_37
    const/4 v8, 0x4

    new-array v2, v8, [I

    .line 255
    .local v2, "rect":[I
    cmpg-float v8, v3, v1

    if-gez v8, :cond_5b

    .line 256
    sub-float v8, v1, v3

    div-float/2addr v8, v12

    float-to-int v8, v8

    aput v8, v2, v11

    .line 257
    const/4 v8, 0x3

    aget v9, v2, v11

    aput v9, v2, v8

    .line 265
    :goto_49
    const/4 v8, 0x0

    :try_start_4a
    aget v8, v2, v8

    const/4 v9, 0x1

    aget v9, v2, v9

    const/4 v10, 0x2

    aget v10, v2, v10

    const/4 v11, 0x3

    aget v11, v2, v11

    invoke-static {p1, v8, v9, v10, v11}, Lcom/mob/tools/utils/BitmapHelper;->cropBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_58} :catch_6f

    move-result-object p1

    :goto_59
    move-object v0, p1

    .line 270
    .end local p1    # "bm":Landroid/graphics/Bitmap;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    goto :goto_19

    .line 259
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local p1    # "bm":Landroid/graphics/Bitmap;
    :cond_5b
    aget v8, v5, v10

    int-to-float v8, v8

    mul-float/2addr v8, v1

    aget v9, v5, v11

    int-to-float v9, v9

    div-float v4, v8, v9

    .line 260
    .local v4, "respWidth":F
    sub-float v8, v7, v4

    div-float/2addr v8, v12

    float-to-int v8, v8

    aput v8, v2, v10

    .line 261
    aget v8, v2, v10

    aput v8, v2, v13

    goto :goto_49

    .line 266
    .end local v4    # "respWidth":F
    :catch_6f
    move-exception v6

    .line 267
    .local v6, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_59
.end method

.method private init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 70
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/AsyncImageView;->setBackgroundColor(I)V

    .line 74
    :goto_b
    return-void

    .line 73
    :cond_c
    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor;->prepare(Landroid/content/Context;)V

    goto :goto_b
.end method

.method private myClip(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 363
    iget-object v3, p0, Lcom/mob/tools/gui/AsyncImageView;->rect:[F

    if-eqz v3, :cond_2d

    .line 364
    iget-object v3, p0, Lcom/mob/tools/gui/AsyncImageView;->path:Landroid/graphics/Path;

    if-nez v3, :cond_28

    .line 365
    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getWidth()I

    move-result v2

    .line 366
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getHeight()I

    move-result v1

    .line 367
    .local v1, "height":I
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/mob/tools/gui/AsyncImageView;->path:Landroid/graphics/Path;

    .line 368
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v3, v2

    int-to-float v4, v1

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 369
    .local v0, "bound":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/mob/tools/gui/AsyncImageView;->path:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/mob/tools/gui/AsyncImageView;->rect:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v0, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 371
    .end local v0    # "bound":Landroid/graphics/RectF;
    .end local v1    # "height":I
    .end local v2    # "width":I
    :cond_28
    iget-object v3, p0, Lcom/mob/tools/gui/AsyncImageView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 373
    :cond_2d
    return-void
.end method


# virtual methods
.method public deleteCachedFile(Ljava/lang/String;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/mob/tools/gui/AsyncImageView;->getBitmapDesiredOptions()Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mob/tools/gui/BitmapProcessor;->deleteCachedFile(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)V

    .line 115
    return-void
.end method

.method public execute(Ljava/lang/String;I)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "defaultRes"    # I

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/tools/gui/AsyncImageView;->execute(Ljava/lang/String;II)V

    .line 119
    return-void
.end method

.method public execute(Ljava/lang/String;II)V
    .registers 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "defaultRes"    # I
    .param p3, "errorRes"    # I

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->useRamCache:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->useDiskCache:Z

    if-eqz v0, :cond_1b

    :cond_8
    iget-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->lastReqIsOk:Z

    if-eqz v0, :cond_1b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 153
    .end local p2    # "defaultRes":I
    :goto_1a
    return-void

    .line 126
    .restart local p2    # "defaultRes":I
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->lastReqIsOk:Z

    .line 127
    iput-object p1, p0, Lcom/mob/tools/gui/AsyncImageView;->url:Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->result:Landroid/graphics/Bitmap;

    .line 129
    iput p2, p0, Lcom/mob/tools/gui/AsyncImageView;->defaultRes:I

    .line 130
    iput p3, p0, Lcom/mob/tools/gui/AsyncImageView;->errorRes:I

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 132
    if-nez p3, :cond_33

    .end local p2    # "defaultRes":I
    :goto_2f
    invoke-virtual {p0, p2}, Lcom/mob/tools/gui/AsyncImageView;->setImageResource(I)V

    goto :goto_1a

    .restart local p2    # "defaultRes":I
    :cond_33
    move p2, p3

    goto :goto_2f

    .line 135
    :cond_35
    invoke-direct {p0}, Lcom/mob/tools/gui/AsyncImageView;->getBitmapDesiredOptions()Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v1

    .line 136
    .local v1, "options":Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;
    iget-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->useRamCache:Z

    if-eqz v0, :cond_50

    .line 137
    invoke-static {p1, v1}, Lcom/mob/tools/gui/BitmapProcessor;->getBitmapFromCache(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 138
    .local v7, "bm":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_50

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_50

    .line 139
    invoke-virtual {p0, v7}, Lcom/mob/tools/gui/AsyncImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->lastReqIsOk:Z

    goto :goto_1a

    .line 145
    .end local v7    # "bm":Landroid/graphics/Bitmap;
    :cond_50
    if-lez p2, :cond_55

    .line 146
    invoke-virtual {p0, p2}, Lcom/mob/tools/gui/AsyncImageView;->setImageResource(I)V

    .line 149
    :cond_55
    iget-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_68

    .line 150
    :cond_61
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    .line 152
    :cond_68
    iget-boolean v2, p0, Lcom/mob/tools/gui/AsyncImageView;->useRamCache:Z

    iget-boolean v3, p0, Lcom/mob/tools/gui/AsyncImageView;->useDiskCache:Z

    iget-wide v4, p0, Lcom/mob/tools/gui/AsyncImageView;->diskCacheTime:J

    move-object v0, p1

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/mob/tools/gui/BitmapProcessor;->process(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;ZZJLcom/mob/tools/gui/BitmapProcessor$BitmapCallback;)V

    goto :goto_1a
.end method

.method public execute(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "defaultBm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/tools/gui/AsyncImageView;->execute(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 157
    return-void
.end method

.method public execute(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "defaultBm"    # Landroid/graphics/Bitmap;
    .param p3, "errorBm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->useRamCache:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->useDiskCache:Z

    if-eqz v0, :cond_1b

    :cond_8
    iget-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->lastReqIsOk:Z

    if-eqz v0, :cond_1b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 192
    .end local p2    # "defaultBm":Landroid/graphics/Bitmap;
    :goto_1a
    return-void

    .line 164
    .restart local p2    # "defaultBm":Landroid/graphics/Bitmap;
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->lastReqIsOk:Z

    .line 165
    iput-object p1, p0, Lcom/mob/tools/gui/AsyncImageView;->url:Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->result:Landroid/graphics/Bitmap;

    .line 167
    iput-object p2, p0, Lcom/mob/tools/gui/AsyncImageView;->defaultBm:Landroid/graphics/Bitmap;

    .line 168
    iput-object p3, p0, Lcom/mob/tools/gui/AsyncImageView;->errorBm:Landroid/graphics/Bitmap;

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 170
    if-nez p3, :cond_33

    .end local p2    # "defaultBm":Landroid/graphics/Bitmap;
    :goto_2f
    invoke-virtual {p0, p2}, Lcom/mob/tools/gui/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1a

    .restart local p2    # "defaultBm":Landroid/graphics/Bitmap;
    :cond_33
    move-object p2, p3

    goto :goto_2f

    .line 174
    :cond_35
    invoke-direct {p0}, Lcom/mob/tools/gui/AsyncImageView;->getBitmapDesiredOptions()Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v1

    .line 175
    .local v1, "options":Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;
    iget-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->useRamCache:Z

    if-eqz v0, :cond_50

    .line 176
    invoke-static {p1, v1}, Lcom/mob/tools/gui/BitmapProcessor;->getBitmapFromCache(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 177
    .local v7, "bm":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_50

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_50

    .line 178
    invoke-virtual {p0, v7}, Lcom/mob/tools/gui/AsyncImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->lastReqIsOk:Z

    goto :goto_1a

    .line 184
    .end local v7    # "bm":Landroid/graphics/Bitmap;
    :cond_50
    if-eqz p2, :cond_5b

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 185
    invoke-virtual {p0, p2}, Lcom/mob/tools/gui/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 188
    :cond_5b
    iget-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6e

    .line 189
    :cond_67
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    .line 191
    :cond_6e
    iget-boolean v2, p0, Lcom/mob/tools/gui/AsyncImageView;->useRamCache:Z

    iget-boolean v3, p0, Lcom/mob/tools/gui/AsyncImageView;->useDiskCache:Z

    iget-wide v4, p0, Lcom/mob/tools/gui/AsyncImageView;->diskCacheTime:J

    move-object v0, p1

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/mob/tools/gui/BitmapProcessor;->process(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;ZZJLcom/mob/tools/gui/BitmapProcessor$BitmapCallback;)V

    goto :goto_1a
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 297
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_12

    .line 298
    iget-object v3, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_13

    .line 321
    :cond_12
    :goto_12
    return v5

    .line 302
    :cond_13
    :try_start_13
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v2, v3, v4

    .line 303
    .local v2, "url":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v0, v3, v4

    .line 304
    .local v0, "bm":Ljava/lang/Object;
    if-eqz v0, :cond_4f

    if-eqz v2, :cond_4f

    iget-object v3, p0, Lcom/mob/tools/gui/AsyncImageView;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 305
    check-cast v0, Landroid/graphics/Bitmap;

    .end local v0    # "bm":Ljava/lang/Object;
    iput-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->result:Landroid/graphics/Bitmap;

    .line 306
    iget-object v3, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mob/tools/gui/AsyncImageView;

    iget-object v4, p0, Lcom/mob/tools/gui/AsyncImageView;->result:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/mob/tools/gui/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 307
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mob/tools/gui/AsyncImageView;->lastReqIsOk:Z
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_45} :catch_46

    goto :goto_12

    .line 317
    .end local v2    # "url":Ljava/lang/Object;
    :catch_46
    move-exception v1

    .line 318
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_12

    .line 308
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "bm":Ljava/lang/Object;
    .restart local v2    # "url":Ljava/lang/Object;
    :cond_4f
    :try_start_4f
    iget v3, p0, Lcom/mob/tools/gui/AsyncImageView;->errorRes:I

    if-lez v3, :cond_61

    .line 309
    iget-object v3, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mob/tools/gui/AsyncImageView;

    iget v4, p0, Lcom/mob/tools/gui/AsyncImageView;->errorRes:I

    invoke-virtual {v3, v4}, Lcom/mob/tools/gui/AsyncImageView;->setImageResource(I)V

    goto :goto_12

    .line 310
    :cond_61
    iget-object v3, p0, Lcom/mob/tools/gui/AsyncImageView;->errorBm:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_7b

    iget-object v3, p0, Lcom/mob/tools/gui/AsyncImageView;->errorBm:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_7b

    .line 311
    iget-object v3, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mob/tools/gui/AsyncImageView;

    iget-object v4, p0, Lcom/mob/tools/gui/AsyncImageView;->errorBm:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/mob/tools/gui/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_12

    .line 312
    :cond_7b
    iget-object v3, p0, Lcom/mob/tools/gui/AsyncImageView;->defaultBm:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_96

    iget-object v3, p0, Lcom/mob/tools/gui/AsyncImageView;->defaultBm:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_96

    .line 313
    iget-object v3, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mob/tools/gui/AsyncImageView;

    iget-object v4, p0, Lcom/mob/tools/gui/AsyncImageView;->defaultBm:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/mob/tools/gui/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_12

    .line 315
    :cond_96
    iget-object v3, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mob/tools/gui/AsyncImageView;

    iget v4, p0, Lcom/mob/tools/gui/AsyncImageView;->defaultRes:I

    invoke-virtual {v3, v4}, Lcom/mob/tools/gui/AsyncImageView;->setImageResource(I)V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_a3} :catch_46

    goto/16 :goto_12
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_7

    .line 360
    :cond_6
    :goto_6
    return-void

    .line 329
    :cond_7
    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    if-eqz v6, :cond_6

    .line 333
    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 334
    .local v0, "drawMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getPaddingLeft()I

    move-result v1

    .line 335
    .local v1, "paddingLeft":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getPaddingTop()I

    move-result v2

    .line 336
    .local v2, "paddingTop":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v3

    .line 337
    .local v3, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 338
    iget-object v6, p0, Lcom/mob/tools/gui/AsyncImageView;->result:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_44

    .line 339
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/AsyncImageView;->myClip(Landroid/graphics/Canvas;)V

    .line 340
    iget-object v6, p0, Lcom/mob/tools/gui/AsyncImageView;->result:Landroid/graphics/Bitmap;

    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x6

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1, v6, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 359
    :goto_40
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_6

    .line 342
    :cond_44
    if-nez v0, :cond_4a

    if-nez v1, :cond_4a

    if-eqz v2, :cond_8d

    .line 343
    :cond_4a
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_83

    .line 344
    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getCropToPadding()Z

    move-result v6

    if-eqz v6, :cond_83

    .line 345
    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getScrollX()I

    move-result v4

    .line 346
    .local v4, "scrollX":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getScrollY()I

    move-result v5

    .line 347
    .local v5, "scrollY":I
    add-int v6, v4, v1

    add-int v7, v5, v2

    .line 348
    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getRight()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    .line 349
    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getBottom()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    .line 347
    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 352
    .end local v4    # "scrollX":I
    .end local v5    # "scrollY":I
    :cond_83
    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 353
    if-eqz v0, :cond_8d

    .line 354
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 357
    :cond_8d
    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_40
.end method

.method public onImageGot(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x1

    .line 216
    iget-object v3, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_e

    .line 235
    :cond_d
    :goto_d
    return-void

    .line 219
    :cond_e
    const/4 v2, 0x0

    .line 220
    .local v2, "shownImage":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_24

    iget-object v3, p0, Lcom/mob/tools/gui/AsyncImageView;->url:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 221
    move-object v2, p2

    .line 224
    :cond_24
    if-eqz v2, :cond_2e

    .line 225
    iget-boolean v3, p0, Lcom/mob/tools/gui/AsyncImageView;->scaleToCrop:Z

    if-eqz v3, :cond_2e

    .line 226
    invoke-direct {p0, v2}, Lcom/mob/tools/gui/AsyncImageView;->goCrop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 230
    :cond_2e
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 231
    .local v1, "msg":Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 232
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v2, v3, v5

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 233
    sget-object v3, Lcom/mob/tools/gui/AsyncImageView;->RND:Ljava/util/Random;

    const/16 v4, 0x12c

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 234
    .local v0, "delay":I
    int-to-long v4, v0

    invoke-static {v1, v4, v5, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessageDelayed(Landroid/os/Message;JLandroid/os/Handler$Callback;)Z

    goto :goto_d
.end method

.method public removeRamCache(Ljava/lang/String;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->useRamCache:Z

    if-eqz v0, :cond_b

    .line 109
    invoke-direct {p0}, Lcom/mob/tools/gui/AsyncImageView;->getBitmapDesiredOptions()Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mob/tools/gui/BitmapProcessor;->removeBitmapFromRamCache(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)V

    .line 111
    :cond_b
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->scaleToCrop:Z

    if-eqz v0, :cond_8

    .line 209
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/AsyncImageView;->goCrop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 211
    :cond_8
    invoke-virtual {p0, p1}, Lcom/mob/tools/gui/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 212
    iput-object p1, p0, Lcom/mob/tools/gui/AsyncImageView;->result:Landroid/graphics/Bitmap;

    .line 213
    return-void
.end method

.method public setCompressOptions(IIIJ)V
    .registers 6
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I
    .param p3, "quality"    # I
    .param p4, "maxBytes"    # J

    .prologue
    .line 89
    iput p1, p0, Lcom/mob/tools/gui/AsyncImageView;->desiredWidth:I

    .line 90
    iput p2, p0, Lcom/mob/tools/gui/AsyncImageView;->desiredHeight:I

    .line 91
    iput p3, p0, Lcom/mob/tools/gui/AsyncImageView;->quality:I

    .line 92
    iput-wide p4, p0, Lcom/mob/tools/gui/AsyncImageView;->maxBytes:J

    .line 93
    return-void
.end method

.method public setPadding(IIII)V
    .registers 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 293
    return-void
.end method

.method public setRound(F)V
    .registers 2
    .param p1, "radius"    # F

    .prologue
    .line 77
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/mob/tools/gui/AsyncImageView;->setRound(FFFF)V

    .line 78
    return-void
.end method

.method public setRound(FFFF)V
    .registers 7
    .param p1, "leftTop"    # F
    .param p2, "rightTop"    # F
    .param p3, "rightBottom"    # F
    .param p4, "leftBottom"    # F

    .prologue
    .line 81
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    aput p3, v0, v1

    const/4 v1, 0x5

    aput p3, v0, v1

    const/4 v1, 0x6

    aput p4, v0, v1

    const/4 v1, 0x7

    aput p4, v0, v1

    iput-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->rect:[F

    .line 82
    return-void
.end method

.method public setScaleToCropCenter(Z)V
    .registers 2
    .param p1, "scaleToCrop"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mob/tools/gui/AsyncImageView;->scaleToCrop:Z

    .line 86
    return-void
.end method

.method public setUseCacheOption(ZZ)V
    .registers 5
    .param p1, "useRamCache"    # Z
    .param p2, "useDiskCache"    # Z

    .prologue
    .line 96
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mob/tools/gui/AsyncImageView;->setUseCacheOption(ZZJ)V

    .line 97
    return-void
.end method

.method public setUseCacheOption(ZZJ)V
    .registers 6
    .param p1, "useRamCache"    # Z
    .param p2, "useDiskCache"    # Z
    .param p3, "diskCacheTime"    # J

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/mob/tools/gui/AsyncImageView;->useRamCache:Z

    .line 101
    iput-boolean p2, p0, Lcom/mob/tools/gui/AsyncImageView;->useDiskCache:Z

    .line 102
    if-eqz p2, :cond_8

    .line 103
    iput-wide p3, p0, Lcom/mob/tools/gui/AsyncImageView;->diskCacheTime:J

    .line 105
    :cond_8
    return-void
.end method
