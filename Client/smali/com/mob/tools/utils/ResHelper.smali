.class public Lcom/mob/tools/utils/ResHelper;
.super Ljava/lang/Object;
.source "ResHelper.java"


# static fields
.field private static density:F

.field private static deviceWidth:I

.field private static mediaUri:Landroid/net/Uri;

.field private static rp:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 1
    .param p0, "x0"    # Landroid/net/Uri;

    .prologue
    .line 37
    sput-object p0, Lcom/mob/tools/utils/ResHelper;->mediaUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static clearCache(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 264
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, "cacheFolder":Ljava/io/File;
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V

    .line 267
    return-void
.end method

.method public static contentUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 486
    if-nez p1, :cond_5

    .line 487
    const/16 v17, 0x0

    .line 529
    :cond_4
    :goto_4
    return-object v17

    .line 490
    :cond_5
    new-instance v1, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 491
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    goto :goto_4

    .line 494
    :cond_19
    const/16 v17, 0x0

    .line 496
    .local v17, "path":Ljava/lang/String;
    const/4 v12, 0x0

    .line 497
    .local v12, "c":Landroid/database/Cursor;
    :try_start_1c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_a0

    .line 498
    const-string v1, "android.provider.DocumentsContract"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 499
    .local v13, "clzDocumentsContract":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "isDocumentUri"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v2, v6

    const/4 v6, 0x1

    const-class v7, Landroid/net/Uri;

    aput-object v7, v2, v6

    invoke-virtual {v13, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    .line 500
    .local v16, "isDocumentUri":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 501
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 502
    const-string v1, "getDocumentId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/net/Uri;

    aput-object v7, v2, v6

    invoke-virtual {v13, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 503
    .local v14, "getDocumentId":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 504
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v2, v6

    invoke-virtual {v14, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 505
    .local v19, "wholeID":Ljava/lang/String;
    const-string v1, ":"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v15, v1, v2

    .line 506
    .local v15, "id":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v3, v1

    .line 507
    .local v3, "column":[Ljava/lang/String;
    const-string v4, "_id=?"

    .line 508
    .local v4, "sel":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v15, v5, v1

    .line 509
    .local v5, "args":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 514
    .end local v3    # "column":[Ljava/lang/String;
    .end local v4    # "sel":Ljava/lang/String;
    .end local v5    # "args":[Ljava/lang/String;
    .end local v13    # "clzDocumentsContract":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "getDocumentId":Ljava/lang/reflect/Method;
    .end local v15    # "id":Ljava/lang/String;
    .end local v16    # "isDocumentUri":Ljava/lang/reflect/Method;
    .end local v19    # "wholeID":Ljava/lang/String;
    :cond_a0
    if-nez v12, :cond_b0

    .line 515
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 518
    :cond_b0
    if-eqz v12, :cond_4

    .line 519
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 520
    const-string v1, "_data"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 522
    :cond_c2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_c5} :catch_c7

    goto/16 :goto_4

    .line 524
    :catch_c7
    move-exception v18

    .line 525
    .local v18, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 526
    const/16 v17, 0x0

    goto/16 :goto_4
.end method

.method public static copyFile(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)V
    .registers 5
    .param p0, "src"    # Ljava/io/FileInputStream;
    .param p1, "dst"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 886
    const/high16 v2, 0x10000

    new-array v0, v2, [B

    .line 887
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 888
    .local v1, "len":I
    :goto_8
    if-lez v1, :cond_13

    .line 889
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 890
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    goto :goto_8

    .line 892
    :cond_13
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 893
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 894
    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "fromFilePath"    # Ljava/lang/String;
    .param p1, "toFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 869
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 882
    :cond_d
    :goto_d
    return v3

    .line 871
    :cond_e
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 876
    :try_start_19
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 877
    .local v1, "fisfrom":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 878
    .local v2, "fosto":Ljava/io/FileOutputStream;
    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->copyFile(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_26} :catch_28

    .line 882
    const/4 v3, 0x1

    goto :goto_d

    .line 879
    .end local v1    # "fisfrom":Ljava/io/FileInputStream;
    .end local v2    # "fosto":Ljava/io/FileOutputStream;
    :catch_28
    move-exception v0

    .line 880
    .local v0, "e":Ljava/lang/Throwable;
    goto :goto_d
.end method

.method public static covertTimeInYears(J)[I
    .registers 14
    .param p0, "time"    # J

    .prologue
    const-wide/16 v10, 0xc

    const-wide/16 v8, 0x3c

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, p0

    .line 424
    .local v0, "delta":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_19

    .line 425
    new-array v2, v4, [I

    fill-array-data v2, :array_70

    .line 454
    :goto_18
    return-object v2

    .line 428
    :cond_19
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 429
    cmp-long v2, v0, v8

    if-gez v2, :cond_28

    .line 430
    new-array v2, v4, [I

    long-to-int v3, v0

    aput v3, v2, v5

    aput v5, v2, v6

    goto :goto_18

    .line 433
    :cond_28
    div-long/2addr v0, v8

    .line 434
    cmp-long v2, v0, v8

    if-gez v2, :cond_35

    .line 435
    new-array v2, v4, [I

    long-to-int v3, v0

    aput v3, v2, v5

    aput v6, v2, v6

    goto :goto_18

    .line 438
    :cond_35
    div-long/2addr v0, v8

    .line 439
    const-wide/16 v2, 0x18

    cmp-long v2, v0, v2

    if-gez v2, :cond_44

    .line 440
    new-array v2, v4, [I

    long-to-int v3, v0

    aput v3, v2, v5

    aput v4, v2, v6

    goto :goto_18

    .line 443
    :cond_44
    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    .line 444
    const-wide/16 v2, 0x1e

    cmp-long v2, v0, v2

    if-gez v2, :cond_56

    .line 445
    new-array v2, v4, [I

    long-to-int v3, v0

    aput v3, v2, v5

    const/4 v3, 0x3

    aput v3, v2, v6

    goto :goto_18

    .line 448
    :cond_56
    const-wide/16 v2, 0x1e

    div-long/2addr v0, v2

    .line 449
    cmp-long v2, v0, v10

    if-gez v2, :cond_66

    .line 450
    new-array v2, v4, [I

    long-to-int v3, v0

    aput v3, v2, v5

    const/4 v3, 0x4

    aput v3, v2, v6

    goto :goto_18

    .line 453
    :cond_66
    div-long/2addr v0, v10

    .line 454
    new-array v2, v4, [I

    long-to-int v3, v0

    aput v3, v2, v5

    const/4 v3, 0x5

    aput v3, v2, v6

    goto :goto_18

    .line 425
    :array_70
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static dateStrToLong(Ljava/lang/String;)J
    .registers 7
    .param p0, "strDate"    # Ljava/lang/String;

    .prologue
    .line 363
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 365
    .local v1, "pos":Ljava/text/ParsePosition;
    invoke-virtual {v0, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 366
    .local v2, "strtodate":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    return-wide v4
.end method

.method public static dateToLong(Ljava/lang/String;)J
    .registers 7
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 399
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    .line 400
    .local v1, "d":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 401
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 402
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_11

    move-result-wide v4

    .line 407
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "d":Ljava/util/Date;
    :goto_10
    return-wide v4

    .line 403
    :catch_11
    move-exception v2

    .line 404
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 407
    const-wide/16 v4, 0x0

    goto :goto_10
.end method

.method public static decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 11
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 658
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 659
    .local v2, "params":Landroid/os/Bundle;
    if-eqz p0, :cond_41

    .line 660
    const-string v4, "&"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "array":[Ljava/lang/String;
    array-length v6, v0

    move v4, v5

    :goto_11
    if-ge v4, v6, :cond_41

    aget-object v1, v0, v4

    .line 662
    .local v1, "parameter":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 663
    .local v3, "v":[Ljava/lang/String;
    array-length v7, v3

    const/4 v8, 0x2

    if-lt v7, v8, :cond_23

    aget-object v7, v3, v9

    if-nez v7, :cond_31

    .line 664
    :cond_23
    aget-object v7, v3, v5

    invoke-static {v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    :goto_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 666
    :cond_31
    aget-object v7, v3, v5

    invoke-static {v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aget-object v8, v3, v9

    invoke-static {v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 670
    .end local v0    # "array":[Ljava/lang/String;
    .end local v1    # "parameter":Ljava/lang/String;
    .end local v3    # "v":[Ljava/lang/String;
    :cond_41
    return-object v2
.end method

.method public static deleteFileAndFolder(Ljava/io/File;)V
    .registers 7
    .param p0, "folder"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 295
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_9

    .line 320
    :cond_8
    :goto_8
    return-void

    .line 299
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 300
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_8

    .line 304
    :cond_13
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "names":[Ljava/lang/String;
    if-eqz v2, :cond_1c

    array-length v3, v2

    if-gtz v3, :cond_20

    .line 306
    :cond_1c
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_8

    .line 310
    :cond_20
    array-length v4, v2

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v4, :cond_3b

    aget-object v1, v2, v3

    .line 311
    .local v1, "name":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 312
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 313
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V

    .line 310
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 315
    :cond_37
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_34

    .line 319
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "name":Ljava/lang/String;
    :cond_3b
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_8
.end method

.method public static deleteFilesInFolder(Ljava/io/File;)V
    .registers 7
    .param p0, "folder"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 270
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_9

    .line 292
    :cond_8
    :goto_8
    return-void

    .line 274
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 275
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_8

    .line 279
    :cond_13
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "names":[Ljava/lang/String;
    if-eqz v2, :cond_8

    array-length v3, v2

    if-lez v3, :cond_8

    .line 284
    array-length v4, v2

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v4, :cond_8

    aget-object v1, v2, v3

    .line 285
    .local v1, "name":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 286
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 287
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->deleteFilesInFolder(Ljava/io/File;)V

    .line 284
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 289
    :cond_33
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_30
.end method

.method public static designToDevice(Landroid/content/Context;FI)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "designScreenDensity"    # F
    .param p2, "designPx"    # I

    .prologue
    .line 66
    sget v0, Lcom/mob/tools/utils/ResHelper;->density:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_13

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/mob/tools/utils/ResHelper;->density:F

    .line 69
    :cond_13
    int-to-float v0, p2

    sget v1, Lcom/mob/tools/utils/ResHelper;->density:F

    mul-float/2addr v0, v1

    div-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static designToDevice(Landroid/content/Context;II)I
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "designScreenWidth"    # I
    .param p2, "designPx"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    sget v1, Lcom/mob/tools/utils/ResHelper;->deviceWidth:I

    if-nez v1, :cond_14

    .line 59
    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    .line 60
    .local v0, "scrSize":[I
    aget v1, v0, v3

    aget v2, v0, v4

    if-ge v1, v2, :cond_20

    aget v1, v0, v3

    :goto_12
    sput v1, Lcom/mob/tools/utils/ResHelper;->deviceWidth:I

    .line 62
    .end local v0    # "scrSize":[I
    :cond_14
    int-to-float v1, p2

    sget v2, Lcom/mob/tools/utils/ResHelper;->deviceWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    int-to-float v2, p1

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    .line 60
    .restart local v0    # "scrSize":[I
    :cond_20
    aget v1, v0, v4

    goto :goto_12
.end method

.method public static dipToPx(Landroid/content/Context;I)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dip"    # I

    .prologue
    .line 44
    sget v0, Lcom/mob/tools/utils/ResHelper;->density:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_13

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/mob/tools/utils/ResHelper;->density:F

    .line 47
    :cond_13
    int-to-float v0, p1

    sget v1, Lcom/mob/tools/utils/ResHelper;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 8
    .param p0, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 588
    if-nez p0, :cond_5

    .line 589
    const-string v4, ""

    .line 607
    :goto_4
    return-object v4

    .line 592
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 593
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 594
    .local v0, "first":Z
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 595
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 596
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_27

    .line 597
    const-string v3, ""

    .line 600
    .end local v3    # "value":Ljava/lang/Object;
    :cond_27
    if-eqz v0, :cond_51

    .line 601
    const/4 v0, 0x0

    .line 605
    :goto_2a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 603
    :cond_51
    const-string v5, "&"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 607
    .end local v1    # "key":Ljava/lang/String;
    :cond_57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4
.end method

.method public static encodeUrl(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 611
    .local p0, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    if-nez p0, :cond_4

    .line 612
    const/4 v5, 0x0

    .line 633
    :goto_3
    return-object v5

    .line 615
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 617
    .local v0, "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mob/tools/network/KVPair;

    .line 618
    .local v2, "pair":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    if-lez v0, :cond_21

    .line 619
    const/16 v6, 0x26

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 622
    :cond_21
    iget-object v1, v2, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    .line 623
    .local v1, "key":Ljava/lang/String;
    iget-object v4, v2, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 624
    .local v4, "value":Ljava/lang/String;
    if-eqz v1, :cond_e

    .line 627
    if-nez v4, :cond_2d

    .line 628
    const-string v4, ""

    .line 630
    :cond_2d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    add-int/lit8 v0, v0, 0x1

    .line 632
    goto :goto_e

    .line 633
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "pair":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .end local v4    # "value":Ljava/lang/String;
    :cond_52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static forceCast(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 719
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "defValue":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 724
    if-nez p0, :cond_5

    .line 850
    .end local p1    # "defValue":Ljava/lang/Object;, "TT;"
    :goto_4
    return-object p1

    .line 728
    .restart local p1    # "defValue":Ljava/lang/Object;, "TT;"
    :cond_5
    instance-of v2, p0, Ljava/lang/Byte;

    if-eqz v2, :cond_59

    move-object v2, p0

    .line 729
    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 730
    .local v0, "value":B
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1e

    .line 731
    if-eqz v0, :cond_1c

    move v2, v3

    :goto_17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_4

    :cond_1c
    move v2, v4

    goto :goto_17

    .line 732
    :cond_1e
    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_28

    .line 733
    int-to-short v2, v0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_4

    .line 734
    :cond_28
    instance-of v2, p1, Ljava/lang/Character;

    if-eqz v2, :cond_32

    .line 735
    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto :goto_4

    .line 736
    :cond_32
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_3b

    .line 737
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_4

    .line 738
    :cond_3b
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_45

    .line 739
    int-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_4

    .line 740
    :cond_45
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_4f

    .line 741
    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_4

    .line 742
    :cond_4f
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_28a

    .line 743
    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_4

    .line 745
    .end local v0    # "value":B
    :cond_59
    instance-of v2, p0, Ljava/lang/Character;

    if-eqz v2, :cond_b0

    move-object v2, p0

    .line 746
    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 747
    .local v0, "value":C
    instance-of v2, p1, Ljava/lang/Byte;

    if-eqz v2, :cond_6e

    .line 748
    int-to-byte v2, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_4

    .line 749
    :cond_6e
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_7b

    .line 750
    if-eqz v0, :cond_79

    :goto_74
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_4

    :cond_79
    move v3, v4

    goto :goto_74

    .line 751
    :cond_7b
    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_85

    .line 752
    int-to-short v2, v0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_4

    .line 753
    :cond_85
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_8f

    .line 754
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 755
    :cond_8f
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_9a

    .line 756
    int-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_4

    .line 757
    :cond_9a
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_a5

    .line 758
    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto/16 :goto_4

    .line 759
    :cond_a5
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_28a

    .line 760
    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_4

    .line 762
    .end local v0    # "value":C
    :cond_b0
    instance-of v2, p0, Ljava/lang/Short;

    if-eqz v2, :cond_10a

    move-object v2, p0

    .line 763
    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 764
    .local v0, "value":S
    instance-of v2, p1, Ljava/lang/Byte;

    if-eqz v2, :cond_c6

    .line 765
    int-to-byte v2, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto/16 :goto_4

    .line 766
    :cond_c6
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_d4

    .line 767
    if-eqz v0, :cond_d2

    :goto_cc
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    :cond_d2
    move v3, v4

    goto :goto_cc

    .line 768
    :cond_d4
    instance-of v2, p1, Ljava/lang/Character;

    if-eqz v2, :cond_df

    .line 769
    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto/16 :goto_4

    .line 770
    :cond_df
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_e9

    .line 771
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 772
    :cond_e9
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_f4

    .line 773
    int-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_4

    .line 774
    :cond_f4
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_ff

    .line 775
    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto/16 :goto_4

    .line 776
    :cond_ff
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_28a

    .line 777
    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_4

    .line 779
    .end local v0    # "value":S
    :cond_10a
    instance-of v2, p0, Ljava/lang/Integer;

    if-eqz v2, :cond_165

    move-object v2, p0

    .line 780
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 781
    .local v0, "value":I
    instance-of v2, p1, Ljava/lang/Byte;

    if-eqz v2, :cond_120

    .line 782
    int-to-byte v2, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto/16 :goto_4

    .line 783
    :cond_120
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_12e

    .line 784
    if-eqz v0, :cond_12c

    :goto_126
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    :cond_12c
    move v3, v4

    goto :goto_126

    .line 785
    :cond_12e
    instance-of v2, p1, Ljava/lang/Character;

    if-eqz v2, :cond_139

    .line 786
    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto/16 :goto_4

    .line 787
    :cond_139
    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_144

    .line 788
    int-to-short v2, v0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto/16 :goto_4

    .line 789
    :cond_144
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_14f

    .line 790
    int-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_4

    .line 791
    :cond_14f
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_15a

    .line 792
    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto/16 :goto_4

    .line 793
    :cond_15a
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_28a

    .line 794
    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_4

    .line 796
    .end local v0    # "value":I
    :cond_165
    instance-of v2, p0, Ljava/lang/Float;

    if-eqz v2, :cond_1c6

    move-object v2, p0

    .line 797
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 798
    .local v0, "value":F
    instance-of v2, p1, Ljava/lang/Byte;

    if-eqz v2, :cond_17c

    .line 799
    float-to-int v2, v0

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto/16 :goto_4

    .line 800
    :cond_17c
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_18d

    .line 801
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_18b

    :goto_185
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    :cond_18b
    move v3, v4

    goto :goto_185

    .line 802
    :cond_18d
    instance-of v2, p1, Ljava/lang/Character;

    if-eqz v2, :cond_199

    .line 803
    float-to-int v2, v0

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto/16 :goto_4

    .line 804
    :cond_199
    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_1a5

    .line 805
    float-to-int v2, v0

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto/16 :goto_4

    .line 806
    :cond_1a5
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_1b0

    .line 807
    float-to-int v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 808
    :cond_1b0
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_1bb

    .line 809
    float-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto/16 :goto_4

    .line 810
    :cond_1bb
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_28a

    .line 811
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_4

    .line 813
    .end local v0    # "value":F
    :cond_1c6
    instance-of v2, p0, Ljava/lang/Long;

    if-eqz v2, :cond_228

    move-object v2, p0

    .line 814
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 815
    .local v0, "value":J
    instance-of v2, p1, Ljava/lang/Byte;

    if-eqz v2, :cond_1dd

    .line 816
    long-to-int v2, v0

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto/16 :goto_4

    .line 817
    :cond_1dd
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1ef

    .line 818
    const-wide/16 v6, 0x0

    cmp-long v2, v0, v6

    if-eqz v2, :cond_1ed

    :goto_1e7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    :cond_1ed
    move v3, v4

    goto :goto_1e7

    .line 819
    :cond_1ef
    instance-of v2, p1, Ljava/lang/Character;

    if-eqz v2, :cond_1fb

    .line 820
    long-to-int v2, v0

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto/16 :goto_4

    .line 821
    :cond_1fb
    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_207

    .line 822
    long-to-int v2, v0

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto/16 :goto_4

    .line 823
    :cond_207
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_212

    .line 824
    long-to-int v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 825
    :cond_212
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_21d

    .line 826
    long-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_4

    .line 827
    :cond_21d
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_28a

    .line 828
    long-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_4

    .line 830
    .end local v0    # "value":J
    :cond_228
    instance-of v2, p0, Ljava/lang/Double;

    if-eqz v2, :cond_28a

    move-object v2, p0

    .line 831
    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 832
    .local v0, "value":D
    instance-of v2, p1, Ljava/lang/Byte;

    if-eqz v2, :cond_23f

    .line 833
    double-to-int v2, v0

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto/16 :goto_4

    .line 834
    :cond_23f
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_251

    .line 835
    const-wide/16 v6, 0x0

    cmpl-double v2, v0, v6

    if-eqz v2, :cond_24f

    :goto_249
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    :cond_24f
    move v3, v4

    goto :goto_249

    .line 836
    :cond_251
    instance-of v2, p1, Ljava/lang/Character;

    if-eqz v2, :cond_25d

    .line 837
    double-to-int v2, v0

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto/16 :goto_4

    .line 838
    :cond_25d
    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_269

    .line 839
    double-to-int v2, v0

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto/16 :goto_4

    .line 840
    :cond_269
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_274

    .line 841
    double-to-int v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 842
    :cond_274
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_27f

    .line 843
    double-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_4

    .line 844
    :cond_27f
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_28a

    .line 845
    double-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto/16 :goto_4

    .end local v0    # "value":D
    :cond_28a
    move-object p1, p0

    .line 850
    goto/16 :goto_4
.end method

.method public static getAnimRes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 201
    const-string v0, "anim"

    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/ResHelper;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 161
    const-string v1, "drawable"

    invoke-static {p0, v1, p1}, Lcom/mob/tools/utils/ResHelper;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 162
    .local v0, "resId":I
    if-gtz v0, :cond_e

    .line 163
    const-string v1, "mipmap"

    invoke-static {p0, v1, p1}, Lcom/mob/tools/utils/ResHelper;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 165
    :cond_e
    return v0
.end method

.method public static getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Mob/cache/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "appDir":Ljava/lang/String;
    invoke-static {p0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    .line 241
    .local v2, "helper":Lcom/mob/tools/utils/DeviceHelper;
    :try_start_1f
    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getSdcardState()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getSdcardPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Mob/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/cache/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_49} :catch_76

    move-result-object v0

    .line 248
    :cond_4a
    :goto_4a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_67

    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    :cond_67
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_75

    .line 253
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 255
    :cond_75
    return-object v0

    .line 244
    .end local v1    # "file":Ljava/io/File;
    :catch_76
    move-exception v3

    .line 245
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_4a
.end method

.method public static getCacheRoot(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Mob/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "appDir":Ljava/lang/String;
    invoke-static {p0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    .line 224
    .local v2, "helper":Lcom/mob/tools/utils/DeviceHelper;
    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getSdcardState()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getSdcardPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Mob/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    :cond_3c
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4a

    .line 230
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 233
    :cond_4a
    return-object v0
.end method

.method public static getColorRes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 189
    const-string v0, "color"

    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/ResHelper;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getFileSize(Ljava/io/File;)J
    .registers 9
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 906
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_9

    .line 907
    const-wide/16 v4, 0x0

    .line 919
    :goto_8
    return-wide v4

    .line 910
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 911
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 912
    .local v2, "names":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 913
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    array-length v4, v2

    if-ge v1, v4, :cond_29

    .line 914
    new-instance v0, Ljava/io/File;

    aget-object v4, v2, v1

    invoke-direct {v0, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 915
    .local v0, "f":Ljava/io/File;
    int-to-long v4, v3

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->getFileSize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v3, v4

    .line 913
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 917
    .end local v0    # "f":Ljava/io/File;
    :cond_29
    int-to-long v4, v3

    goto :goto_8

    .line 919
    .end local v1    # "i":I
    .end local v2    # "names":[Ljava/lang/String;
    .end local v3    # "size":I
    :cond_2b
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    goto :goto_8
.end method

.method public static getFileSize(Ljava/lang/String;)J
    .registers 5
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 897
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 898
    const-wide/16 v2, 0x0

    .line 902
    :goto_8
    return-wide v2

    .line 901
    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 902
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->getFileSize(Ljava/io/File;)J

    move-result-wide v2

    goto :goto_8
.end method

.method public static getIdRes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 185
    const-string v0, "id"

    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/ResHelper;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getImageCachePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 260
    const-string v0, "images"

    invoke-static {p0, v0}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 177
    const-string v0, "layout"

    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/ResHelper;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getMediaUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 559
    const-class v3, Lcom/mob/tools/utils/ResHelper;

    monitor-enter v3

    :try_start_3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 560
    .local v0, "object":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 561
    .local v1, "result":Landroid/net/Uri;
    const/4 v2, 0x0

    sput-object v2, Lcom/mob/tools/utils/ResHelper;->mediaUri:Landroid/net/Uri;

    .line 562
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    new-instance v5, Lcom/mob/tools/utils/ResHelper$1;

    invoke-direct {v5, v0}, Lcom/mob/tools/utils/ResHelper$1;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v2, v4, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_37

    .line 572
    :try_start_20
    sget-object v2, Lcom/mob/tools/utils/ResHelper;->mediaUri:Landroid/net/Uri;

    if-nez v2, :cond_2b

    .line 573
    monitor-enter v0
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_25} :catch_35
    .catchall {:try_start_20 .. :try_end_25} :catchall_37

    .line 574
    const-wide/16 v4, 0x2710

    :try_start_27
    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 575
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_32

    .line 581
    :cond_2b
    :goto_2b
    :try_start_2b
    sget-object v1, Lcom/mob/tools/utils/ResHelper;->mediaUri:Landroid/net/Uri;

    .line 582
    const/4 v2, 0x0

    sput-object v2, Lcom/mob/tools/utils/ResHelper;->mediaUri:Landroid/net/Uri;
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_37

    .line 583
    monitor-exit v3

    return-object v1

    .line 575
    :catchall_32
    move-exception v2

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    throw v2
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_35} :catch_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_37

    .line 577
    :catch_35
    move-exception v2

    goto :goto_2b

    .line 559
    .end local v0    # "object":Ljava/lang/Object;
    .end local v1    # "result":Landroid/net/Uri;
    :catchall_37
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getPluralsRes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 197
    const-string v0, "plurals"

    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/ResHelper;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getRawRes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 193
    const-string v0, "raw"

    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/ResHelper;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resType"    # Ljava/lang/String;
    .param p2, "resName"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v2, 0x0

    .line 124
    .local v2, "resId":I
    if-eqz p0, :cond_f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_f
    move v3, v2

    .line 157
    .end local v2    # "resId":I
    .local v3, "resId":I
    :goto_10
    return v3

    .line 128
    .end local v3    # "resId":I
    .restart local v2    # "resId":I
    :cond_11
    sget-object v5, Lcom/mob/tools/utils/ResHelper;->rp:Ljava/lang/Object;

    if-eqz v5, :cond_4f

    .line 130
    :try_start_15
    sget-object v5, Lcom/mob/tools/utils/ResHelper;->rp:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getResId"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 131
    .local v0, "mth":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 132
    sget-object v5, Lcom/mob/tools/utils/ResHelper;->rp:Ljava/lang/Object;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_4e} :catch_5d

    move-result v2

    .line 139
    .end local v0    # "mth":Ljava/lang/reflect/Method;
    :cond_4f
    :goto_4f
    if-gtz v2, :cond_aa

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "pck":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_66

    move v3, v2

    .line 142
    .end local v2    # "resId":I
    .restart local v3    # "resId":I
    goto :goto_10

    .line 133
    .end local v1    # "pck":Ljava/lang/String;
    .end local v3    # "resId":I
    .restart local v2    # "resId":I
    :catch_5d
    move-exception v4

    .line 134
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_4f

    .line 145
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v1    # "pck":Ljava/lang/String;
    :cond_66
    if-gtz v2, :cond_7e

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 147
    if-gtz v2, :cond_7e

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 152
    :cond_7e
    if-gtz v2, :cond_aa

    .line 153
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to parse "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " resource \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    .end local v1    # "pck":Ljava/lang/String;
    :cond_aa
    move v3, v2

    .line 157
    .end local v2    # "resId":I
    .restart local v3    # "resId":I
    goto/16 :goto_10
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public static getScreenSize(Landroid/content/Context;)[I
    .registers 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 75
    :try_start_3
    const-string v6, "window"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_b} :catch_13

    .line 80
    .local v5, "windowManager":Landroid/view/WindowManager;
    :goto_b
    if-nez v5, :cond_1d

    .line 81
    new-array v6, v11, [I

    fill-array-data v6, :array_7a

    .line 98
    :goto_12
    return-object v6

    .line 76
    .end local v5    # "windowManager":Landroid/view/WindowManager;
    :catch_13
    move-exception v4

    .line 77
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 78
    const/4 v5, 0x0

    .restart local v5    # "windowManager":Landroid/view/WindowManager;
    goto :goto_b

    .line 84
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_1d
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 85
    .local v0, "display":Landroid/view/Display;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xd

    if-ge v6, v7, :cond_3a

    .line 86
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 87
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 88
    new-array v6, v11, [I

    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v7, v6, v9

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v7, v6, v8

    goto :goto_12

    .line 91
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_3a
    :try_start_3a
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 92
    .local v3, "size":Landroid/graphics/Point;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getRealSize"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/graphics/Point;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 93
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 94
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v2, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    iget v8, v3, Landroid/graphics/Point;->x:I

    aput v8, v6, v7

    const/4 v7, 0x1

    iget v8, v3, Landroid/graphics/Point;->y:I

    aput v8, v6, v7
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_6b} :catch_6c

    goto :goto_12

    .line 96
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "size":Landroid/graphics/Point;
    :catch_6c
    move-exception v4

    .line 97
    .restart local v4    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 98
    new-array v6, v11, [I

    fill-array-data v6, :array_82

    goto :goto_12

    .line 81
    :array_7a
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 98
    :array_82
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public static getStringArrayRes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 173
    const-string v0, "array"

    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/ResHelper;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStringRes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 169
    const-string v0, "string"

    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/ResHelper;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStyleRes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 181
    const-string v0, "style"

    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/ResHelper;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStyleableRes(Landroid/content/Context;Ljava/lang/String;)[I
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 206
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".R$styleable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/mob/tools/utils/ReflectHelper;->getStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 208
    .local v1, "res":Ljava/lang/Object;
    if-nez v1, :cond_26

    .line 209
    const/4 v3, 0x0

    new-array v1, v3, [I

    .line 217
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "res":Ljava/lang/Object;
    :goto_25
    return-object v1

    .line 210
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "res":Ljava/lang/Object;
    :cond_26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 211
    check-cast v1, [I

    .end local v1    # "res":Ljava/lang/Object;
    check-cast v1, [I

    goto :goto_25

    .line 213
    .restart local v1    # "res":Ljava/lang/Object;
    :cond_35
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "res":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v4
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_41} :catch_43

    move-object v1, v3

    goto :goto_25

    .line 215
    .end local v0    # "className":Ljava/lang/String;
    :catch_43
    move-exception v2

    .line 216
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 217
    new-array v1, v6, [I

    goto :goto_25
.end method

.method public static getTextLengthInWord(Ljava/lang/String;)I
    .registers 6
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 343
    if-nez p0, :cond_15

    const/4 v3, 0x0

    new-array v0, v3, [C

    .line 344
    .local v0, "cText":[C
    :goto_5
    const/4 v1, 0x0

    .line 345
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    array-length v3, v0

    if-ge v2, v3, :cond_1c

    .line 346
    aget-char v3, v0, v2

    const/16 v4, 0x100

    if-ge v3, v4, :cond_1a

    const/4 v3, 0x1

    :goto_11
    add-int/2addr v1, v3

    .line 345
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 343
    .end local v0    # "cText":[C
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_15
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_5

    .line 346
    .restart local v0    # "cText":[C
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :cond_1a
    const/4 v3, 0x2

    goto :goto_11

    .line 348
    :cond_1c
    return v1
.end method

.method public static isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "o1":Ljava/lang/Object;, "TT;"
    .local p1, "o2":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 862
    if-nez p0, :cond_6

    if-nez p1, :cond_e

    :cond_6
    if-eqz p0, :cond_12

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_e
    move v0, v1

    .line 863
    .local v0, "notEqual":Z
    :goto_f
    if-nez v0, :cond_14

    :goto_11
    return v1

    .end local v0    # "notEqual":Z
    :cond_12
    move v0, v2

    .line 862
    goto :goto_f

    .restart local v0    # "notEqual":Z
    :cond_14
    move v1, v2

    .line 863
    goto :goto_11
.end method

.method public static isLeapYear(I)Z
    .registers 2
    .param p0, "year"    # I

    .prologue
    .line 857
    rem-int/lit16 v0, p0, 0x190

    if-eqz v0, :cond_c

    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_e

    rem-int/lit8 v0, p0, 0x64

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static longToDate(J)Ljava/util/Date;
    .registers 4
    .param p0, "time"    # J

    .prologue
    .line 370
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 371
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 372
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static longToTime(JI)Ljava/lang/String;
    .registers 7
    .param p0, "time"    # J
    .param p2, "level"    # I

    .prologue
    .line 383
    const-string v0, "yyyy-MM-dd kk:mm:ss"

    .line 384
    .local v0, "format":Ljava/lang/String;
    sparse-switch p2, :sswitch_data_22

    .line 391
    :goto_5
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 392
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 385
    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    :sswitch_13
    const-string v0, "yyyy-MM-dd kk:mm"

    goto :goto_5

    .line 386
    :sswitch_16
    const-string v0, "yyyy-MM-dd kk"

    goto :goto_5

    .line 387
    :sswitch_19
    const-string v0, "yyyy-MM-dd"

    goto :goto_5

    .line 388
    :sswitch_1c
    const-string v0, "yyyy-MM"

    goto :goto_5

    .line 389
    :sswitch_1f
    const-string v0, "yyyy"

    goto :goto_5

    .line 384
    :sswitch_data_22
    .sparse-switch
        0x1 -> :sswitch_1f
        0x2 -> :sswitch_1c
        0x5 -> :sswitch_19
        0xa -> :sswitch_16
        0xc -> :sswitch_13
    .end sparse-switch
.end method

.method public static parseInt(Ljava/lang/String;)I
    .registers 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 674
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .registers 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 678
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static parseLong(Ljava/lang/String;)J
    .registers 3
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 692
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLong(Ljava/lang/String;I)J
    .registers 4
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 711
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static pathToContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v11, 0x0

    .line 461
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "_data=? "

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 466
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_49

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 467
    const-string v0, "_id"

    .line 468
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 467
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 469
    .local v8, "id":I
    const-string v0, "content://media/external/images/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 470
    .local v6, "baseUri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 481
    .end local v6    # "baseUri":Landroid/net/Uri;
    .end local v8    # "id":I
    :cond_48
    :goto_48
    return-object v5

    .line 472
    :cond_49
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 473
    .local v9, "imageFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 474
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 475
    .local v10, "values":Landroid/content/ContentValues;
    const-string v0, "_data"

    invoke-virtual {v10, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 477
    .restart local v6    # "baseUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v6, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_48
.end method

.method public static pxToDip(Landroid/content/Context;I)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # I

    .prologue
    .line 51
    sget v0, Lcom/mob/tools/utils/ResHelper;->density:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_13

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/mob/tools/utils/ResHelper;->density:F

    .line 54
    :cond_13
    int-to-float v0, p1

    sget v1, Lcom/mob/tools/utils/ResHelper;->density:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static readObjectFromFile(Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 968
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_36

    .line 969
    const/4 v0, 0x0

    .line 971
    .local v0, "cacheFile":Ljava/io/File;
    :try_start_7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_2c

    .line 972
    .end local v0    # "cacheFile":Ljava/io/File;
    .local v1, "cacheFile":Ljava/io/File;
    :try_start_c
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_38

    move-result v7

    if-nez v7, :cond_3b

    .line 973
    const/4 v0, 0x0

    .line 980
    .end local v1    # "cacheFile":Ljava/io/File;
    .restart local v0    # "cacheFile":Ljava/io/File;
    :goto_13
    if-eqz v0, :cond_36

    .line 982
    :try_start_15
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 983
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 984
    .local v3, "gzis":Ljava/util/zip/GZIPInputStream;
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 985
    .local v5, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 986
    .local v4, "object":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_2b} :catch_32

    .line 993
    .end local v0    # "cacheFile":Ljava/io/File;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "gzis":Ljava/util/zip/GZIPInputStream;
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    :goto_2b
    return-object v4

    .line 975
    .restart local v0    # "cacheFile":Ljava/io/File;
    :catch_2c
    move-exception v6

    .line 976
    .local v6, "t":Ljava/lang/Throwable;
    :goto_2d
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 977
    const/4 v0, 0x0

    goto :goto_13

    .line 988
    .end local v6    # "t":Ljava/lang/Throwable;
    :catch_32
    move-exception v6

    .line 989
    .restart local v6    # "t":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 993
    .end local v0    # "cacheFile":Ljava/io/File;
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_36
    const/4 v4, 0x0

    goto :goto_2b

    .line 975
    .restart local v1    # "cacheFile":Ljava/io/File;
    :catch_38
    move-exception v6

    move-object v0, v1

    .end local v1    # "cacheFile":Ljava/io/File;
    .restart local v0    # "cacheFile":Ljava/io/File;
    goto :goto_2d

    .end local v0    # "cacheFile":Ljava/io/File;
    .restart local v1    # "cacheFile":Ljava/io/File;
    :cond_3b
    move-object v0, v1

    .end local v1    # "cacheFile":Ljava/io/File;
    .restart local v0    # "cacheFile":Ljava/io/File;
    goto :goto_13
.end method

.method public static saveObjectToFile(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 9
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 929
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_50

    .line 930
    const/4 v0, 0x0

    .line 932
    .local v0, "cacheFile":Ljava/io/File;
    :try_start_7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_46

    .line 933
    .end local v0    # "cacheFile":Ljava/io/File;
    .local v1, "cacheFile":Ljava/io/File;
    :try_start_c
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 934
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 936
    :cond_15
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_26

    .line 937
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 939
    :cond_26
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_29} :catch_52

    move-object v0, v1

    .line 945
    .end local v1    # "cacheFile":Ljava/io/File;
    .restart local v0    # "cacheFile":Ljava/io/File;
    :goto_2a
    if-eqz v0, :cond_50

    .line 947
    :try_start_2c
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 948
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 949
    .local v3, "gzos":Ljava/util/zip/GZIPOutputStream;
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 950
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v4, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 951
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    .line 952
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_44} :catch_4c

    .line 953
    const/4 v6, 0x1

    .line 959
    .end local v0    # "cacheFile":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    :goto_45
    return v6

    .line 940
    .restart local v0    # "cacheFile":Ljava/io/File;
    :catch_46
    move-exception v5

    .line 941
    .local v5, "t":Ljava/lang/Throwable;
    :goto_47
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 942
    const/4 v0, 0x0

    goto :goto_2a

    .line 954
    .end local v5    # "t":Ljava/lang/Throwable;
    :catch_4c
    move-exception v5

    .line 955
    .restart local v5    # "t":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 959
    .end local v0    # "cacheFile":Ljava/io/File;
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_50
    const/4 v6, 0x0

    goto :goto_45

    .line 940
    .restart local v1    # "cacheFile":Ljava/io/File;
    :catch_52
    move-exception v5

    move-object v0, v1

    .end local v1    # "cacheFile":Ljava/io/File;
    .restart local v0    # "cacheFile":Ljava/io/File;
    goto :goto_47
.end method

.method public static setResourceProvider(Ljava/lang/Object;)V
    .registers 8
    .param p0, "rp"    # Ljava/lang/Object;

    .prologue
    .line 113
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getResId"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 114
    .local v0, "mth":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_20

    .line 115
    sput-object p0, Lcom/mob/tools/utils/ResHelper;->rp:Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_20} :catch_21

    .line 120
    .end local v0    # "mth":Ljava/lang/reflect/Method;
    :cond_20
    :goto_20
    return-void

    .line 117
    :catch_21
    move-exception v1

    .line 118
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_20
.end method

.method public static strToDate(Ljava/lang/String;)J
    .registers 7
    .param p0, "strDate"    # Ljava/lang/String;

    .prologue
    .line 355
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 357
    .local v1, "pos":Ljava/text/ParsePosition;
    invoke-virtual {v0, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 358
    .local v2, "strtodate":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    return-wide v4
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 715
    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static toWordText(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "lenInWord"    # I

    .prologue
    .line 329
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 330
    .local v0, "cText":[C
    mul-int/lit8 v2, p1, 0x2

    .line 331
    .local v2, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .local v3, "sb":Ljava/lang/StringBuilder;
    array-length v6, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_e
    if-ge v5, v6, :cond_28

    aget-char v1, v0, v5

    .line 333
    .local v1, "ch":C
    const/16 v4, 0x100

    if-ge v1, v4, :cond_1f

    const/4 v4, 0x1

    :goto_17
    sub-int/2addr v2, v4

    .line 334
    if-gez v2, :cond_21

    .line 335
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 339
    .end local v1    # "ch":C
    :goto_1e
    return-object v4

    .line 333
    .restart local v1    # "ch":C
    :cond_1f
    const/4 v4, 0x2

    goto :goto_17

    .line 337
    :cond_21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_e

    .line 339
    .end local v1    # "ch":C
    :cond_28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1e
.end method

.method public static urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 638
    const-string v4, "://"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 639
    .local v2, "index":I
    if-ltz v2, :cond_3a

    .line 640
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 646
    :goto_21
    :try_start_21
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 647
    .local v3, "u":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 648
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v3}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_39} :catch_4e

    .line 653
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "u":Ljava/net/URL;
    :goto_39
    return-object v0

    .line 642
    :cond_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_21

    .line 650
    :catch_4e
    move-exception v1

    .line 651
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 653
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_39
.end method

.method public static videoPathToContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v11, 0x0

    .line 534
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "_data=? "

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 539
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_49

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 540
    const-string v0, "_id"

    .line 541
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 540
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 542
    .local v8, "id":I
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 543
    .local v6, "baseUri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 554
    .end local v6    # "baseUri":Landroid/net/Uri;
    .end local v8    # "id":I
    :cond_48
    :goto_48
    return-object v5

    .line 545
    :cond_49
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 546
    .local v10, "videoFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 547
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 548
    .local v9, "values":Landroid/content/ContentValues;
    const-string v0, "_data"

    invoke-virtual {v9, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 550
    .restart local v6    # "baseUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v6, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_48
.end method
