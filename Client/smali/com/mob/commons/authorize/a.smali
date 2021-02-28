.class public final Lcom/mob/commons/authorize/a;
.super Ljava/lang/Object;
.source "Authorizer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Ljava/io/File;
    .registers 3

    .prologue
    .line 45
    const-string v0, "comm/dbs/.duid"

    invoke-static {v0}, Lcom/mob/commons/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_17

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 49
    :cond_17
    return-object v0
.end method

.method static synthetic a(Lcom/mob/commons/authorize/a;)Ljava/io/File;
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mob/commons/authorize/a;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private final a(Lcom/mob/commons/MobProduct;Ljava/util/HashMap;Z)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/MobProduct;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 325
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_15b

    move-result-object v1

    .line 326
    const/4 v0, -0x1

    .line 328
    :try_start_a
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_11} :catch_d5

    move-result v0

    move v7, v0

    .line 330
    :goto_13
    :try_start_13
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 331
    const-string v0, "phoneno"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v0, "simserialno"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v0, "adsid"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getAdvertisingID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v0, "imei"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v0, "serialno"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getSerialno()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v0, "androidid"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v0, "mac"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v0, "model"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v0, "factory"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v0, "carrier"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v0, "screensize"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getScreenSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v0, "sysver"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v0, "plat"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    new-instance v9, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v9}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 345
    invoke-virtual {v9, v8}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-direct {p0}, Lcom/mob/commons/authorize/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 347
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 349
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 350
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v3, "m"

    invoke-direct {v1, v3, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 353
    const/16 v0, 0x7530

    iput v0, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 354
    const/16 v0, 0x7530

    iput v0, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 356
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 357
    const-string v1, "http://devs.data.mob.com:80/dinfo"

    .line 358
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-virtual {v9, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 360
    if-nez v0, :cond_d9

    move-object v0, v6

    .line 415
    :cond_d4
    :goto_d4
    return-object v0

    .line 329
    :catch_d5
    move-exception v2

    move v7, v0

    goto/16 :goto_13

    .line 364
    :cond_d9
    const-string v1, "duid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 365
    if-eqz v0, :cond_e9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_eb

    :cond_e9
    move-object v0, v6

    .line 366
    goto :goto_d4

    .line 369
    :cond_eb
    const-string v1, "duid"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v1, "carrier"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 372
    const-string v1, "androidid"

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 374
    const-string v1, "preDeviceInfo"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 375
    if-eqz v1, :cond_126

    .line 377
    const-string v2, "androidids"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 378
    if-nez v2, :cond_157

    .line 379
    const-string v2, "androidid"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 380
    if-eqz v1, :cond_126

    .line 381
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_126
    :goto_126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 388
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 389
    const-string v2, "androidids"

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v1, "deviceInfo"

    invoke-virtual {p2, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_138
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_138} :catch_15b

    .line 392
    if-eqz p3, :cond_d4

    .line 395
    :try_start_13a
    invoke-direct {p0}, Lcom/mob/commons/authorize/a;->a()Ljava/io/File;

    move-result-object v1

    .line 396
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 397
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_148
    .catch Ljava/lang/Throwable; {:try_start_13a .. :try_end_148} :catch_166
    .catchall {:try_start_13a .. :try_end_148} :catchall_17c

    .line 398
    :try_start_148
    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_14b
    .catch Ljava/lang/Throwable; {:try_start_148 .. :try_end_14b} :catch_18b
    .catchall {:try_start_148 .. :try_end_14b} :catchall_189

    .line 402
    if-eqz v2, :cond_d4

    .line 404
    :try_start_14d
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 405
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_153
    .catch Ljava/lang/Throwable; {:try_start_14d .. :try_end_153} :catch_154

    goto :goto_d4

    .line 406
    :catch_154
    move-exception v1

    goto/16 :goto_d4

    .line 384
    :cond_157
    :try_start_157
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_15a
    .catch Ljava/lang/Throwable; {:try_start_157 .. :try_end_15a} :catch_15b

    goto :goto_126

    .line 412
    :catch_15b
    move-exception v0

    .line 413
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v0, v6

    .line 415
    goto/16 :goto_d4

    .line 399
    :catch_166
    move-exception v1

    move-object v2, v6

    .line 400
    :goto_168
    :try_start_168
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_16f
    .catchall {:try_start_168 .. :try_end_16f} :catchall_189

    .line 402
    if-eqz v2, :cond_d4

    .line 404
    :try_start_171
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 405
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_177
    .catch Ljava/lang/Throwable; {:try_start_171 .. :try_end_177} :catch_179

    goto/16 :goto_d4

    .line 406
    :catch_179
    move-exception v1

    goto/16 :goto_d4

    .line 402
    :catchall_17c
    move-exception v0

    move-object v2, v6

    :goto_17e
    if-eqz v2, :cond_186

    .line 404
    :try_start_180
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 405
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_186
    .catch Ljava/lang/Throwable; {:try_start_180 .. :try_end_186} :catch_187

    .line 406
    :cond_186
    :goto_186
    :try_start_186
    throw v0
    :try_end_187
    .catch Ljava/lang/Throwable; {:try_start_186 .. :try_end_187} :catch_15b

    :catch_187
    move-exception v1

    goto :goto_186

    .line 402
    :catchall_189
    move-exception v0

    goto :goto_17e

    .line 399
    :catch_18b
    move-exception v1

    goto :goto_168
.end method

.method static synthetic a(Lcom/mob/commons/authorize/a;Lcom/mob/commons/MobProduct;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/mob/commons/authorize/a;->b(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/mob/commons/authorize/a;Z)Ljava/util/HashMap;
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/mob/commons/authorize/a;->b(Z)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private final a(Lcom/mob/commons/MobProduct;Ljava/util/HashMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/MobProduct;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 421
    :try_start_1
    const-string v0, "duid"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 422
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v7

    .line 423
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 424
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v3, "product"

    invoke-interface {p1}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v3, "appkey"

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v3, "duid"

    invoke-direct {v1, v3, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "apppkg"

    invoke-virtual {v7}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "appver"

    invoke-virtual {v7}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "sdkver"

    invoke-interface {p1}, Lcom/mob/commons/MobProduct;->getSdkver()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "network"

    invoke-virtual {v7}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    new-instance v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 434
    const/16 v0, 0x7530

    iput v0, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 435
    const/16 v0, 0x7530

    iput v0, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 437
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 438
    const-string v1, "http://devs.data.mob.com:80/dsign"

    .line 439
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 440
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 441
    const-string v1, "true"

    const-string v2, "reup"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 442
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/mob/commons/authorize/a;->a(Lcom/mob/commons/MobProduct;Ljava/util/HashMap;Z)Ljava/lang/String;

    move-result-object v1

    .line 443
    if-eqz v1, :cond_c0

    .line 448
    :cond_c0
    const-string v1, "200"

    const-string v2, "status"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 449
    const-string v0, "appInfo"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 450
    invoke-virtual {v7}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 451
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 452
    invoke-interface {p1}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ef
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_ef} :catch_127

    .line 456
    :try_start_ef
    invoke-direct {p0}, Lcom/mob/commons/authorize/a;->a()Ljava/io/File;

    move-result-object v0

    .line 457
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 458
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_fd
    .catch Ljava/lang/Throwable; {:try_start_ef .. :try_end_fd} :catch_109
    .catchall {:try_start_ef .. :try_end_fd} :catchall_11d

    .line 459
    :try_start_fd
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_100
    .catch Ljava/lang/Throwable; {:try_start_fd .. :try_end_100} :catch_135
    .catchall {:try_start_fd .. :try_end_100} :catchall_132

    .line 463
    if-eqz v1, :cond_108

    .line 465
    :try_start_102
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 466
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_108
    .catch Ljava/lang/Throwable; {:try_start_102 .. :try_end_108} :catch_137

    .line 474
    :cond_108
    :goto_108
    return-void

    .line 460
    :catch_109
    move-exception v0

    move-object v1, v6

    .line 461
    :goto_10b
    :try_start_10b
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_112
    .catchall {:try_start_10b .. :try_end_112} :catchall_132

    .line 463
    if-eqz v1, :cond_108

    .line 465
    :try_start_114
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 466
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_11a
    .catch Ljava/lang/Throwable; {:try_start_114 .. :try_end_11a} :catch_11b

    goto :goto_108

    .line 467
    :catch_11b
    move-exception v0

    goto :goto_108

    .line 463
    :catchall_11d
    move-exception v0

    :goto_11e
    if-eqz v6, :cond_126

    .line 465
    :try_start_120
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->flush()V

    .line 466
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_126
    .catch Ljava/lang/Throwable; {:try_start_120 .. :try_end_126} :catch_130

    .line 467
    :cond_126
    :goto_126
    :try_start_126
    throw v0
    :try_end_127
    .catch Ljava/lang/Throwable; {:try_start_126 .. :try_end_127} :catch_127

    .line 471
    :catch_127
    move-exception v0

    .line 472
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_108

    .line 467
    :catch_130
    move-exception v1

    goto :goto_126

    .line 463
    :catchall_132
    move-exception v0

    move-object v6, v1

    goto :goto_11e

    .line 460
    :catch_135
    move-exception v0

    goto :goto_10b

    .line 467
    :catch_137
    move-exception v0

    goto :goto_108
.end method

.method private final a(Ljava/util/HashMap;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 138
    if-nez p1, :cond_6

    move v0, v1

    .line 229
    :goto_5
    return v0

    .line 142
    :cond_6
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v4

    .line 143
    const-string v0, "adsid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 144
    const/4 v0, 0x0

    .line 146
    :try_start_15
    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getAdvertisingID()Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_29

    move-result-object v0

    .line 150
    :goto_19
    if-eqz v0, :cond_32

    if-nez v3, :cond_1f

    if-nez v0, :cond_27

    :cond_1f
    if-eqz v3, :cond_32

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    :cond_27
    move v0, v1

    .line 151
    goto :goto_5

    .line 147
    :catch_29
    move-exception v5

    .line 148
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_19

    .line 154
    :cond_32
    const-string v0, "phoneno"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 155
    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 156
    if-eqz v0, :cond_44

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    :cond_44
    move v0, v1

    .line 157
    goto :goto_5

    .line 160
    :cond_46
    const-string v0, "simserialno"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 161
    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v3

    .line 162
    if-eqz v0, :cond_58

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    :cond_58
    move v0, v1

    .line 163
    goto :goto_5

    .line 166
    :cond_5a
    const-string v0, "imei"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 167
    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getIMEI()Ljava/lang/String;

    move-result-object v3

    .line 168
    if-eqz v0, :cond_6c

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    :cond_6c
    move v0, v1

    .line 169
    goto :goto_5

    .line 172
    :cond_6e
    const-string v0, "serialno"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 173
    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getSerialno()Ljava/lang/String;

    move-result-object v3

    .line 174
    if-eqz v0, :cond_80

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    :cond_80
    move v0, v1

    .line 175
    goto :goto_5

    .line 178
    :cond_82
    const-string v0, "mac"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 179
    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    .line 180
    if-eqz v0, :cond_94

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    :cond_94
    move v0, v1

    .line 181
    goto/16 :goto_5

    .line 184
    :cond_97
    const-string v0, "model"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 185
    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v3

    .line 186
    if-eqz v0, :cond_a9

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ac

    :cond_a9
    move v0, v1

    .line 187
    goto/16 :goto_5

    .line 190
    :cond_ac
    const-string v0, "factory"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 191
    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    .line 192
    if-eqz v0, :cond_be

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c1

    :cond_be
    move v0, v1

    .line 193
    goto/16 :goto_5

    .line 196
    :cond_c1
    const-string v0, "androidids"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 197
    if-nez v0, :cond_d9

    .line 198
    const-string v0, "androidid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 199
    if-eqz v3, :cond_11e

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_d9
    :goto_d9
    if-eqz v0, :cond_df

    instance-of v3, v0, Ljava/util/ArrayList;

    if-nez v3, :cond_e2

    :cond_df
    move v0, v1

    .line 206
    goto/16 :goto_5

    .line 208
    :cond_e2
    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v3

    .line 210
    check-cast v0, Ljava/util/ArrayList;

    .line 212
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_ec
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 213
    if-eqz v5, :cond_ec

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ec

    move v0, v1

    .line 218
    :goto_ff
    if-nez v0, :cond_104

    move v0, v1

    .line 219
    goto/16 :goto_5

    .line 223
    :cond_104
    const-string v0, "sysver"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 224
    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionName()Ljava/lang/String;

    move-result-object v3

    .line 225
    if-eqz v0, :cond_116

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_119

    :cond_116
    move v0, v1

    .line 226
    goto/16 :goto_5

    :cond_119
    move v0, v2

    .line 229
    goto/16 :goto_5

    :cond_11c
    move v0, v2

    goto :goto_ff

    :cond_11e
    move-object v0, v3

    goto :goto_d9
.end method

.method private final b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    const-string v1, "sd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, "k."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v1, "co"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, "mm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v1, "ap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v1, ".s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v1, "dk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final b(Lcom/mob/commons/MobProduct;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 58
    .line 61
    :try_start_1
    invoke-direct {p0}, Lcom/mob/commons/authorize/a;->a()Ljava/io/File;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c6

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_be

    move-result v1

    if-eqz v1, :cond_c6

    .line 65
    :try_start_11
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 66
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1b} :catch_a1
    .catchall {:try_start_11 .. :try_end_1b} :catchall_b6

    .line 67
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_21} :catch_e6
    .catchall {:try_start_1b .. :try_end_21} :catchall_e4

    .line 71
    if-eqz v1, :cond_26

    .line 73
    :try_start_23
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_26} :catch_dd

    .line 81
    :cond_26
    :goto_26
    if-nez v0, :cond_ef

    .line 82
    invoke-direct {p0}, Lcom/mob/commons/authorize/a;->c()Ljava/util/HashMap;

    move-result-object v0

    .line 83
    if-nez v0, :cond_ef

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mob/commons/authorize/a;->b(Z)Ljava/util/HashMap;

    move-result-object v0

    move-object v4, v0

    .line 90
    :goto_34
    if-eqz v4, :cond_ed

    .line 91
    const-string v0, "duid"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    if-eqz v0, :cond_a0

    .line 95
    :try_start_40
    const-string v1, "deviceInfo"

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 96
    invoke-direct {p0, v1}, Lcom/mob/commons/authorize/a;->a(Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 97
    const/4 v1, 0x1

    invoke-direct {p0, p1, v4, v1}, Lcom/mob/commons/authorize/a;->a(Lcom/mob/commons/MobProduct;Ljava/util/HashMap;Z)Ljava/lang/String;
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_52} :catch_e2

    move-result-object v3

    .line 98
    if-eqz v3, :cond_ea

    .line 104
    :goto_55
    :try_start_55
    const-string v0, "appInfo"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 105
    if-nez v0, :cond_e8

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    const-string v1, "appInfo"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_69} :catch_d2

    move-object v1, v0

    .line 112
    :goto_6a
    :try_start_6a
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_75} :catch_c9

    move-result-object v2

    .line 116
    :goto_76
    :try_start_76
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 117
    if-nez v0, :cond_86

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_86
    invoke-interface {p1}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v1

    .line 125
    if-eqz v0, :cond_9c

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    .line 126
    :cond_9c
    invoke-direct {p0, p1, v4}, Lcom/mob/commons/authorize/a;->a(Lcom/mob/commons/MobProduct;Ljava/util/HashMap;)V
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_9f} :catch_d2

    :cond_9f
    move-object v0, v3

    .line 134
    :cond_a0
    :goto_a0
    return-object v0

    .line 68
    :catch_a1
    move-exception v0

    move-object v1, v2

    .line 69
    :goto_a3
    :try_start_a3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_aa
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_e4

    .line 71
    if-eqz v1, :cond_c6

    .line 73
    :try_start_ac
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_af} :catch_b2

    move-object v0, v2

    .line 74
    goto/16 :goto_26

    :catch_b2
    move-exception v0

    move-object v0, v2

    goto/16 :goto_26

    .line 71
    :catchall_b6
    move-exception v0

    move-object v1, v2

    :goto_b8
    if-eqz v1, :cond_bd

    .line 73
    :try_start_ba
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_bd
    .catch Ljava/lang/Throwable; {:try_start_ba .. :try_end_bd} :catch_e0

    .line 74
    :cond_bd
    :goto_bd
    :try_start_bd
    throw v0
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_bd .. :try_end_be} :catch_be

    .line 78
    :catch_be
    move-exception v0

    .line 79
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_c6
    move-object v0, v2

    goto/16 :goto_26

    .line 113
    :catch_c9
    move-exception v0

    .line 114
    :try_start_ca
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_d1
    .catch Ljava/lang/Throwable; {:try_start_ca .. :try_end_d1} :catch_d2

    goto :goto_76

    .line 128
    :catch_d2
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    .line 129
    :goto_d5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_a0

    .line 74
    :catch_dd
    move-exception v1

    goto/16 :goto_26

    :catch_e0
    move-exception v1

    goto :goto_bd

    .line 128
    :catch_e2
    move-exception v1

    goto :goto_d5

    .line 71
    :catchall_e4
    move-exception v0

    goto :goto_b8

    .line 68
    :catch_e6
    move-exception v0

    goto :goto_a3

    :cond_e8
    move-object v1, v0

    goto :goto_6a

    :cond_ea
    move-object v3, v0

    goto/16 :goto_55

    :cond_ed
    move-object v0, v2

    goto :goto_a0

    :cond_ef
    move-object v4, v0

    goto/16 :goto_34
