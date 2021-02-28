.class public Lcom/mob/commons/b;
.super Ljava/lang/Object;
.source "DataHeap.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static a:Lcom/mob/commons/b;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

.field private d:Lcom/mob/tools/utils/Hashon;

.field private e:Ljava/util/Random;


# direct methods
.method private constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/b;->d:Lcom/mob/tools/utils/Hashon;

    .line 63
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/b;->e:Ljava/util/Random;

    .line 65
    new-instance v0, Lcom/mob/tools/MobHandlerThread;

    invoke-direct {v0}, Lcom/mob/tools/MobHandlerThread;-><init>()V

    .line 66
    invoke-virtual {v0}, Lcom/mob/tools/MobHandlerThread;->start()V

    .line 67
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/mob/tools/MobHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/mob/commons/b;->b:Landroid/os/Handler;

    .line 69
    const-string v0, "comm/dbs/.dh"

    invoke-static {v0}, Lcom/mob/commons/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataHeap_1"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/SQLiteHelper;->getDatabase(Ljava/lang/String;Ljava/lang/String;)Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/b;->c:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    .line 71
    iget-object v0, p0, Lcom/mob/commons/b;->c:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    const-string v1, "time"

    const-string v2, "text"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->addField(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 72
    iget-object v0, p0, Lcom/mob/commons/b;->c:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    const-string v1, "data"

    const-string v2, "text"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->addField(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 74
    iget-object v0, p0, Lcom/mob/commons/b;->b:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/mob/commons/b;[[Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/mob/commons/b;->a([[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a([[Ljava/lang/String;)I
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 152
    .line 154
    const/4 v1, 0x2

    :try_start_2
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "time"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    .line 155
    iget-object v2, p0, Lcom/mob/commons/b;->c:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v1, v3, v4, v5}, Lcom/mob/tools/utils/SQLiteHelper;->query(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 156
    if-nez v4, :cond_1a

    .line 181
    :goto_19
    return v0

    .line 160
    :cond_1a
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 161
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_23} :catch_24

    goto :goto_19

    .line 178
    :catch_24
    move-exception v1

    .line 179
    :goto_25
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_19

    .line 165
    :cond_2d
    :try_start_2d
    invoke-static {}, Lcom/mob/commons/a;->a()J
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_24

    move-result-wide v6

    move v1, v0

    .line 167
    :goto_32
    const/4 v0, 0x2

    :try_start_33
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_45} :catch_63

    .line 168
    const-wide/16 v2, -0x1

    .line 170
    const/4 v5, 0x0

    :try_start_48
    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4d} :catch_68

    move-result-wide v2

    .line 172
    :goto_4e
    cmp-long v2, v2, v6

    if-gtz v2, :cond_6c

    .line 173
    :try_start_52
    aput-object v0, p1, v1
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_54} :catch_63

    .line 174
    add-int/lit8 v0, v1, 0x1

    .line 176
    :goto_56
    :try_start_56
    array-length v1, p1

    if-ge v0, v1, :cond_5f

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_6a

    .line 177
    :cond_5f
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_62} :catch_24

    goto :goto_19

    .line 178
    :catch_63
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto :goto_25

    .line 171
    :catch_68
    move-exception v5

    goto :goto_4e

    :cond_6a
    move v1, v0

    goto :goto_32

    :cond_6c
    move v0, v1

    goto :goto_56
.end method

.method public static declared-synchronized a()Lcom/mob/commons/b;
    .registers 2

    .prologue
    .line 55
    const-class v1, Lcom/mob/commons/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/mob/commons/b;->a:Lcom/mob/commons/b;

    if-nez v0, :cond_e

    .line 56
    new-instance v0, Lcom/mob/commons/b;

    invoke-direct {v0}, Lcom/mob/commons/b;-><init>()V

    sput-object v0, Lcom/mob/commons/b;->a:Lcom/mob/commons/b;

    .line 58
    :cond_e
    sget-object v0, Lcom/mob/commons/b;->a:Lcom/mob/commons/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/mob/commons/b;)Lcom/mob/tools/utils/Hashon;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mob/commons/b;->d:Lcom/mob/tools/utils/Hashon;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    .line 245
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 246
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 247
    iget-object v2, p0, Lcom/mob/commons/b;->e:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 248
    iget-object v2, p0, Lcom/mob/commons/b;->e:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 249
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 250
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 251
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 254
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 255
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 256
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 257
    const-string v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 258
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 259
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 260
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 263
    invoke-static {v0, v1}, Lcom/mob/tools/utils/Data;->AES128Encode([B[B)[B

    move-result-object v1

    .line 266
    new-instance v2, Lcom/mob/tools/utils/MobRSA;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Lcom/mob/tools/utils/MobRSA;-><init>(I)V

    .line 267
    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "ceeef5035212dfe7c6a0acdc0ef35ce5b118aab916477037d7381f85c6b6176fcf57b1d1c3296af0bb1c483fe5e1eb0ce9eb2953b44e494ca60777a1b033cc07"

    invoke-direct {v3, v4, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 270
    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "191737288d17e660c4b61440d5d14228a0bf9854499f9d68d8274db55d6d954489371ecf314f26bec236e58fac7fffa9b27bcf923e1229c4080d49f7758739e5bd6014383ed2a75ce1be9b0ab22f283c5c5e11216c5658ba444212b6270d629f2d615b8dfdec8545fb7d4f935b0cc10b6948ab4fc1cb1dd496a8f94b51e888dd"

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 275
    invoke-virtual {v2, v0, v3, v4}, Lcom/mob/tools/utils/MobRSA;->encode([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 278
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 279
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 280
    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 281
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 282
    array-length v0, v1

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 283
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 284
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 285
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 286
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/mob/commons/b;[[Ljava/lang/String;I)Z
    .registers 4

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/mob/commons/b;->a([[Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private a([[Ljava/lang/String;I)Z
    .registers 12

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 187
    :try_start_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 188
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 189
    const-string v1, "plat"

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPlatformCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v1, "device"

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v1, "mac"

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v1, "model"

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v1, "duid"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/mob/commons/authorize/DeviceAuthorizer;->authorize(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v1, "imei"

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v1, "serialno"

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getSerialno()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "networktype"

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->rawMD5(Ljava/lang/String;)[B

    move-result-object v4

    move v1, v6

    .line 199
    :goto_6a
    if-ge v1, p2, :cond_a8

    .line 200
    aget-object v0, p1, v1
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_6e} :catch_9b

    .line 202
    const/4 v5, 0x1

    :try_start_6f
    aget-object v0, v0, v5

    const/4 v5, 0x2

    invoke-static {v0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 203
    invoke-static {v4, v0}, Lcom/mob/tools/utils/Data;->AES128Decode([B[B)[B

    move-result-object v0

    .line 204
    new-instance v5, Ljava/lang/String;

    const-string v7, "utf-8"

    invoke-direct {v5, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object v5, p0, Lcom/mob/commons/b;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v5, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_8e} :catch_92

    .line 199
    :goto_8e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6a

    .line 206
    :catch_92
    move-exception v0

    .line 207
    :try_start_93
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_9a} :catch_9b

    goto :goto_8e

    .line 235
    :catch_9b
    move-exception v0

    .line 236
    invoke-static {v8}, Lcom/mob/commons/e;->e(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move v0, v6

    .line 239
    :cond_a7
    :goto_a7
    return v0

    .line 210
    :cond_a8
    :try_start_a8
    const-string v0, "datas"

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 214
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "appkey"

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "m"

    iget-object v4, p0, Lcom/mob/commons/b;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v4, v3}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mob/commons/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 219
    invoke-static {}, Lcom/mob/commons/MobProductCollector;->getProducts()Ljava/util/ArrayList;

    move-result-object v0

    .line 220
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v3, "User-Identity"

    invoke-static {v0}, Lcom/mob/commons/MobProductCollector;->getUserIdentity(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 224
    const/16 v0, 0x7530

    iput v0, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 225
    const/16 v0, 0x7530

    iput v0, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 227
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 228
    invoke-static {}, Lcom/mob/commons/b;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/mob/commons/b;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 230
    const-string v1, "200"

    const-string v2, "status"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 231
    if-nez v0, :cond_a7

    .line 232
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/mob/commons/e;->e(Ljava/lang/String;)V
    :try_end_122
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_122} :catch_9b

    goto :goto_a7
.end method

.method static synthetic b(Lcom/mob/commons/b;)Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mob/commons/b;->c:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    return-object v0
.end method

.method private b()V
    .registers 3

    .prologue
    .line 126
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_16

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 149
    :cond_16
    :goto_16
    return-void

    .line 132
    :cond_17
    const-string v0, "comm/locks/.dhlock"

    invoke-static {v0}, Lcom/mob/commons/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/mob/commons/b$2;

    invoke-direct {v1, p0}, Lcom/mob/commons/b$2;-><init>(Lcom/mob/commons/b;)V

    invoke-static {v0, v1}, Lcom/mob/commons/d;->a(Ljava/io/File;Lcom/mob/commons/LockAction;)V

    goto :goto_16
.end method

.method private b(JLjava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    const-string v0, "comm/locks/.dhlock"

    invoke-static {v0}, Lcom/mob/commons/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 106
    new-instance v1, Lcom/mob/commons/b$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mob/commons/b$1;-><init>(Lcom/mob/commons/b;JLjava/util/HashMap;)V

    invoke-static {v0, v1}, Lcom/mob/commons/d;->a(Ljava/io/File;Lcom/mob/commons/LockAction;)V

    .line 123
    return-void
.end method

.method static synthetic b(Lcom/mob/commons/b;[[Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/mob/commons/b;->b([[Ljava/lang/String;I)V

    return-void
.end method

.method private b([[Ljava/lang/String;I)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 291
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    :goto_6
    if-ge v0, p2, :cond_2a

    .line 293
    aget-object v2, p1, v0

    .line 294
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_15

    .line 295
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_15
    const/16 v3, 0x27

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 299
    :cond_2a
    iget-object v0, p0, Lcom/mob/commons/b;->c:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/SQLiteHelper;->delete(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4d} :catch_4e

    .line 303
    :goto_4d
    return-void

    .line 300
    :catch_4e
    move-exception v0

    .line 301
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_4d
.end method

.method private static c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 308
    const/4 v0, 0x0

    .line 310
    :try_start_1
    invoke-static {}, Lcom/mob/commons/e;->f()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_e

    move-result-object v0

    .line 315
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "http://c.data.mob.com/v3/cdata"

    :cond_d
    return-object v0

    .line 311
    :catch_e
    move-exception v1

    .line 312
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_5
.end method


# virtual methods
.method public declared-synchronized a(JLjava/util/HashMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 79
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 80
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    iget-object v1, p0, Lcom/mob/commons/b;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 82
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushData\n>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3c

    .line 83
    monitor-exit p0

    return-void

    .line 78
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3a

    .line 101
    :cond_7
    :goto_7
    return v6

    .line 88
    :pswitch_8
    invoke-direct {p0}, Lcom/mob/commons/b;->b()V

    .line 89
    iget-object v0, p0, Lcom/mob/commons/b;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7

    .line 92
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 93
    aget-object v1, v0, v6

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 94
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_7

    .line 96
    aget-object v0, v0, v7

    check-cast v0, Ljava/util/HashMap;

    .line 97
    invoke-direct {p0, v2, v3, v0}, Lcom/mob/commons/b;->b(JLjava/util/HashMap;)V

    goto :goto_7

    .line 86
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_8
        :pswitch_13
    .end packed-switch
.end method
