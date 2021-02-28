.class public Lcom/mob/tools/utils/Data;
.super Ljava/lang/Object;
.source "Data.java"


# static fields
.field private static final CHAT_SET:Ljava/lang/String; = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AES128Decode(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "cipherText"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 140
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    .line 141
    :cond_4
    const/4 v2, 0x0

    .line 146
    :goto_5
    return-object v2

    .line 144
    :cond_6
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 145
    .local v0, "keyBytes":[B
    invoke-static {v0, p1}, Lcom/mob/tools/utils/Data;->AES128Decode([B[B)[B

    move-result-object v1

    .line 146
    .local v1, "plainText":[B
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_5
.end method

.method public static AES128Decode([B[B)[B
    .registers 11
    .param p0, "keyBytes"    # [B
    .param p1, "cipherText"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x0

    .line 150
    if-eqz p0, :cond_7

    if-nez p1, :cond_9

    .line 151
    :cond_7
    const/4 v4, 0x0

    .line 165
    :goto_8
    return-object v4

    .line 154
    :cond_9
    new-array v6, v3, [B

    .line 155
    .local v6, "keyBytes16":[B
    array-length v1, p0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v6, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v7, v6, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 158
    .local v7, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v1, "AES/ECB/NoPadding"

    const-string v3, "BC"

    invoke-static {v1, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 159
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 161
    array-length v1, p1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v1

    new-array v4, v1, [B

    .line 162
    .local v4, "plainText":[B
    array-length v3, p1

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v8

    .line 163
    .local v8, "ptLength":I
    invoke-virtual {v0, v4, v8}, Ljavax/crypto/Cipher;->doFinal([BI)I

    move-result v1

    add-int/2addr v8, v1

    .line 165
    goto :goto_8
.end method

.method public static AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 12
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    const/4 v2, 0x0

    .line 89
    if-eqz p0, :cond_7

    if-nez p1, :cond_9

    .line 90
    :cond_7
    const/4 v4, 0x0

    .line 106
    :goto_8
    return-object v4

    .line 93
    :cond_9
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 94
    .local v7, "keyBytes":[B
    new-array v8, v5, [B

    .line 95
    .local v8, "keyBytes16":[B
    array-length v3, v7

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v7, v2, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 98
    .local v1, "data":[B
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v9, v8, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 99
    .local v9, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES/ECB/PKCS7Padding"

    const-string v5, "BC"

    invoke-static {v3, v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 100
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 102
    array-length v3, v1

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v3

    new-array v4, v3, [B

    .line 103
    .local v4, "cipherText":[B
    array-length v3, v1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v6

    .line 104
    .local v6, "ctLength":I
    invoke-virtual {v0, v4, v6}, Ljavax/crypto/Cipher;->doFinal([BI)I

    goto :goto_8
.end method

.method public static AES128Encode([BLjava/lang/String;)[B
    .registers 4
    .param p0, "key"    # [B
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 117
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    .line 118
    :cond_4
    const/4 v1, 0x0

    .line 122
    :goto_5
    return-object v1

    .line 121
    :cond_6
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 122
    .local v0, "data":[B
    invoke-static {p0, v0}, Lcom/mob/tools/utils/Data;->AES128Encode([B[B)[B

    move-result-object v1

    goto :goto_5
.end method

.method public static AES128Encode([B[B)[B
    .registers 10
    .param p0, "key"    # [B
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 127
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v7, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 128
    .local v7, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v1, "AES/ECB/PKCS7Padding"

    const-string v3, "BC"

    invoke-static {v1, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 129
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 131
    array-length v1, p1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v1

    new-array v4, v1, [B

    .line 132
    .local v4, "cipherText":[B
    array-length v3, p1

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v6

    .line 133
    .local v6, "ctLength":I
    invoke-virtual {v0, v4, v6}, Ljavax/crypto/Cipher;->doFinal([BI)I

    .line 135
    return-object v4
.end method

.method public static Base64AES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 303
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    .line 304
    :cond_4
    const/4 v1, 0x0

    .line 320
    :cond_5
    :goto_5
    return-object v1

    .line 307
    :cond_6
    const/4 v1, 0x0

    .line 309
    .local v1, "result":Ljava/lang/String;
    :try_start_7
    invoke-static {p1, p0}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 314
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 315
    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_25} :catch_27

    move-result-object v1

    goto :goto_5

    .line 317
    :catch_27
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public static CRC32([B)Ljava/lang/String;
    .registers 12
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v10, 0x30

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 342
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 343
    .local v1, "crc":Ljava/util/zip/CRC32;
    invoke-virtual {v1, p0}, Ljava/util/zip/CRC32;->update([B)V

    .line 344
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    .line 345
    .local v4, "value":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x38

    ushr-long v6, v4, v3

    long-to-int v3, v6

    int-to-byte v0, v3

    .line 347
    .local v0, "b":B
    const-string v3, "%02x"

    new-array v6, v9, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    ushr-long v6, v4, v10

    long-to-int v3, v6

    int-to-byte v0, v3

    .line 349
    const-string v3, "%02x"

    new-array v6, v9, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const/16 v3, 0x28

    ushr-long v6, v4, v3

    long-to-int v3, v6

    int-to-byte v0, v3

    .line 351
    const-string v3, "%02x"

    new-array v6, v9, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const/16 v3, 0x20

    ushr-long v6, v4, v3

    long-to-int v3, v6

    int-to-byte v0, v3

    .line 353
    const-string v3, "%02x"

    new-array v6, v9, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const/16 v3, 0x18

    ushr-long v6, v4, v3

    long-to-int v3, v6

    int-to-byte v0, v3

    .line 355
    const-string v3, "%02x"

    new-array v6, v9, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const/16 v3, 0x10

    ushr-long v6, v4, v3

    long-to-int v3, v6

    int-to-byte v0, v3

    .line 357
    const-string v3, "%02x"

    new-array v6, v9, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const/16 v3, 0x8

    ushr-long v6, v4, v3

    long-to-int v3, v6

    int-to-byte v0, v3

    .line 359
    const-string v3, "%02x"

    new-array v6, v9, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    long-to-int v3, v4

    int-to-byte v0, v3

    .line 361
    const-string v3, "%02x"

    new-array v6, v9, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :goto_d7
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_e2

    .line 363
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_d7

    .line 365
    :cond_e2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static MD5(Ljava/io/File;)Ljava/lang/String;
    .registers 6
    .param p0, "data"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 221
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_a

    .line 239
    :cond_9
    :goto_9
    return-object v3

    .line 225
    :cond_a
    const/4 v2, 0x0

    .line 227
    .local v2, "md5":[B
    :try_start_b
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 228
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {v1}, Lcom/mob/tools/utils/Data;->rawMD5(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 229
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_17} :catch_1e

    .line 235
    if-eqz v2, :cond_9

    .line 239
    invoke-static {v2}, Lcom/mob/tools/utils/Data;->toHex([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 230
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :catch_1e
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public static MD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 195
    if-nez p0, :cond_4

    .line 204
    :cond_3
    :goto_3
    return-object v1

    .line 199
    :cond_4
    invoke-static {p0}, Lcom/mob/tools/utils/Data;->rawMD5(Ljava/lang/String;)[B

    move-result-object v0

    .line 200
    .local v0, "tmp":[B
    if-eqz v0, :cond_3

    .line 204
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->toHex([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static MD5([B)Ljava/lang/String;
    .registers 3
    .param p0, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 208
    if-nez p0, :cond_4

    .line 217
    :cond_3
    :goto_3
    return-object v1

    .line 212
    :cond_4
    invoke-static {p0}, Lcom/mob/tools/utils/Data;->rawMD5([B)[B

    move-result-object v0

    .line 213
    .local v0, "tmp":[B
    if-eqz v0, :cond_3

    .line 217
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->toHex([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static SHA1(Ljava/io/File;)[B
    .registers 5
    .param p0, "data"    # Ljava/io/File;

    .prologue
    .line 65
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_a

    .line 66
    :cond_8
    const/4 v2, 0x0

    .line 78
    :goto_9
    return-object v2

    .line 69
    :cond_a
    const/4 v2, 0x0

    .line 71
    .local v2, "sha":[B
    :try_start_b
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 72
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {v1}, Lcom/mob/tools/utils/Data;->SHA1(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 73
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_17} :catch_18

    goto :goto_9

    .line 74
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :catch_18
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public static SHA1(Ljava/io/InputStream;)[B
    .registers 7
    .param p0, "data"    # Ljava/io/InputStream;

    .prologue
    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v3, 0x0

    .line 61
    :goto_3
    return-object v3

    .line 46
    :cond_4
    const/4 v3, 0x0

    .line 48
    .local v3, "sha":[B
    const/16 v5, 0x400

    :try_start_7
    new-array v0, v5, [B

    .line 49
    .local v0, "buf":[B
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 50
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 51
    .local v1, "len":I
    :goto_13
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1f

    .line 52
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 53
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_13

    .line 55
    :cond_1f
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_22} :catch_24

    move-result-object v3

    goto :goto_3

    .line 56
    .end local v0    # "buf":[B
    .end local v1    # "len":I
    .end local v2    # "md":Ljava/security/MessageDigest;
    :catch_24
    move-exception v4

    .line 57
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 58
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public static SHA1(Ljava/lang/String;)[B
    .registers 3
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 28
    const/4 v1, 0x0

    .line 32
    :goto_7
    return-object v1

    .line 31
    :cond_8
    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 32
    .local v0, "data":[B
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->SHA1([B)[B

    move-result-object v1

    goto :goto_7
.end method

.method public static SHA1([B)[B
    .registers 3
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 36
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 37
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 38
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1
.end method

.method public static base62(J)Ljava/lang/String;
    .registers 10
    .param p0, "value"    # J

    .prologue
    const-wide/16 v6, 0x3e

    const-wide/16 v4, 0x0

    .line 185
    cmp-long v2, p0, v4

    if-nez v2, :cond_2a

    const-string v0, "0"

    .line 186
    .local v0, "result":Ljava/lang/String;
    :goto_a
    cmp-long v2, p0, v4

    if-lez v2, :cond_2d

    .line 187
    rem-long v2, p0, v6

    long-to-int v1, v2

    .line 188
    .local v1, "v":I
    div-long/2addr p0, v6

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    goto :goto_a

    .line 185
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "v":I
    :cond_2a
    const-string v0, ""

    goto :goto_a

    .line 191
    .restart local v0    # "result":Ljava/lang/String;
    :cond_2d
    return-object v0
.end method

.method public static byteToHex([B)Ljava/lang/String;
    .registers 3
    .param p0, "data"    # [B

    .prologue
    .line 169
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/mob/tools/utils/Data;->byteToHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static byteToHex([BII)Ljava/lang/String;
    .registers 9
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 174
    .local v0, "buffer":Ljava/lang/StringBuffer;
    if-nez p0, :cond_c

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    :goto_b
    return-object v2

    .line 178
    :cond_c
    move v1, p1

    .local v1, "i":I
    :goto_d
    if-ge v1, p2, :cond_27

    .line 179
    const-string v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p0, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 181
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_b
.end method

.method public static rawMD5(Ljava/io/InputStream;)[B
    .registers 7
    .param p0, "data"    # Ljava/io/InputStream;

    .prologue
    .line 275
    if-nez p0, :cond_4

    .line 276
    const/4 v3, 0x0

    .line 294
    :goto_3
    return-object v3

    .line 279
    :cond_4
    const/4 v3, 0x0

    .line 281
    .local v3, "md5":[B
    const/16 v5, 0x400

    :try_start_7
    new-array v0, v5, [B

    .line 282
    .local v0, "buf":[B
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 283
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 284
    .local v1, "len":I
    :goto_13
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1f

    .line 285
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 286
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_13

    .line 288
    :cond_1f
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_22} :catch_24

    move-result-object v3

    goto :goto_3

    .line 289
    .end local v0    # "buf":[B
    .end local v1    # "len":I
    .end local v2    # "md":Ljava/security/MessageDigest;
    :catch_24
    move-exception v4

    .line 290
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 291
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public static rawMD5(Ljava/lang/String;)[B
    .registers 4
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 243
    if-nez p0, :cond_4

    .line 244
    const/4 v1, 0x0

    .line 254
    :goto_3
    return-object v1

    .line 247
    :cond_4
    const/4 v1, 0x0

    .line 249
    .local v1, "md5":[B
    :try_start_5
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/Data;->rawMD5([B)[B
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_e} :catch_10

    move-result-object v1

    goto :goto_3

    .line 250
    :catch_10
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 252
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public static rawMD5([B)[B
    .registers 5
    .param p0, "data"    # [B

    .prologue
    .line 258
    if-nez p0, :cond_4

    .line 259
    const/4 v2, 0x0

    .line 271
    :goto_3
    return-object v2

    .line 262
    :cond_4
    const/4 v2, 0x0

    .line 264
    .local v2, "md5":[B
    :try_start_5
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 265
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->rawMD5(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 266
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_11} :catch_12

    goto :goto_3

    .line 267
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_12
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 269
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public static rawRSADecode([B[BI)[B
    .registers 14
    .param p0, "data"    # [B
    .param p1, "privateKey"    # [B
    .param p2, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 390
    const-string v9, "RSA"

    invoke-static {v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 391
    .local v4, "factory":Ljava/security/KeyFactory;
    new-instance v8, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v8, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 392
    .local v8, "pkeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v9, "RSA"

    invoke-static {v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 393
    invoke-virtual {v4, v8}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v6

    check-cast v6, Ljava/security/interfaces/RSAPrivateKey;

    .line 394
    .local v6, "key":Ljava/security/interfaces/RSAPrivateKey;
    const-string v9, "RSA/None/PKCS1Padding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 395
    .local v3, "cipher":Ljavax/crypto/Cipher;
    const/4 v9, 0x2

    invoke-virtual {v3, v9, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 396
    const/4 v7, 0x0

    .line 397
    .local v7, "offSet":I
    div-int/lit8 v1, p2, 0x8

    .line 398
    .local v1, "blockSize":I
    new-instance v0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-direct {v0}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;-><init>()V

    .line 399
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_29
    array-length v9, p0

    sub-int/2addr v9, v7

    if-lez v9, :cond_3e

    .line 400
    array-length v9, p0

    sub-int/2addr v9, v7

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 401
    .local v5, "inputLen":I
    invoke-virtual {v3, p0, v7, v5}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    .line 402
    .local v2, "cache":[B
    const/4 v9, 0x0

    array-length v10, v2

    invoke-virtual {v0, v2, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 403
    add-int/2addr v7, v1

    .line 404
    goto :goto_29

    .line 405
    .end local v2    # "cache":[B
    .end local v5    # "inputLen":I
    :cond_3e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 406
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    return-object v9
.end method

.method public static rawRSAEncode([B[BI)[B
    .registers 14
    .param p0, "data"    # [B
    .param p1, "publicKey"    # [B
    .param p2, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 370
    div-int/lit8 v9, p2, 0x8

    add-int/lit8 v1, v9, -0xb

    .line 371
    .local v1, "blockSize":I
    new-instance v8, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v8, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 372
    .local v8, "spec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v9, "RSA"

    invoke-static {v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 373
    .local v4, "factory":Ljava/security/KeyFactory;
    invoke-virtual {v4, v8}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v6

    check-cast v6, Ljava/security/interfaces/RSAPublicKey;

    .line 374
    .local v6, "key":Ljava/security/interfaces/RSAPublicKey;
    const-string v9, "RSA/None/PKCS1Padding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 375
    .local v3, "cipher":Ljavax/crypto/Cipher;
    const/4 v9, 0x1

    invoke-virtual {v3, v9, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 376
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 377
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 378
    .local v7, "offSet":I
    :goto_25
    array-length v9, p0

    sub-int/2addr v9, v7

    if-lez v9, :cond_3a

    .line 379
    array-length v9, p0

    sub-int/2addr v9, v7

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 380
    .local v5, "inputLen":I
    invoke-virtual {v3, p0, v7, v5}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    .line 381
    .local v2, "cache":[B
    const/4 v9, 0x0

    array-length v10, v2

    invoke-virtual {v0, v2, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 382
    add-int/2addr v7, v1

    .line 383
    goto :goto_25

    .line 384
    .end local v2    # "cache":[B
    .end local v5    # "inputLen":I
    :cond_3a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 385
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    return-object v9
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 7
    .param p0, "data"    # [B

    .prologue
    .line 410
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 411
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_21

    .line 412
    const-string v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p0, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 414
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 334
    :try_start_0
    const-string v1, "utf-8"

    invoke-static {p0, v1}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 338
    :goto_6
    return-object v1

    .line 335
    :catch_7
    move-exception v0

    .line 336
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 338
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public static urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 324
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 329
    .end local v0    # "text":Ljava/lang/String;
    :goto_a
    return-object v0

    .restart local v0    # "text":Ljava/lang/String;
    :cond_b
    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