.end method

.method private b(Z)Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 521
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 523
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v5

    .line 525
    :try_start_d
    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v0

    .line 526
    if-nez v0, :cond_10d

    const-string v0, ""

    move-object v3, v0

    .line 527
    :goto_16
    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getIMEI()Ljava/lang/String;

    move-result-object v0

    .line 528
    if-nez v0, :cond_110

    const-string v0, ""

    move-object v2, v0

    .line 529
    :goto_1f
    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 530
    if-nez v0, :cond_113

    const-string v0, ""

    move-object v1, v0

    .line 531
    :goto_28
    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getSerialno()Ljava/lang/String;

    move-result-object v0

    .line 532
    if-nez v0, :cond_30

    const-string v0, ""

    .line 533
    :cond_30
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->SHA1(Ljava/lang/String;)[B

    move-result-object v0

    .line 534
    const-string v1, "duid"

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->byteToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_68} :catch_116

    .line 539
    :goto_68
    const/4 v2, 0x0

    .line 541
    :try_start_69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 542
    const-string v1, "phoneno"

    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const-string v1, "simserialno"

    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string v1, "adsid"

    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getAdvertisingID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string v1, "imei"

    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getIMEI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string v1, "serialno"

    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getSerialno()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 548
    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    const-string v3, "androidids"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const-string v1, "mac"

    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    const-string v1, "model"

    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    const-string v1, "factory"

    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const-string v1, "carrier"

    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getCarrier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-string v1, "screensize"

    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getScreenSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const-string v1, "sysver"

    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const-string v1, "plat"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const-string v1, "deviceInfo"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    if-nez p1, :cond_147

    .line 560
    invoke-direct {p0}, Lcom/mob/commons/authorize/a;->a()Ljava/io/File;

    move-result-object v0

    .line 561
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 562
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_101
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_101} :catch_120
    .catchall {:try_start_69 .. :try_end_101} :catchall_134

    .line 563
    :try_start_101
    invoke-virtual {v1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_104
    .catch Ljava/lang/Throwable; {:try_start_101 .. :try_end_104} :catch_143
    .catchall {:try_start_101 .. :try_end_104} :catchall_140

    .line 568
    :goto_104
    if-eqz v1, :cond_10c

    .line 570
    :try_start_106
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 571
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_10c
    .catch Ljava/lang/Throwable; {:try_start_106 .. :try_end_10c} :catch_145

    .line 576
    :cond_10c
    :goto_10c
    return-object v4

    :cond_10d
    move-object v3, v0

    .line 526
    goto/16 :goto_16

    :cond_110
    move-object v2, v0

    .line 528
    goto/16 :goto_1f

    :cond_113
    move-object v1, v0

    .line 530
    goto/16 :goto_28

    .line 535
    :catch_116
    move-exception v0

    .line 536
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto/16 :goto_68

    .line 565
    :catch_120
    move-exception v0

    move-object v1, v2

    .line 566
    :goto_122
    :try_start_122
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_129
    .catchall {:try_start_122 .. :try_end_129} :catchall_140

    .line 568
    if-eqz v1, :cond_10c

    .line 570
    :try_start_12b
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 571
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_131
    .catch Ljava/lang/Throwable; {:try_start_12b .. :try_end_131} :catch_132

    goto :goto_10c

    .line 572
    :catch_132
    move-exception v0

    goto :goto_10c

    .line 568
    :catchall_134
    move-exception v0

    :goto_135
    if-eqz v2, :cond_13d

    .line 570
    :try_start_137
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 571
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_13d
    .catch Ljava/lang/Throwable; {:try_start_137 .. :try_end_13d} :catch_13e

    .line 572
    :cond_13d
    :goto_13d
    throw v0

    :catch_13e
    move-exception v1

    goto :goto_13d

    .line 568
    :catchall_140
    move-exception v0

    move-object v2, v1

    goto :goto_135

    .line 565
    :catch_143
    move-exception v0

    goto :goto_122

    .line 572
    :catch_145
    move-exception v0

    goto :goto_10c

    :cond_147
    move-object v1, v2

    goto :goto_104
.end method

.method private final c()Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 247
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_150

    move-result-object v1

    .line 248
    const/4 v0, -0x1

    .line 250
    :try_start_a
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_11} :catch_d5

    move-result v0

    move v7, v0

    .line 252
    :goto_13
    :try_start_13
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 253
    const-string v0, "phoneno"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v0, "simserialno"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v0, "adsid"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getAdvertisingID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v0, "imei"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v0, "serialno"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getSerialno()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v0, "androidid"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v0, "mac"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v0, "model"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v0, "factory"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v0, "carrier"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v0, "screensize"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getScreenSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v0, "sysver"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v0, "plat"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v9, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v9}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 267
    invoke-virtual {v9, v8}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-direct {p0}, Lcom/mob/commons/authorize/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 269
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 271
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 272
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v3, "m"

    invoke-direct {v1, v3, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 275
    const/16 v0, 0x7530

    iput v0, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 276
    const/16 v0, 0x7530

    iput v0, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 278
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 279
    const-string v1, "http://devs.data.mob.com:80/dinfo"

    .line 280
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-virtual {v9, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 282
    if-nez v0, :cond_d9

    move-object v0, v6

    .line 320
    :goto_d4
    return-object v0

    .line 251
    :catch_d5
    move-exception v2

    move v7, v0

    goto/16 :goto_13

    .line 286
    :cond_d9
    const-string v1, "duid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 287
    if-eqz v0, :cond_e9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_eb

    :cond_e9
    move-object v0, v6

    .line 288
    goto :goto_d4

    .line 292
    :cond_eb
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_f0
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_f0} :catch_150

    .line 294
    :try_start_f0
    const-string v2, "duid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v0, "carrier"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    const-string v2, "androidid"

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    const-string v2, "androidids"

    invoke-virtual {v8, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v0, "deviceInfo"

    invoke-virtual {v1, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-direct {p0}, Lcom/mob/commons/authorize/a;->a()Ljava/io/File;

    move-result-object v0

    .line 302
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 303
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_124
    .catch Ljava/lang/Throwable; {:try_start_f0 .. :try_end_124} :catch_131
    .catchall {:try_start_f0 .. :try_end_124} :catchall_145

    .line 304
    :try_start_124
    invoke-virtual {v2, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_127
    .catch Ljava/lang/Throwable; {:try_start_124 .. :try_end_127} :catch_15f
    .catchall {:try_start_124 .. :try_end_127} :catchall_15d

    .line 308
    if-eqz v2, :cond_12f

    .line 310
    :try_start_129
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 311
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_12f
    .catch Ljava/lang/Throwable; {:try_start_129 .. :try_end_12f} :catch_161

    :cond_12f
    :goto_12f
    move-object v0, v1

    .line 316
    goto :goto_d4

    .line 305
    :catch_131
    move-exception v0

    move-object v2, v6

    .line 306
    :goto_133
    :try_start_133
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_13a
    .catchall {:try_start_133 .. :try_end_13a} :catchall_15d

    .line 308
    if-eqz v2, :cond_12f

    .line 310
    :try_start_13c
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 311
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_142
    .catch Ljava/lang/Throwable; {:try_start_13c .. :try_end_142} :catch_143

    goto :goto_12f

    .line 312
    :catch_143
    move-exception v0

    goto :goto_12f

    .line 308
    :catchall_145
    move-exception v0

    move-object v2, v6

    :goto_147
    if-eqz v2, :cond_14f

    .line 310
    :try_start_149
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 311
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_14f
    .catch Ljava/lang/Throwable; {:try_start_149 .. :try_end_14f} :catch_15b

    .line 312
    :cond_14f
    :goto_14f
    :try_start_14f
    throw v0
    :try_end_150
    .catch Ljava/lang/Throwable; {:try_start_14f .. :try_end_150} :catch_150

    .line 317
    :catch_150
    move-exception v0

    .line 318
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v0, v6

    .line 320
    goto/16 :goto_d4

    .line 312
    :catch_15b
    move-exception v1

    goto :goto_14f

    .line 308
    :catchall_15d
    move-exception v0

    goto :goto_147

    .line 305
    :catch_15f
    move-exception v0

    goto :goto_133

    .line 312
    :catch_161
    move-exception v0

    goto :goto_12f
.end method


# virtual methods
.method public final a(Lcom/mob/commons/MobProduct;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 34
    const-string v1, "comm/locks/.globalLock"

    invoke-static {v1}, Lcom/mob/commons/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 35
    new-instance v2, Lcom/mob/commons/authorize/a$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/mob/commons/authorize/a$1;-><init>(Lcom/mob/commons/authorize/a;[Ljava/lang/String;Lcom/mob/commons/MobProduct;)V

    invoke-static {v1, v2}, Lcom/mob/commons/d;->a(Ljava/io/File;Lcom/mob/commons/LockAction;)V

    .line 41
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final a(Z)Ljava/lang/String;
    .registers 5

    .prologue
    .line 478
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 479
    const-string v1, "comm/locks/.globalLock"

    invoke-static {v1}, Lcom/mob/commons/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 480
    new-instance v2, Lcom/mob/commons/authorize/a$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/mob/commons/authorize/a$2;-><init>(Lcom/mob/commons/authorize/a;Z[Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/mob/commons/d;->a(Ljava/io/File;Lcom/mob/commons/LockAction;)V

    .line 517
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method
