.class public Lcom/mob/tools/gui/ScaledImageView;
.super Landroid/widget/ImageView;
.source "ScaledImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;
    }
.end annotation


# static fields
.field private static final DRAG_1:I = 0x1

.field private static final DRAG_2:I = 0x2

.field private static final NONE:I = 0x0

.field private static final ZOOM:I = 0x3


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private distSquare:F

.field private downPoint:[F

.field private dragScrollMinDistSquare:I

.field private listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

.field private matrix:Landroid/graphics/Matrix;

.field private mode:I

.field private savedMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ScaledImageView;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ScaledImageView;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ScaledImageView;->init(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/mob/tools/gui/ScaledImageView;->dragScrollMinDistSquare:I

    .line 48
    iget v0, p0, Lcom/mob/tools/gui/ScaledImageView;->dragScrollMinDistSquare:I

    iget v1, p0, Lcom/mob/tools/gui/ScaledImageView;->dragScrollMinDistSquare:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/mob/tools/gui/ScaledImageView;->dragScrollMinDistSquare:I

    .line 49
    invoke-virtual {p0, p0}, Lcom/mob/tools/gui/ScaledImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 50
    return-void
.end method


# virtual methods
.method public getCropedBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "cropRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 272
    :try_start_1
    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getHeight()I

    move-result v5

    invoke-static {p0, v4, v5}, Lcom/mob/tools/utils/BitmapHelper;->captureView(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 273
    .local v0, "bmTmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1a

    .line 274
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    const-string v5, "ivPhoto.getDrawingCache() returns null"

    invoke-virtual {v4, v5}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    move-object v2, v3

    .line 286
    .end local v0    # "bmTmp":Landroid/graphics/Bitmap;
    :goto_19
    return-object v2

    .line 278
    .restart local v0    # "bmTmp":Landroid/graphics/Bitmap;
    :cond_1a
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v0, v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 279
    .local v2, "scaledBm":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2d} :catch_2f

    .line 280
    const/4 v0, 0x0

    .line 282
    goto :goto_19

    .line 283
    .end local v0    # "bmTmp":Landroid/graphics/Bitmap;
    .end local v2    # "scaledBm":Landroid/graphics/Bitmap;
    :catch_2f
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 286
    goto :goto_19
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 90
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    sparse-switch v8, :sswitch_data_23c

    .line 159
    const/4 v8, 0x0

    .line 166
    :goto_8
    return v8

    .line 92
    :sswitch_9
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 93
    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 94
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    .line 95
    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 96
    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    aput v10, v8, v9

    iput-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    .line 97
    const/4 v8, 0x1

    iput v8, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    .line 162
    :cond_3f
    :goto_3f
    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v8}, Lcom/mob/tools/gui/ScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 166
    :goto_44
    const/4 v8, 0x1

    goto :goto_8

    .line 100
    :sswitch_46
    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    if-eqz v8, :cond_51

    .line 101
    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    iget-object v9, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v8, v9}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    .line 103
    :cond_51
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iget-object v9, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float v0, v8, v9

    .line 104
    .local v0, "dx":F
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iget-object v9, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float v1, v8, v9

    .line 105
    .local v1, "dy":F
    iget v8, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7d

    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float/2addr v8, v9

    iget v9, p0, Lcom/mob/tools/gui/ScaledImageView;->dragScrollMinDistSquare:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_7d

    .line 107
    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->performClick()Z

    .line 109
    :cond_7d
    const/4 v8, 0x0

    iput v8, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_80} :catch_81

    goto :goto_3f

    .line 163
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    :catch_81
    move-exception v7

    .line 164
    .local v7, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_44

    .line 112
    .end local v7    # "t":Ljava/lang/Throwable;
    :sswitch_8a
    const/4 v8, 0x2

    :try_start_8b
    new-array v6, v8, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    aput v9, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    aput v9, v6, v8

    .line 113
    .local v6, "start":[F
    const/4 v8, 0x2

    new-array v2, v8, [F

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    aput v9, v2, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    aput v9, v2, v8

    .line 114
    .local v2, "end":[F
    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x0

    aget v9, v2, v9

    sub-float v0, v8, v9

    .line 115
    .restart local v0    # "dx":F
    const/4 v8, 0x1

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v2, v9

    sub-float v1, v8, v9

    .line 116
    .restart local v1    # "dy":F
    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float/2addr v8, v9

    iput v8, p0, Lcom/mob/tools/gui/ScaledImageView;->distSquare:F

    .line 117
    const/4 v8, 0x3

    iput v8, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    goto/16 :goto_3f

    .line 120
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v2    # "end":[F
    .end local v6    # "start":[F
    :sswitch_cc
    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    aput v10, v8, v9

    iput-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    .line 121
    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 122
    const/4 v8, 0x2

    iput v8, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    goto/16 :goto_3f

    .line 125
    :sswitch_ed
    const/4 v8, 0x2

    new-array v6, v8, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    aput v9, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    aput v9, v6, v8

    .line 126
    .restart local v6    # "start":[F
    const/4 v8, 0x2

    new-array v2, v8, [F

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    aput v9, v2, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    aput v9, v2, v8

    .line 127
    .restart local v2    # "end":[F
    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x0

    aget v9, v2, v9

    sub-float v0, v8, v9

    .line 128
    .restart local v0    # "dx":F
    const/4 v8, 0x1

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v2, v9

    sub-float v1, v8, v9

    .line 129
    .restart local v1    # "dy":F
    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float/2addr v8, v9

    iput v8, p0, Lcom/mob/tools/gui/ScaledImageView;->distSquare:F

    .line 130
    const/4 v8, 0x3

    iput v8, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    goto/16 :goto_3f

    .line 133
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v2    # "end":[F
    .end local v6    # "start":[F
    :sswitch_12f
    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    aput v10, v8, v9

    iput-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    .line 134
    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 135
    const/4 v8, 0x1

    iput v8, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    goto/16 :goto_3f

    .line 138
    :sswitch_150
    iget v8, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_188

    .line 139
    const/4 v8, 0x2

    new-array v2, v8, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    aput v9, v2, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    aput v9, v2, v8

    .line 140
    .restart local v2    # "end":[F
    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 141
    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    const/4 v9, 0x0

    aget v9, v2, v9

    iget-object v10, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float/2addr v9, v10

    const/4 v10, 0x1

    aget v10, v2, v10

    iget-object v11, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_3f

    .line 142
    .end local v2    # "end":[F
    :cond_188
    iget v8, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1c0

    .line 143
    const/4 v8, 0x2

    new-array v2, v8, [F

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    aput v9, v2, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    aput v9, v2, v8

    .line 144
    .restart local v2    # "end":[F
    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 145
    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    const/4 v9, 0x0

    aget v9, v2, v9

    iget-object v10, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float/2addr v9, v10

    const/4 v10, 0x1

    aget v10, v2, v10

    iget-object v11, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_3f

    .line 146
    .end local v2    # "end":[F
    :cond_1c0
    iget v8, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3f

    .line 147
    const/4 v8, 0x2

    new-array v6, v8, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    aput v9, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    aput v9, v6, v8

    .line 148
    .restart local v6    # "start":[F
    const/4 v8, 0x2

    new-array v2, v8, [F

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    aput v9, v2, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    aput v9, v2, v8

    .line 149
    .restart local v2    # "end":[F
    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x0

    aget v9, v2, v9

    sub-float v0, v8, v9

    .line 150
    .restart local v0    # "dx":F
    const/4 v8, 0x1

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v2, v9

    sub-float v1, v8, v9

    .line 151
    .restart local v1    # "dy":F
    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float v4, v8, v9

    .line 152
    .local v4, "newDistSquare":F
    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 153
    iget v8, p0, Lcom/mob/tools/gui/ScaledImageView;->distSquare:F

    div-float v8, v4, v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 154
    .local v5, "scale":F
    const/4 v8, 0x2

    new-array v3, v8, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget v9, v6, v9

    const/4 v10, 0x0

    aget v10, v2, v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    aput v9, v3, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    aget v9, v6, v9

    const/4 v10, 0x1

    aget v10, v2, v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    aput v9, v3, v8

    .line 155
    .local v3, "middle":[F
    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x1

    aget v10, v3, v10

    invoke-virtual {v8, v5, v5, v9, v10}, Landroid/graphics/Matrix;->postScale(FFFF)Z
    :try_end_23a
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_23a} :catch_81

    goto/16 :goto_3f

    .line 90
    :sswitch_data_23c
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_46
        0x2 -> :sswitch_150
        0x5 -> :sswitch_8a
        0x6 -> :sswitch_cc
        0x105 -> :sswitch_ed
        0x106 -> :sswitch_12f
    .end sparse-switch
.end method

.method public rotateLeft()V
    .registers 15

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    .line 172
    :try_start_2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 173
    const/16 v0, 0x9

    new-array v8, v0, [F

    fill-array-data v8, :array_cc

    .line 178
    .local v8, "matrixValue":[F
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->setValues([F)V

    .line 179
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 180
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    const/4 v6, 0x1

    .line 179
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 181
    .local v9, "resizedBitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_3b

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 182
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 183
    iput-object v9, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 185
    :cond_3b
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScaledImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 188
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 189
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->getValues([F)V

    .line 190
    const/4 v0, 0x2

    new-array v12, v0, [I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getWidth()I

    move-result v1

    aput v1, v12, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getHeight()I

    move-result v1

    aput v1, v12, v0

    .line 191
    .local v12, "target":[I
    const/4 v0, 0x2

    new-array v10, v0, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, v8, v1

    iget-object v2, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    aput v1, v10, v0

    const/4 v0, 0x1

    const/4 v1, 0x4

    aget v1, v8, v1

    iget-object v2, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    aput v1, v10, v0

    .line 192
    .local v10, "src":[F
    const/4 v0, 0x2

    new-array v7, v0, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, v12, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aget v2, v10, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v13

    aput v1, v7, v0

    const/4 v0, 0x1

    const/4 v1, 0x1

    aget v1, v12, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v2, v10, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v13

    aput v1, v7, v0

    .line 196
    .local v7, "centerDel":[F
    const/4 v0, 0x2

    const/4 v1, 0x0

    aget v1, v7, v1

    aput v1, v8, v0

    .line 197
    const/4 v0, 0x5

    const/4 v1, 0x1

    aget v1, v7, v1

    aput v1, v8, v0

    .line 198
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->setValues([F)V

    .line 199
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    if-eqz v0, :cond_bc

    .line 200
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v1}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    .line 202
    :cond_bc
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
    :try_end_c1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_c1} :catch_c2

    .line 206
    .end local v7    # "centerDel":[F
    .end local v8    # "matrixValue":[F
    .end local v9    # "resizedBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "src":[F
    .end local v12    # "target":[I
    :goto_c1
    return-void

    .line 203
    :catch_c2
    move-exception v11

    .line 204
    .local v11, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_c1

    .line 173
    nop

    :array_cc
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public rotateRight()V
    .registers 15

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    .line 211
    :try_start_2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 212
    const/16 v0, 0x9

    new-array v8, v0, [F

    fill-array-data v8, :array_cc

    .line 217
    .local v8, "matrixValue":[F
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->setValues([F)V

    .line 218
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 219
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    const/4 v6, 0x1

    .line 218
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 220
    .local v9, "resizedBitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_3b

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 221
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 222
    iput-object v9, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 224
    :cond_3b
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScaledImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 226
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 227
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 228
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->getValues([F)V

    .line 229
    const/4 v0, 0x2

    new-array v12, v0, [I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getWidth()I

    move-result v1

    aput v1, v12, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getHeight()I

    move-result v1

    aput v1, v12, v0

    .line 230
    .local v12, "target":[I
    const/4 v0, 0x2

    new-array v10, v0, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, v8, v1

    iget-object v2, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    aput v1, v10, v0

    const/4 v0, 0x1

    const/4 v1, 0x4

    aget v1, v8, v1

    iget-object v2, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    aput v1, v10, v0

    .line 231
    .local v10, "src":[F
    const/4 v0, 0x2

    new-array v7, v0, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, v12, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aget v2, v10, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v13

    aput v1, v7, v0

    const/4 v0, 0x1

    const/4 v1, 0x1

    aget v1, v12, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v2, v10, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v13

    aput v1, v7, v0

    .line 235
    .local v7, "centerDel":[F
    const/4 v0, 0x2

    const/4 v1, 0x0

    aget v1, v7, v1

    aput v1, v8, v0

    .line 236
    const/4 v0, 0x5

    const/4 v1, 0x1

    aget v1, v7, v1

    aput v1, v8, v0

    .line 237
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->setValues([F)V

    .line 238
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    if-eqz v0, :cond_bc

    .line 239
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v1}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    .line 241
    :cond_bc
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
    :try_end_c1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_c1} :catch_c2

    .line 245
    .end local v7    # "centerDel":[F
    .end local v8    # "matrixValue":[F
    .end local v9    # "resizedBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "src":[F
    .end local v12    # "target":[I
    :goto_c1
    return-void

    .line 242
    :catch_c2
    move-exception v11

    .line 243
    .local v11, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_c1

    .line 212
    nop

    :array_cc
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 12
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 53
    iput-object p1, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 54
    invoke-virtual {p0, p1}, Lcom/mob/tools/gui/ScaledImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    new-array v4, v7, [I

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getWidth()I

    move-result v5

    aput v5, v4, v8

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getHeight()I

    move-result v5

    aput v5, v4, v9

    .line 56
    .local v4, "target":[I
    new-array v3, v7, [I

    iget-object v5, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    aput v5, v3, v8

    iget-object v5, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    aput v5, v3, v9

    .line 57
    .local v3, "src":[I
    invoke-static {v3, v4}, Lcom/mob/tools/utils/BitmapHelper;->fixRect([I[I)[I

    move-result-object v1

    .line 58
    .local v1, "dst":[I
    new-array v0, v7, [I

    aget v5, v4, v8

    aget v6, v1, v8

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    aput v5, v0, v8

    aget v5, v4, v9

    aget v6, v1, v9

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    aput v5, v0, v9

    .line 62
    .local v0, "centerDel":[I
    new-array v2, v7, [F

    aget v5, v1, v8

    int-to-float v5, v5

    aget v6, v3, v8

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v2, v8

    aget v5, v1, v9

    int-to-float v5, v5

    aget v6, v3, v9

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v2, v9

    .line 67
    .local v2, "factor":[F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 68
    iget-object v5, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 69
    iget-object v5, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    aget v6, v2, v8

    aget v7, v2, v9

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 70
    iget-object v5, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    aget v6, v0, v8

    int-to-float v6, v6

    aget v7, v0, v9

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 71
    iget-object v5, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    if-eqz v5, :cond_83

    .line 72
    iget-object v5, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    iget-object v6, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v5, v6}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    .line 74
    :cond_83
    iget-object v5, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v5}, Lcom/mob/tools/gui/ScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 75
    return-void
.end method

.method public setOnMatrixChangedListener(Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;)V
    .registers 4
    .param p1, "l"    # Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    .line 79
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_16

    .line 80
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    if-eqz v0, :cond_11

    .line 81
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v1}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    .line 83
    :cond_11
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 85
    :cond_16
    return-void
.end method

.method public zoomIn()V
    .registers 4

    .prologue
    const v2, 0x3f89374c    # 1.072f

    .line 249
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 250
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 251
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 252
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    if-eqz v0, :cond_23

    .line 253
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v1}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    .line 255
    :cond_23
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 256
    return-void
.end method

.method public zoomOut()V
    .registers 4

    .prologue
    const v2, 0x3f6ed917    # 0.933f

    .line 260
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 261
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 262
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 263
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    if-eqz v0, :cond_23

    .line 264
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v1}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    .line 266
    :cond_23
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 267
    return-void
.end method
