.class public Lcom/mob/tools/utils/BitmapHelper;
.super Ljava/lang/Object;
.source "BitmapHelper.java"


# static fields
.field private static final DEFAULT_MAX_BITMAP_DIMENSION:I = 0x800

.field private static maxBitmapHeight:I

.field private static maxBitmapWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 49
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 50
    .local v1, "maxTextureSize":[I
    const/16 v2, 0xd33

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 51
    aget v2, v1, v3

    const/16 v3, 0x800

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 52
    .local v0, "maxBitmapDimension":I
    sput v0, Lcom/mob/tools/utils/BitmapHelper;->maxBitmapWidth:I

    .line 53
    sput v0, Lcom/mob/tools/utils/BitmapHelper;->maxBitmapHeight:I

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mob/tools/network/HttpConnection;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/mob/tools/network/HttpConnection;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/mob/tools/utils/BitmapHelper;->getFileName(Lcom/mob/tools/network/HttpConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blur(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 16
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I
    .param p2, "scale"    # I

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    .line 383
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 384
    .local v7, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 385
    .local v1, "height":I
    int-to-float v8, p1

    int-to-float v9, p2

    div-float/2addr v8, v9

    add-float/2addr v8, v10

    float-to-int v5, v8

    .line 386
    .local v5, "scaledRadius":I
    int-to-float v8, v7

    int-to-float v9, p2

    div-float/2addr v8, v9

    add-float/2addr v8, v10

    float-to-int v6, v8

    .line 387
    .local v6, "scaledWidth":I
    int-to-float v8, v1

    int-to-float v9, p2

    div-float/2addr v8, v9

    add-float/2addr v8, v10

    float-to-int v4, v8

    .line 389
    .local v4, "scaledHeight":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 390
    .local v2, "overlay":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 391
    .local v0, "canvas":Landroid/graphics/Canvas;
    int-to-float v8, p2

    div-float v8, v12, v8

    int-to-float v9, p2

    div-float v9, v12, v9

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 392
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 393
    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setFlags(I)V

    .line 394
    invoke-virtual {v0, p0, v11, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 395
    const/4 v8, 0x1

    invoke-static {v2, v5, v8}, Lcom/mob/tools/utils/BitmapHelper;->blur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    .line 397
    return-object v2
.end method

.method private static blur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 45
    .param p0, "sentBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I
    .param p2, "canReuseInBitmap"    # Z

    .prologue
    .line 429
    if-eqz p2, :cond_b

    .line 430
    move-object/from16 v2, p0

    .line 435
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_4
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ge v0, v4, :cond_17

    .line 436
    const/4 v2, 0x0

    .line 630
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :goto_a
    return-object v2

    .line 432
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_4

    .line 439
    :cond_17
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 440
    .local v5, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 442
    .local v9, "h":I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 443
    .local v3, "pix":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 445
    add-int/lit8 v36, v5, -0x1

    .line 446
    .local v36, "wm":I
    add-int/lit8 v21, v9, -0x1

    .line 447
    .local v21, "hm":I
    mul-int v35, v5, v9

    .line 448
    .local v35, "wh":I
    add-int v4, p1, p1

    add-int/lit8 v14, v4, 0x1

    .line 450
    .local v14, "div":I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 451
    .local v24, "r":[I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 452
    .local v17, "g":[I
    move/from16 v0, v35

    new-array v10, v0, [I

    .line 454
    .local v10, "b":[I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v34, v0

    .line 456
    .local v34, "vmin":[I
    add-int/lit8 v4, v14, 0x1

    shr-int/lit8 v15, v4, 0x1

    .line 457
    .local v15, "divsum":I
    mul-int/2addr v15, v15

    .line 458
    mul-int/lit16 v4, v15, 0x100

    new-array v0, v4, [I

    move-object/from16 v16, v0

    .line 459
    .local v16, "dv":[I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_59
    mul-int/lit16 v4, v15, 0x100

    move/from16 v0, v22

    if-ge v0, v4, :cond_66

    .line 460
    div-int v4, v22, v15

    aput v4, v16, v22

    .line 459
    add-int/lit8 v22, v22, 0x1

    goto :goto_59

    .line 463
    :cond_66
    const/16 v39, 0x0

    .local v39, "yi":I
    move/from16 v41, v39

    .line 465
    .local v41, "yw":I
    const/4 v4, 0x3

    filled-new-array {v14, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [[I

    .line 470
    .local v31, "stack":[[I
    add-int/lit8 v25, p1, 0x1

    .line 474
    .local v25, "r1":I
    const/16 v38, 0x0

    .local v38, "y":I
    :goto_7b
    move/from16 v0, v38

    if-ge v0, v9, :cond_1a4

    .line 475
    const/4 v13, 0x0

    .local v13, "bsum":I
    move/from16 v20, v13

    .local v20, "gsum":I
    move/from16 v29, v13

    .local v29, "rsum":I
    move v12, v13

    .local v12, "boutsum":I
    move/from16 v19, v13

    .local v19, "goutsum":I
    move/from16 v28, v13

    .local v28, "routsum":I
    move v11, v13

    .local v11, "binsum":I
    move/from16 v18, v13

    .local v18, "ginsum":I
    move/from16 v27, v13

    .line 476
    .local v27, "rinsum":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    :goto_93
    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_104

    .line 477
    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v36

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v39

    aget v23, v3, v4

    .line 478
    .local v23, "p":I
    add-int v4, v22, p1

    aget-object v30, v31, v4

    .line 479
    .local v30, "sir":[I
    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x10

    aput v6, v30, v4

    .line 480
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x8

    aput v6, v30, v4

    .line 481
    const/4 v4, 0x2

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    aput v6, v30, v4

    .line 482
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v26, v25, v4

    .line 483
    .local v26, "rbs":I
    const/4 v4, 0x0

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int v29, v29, v4

    .line 484
    const/4 v4, 0x1

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int v20, v20, v4

    .line 485
    const/4 v4, 0x2

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int/2addr v13, v4

    .line 486
    if-lez v22, :cond_f5

    .line 487
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 488
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 489
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 476
    :goto_f2
    add-int/lit8 v22, v22, 0x1

    goto :goto_93

    .line 491
    :cond_f5
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 492
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 493
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    goto :goto_f2

    .line 496
    .end local v23    # "p":I
    .end local v26    # "rbs":I
    .end local v30    # "sir":[I
    :cond_104
    move/from16 v32, p1

    .line 498
    .local v32, "stackpointer":I
    const/16 v37, 0x0

    .local v37, "x":I
    :goto_108
    move/from16 v0, v37

    if-ge v0, v5, :cond_19e

    .line 500
    aget v4, v16, v29

    aput v4, v24, v39

    .line 501
    aget v4, v16, v20

    aput v4, v17, v39

    .line 502
    aget v4, v16, v13

    aput v4, v10, v39

    .line 504
    sub-int v29, v29, v28

    .line 505
    sub-int v20, v20, v19

    .line 506
    sub-int/2addr v13, v12

    .line 508
    sub-int v4, v32, p1

    add-int v33, v4, v14

    .line 509
    .local v33, "stackstart":I
    rem-int v4, v33, v14

    aget-object v30, v31, v4

    .line 511
    .restart local v30    # "sir":[I
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v28, v28, v4

    .line 512
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v19, v19, v4

    .line 513
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v12, v4

    .line 515
    if-nez v38, :cond_141

    .line 516
    add-int v4, v37, p1

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v36

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v34, v37

    .line 518
    :cond_141
    aget v4, v34, v37

    add-int v4, v4, v41

    aget v23, v3, v4

    .line 520
    .restart local v23    # "p":I
    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x10

    aput v6, v30, v4

    .line 521
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x8

    aput v6, v30, v4

    .line 522
    const/4 v4, 0x2

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    aput v6, v30, v4

    .line 524
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 525
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 526
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 528
    add-int v29, v29, v27

    .line 529
    add-int v20, v20, v18

    .line 530
    add-int/2addr v13, v11

    .line 532
    add-int/lit8 v4, v32, 0x1

    rem-int v32, v4, v14

    .line 533
    rem-int v4, v32, v14

    aget-object v30, v31, v4

    .line 535
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 536
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 537
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    .line 539
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v27, v27, v4

    .line 540
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v18, v18, v4

    .line 541
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v11, v4

    .line 543
    add-int/lit8 v39, v39, 0x1

    .line 498
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_108

    .line 545
    .end local v23    # "p":I
    .end local v30    # "sir":[I
    .end local v33    # "stackstart":I
    :cond_19e
    add-int v41, v41, v5

    .line 474
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_7b

    .line 547
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v27    # "rinsum":I
    .end local v28    # "routsum":I
    .end local v29    # "rsum":I
    .end local v32    # "stackpointer":I
    .end local v37    # "x":I
    :cond_1a4
    const/16 v37, 0x0

    .restart local v37    # "x":I
    :goto_1a6
    move/from16 v0, v37

    if-ge v0, v5, :cond_2be

    .line 548
    const/4 v13, 0x0

    .restart local v13    # "bsum":I
    move/from16 v20, v13

    .restart local v20    # "gsum":I
    move/from16 v29, v13

    .restart local v29    # "rsum":I
    move v12, v13

    .restart local v12    # "boutsum":I
    move/from16 v19, v13

    .restart local v19    # "goutsum":I
    move/from16 v28, v13

    .restart local v28    # "routsum":I
    move v11, v13

    .restart local v11    # "binsum":I
    move/from16 v18, v13

    .restart local v18    # "ginsum":I
    move/from16 v27, v13

    .line 549
    .restart local v27    # "rinsum":I
    move/from16 v0, p1

    neg-int v4, v0

    mul-int v40, v4, v5

    .line 550
    .local v40, "yp":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    :goto_1c3
    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_226

    .line 551
    const/4 v4, 0x0

    move/from16 v0, v40

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v39, v4, v37

    .line 553
    add-int v4, v22, p1

    aget-object v30, v31, v4

    .line 555
    .restart local v30    # "sir":[I
    const/4 v4, 0x0

    aget v6, v24, v39

    aput v6, v30, v4

    .line 556
    const/4 v4, 0x1

    aget v6, v17, v39

    aput v6, v30, v4

    .line 557
    const/4 v4, 0x2

    aget v6, v10, v39

    aput v6, v30, v4

    .line 559
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v26, v25, v4

    .line 561
    .restart local v26    # "rbs":I
    aget v4, v24, v39

    mul-int v4, v4, v26

    add-int v29, v29, v4

    .line 562
    aget v4, v17, v39

    mul-int v4, v4, v26

    add-int v20, v20, v4

    .line 563
    aget v4, v10, v39

    mul-int v4, v4, v26

    add-int/2addr v13, v4

    .line 565
    if-lez v22, :cond_217

    .line 566
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 567
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 568
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 575
    :goto_20c
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_214

    .line 576
    add-int v40, v40, v5

    .line 550
    :cond_214
    add-int/lit8 v22, v22, 0x1

    goto :goto_1c3

    .line 570
    :cond_217
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 571
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 572
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    goto :goto_20c

    .line 579
    .end local v26    # "rbs":I
    .end local v30    # "sir":[I
    :cond_226
    move/from16 v39, v37

    .line 580
    move/from16 v32, p1

    .line 581
    .restart local v32    # "stackpointer":I
    const/16 v38, 0x0

    :goto_22c
    move/from16 v0, v38

    if-ge v0, v9, :cond_2ba

    .line 583
    const/high16 v4, -0x1000000

    aget v6, v3, v39

    and-int/2addr v4, v6

    aget v6, v16, v29

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aget v6, v16, v20

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    aget v6, v16, v13

    or-int/2addr v4, v6

    aput v4, v3, v39

    .line 585
    sub-int v29, v29, v28

    .line 586
    sub-int v20, v20, v19

    .line 587
    sub-int/2addr v13, v12

    .line 589
    sub-int v4, v32, p1

    add-int v33, v4, v14

    .line 590
    .restart local v33    # "stackstart":I
    rem-int v4, v33, v14

    aget-object v30, v31, v4

    .line 592
    .restart local v30    # "sir":[I
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v28, v28, v4

    .line 593
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v19, v19, v4

    .line 594
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v12, v4

    .line 596
    if-nez v37, :cond_26c

    .line 597
    add-int v4, v38, v25

    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v5

    aput v4, v34, v38

    .line 599
    :cond_26c
    aget v4, v34, v38

    add-int v23, v37, v4

    .line 601
    .restart local v23    # "p":I
    const/4 v4, 0x0

    aget v6, v24, v23

    aput v6, v30, v4

    .line 602
    const/4 v4, 0x1

    aget v6, v17, v23

    aput v6, v30, v4

    .line 603
    const/4 v4, 0x2

    aget v6, v10, v23

    aput v6, v30, v4

    .line 605
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 606
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 607
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 609
    add-int v29, v29, v27

    .line 610
    add-int v20, v20, v18

    .line 611
    add-int/2addr v13, v11

    .line 613
    add-int/lit8 v4, v32, 0x1

    rem-int v32, v4, v14

    .line 614
    aget-object v30, v31, v32

    .line 616
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 617
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 618
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    .line 620
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v27, v27, v4

    .line 621
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v18, v18, v4

    .line 622
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v11, v4

    .line 624
    add-int v39, v39, v5

    .line 581
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_22c

    .line 547
    .end local v23    # "p":I
    .end local v30    # "sir":[I
    .end local v33    # "stackstart":I
    :cond_2ba
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_1a6

    .line 628
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v27    # "rinsum":I
    .end local v28    # "routsum":I
    .end local v29    # "rsum":I
    .end local v32    # "stackpointer":I
    .end local v40    # "yp":I
    :cond_2be
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_a
.end method

.method private static bytesStartWith([B[B)Z
    .registers 7
    .param p0, "target"    # [B
    .param p1, "prefix"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 792
    if-ne p0, p1, :cond_5

    .line 809
    :cond_4
    :goto_4
    return v1

    .line 796
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v1, v2

    .line 797
    goto :goto_4

    .line 800
    :cond_b
    array-length v3, p0

    array-length v4, p1

    if-ge v3, v4, :cond_11

    move v1, v2

    .line 801
    goto :goto_4

    .line 804
    :cond_11
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    array-length v3, p1

    if-ge v0, v3, :cond_4

    .line 805
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_1d

    move v1, v2

    .line 806
    goto :goto_4

    .line 804
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method public static captureView(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 377
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 378
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 379
    return-object v0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "orginal"    # Landroid/graphics/Bitmap;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 815
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, p1

    sub-int v4, v5, p3

    .line 816
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, p2

    sub-int v1, v5, p4

    .line 817
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_1b

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v1, v5, :cond_1b

    .line 825
    .end local p0    # "orginal":Landroid/graphics/Bitmap;
    :goto_1a
    return-object p0

    .line 821
    .restart local p0    # "orginal":Landroid/graphics/Bitmap;
    :cond_1b
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 822
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 823
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 824
    .local v3, "paint":Landroid/graphics/Paint;
    neg-int v5, p1

    int-to-float v5, v5

    neg-int v6, p2

    int-to-float v6, v6

    invoke-virtual {v0, p0, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p0, v2

    .line 825
    goto :goto_1a
.end method

.method public static downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 206
    const-string v5, "images"

    invoke-static {p0, v5}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "path":Ljava/lang/String;
    invoke-static {p1}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .local v1, "cache":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 210
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 288
    :goto_19
    return-object v5

    .line 213
    :cond_1a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 214
    .local v0, "buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v2}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 215
    .local v2, "helper":Lcom/mob/tools/network/NetworkHelper;
    new-instance v5, Lcom/mob/tools/utils/BitmapHelper$1;

    invoke-direct {v5, p1, v4, v0}, Lcom/mob/tools/utils/BitmapHelper$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 v6, 0x0

    invoke-virtual {v2, p1, v5, v6}, Lcom/mob/tools/network/NetworkHelper;->rawGet(Ljava/lang/String;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    .line 288
    const-string v5, "bitmap"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_19
.end method

.method public static fixRect([I[I)[I
    .registers 10
    .param p0, "src"    # [I
    .param p1, "target"    # [I

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 664
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 665
    .local v0, "dst":[I
    aget v3, p0, v5

    int-to-float v3, v3

    aget v4, p0, v6

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 666
    .local v1, "rs":F
    aget v3, p1, v5

    int-to-float v3, v3

    aget v4, p1, v6

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 667
    .local v2, "rt":F
    cmpl-float v3, v1, v2

    if-lez v3, :cond_2f

    .line 668
    aget v3, p1, v5

    aput v3, v0, v5

    .line 669
    aget v3, p0, v6

    int-to-float v3, v3

    aget v4, p1, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    aget v4, p0, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v3, v7

    float-to-int v3, v3

    aput v3, v0, v6

    .line 675
    :goto_2e
    return-object v0

    .line 671
    :cond_2f
    aget v3, p1, v6

    aput v3, v0, v6

    .line 672
    aget v3, p0, v5

    int-to-float v3, v3

    aget v4, p1, v6

    int-to-float v4, v4

    mul-float/2addr v3, v4

    aget v4, p0, v6

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v3, v7

    float-to-int v3, v3

    aput v3, v0, v5

    goto :goto_2e
.end method

.method public static fixRect_2([I[I)[I
    .registers 10
    .param p0, "src"    # [I
    .param p1, "target"    # [I

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 680
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 681
    .local v0, "dst":[I
    aget v3, p0, v5

    int-to-float v3, v3

    aget v4, p0, v6

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 682
    .local v1, "rs":F
    aget v3, p1, v5

    int-to-float v3, v3

    aget v4, p1, v6

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 683
    .local v2, "rt":F
    cmpl-float v3, v1, v2

    if-lez v3, :cond_2f

    .line 684
    aget v3, p1, v6

    aput v3, v0, v6

    .line 685
    aget v3, p0, v5

    int-to-float v3, v3

    aget v4, p1, v6

    int-to-float v4, v4

    mul-float/2addr v3, v4

    aget v4, p0, v6

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v3, v7

    float-to-int v3, v3

    aput v3, v0, v5

    .line 691
    :goto_2e
    return-object v0

    .line 687
    :cond_2f
    aget v3, p1, v5

    aput v3, v0, v5

    .line 688
    aget v3, p0, v6

    int-to-float v3, v3

    aget v4, p1, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    aget v4, p0, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v3, v7

    float-to-int v3, v3

    aput v3, v0, v6

    goto :goto_2e
.end method

.method public static getBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {p0, p1}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getBitmap(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "inSampleSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 173
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_a

    .line 174
    :cond_8
    const/4 v0, 0x0

    .line 180
    :goto_9
    return-object v0

    .line 177
    :cond_a
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 178
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {v1, p1}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 179
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_9
.end method

.method public static getBitmap(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "inSampleSize"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 184
    if-nez p0, :cond_5

    .line 193
    :goto_4
    return-object v1

    .line 188
    :cond_5
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 189
    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 190
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 191
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 192
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 193
    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_4
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 197
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "inSampleSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 167
    const/4 v0, 0x0

    .line 169
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7
.end method

.method public static getBitmapByCompressQuality(Ljava/lang/String;IIIJ)Landroid/graphics/Bitmap;
    .registers 16
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I
    .param p3, "quality"    # I
    .param p4, "maxBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x0

    .line 100
    invoke-static {p0, p1, p2}, Lcom/mob/tools/utils/BitmapHelper;->getBitmapByCompressSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 101
    .local v2, "compressedSizeBitmap":Landroid/graphics/Bitmap;
    const/16 v6, 0xa

    if-lt p3, v6, :cond_d

    if-le p3, v9, :cond_f

    .line 102
    :cond_d
    const/16 p3, 0x64

    .line 105
    :cond_f
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 106
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0}, Lcom/mob/tools/utils/BitmapHelper;->getBmpFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v3

    .line 107
    .local v3, "format":Landroid/graphics/Bitmap$CompressFormat;
    invoke-virtual {v2, v3, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 108
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 109
    .local v1, "compressedBytes":[B
    const-wide/16 v6, 0x2800

    cmp-long v6, p4, v6

    if-gez v6, :cond_3a

    .line 110
    array-length v6, v1

    invoke-static {v1, v8, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 112
    .local v5, "qualityBitmap":Landroid/graphics/Bitmap;
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2d} :catch_54

    .line 140
    .end local v5    # "qualityBitmap":Landroid/graphics/Bitmap;
    :goto_2d
    return-object v5

    .line 123
    :cond_2e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 124
    add-int/lit8 p3, p3, -0x6

    .line 125
    invoke-virtual {v2, v3, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 126
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 119
    :cond_3a
    array-length v6, v1

    int-to-long v6, v6

    cmp-long v6, v6, p4

    if-lez v6, :cond_44

    .line 120
    const/16 v6, 0xb

    if-ge p3, v6, :cond_2e

    .line 129
    :cond_44
    if-ne p3, v9, :cond_4e

    .line 130
    move-object v4, v2

    .line 134
    .local v4, "newBitmap":Landroid/graphics/Bitmap;
    :goto_47
    if-eqz v0, :cond_4c

    .line 136
    :try_start_49
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_4c} :catch_56

    :cond_4c
    :goto_4c
    move-object v5, v4

    .line 140
    goto :goto_2d

    .line 132
    .end local v4    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_4e
    array-length v6, v1

    invoke-static {v1, v8, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .restart local v4    # "newBitmap":Landroid/graphics/Bitmap;
    goto :goto_47

    .line 113
    .end local v4    # "newBitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "qualityBitmap":Landroid/graphics/Bitmap;
    :catch_54
    move-exception v6

    goto :goto_2d

    .line 137
    .end local v5    # "qualityBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "newBitmap":Landroid/graphics/Bitmap;
    :catch_56
    move-exception v6

    goto :goto_4c
.end method

.method public static getBitmapByCompressSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 19
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 59
    .local v5, "measureOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v12, 0x1

    iput-boolean v12, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 60
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 61
    iget v11, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 62
    .local v11, "realWidth":I
    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 63
    .local v10, "realHeight":I
    const/4 v3, 0x1

    .line 64
    .local v3, "inSampleSize":I
    const/4 v12, 0x1

    move/from16 v0, p1

    if-le v0, v12, :cond_58

    const/4 v12, 0x1

    move/from16 v0, p2

    if-le v0, v12, :cond_58

    .line 65
    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v13, v13

    div-float v7, v12, v13

    .line 66
    .local v7, "minSideScale":F
    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-float v13, v13

    div-float v4, v12, v13

    .line 67
    .local v4, "maxSideScale":F
    div-int v12, v11, v10

    int-to-float v9, v12

    .line 68
    .local v9, "ratio":F
    const/high16 v12, 0x40000000    # 2.0f

    cmpl-float v12, v9, v12

    if-gtz v12, :cond_4a

    float-to-double v12, v9

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    cmpg-double v12, v12, v14

    if-gez v12, :cond_6b

    .line 70
    :cond_4a
    const/high16 v8, 0x3f800000    # 1.0f

    .line 71
    .local v8, "n":F
    :goto_4c
    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v12, v8

    cmpg-float v12, v12, v7

    if-gtz v12, :cond_57

    .line 72
    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v8, v12

    goto :goto_4c

    .line 74
    :cond_57
    float-to-int v3, v8

    .line 85
    .end local v4    # "maxSideScale":F
    .end local v7    # "minSideScale":F
    .end local v8    # "n":F
    .end local v9    # "ratio":F
    :cond_58
    :goto_58
    const/4 v12, 0x1

    if-ge v3, v12, :cond_5c

    .line 86
    const/4 v3, 0x1

    .line 89
    :cond_5c
    :goto_5c
    div-int v12, v11, v3

    sget v13, Lcom/mob/tools/utils/BitmapHelper;->maxBitmapWidth:I

    if-gt v12, v13, :cond_68

    div-int v12, v10, v3

    sget v13, Lcom/mob/tools/utils/BitmapHelper;->maxBitmapHeight:I

    if-le v12, v13, :cond_7e

    .line 90
    :cond_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    .line 77
    .restart local v4    # "maxSideScale":F
    .restart local v7    # "minSideScale":F
    .restart local v9    # "ratio":F
    :cond_6b
    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 78
    .local v6, "minScale":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 79
    .restart local v8    # "n":F
    :goto_71
    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v12, v8

    cmpg-float v12, v12, v6

    if-gtz v12, :cond_7c

    .line 80
    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v8, v12

    goto :goto_71

    .line 82
    :cond_7c
    float-to-int v3, v8

    goto :goto_58

    .line 92
    .end local v4    # "maxSideScale":F
    .end local v6    # "minScale":F
    .end local v7    # "minSideScale":F
    .end local v8    # "n":F
    .end local v9    # "ratio":F
    :cond_7e
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 93
    .local v2, "decodingOptions":Landroid/graphics/BitmapFactory$Options;
    sget-object v12, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v12, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 94
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 95
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    return-object v12
.end method

.method public static getBmpFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .registers 5
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 729
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 731
    .local v2, "pathLower":Ljava/lang/String;
    const-string v3, "png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 732
    :cond_14
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 744
    .local v0, "format":Landroid/graphics/Bitmap$CompressFormat;
    :goto_16
    return-object v0

    .line 733
    .end local v0    # "format":Landroid/graphics/Bitmap$CompressFormat;
    :cond_17
    const-string v3, "jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_37

    const-string v3, "jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_37

    const-string v3, "bmp"

    .line 734
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_37

    const-string v3, "tif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 735
    :cond_37
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .restart local v0    # "format":Landroid/graphics/Bitmap$CompressFormat;
    goto :goto_16

    .line 737
    .end local v0    # "format":Landroid/graphics/Bitmap$CompressFormat;
    :cond_3a
    invoke-static {p0}, Lcom/mob/tools/utils/BitmapHelper;->getMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 738
    .local v1, "mime":Ljava/lang/String;
    const-string v3, "png"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4e

    const-string v3, "gif"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 739
    :cond_4e
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .restart local v0    # "format":Landroid/graphics/Bitmap$CompressFormat;
    goto :goto_16

    .line 741
    .end local v0    # "format":Landroid/graphics/Bitmap$CompressFormat;
    :cond_51
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .restart local v0    # "format":Landroid/graphics/Bitmap$CompressFormat;
    goto :goto_16
.end method

.method public static getBmpFormat([B)Landroid/graphics/Bitmap$CompressFormat;
    .registers 4
    .param p0, "data"    # [B

    .prologue
    .line 719
    invoke-static {p0}, Lcom/mob/tools/utils/BitmapHelper;->getMime([B)Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, "mime":Ljava/lang/String;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 721
    .local v0, "format":Landroid/graphics/Bitmap$CompressFormat;
    if-eqz v1, :cond_1a

    const-string v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 722
    :cond_18
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 724
    :cond_1a
    return-object v0
.end method

.method private static getFileName(Lcom/mob/tools/network/HttpConnection;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p0, "conn"    # Lcom/mob/tools/network/HttpConnection;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 292
    const/4 v5, 0x0

    .line 295
    .local v5, "name":Ljava/lang/String;
    invoke-interface {p0}, Lcom/mob/tools/network/HttpConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    .line 296
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v4, :cond_5d

    .line 297
    const-string v10, "Content-Disposition"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 298
    .local v1, "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_5d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5d

    .line 299
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 300
    .local v9, "value":Ljava/lang/String;
    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 301
    .local v7, "parts":[Ljava/lang/String;
    array-length v11, v7

    const/4 v10, 0x0

    :goto_26
    if-ge v10, v11, :cond_5d

    aget-object v6, v7, v10

    .line 302
    .local v6, "part":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "filename"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5a

    .line 303
    const-string v12, "="

    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v5, v12, v13

    .line 304
    const-string v12, "\""

    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5a

    const-string v12, "\""

    invoke-virtual {v5, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5a

    .line 305
    const/4 v12, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 301
    :cond_5a
    add-int/lit8 v10, v10, 0x1

    goto :goto_26

    .line 313
    .end local v1    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "part":Ljava/lang/String;
    .end local v7    # "parts":[Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_5d
    if-nez v5, :cond_b3

    .line 314
    invoke-static {p1}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 315
    if-eqz v4, :cond_b3

    .line 316
    const-string v10, "Content-Type"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 317
    .restart local v1    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_b3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_b3

    .line 318
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 319
    .restart local v9    # "value":Ljava/lang/String;
    if-nez v9, :cond_b4

    const-string v9, ""

    .line 320
    :goto_80
    const-string v10, "image/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b9

    .line 321
    const-string v10, "image/"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 322
    .local v8, "type":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "jpeg"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ab

    const-string v8, "jpg"

    .end local v8    # "type":Ljava/lang/String;
    :cond_ab
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 341
    .end local v1    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "value":Ljava/lang/String;
    :cond_b3
    :goto_b3
    return-object v5

    .line 319
    .restart local v1    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "value":Ljava/lang/String;
    :cond_b4
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_80

    .line 325
    :cond_b9
    const/16 v10, 0x2f

    invoke-virtual {p1, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 326
    .local v2, "index":I
    const/4 v3, 0x0

    .line 327
    .local v3, "lastPart":Ljava/lang/String;
    if-lez v2, :cond_c8

    .line 328
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 330
    :cond_c8
    if-eqz v3, :cond_b3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_b3

    .line 331
    const/16 v10, 0x2e

    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 332
    .local v0, "dot":I
    if-lez v0, :cond_b3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v0

    const/16 v11, 0xa

    if-ge v10, v11, :cond_b3

    .line 333
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_b3
.end method

.method public static getMime(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 749
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 750
    .local v2, "fis":Ljava/io/FileInputStream;
    const/16 v3, 0x8

    new-array v0, v3, [B

    .line 751
    .local v0, "bytes":[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 752
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 753
    invoke-static {v0}, Lcom/mob/tools/utils/BitmapHelper;->getMime([B)Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v3

    .line 756
    .end local v0    # "bytes":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :goto_13
    return-object v3

    .line 754
    :catch_14
    move-exception v1

    .line 755
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 756
    const/4 v3, 0x0

    goto :goto_13
.end method

.method private static getMime([B)Ljava/lang/String;
    .registers 11
    .param p0, "bytes"    # [B

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x4

    .line 761
    new-array v2, v8, [B

    fill-array-data v2, :array_62

    .line 762
    .local v2, "jpeg":[B
    new-array v3, v8, [B

    fill-array-data v3, :array_68

    .line 763
    .local v3, "jpeg2":[B
    invoke-static {p0, v2}, Lcom/mob/tools/utils/BitmapHelper;->bytesStartWith([B[B)Z

    move-result v7

    if-nez v7, :cond_18

    invoke-static {p0, v3}, Lcom/mob/tools/utils/BitmapHelper;->bytesStartWith([B[B)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 764
    :cond_18
    const-string v7, "jpg"

    .line 788
    :goto_1a
    return-object v7

    .line 767
    :cond_1b
    new-array v4, v8, [B

    fill-array-data v4, :array_6e

    .line 768
    .local v4, "png":[B
    invoke-static {p0, v4}, Lcom/mob/tools/utils/BitmapHelper;->bytesStartWith([B[B)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 769
    const-string v7, "png"

    goto :goto_1a

    .line 772
    :cond_29
    const-string v7, "GIF"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 773
    .local v1, "gif":[B
    invoke-static {p0, v1}, Lcom/mob/tools/utils/BitmapHelper;->bytesStartWith([B[B)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 774
    const-string v7, "gif"

    goto :goto_1a

    .line 777
    :cond_38
    const-string v7, "BM"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 778
    .local v0, "bmp":[B
    invoke-static {p0, v0}, Lcom/mob/tools/utils/BitmapHelper;->bytesStartWith([B[B)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 779
    const-string v7, "bmp"

    goto :goto_1a

    .line 782
    :cond_47
    new-array v5, v9, [B

    fill-array-data v5, :array_74

    .line 783
    .local v5, "tiff":[B
    new-array v6, v9, [B

    fill-array-data v6, :array_7a

    .line 784
    .local v6, "tiff2":[B
    invoke-static {p0, v5}, Lcom/mob/tools/utils/BitmapHelper;->bytesStartWith([B[B)Z

    move-result v7

    if-nez v7, :cond_5d

    invoke-static {p0, v6}, Lcom/mob/tools/utils/BitmapHelper;->bytesStartWith([B[B)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 785
    :cond_5d
    const-string v7, "tif"

    goto :goto_1a

    .line 788
    :cond_60
    const/4 v7, 0x0

    goto :goto_1a

    .line 761
    :array_62
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
        -0x20t
    .end array-data

    .line 762
    :array_68
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
        -0x1ft
    .end array-data

    .line 767
    :array_6e
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
    .end array-data

    .line 782
    :array_74
    .array-data 1
        0x49t
        0x49t
        0x2at
    .end array-data

    .line 783
    :array_7a
    .array-data 1
        0x4dt
        0x4dt
        0x2at
    .end array-data
.end method

.method public static isBlackBitmap(Landroid/graphics/Bitmap;)Z
    .registers 13
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 829
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    move v2, v11

    .line 845
    :cond_b
    :goto_b
    return v2

    .line 833
    :cond_c
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 834
    .local v1, "pixels":[I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 835
    const/4 v10, 0x0

    .line 836
    .local v10, "rgb":I
    const/4 v8, 0x0

    .line 837
    .local v8, "found":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2c
    array-length v0, v1

    if-ge v9, v0, :cond_39

    .line 838
    aget v0, v1, v9

    const v3, 0xffffff

    and-int v10, v0, v3

    .line 839
    if-eqz v10, :cond_3d

    .line 840
    const/4 v8, 0x1

    .line 845
    :cond_39
    if-nez v8, :cond_b

    move v2, v11

    goto :goto_b

    .line 837
    :cond_3d
    add-int/lit8 v9, v9, 0x1

    goto :goto_2c
.end method

.method public static mixAlpha(II)I
    .registers 12
    .param p0, "frontARGB"    # I
    .param p1, "backRGB"    # I

    .prologue
    const/high16 v9, 0xff0000

    const v8, 0xff00

    .line 850
    ushr-int/lit8 v3, p0, 0x18

    .line 851
    .local v3, "fa":I
    and-int v7, v9, p0

    ushr-int/lit8 v6, v7, 0x10

    .line 852
    .local v6, "fr":I
    and-int v7, v8, p0

    ushr-int/lit8 v5, v7, 0x8

    .line 853
    .local v5, "fg":I
    and-int/lit16 v4, p0, 0xff

    .line 854
    .local v4, "fb":I
    and-int v7, v9, p1

    ushr-int/lit8 v2, v7, 0x10

    .line 855
    .local v2, "br":I
    and-int v7, v8, p1

    ushr-int/lit8 v1, v7, 0x8

    .line 856
    .local v1, "bg":I
    and-int/lit16 v0, p1, 0xff

    .line 858
    .local v0, "bb":I
    const/high16 v7, -0x1000000

    mul-int v8, v3, v6

    rsub-int v9, v3, 0xff

    mul-int/2addr v9, v2

    add-int/2addr v8, v9

    div-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    mul-int v8, v3, v5

    rsub-int v9, v3, 0xff

    mul-int/2addr v9, v1

    add-int/2addr v8, v9

    div-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    mul-int v8, v3, v4

    rsub-int v9, v3, 0xff

    mul-int/2addr v9, v0

    add-int/2addr v8, v9

    div-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    return v7
.end method

.method public static roundBitmap(Landroid/graphics/Bitmap;IIFFFF)Landroid/graphics/Bitmap;
    .registers 25
    .param p0, "orginal"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "leftTop"    # F
    .param p4, "rightTop"    # F
    .param p5, "rightBottom"    # F
    .param p6, "leftBottom"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 635
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 636
    .local v8, "oriWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 637
    .local v7, "oriHeight":I
    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 639
    .local v13, "src":Landroid/graphics/Rect;
    move/from16 v0, p1

    if-ne v8, v0, :cond_17

    move/from16 v0, p2

    if-eq v7, v0, :cond_98

    .line 640
    :cond_17
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 644
    .local v10, "output":Landroid/graphics/Bitmap;
    :goto_21
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 645
    .local v2, "canvas":Landroid/graphics/Canvas;
    const v3, -0xbdbdbe

    .line 646
    .local v3, "color":I
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 647
    .local v11, "paint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v5, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 648
    .local v5, "dst":Landroid/graphics/Rect;
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 649
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 650
    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 651
    const/16 v14, 0x8

    new-array v9, v14, [F

    const/4 v14, 0x0

    aput p3, v9, v14

    const/4 v14, 0x1

    aput p3, v9, v14

    const/4 v14, 0x2

    aput p4, v9, v14

    const/4 v14, 0x3

    aput p4, v9, v14

    const/4 v14, 0x4

    aput p5, v9, v14

    const/4 v14, 0x5

    aput p5, v9, v14

    const/4 v14, 0x6

    aput p6, v9, v14

    const/4 v14, 0x7

    aput p6, v9, v14

    .line 652
    .local v9, "outerRadii":[F
    new-instance v6, Landroid/graphics/RectF;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v6, v14, v15, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 653
    .local v6, "inset":Landroid/graphics/RectF;
    new-instance v12, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v12, v9, v6, v9}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 654
    .local v12, "shape":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v4, v12}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 655
    .local v4, "draweable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 656
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 657
    new-instance v14, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 658
    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v13, v5, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 659
    return-object v10

    .line 642
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "color":I
    .end local v4    # "draweable":Landroid/graphics/drawable/ShapeDrawable;
    .end local v5    # "dst":Landroid/graphics/Rect;
    .end local v6    # "inset":Landroid/graphics/RectF;
    .end local v9    # "outerRadii":[F
    .end local v10    # "output":Landroid/graphics/Bitmap;
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v12    # "shape":Landroid/graphics/drawable/shapes/RoundRectShape;
    :cond_98
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .restart local v10    # "output":Landroid/graphics/Bitmap;
    goto/16 :goto_21
.end method

.method public static saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 710
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x50

    invoke-static {p0, p1, v0, v1}, Lcom/mob/tools/utils/BitmapHelper;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Ljava/lang/String;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 696
    const-string v4, "images"

    invoke-static {p0, v4}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 697
    .local v2, "path":Ljava/lang/String;
    const-string v0, ".jpg"

    .line 698
    .local v0, "ext":Ljava/lang/String;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne p2, v4, :cond_e

    .line 699
    const-string v0, ".png"

    .line 701
    :cond_e
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    .local v3, "ss":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 703
    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p1, p2, p3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 704
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 705
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 706
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static saveBitmapByCompress(Ljava/lang/String;III)Ljava/lang/String;
    .registers 14
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I
    .param p3, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {p0, p1, p2}, Lcom/mob/tools/utils/BitmapHelper;->getBitmapByCompressSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 146
    .local v0, "compressedSizeBitmap":Landroid/graphics/Bitmap;
    const/16 v5, 0x64

    if-le p3, v5, :cond_50

    .line 147
    const/16 p3, 0x64

    .line 151
    :cond_a
    :goto_a
    invoke-static {p0}, Lcom/mob/tools/utils/BitmapHelper;->getBmpFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    .line 152
    .local v2, "format":Landroid/graphics/Bitmap$CompressFormat;
    const-string v1, ".jpg"

    .line 153
    .local v1, "extension":Ljava/lang/String;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v2, v5, :cond_16

    .line 154
    const-string v1, ".png"

    .line 156
    :cond_16
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .local v4, "newFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 158
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v0, v2, p3, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 160
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 161
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 162
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 148
    .end local v1    # "extension":Ljava/lang/String;
    .end local v2    # "format":Landroid/graphics/Bitmap$CompressFormat;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "newFile":Ljava/io/File;
    :cond_50
    const/16 v5, 0xa

    if-ge p3, v5, :cond_a

    .line 149
    const/16 p3, 0xa

    goto :goto_a
.end method

.method public static saveViewToImage(Landroid/view/View;)Ljava/lang/String;
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 346
    if-nez p0, :cond_4

    .line 356
    :cond_3
    :goto_3
    return-object v2

    .line 350
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 351
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 352
    .local v0, "height":I
    if-lez v1, :cond_3

    if-lez v0, :cond_3

    .line 356
    invoke-static {p0, v1, v0}, Lcom/mob/tools/utils/BitmapHelper;->saveViewToImage(Landroid/view/View;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method public static saveViewToImage(Landroid/view/View;II)Ljava/lang/String;
    .registers 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 361
    invoke-static {p0, p1, p2}, Lcom/mob/tools/utils/BitmapHelper;->captureView(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 362
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 363
    :cond_c
    const/4 v4, 0x0

    .line 373
    :goto_d
    return-object v4

    .line 366
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "screenshot"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .local v3, "ss":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 369
    .local v1, "fos":Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 370
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 371
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 373
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_d
.end method

.method public static scaleBitmapByHeight(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 866
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 867
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq p2, v3, :cond_19

    const/4 v2, 0x1

    .line 868
    .local v2, "rec":Z
    :goto_f
    invoke-static {v0, p2}, Lcom/mob/tools/utils/BitmapHelper;->scaleBitmapByHeight(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 869
    .local v1, "dst":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_18

    .line 870
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 872
    :cond_18
    return-object v1

    .line 867
    .end local v1    # "dst":Landroid/graphics/Bitmap;
    .end local v2    # "rec":Z
    :cond_19
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static scaleBitmapByHeight(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 876
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int v0, v1, v2

    .line 877
    .local v0, "width":I
    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method
