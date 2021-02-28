.class public Lcn/sharesdk/tencent/weibo/b;
.super Ljava/lang/Object;
.source "Cryptor.java"


# instance fields
.field private a:[B

.field private b:[B

.field private c:[B

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:[B

.field private i:Z

.field private j:I

.field private k:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/tencent/weibo/b;->i:Z

    .line 66
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/tencent/weibo/b;->k:Ljava/util/Random;

    return-void
.end method

.method public static a([BII)J
    .registers 10

    .prologue
    const/16 v6, 0x8

    .line 221
    const-wide/16 v2, 0x0

    .line 223
    if-le p2, v6, :cond_14

    .line 224
    add-int/lit8 v0, p1, 0x8

    .line 228
    :goto_8
    if-ge p1, v0, :cond_17

    .line 229
    shl-long/2addr v2, v6

    .line 230
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 228
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 226
    :cond_14
    add-int v0, p1, p2

    goto :goto_8

    .line 232
    :cond_17
    const-wide v0, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private a()V
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 561
    iput v6, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    :goto_5
    iget v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    if-ge v0, v7, :cond_38

    .line 562
    iget-boolean v0, p0, Lcn/sharesdk/tencent/weibo/b;->i:Z

    if-eqz v0, :cond_24

    .line 563
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/b;->a:[B

    iget v1, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    aget-byte v2, v0, v1

    iget-object v3, p0, Lcn/sharesdk/tencent/weibo/b;->b:[B

    iget v4, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 561
    :goto_1d
    iget v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    goto :goto_5

    .line 565
    :cond_24
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/b;->a:[B

    iget v1, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    aget-byte v2, v0, v1

    iget-object v3, p0, Lcn/sharesdk/tencent/weibo/b;->c:[B

    iget v4, p0, Lcn/sharesdk/tencent/weibo/b;->e:I

    iget v5, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    add-int/2addr v4, v5

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1d

    .line 569
    :cond_38
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/b;->a:[B

    invoke-direct {p0, v0}, Lcn/sharesdk/tencent/weibo/b;->a([B)[B

    move-result-object v0

    .line 571
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/b;->c:[B

    iget v2, p0, Lcn/sharesdk/tencent/weibo/b;->d:I

    invoke-static {v0, v6, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 574
    iput v6, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    :goto_47
    iget v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    if-ge v0, v7, :cond_65

    .line 575
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/b;->c:[B

    iget v1, p0, Lcn/sharesdk/tencent/weibo/b;->d:I

    iget v2, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    add-int/2addr v1, v2

    aget-byte v2, v0, v1

    iget-object v3, p0, Lcn/sharesdk/tencent/weibo/b;->b:[B

    iget v4, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 574
    iget v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    goto :goto_47

    .line 577
    :cond_65
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/b;->a:[B

    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/b;->b:[B

    invoke-static {v0, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 580
    iget v0, p0, Lcn/sharesdk/tencent/weibo/b;->d:I

    iput v0, p0, Lcn/sharesdk/tencent/weibo/b;->e:I

    .line 581
    iget v0, p0, Lcn/sharesdk/tencent/weibo/b;->d:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcn/sharesdk/tencent/weibo/b;->d:I

    .line 582
    iput v6, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    .line 583
    iput-boolean v6, p0, Lcn/sharesdk/tencent/weibo/b;->i:Z

    .line 584
    return-void
.end method

.method private a(I)[B
    .registers 4

    .prologue
    .line 669
    new-array v0, p1, [B

    .line 670
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/b;->k:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 671
    return-object v0
.end method

.method private a([B)[B
    .registers 26

    .prologue
    .line 451
    const/16 v8, 0x10

    .line 455
    const/4 v2, 0x0

    const/4 v3, 0x4

    :try_start_4
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcn/sharesdk/tencent/weibo/b;->a([BII)J

    move-result-wide v6

    .line 456
    const/4 v2, 0x4

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcn/sharesdk/tencent/weibo/b;->a([BII)J

    move-result-wide v4

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/sharesdk/tencent/weibo/b;->h:[B

    const/4 v3, 0x0

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcn/sharesdk/tencent/weibo/b;->a([BII)J

    move-result-wide v10

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/sharesdk/tencent/weibo/b;->h:[B

    const/4 v3, 0x4

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcn/sharesdk/tencent/weibo/b;->a([BII)J

    move-result-wide v12

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/sharesdk/tencent/weibo/b;->h:[B

    const/16 v3, 0x8

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcn/sharesdk/tencent/weibo/b;->a([BII)J

    move-result-wide v14

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/sharesdk/tencent/weibo/b;->h:[B

    const/16 v3, 0xc

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcn/sharesdk/tencent/weibo/b;->a([BII)J

    move-result-wide v16

    .line 463
    const-wide/16 v2, 0x0

    .line 464
    const-wide/32 v18, -0x61c88647

    .line 465
    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    .line 468
    :goto_48
    if-lez v8, :cond_88

    .line 469
    add-int/lit8 v8, v8, -0x1

    .line 470
    add-long v2, v2, v18

    .line 471
    const-wide v20, 0xffffffffL

    and-long v2, v2, v20

    .line 472
    const/4 v9, 0x4

    shl-long v20, v4, v9

    add-long v20, v20, v10

    add-long v22, v4, v2

    xor-long v20, v20, v22

    const/4 v9, 0x5

    ushr-long v22, v4, v9

    add-long v22, v22, v12

    xor-long v20, v20, v22

    add-long v6, v6, v20

    .line 473
    const-wide v20, 0xffffffffL

    and-long v6, v6, v20

    .line 474
    const/4 v9, 0x4

    shl-long v20, v6, v9

    add-long v20, v20, v14

    add-long v22, v6, v2

    xor-long v20, v20, v22

    const/4 v9, 0x5

    ushr-long v22, v6, v9

    add-long v22, v22, v16

    xor-long v20, v20, v22

    add-long v4, v4, v20

    .line 475
    const-wide v20, 0xffffffffL

    and-long v4, v4, v20

    goto :goto_48

    .line 479
    :cond_88
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 480
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 481
    long-to-int v6, v6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 482
    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 483
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 484
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a2} :catch_a4

    move-result-object v2

    .line 486
    :goto_a3
    return-object v2

    .line 485
    :catch_a4
    move-exception v2

    .line 486
    const/4 v2, 0x0

    goto :goto_a3
.end method

.method private a([BI)[B
    .registers 27

    .prologue
    .line 502
    const/16 v8, 0x10

    .line 506
    const/4 v2, 0x4

    :try_start_3
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcn/sharesdk/tencent/weibo/b;->a([BII)J

    move-result-wide v6

    .line 507
    add-int/lit8 v2, p2, 0x4

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcn/sharesdk/tencent/weibo/b;->a([BII)J

    move-result-wide v4

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/sharesdk/tencent/weibo/b;->h:[B

    const/4 v3, 0x0

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcn/sharesdk/tencent/weibo/b;->a([BII)J

    move-result-wide v10

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/sharesdk/tencent/weibo/b;->h:[B

    const/4 v3, 0x4

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcn/sharesdk/tencent/weibo/b;->a([BII)J

    move-result-wide v12

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/sharesdk/tencent/weibo/b;->h:[B

    const/16 v3, 0x8

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcn/sharesdk/tencent/weibo/b;->a([BII)J

    move-result-wide v14

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/sharesdk/tencent/weibo/b;->h:[B

    const/16 v3, 0xc

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcn/sharesdk/tencent/weibo/b;->a([BII)J

    move-result-wide v16

    .line 516
    const-wide/32 v2, -0x1c886470

    .line 517
    const-wide v18, 0xffffffffL

    and-long v2, v2, v18

    .line 518
    const-wide/32 v18, -0x61c88647

    .line 519
    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    .line 522
    :goto_52
    if-lez v8, :cond_92

    .line 523
    add-int/lit8 v8, v8, -0x1

    .line 524
    const/4 v9, 0x4

    shl-long v20, v6, v9

    add-long v20, v20, v14

    add-long v22, v6, v2

    xor-long v20, v20, v22

    const/4 v9, 0x5

    ushr-long v22, v6, v9

    add-long v22, v22, v16

    xor-long v20, v20, v22

    sub-long v4, v4, v20

    .line 525
    const-wide v20, 0xffffffffL

    and-long v4, v4, v20

    .line 526
    const/4 v9, 0x4

    shl-long v20, v4, v9

    add-long v20, v20, v10

    add-long v22, v4, v2

    xor-long v20, v20, v22

    const/4 v9, 0x5

    ushr-long v22, v4, v9

    add-long v22, v22, v12

    xor-long v20, v20, v22

    sub-long v6, v6, v20

    .line 527
    const-wide v20, 0xffffffffL

    and-long v6, v6, v20

    .line 528
    sub-long v2, v2, v18

    .line 529
    const-wide v20, 0xffffffffL

    and-long v2, v2, v20

    goto :goto_52

    .line 533
    :cond_92
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 534
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 535
    long-to-int v6, v6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 536
    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 537
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 538
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_ac} :catch_ae

    move-result-object v2

    .line 540
    :goto_ad
    return-object v2

    .line 539
    :catch_ae
    move-exception v2

    .line 540
    const/4 v2, 0x0

    goto :goto_ad
.end method

.method private b()I
    .registers 2

    .prologue
    .line 645
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/b;->k:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method private b([BII)Z
    .registers 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 599
    iput v1, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    :goto_4
    iget v2, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_2b

    .line 600
    iget v2, p0, Lcn/sharesdk/tencent/weibo/b;->j:I

    iget v3, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    add-int/2addr v2, v3

    if-lt v2, p3, :cond_12

    .line 618
    :goto_11
    return v0

    .line 603
    :cond_12
    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/b;->b:[B

    iget v3, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    aget-byte v4, v2, v3

    iget v5, p0, Lcn/sharesdk/tencent/weibo/b;->d:I

    add-int/2addr v5, p2

    iget v6, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    add-int/2addr v5, v6

    aget-byte v5, p1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 599
    iget v2, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    goto :goto_4

    .line 607
    :cond_2b
    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/b;->b:[B

    invoke-direct {p0, v2}, Lcn/sharesdk/tencent/weibo/b;->b([B)[B

    move-result-object v2

    iput-object v2, p0, Lcn/sharesdk/tencent/weibo/b;->b:[B

    .line 608
    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/b;->b:[B

    if-nez v2, :cond_39

    move v0, v1

    .line 609
    goto :goto_11

    .line 615
    :cond_39
    iget v2, p0, Lcn/sharesdk/tencent/weibo/b;->j:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcn/sharesdk/tencent/weibo/b;->j:I

    .line 616
    iget v2, p0, Lcn/sharesdk/tencent/weibo/b;->d:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcn/sharesdk/tencent/weibo/b;->d:I

    .line 617
    iput v1, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    goto :goto_11
.end method

.method private b([B)[B
    .registers 3

    .prologue
    .line 552
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/sharesdk/tencent/weibo/b;->a([BI)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a([BII[B)[B
    .registers 16

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v8, 0x8

    .line 236
    iput v2, p0, Lcn/sharesdk/tencent/weibo/b;->e:I

    iput v2, p0, Lcn/sharesdk/tencent/weibo/b;->d:I

    .line 237
    iput-object p4, p0, Lcn/sharesdk/tencent/weibo/b;->h:[B

    .line 239
    add-int/lit8 v0, p2, 0x8

    new-array v1, v0, [B

    .line 242
    rem-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_17

    const/16 v0, 0x10

    if-ge p3, v0, :cond_19

    :cond_17
    move-object v0, v3

    .line 325
    :goto_18
    return-object v0

    .line 246
    :cond_19
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/tencent/weibo/b;->a([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/weibo/b;->b:[B

    .line 247
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/b;->b:[B

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    .line 249
    iget v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    sub-int v0, p3, v0

    add-int/lit8 v4, v0, -0xa

    .line 251
    if-gez v4, :cond_31

    move-object v0, v3

    .line 252
    goto :goto_18

    :cond_31
    move v0, p2

    .line 257
    :goto_32
    array-length v5, v1

    if-ge v0, v5, :cond_3a

    .line 258
    aput-byte v2, v1, v0

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 261
    :cond_3a
    new-array v0, v4, [B

    iput-object v0, p0, Lcn/sharesdk/tencent/weibo/b;->c:[B

    .line 263
    iput v2, p0, Lcn/sharesdk/tencent/weibo/b;->e:I

    .line 265
    iput v8, p0, Lcn/sharesdk/tencent/weibo/b;->d:I

    .line 267
    iput v8, p0, Lcn/sharesdk/tencent/weibo/b;->j:I

    .line 269
    iget v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    .line 275
    iput v9, p0, Lcn/sharesdk/tencent/weibo/b;->g:I

    move-object v0, v1

    .line 276
    :cond_4d
    :goto_4d
    iget v1, p0, Lcn/sharesdk/tencent/weibo/b;->g:I

    const/4 v5, 0x2

    if-gt v1, v5, :cond_6e

    .line 277
    iget v1, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    if-ge v1, v8, :cond_62

    .line 278
    iget v1, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    .line 279
    iget v1, p0, Lcn/sharesdk/tencent/weibo/b;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/sharesdk/tencent/weibo/b;->g:I

    .line 281
    :cond_62
    iget v1, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    if-ne v1, v8, :cond_4d

    .line 283
    invoke-direct {p0, p1, p2, p3}, Lcn/sharesdk/tencent/weibo/b;->b([BII)Z

    move-result v0

    if-nez v0, :cond_ed

    move-object v0, v3

    .line 284
    goto :goto_18

    :cond_6e
    move v1, v4

    move-object v10, v0

    move v0, v2

    move-object v2, v10

    .line 292
    :cond_72
    :goto_72
    if-eqz v1, :cond_a9

    .line 293
    iget v4, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    if-ge v4, v8, :cond_96

    .line 294
    iget-object v4, p0, Lcn/sharesdk/tencent/weibo/b;->c:[B

    iget v5, p0, Lcn/sharesdk/tencent/weibo/b;->e:I

    add-int/2addr v5, p2

    iget v6, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    add-int/2addr v5, v6

    aget-byte v5, v2, v5

    iget-object v6, p0, Lcn/sharesdk/tencent/weibo/b;->b:[B

    iget v7, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    aget-byte v6, v6, v7

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    .line 295
    add-int/lit8 v0, v0, 0x1

    .line 296
    add-int/lit8 v1, v1, -0x1

    .line 297
    iget v4, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    .line 299
    :cond_96
    iget v4, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    if-ne v4, v8, :cond_72

    .line 301
    iget v2, p0, Lcn/sharesdk/tencent/weibo/b;->d:I

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcn/sharesdk/tencent/weibo/b;->e:I

    .line 302
    invoke-direct {p0, p1, p2, p3}, Lcn/sharesdk/tencent/weibo/b;->b([BII)Z

    move-result v2

    if-nez v2, :cond_eb

    move-object v0, v3

    .line 303
    goto/16 :goto_18

    .line 310
    :cond_a9
    iput v9, p0, Lcn/sharesdk/tencent/weibo/b;->g:I

    move-object v0, v2

    :goto_ac
    iget v1, p0, Lcn/sharesdk/tencent/weibo/b;->g:I

    if-ge v1, v8, :cond_e7

    .line 311
    iget v1, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    if-ge v1, v8, :cond_ce

    .line 312
    iget v1, p0, Lcn/sharesdk/tencent/weibo/b;->e:I

    add-int/2addr v1, p2

    iget v2, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    add-int/2addr v1, v2

    aget-byte v1, v0, v1

    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/b;->b:[B

    iget v4, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    aget-byte v2, v2, v4

    xor-int/2addr v1, v2

    if-eqz v1, :cond_c8

    move-object v0, v3

    .line 313
    goto/16 :goto_18

    .line 315
    :cond_c8
    iget v1, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    .line 317
    :cond_ce
    iget v1, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    if-ne v1, v8, :cond_e0

    .line 319
    iget v0, p0, Lcn/sharesdk/tencent/weibo/b;->d:I

    iput v0, p0, Lcn/sharesdk/tencent/weibo/b;->e:I

    .line 320
    invoke-direct {p0, p1, p2, p3}, Lcn/sharesdk/tencent/weibo/b;->b([BII)Z

    move-result v0

    if-nez v0, :cond_df

    move-object v0, v3

    .line 321
    goto/16 :goto_18

    :cond_df
    move-object v0, p1

    .line 310
    :cond_e0
    iget v1, p0, Lcn/sharesdk/tencent/weibo/b;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/sharesdk/tencent/weibo/b;->g:I

    goto :goto_ac

    .line 325
    :cond_e7
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/b;->c:[B

    goto/16 :goto_18

    :cond_eb
    move-object v2, p1

    goto :goto_72

    :cond_ed
    move-object v0, p1

    goto/16 :goto_4d
.end method

.method public a([B[B)[B
    .registers 5

    .prologue
    .line 438
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcn/sharesdk/tencent/weibo/b;->b([BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public a([B[BI)[B
    .registers 6

    .prologue
    .line 659
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcn/sharesdk/tencent/weibo/b;->a([BII[B)[B

    move-result-object v0

    .line 660
    if-nez v0, :cond_c

    invoke-direct {p0, p3}, Lcn/sharesdk/tencent/weibo/b;->a(I)[B

    move-result-object v0

    :cond_c
    return-object v0
.end method

.method public b([BII[B)[B
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v7, 0x8

    .line 356
    new-array v0, v7, [B

    iput-object v0, p0, Lcn/sharesdk/tencent/weibo/b;->a:[B

    .line 357
    new-array v0, v7, [B

    iput-object v0, p0, Lcn/sharesdk/tencent/weibo/b;->b:[B

    .line 358
    iput v1, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    .line 359
    iput v3, p0, Lcn/sharesdk/tencent/weibo/b;->g:I

    .line 360
    iput v3, p0, Lcn/sharesdk/tencent/weibo/b;->e:I

    iput v3, p0, Lcn/sharesdk/tencent/weibo/b;->d:I

    .line 361
    iput-object p4, p0, Lcn/sharesdk/tencent/weibo/b;->h:[B

    .line 362
    iput-boolean v1, p0, Lcn/sharesdk/tencent/weibo/b;->i:Z

    .line 365
    add-int/lit8 v0, p3, 0xa

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    .line 366
    iget v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    if-eqz v0, :cond_28

    .line 367
    iget v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    rsub-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    .line 370
    :cond_28
    iget v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/sharesdk/tencent/weibo/b;->c:[B

    .line 373
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/b;->a:[B

    invoke-direct {p0}, Lcn/sharesdk/tencent/weibo/b;->b()I

    move-result v2

    and-int/lit16 v2, v2, 0xf8

    iget v4, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    move v0, v1

    .line 376
    :goto_40
    iget v2, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    if-gt v0, v2, :cond_52

    .line 377
    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/b;->a:[B

    invoke-direct {p0}, Lcn/sharesdk/tencent/weibo/b;->b()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 379
    :cond_52
    iget v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    move v0, v3

    .line 381
    :goto_59
    if-ge v0, v7, :cond_62

    .line 382
    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/b;->b:[B

    aput-byte v3, v2, v0

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 386
    :cond_62
    iput v1, p0, Lcn/sharesdk/tencent/weibo/b;->g:I

    .line 387
    :cond_64
    :goto_64
    iget v0, p0, Lcn/sharesdk/tencent/weibo/b;->g:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_8e

    .line 388
    iget v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    if-ge v0, v7, :cond_86

    .line 389
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/b;->a:[B

    iget v2, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    invoke-direct {p0}, Lcn/sharesdk/tencent/weibo/b;->b()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 390
    iget v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    .line 391
    iget v0, p0, Lcn/sharesdk/tencent/weibo/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/sharesdk/tencent/weibo/b;->g:I

    .line 393
    :cond_86
    iget v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    if-ne v0, v7, :cond_64

    .line 394
    invoke-direct {p0}, Lcn/sharesdk/tencent/weibo/b;->a()V

    goto :goto_64

    :cond_8e
    move v0, p2

    move v2, p3

    .line 400
    :cond_90
    :goto_90
    if-lez v2, :cond_b0

    .line 401
    iget v4, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    if-ge v4, v7, :cond_a8

    .line 402
    iget-object v4, p0, Lcn/sharesdk/tencent/weibo/b;->a:[B

    iget v5, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    aget-byte v6, p1, v0

    aput-byte v6, v4, v5

    .line 403
    iget v4, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    .line 404
    add-int/lit8 v0, v0, 0x1

    .line 405
    add-int/lit8 v2, v2, -0x1

    .line 407
    :cond_a8
    iget v4, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    if-ne v4, v7, :cond_90

    .line 408
    invoke-direct {p0}, Lcn/sharesdk/tencent/weibo/b;->a()V

    goto :goto_90

    .line 413
    :cond_b0
    iput v1, p0, Lcn/sharesdk/tencent/weibo/b;->g:I

    .line 414
    :cond_b2
    :goto_b2
    iget v0, p0, Lcn/sharesdk/tencent/weibo/b;->g:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_d5

    .line 415
    iget v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    if-ge v0, v7, :cond_cd

    .line 416
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/b;->a:[B

    iget v1, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    aput-byte v3, v0, v1

    .line 417
    iget v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    .line 418
    iget v0, p0, Lcn/sharesdk/tencent/weibo/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/sharesdk/tencent/weibo/b;->g:I

    .line 420
    :cond_cd
    iget v0, p0, Lcn/sharesdk/tencent/weibo/b;->f:I

    if-ne v0, v7, :cond_b2

    .line 421
    invoke-direct {p0}, Lcn/sharesdk/tencent/weibo/b;->a()V

    goto :goto_b2

    .line 425
    :cond_d5
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/b;->c:[B

    return-object v0
.end method
