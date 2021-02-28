.class public Lcom/unity3d/splash/services/core/misc/Utilities;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Sha256(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_9} :catch_1a

    move-result-object v0

    const/16 v1, 0x1000

    new-array v1, v1, [B

    :goto_e
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_21

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_e

    :catch_1a
    move-exception v1

    const-string v2, "SHA-256 algorithm not found"

    invoke-static {v2, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    :cond_21
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static Sha256(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/Utilities;->Sha256([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Sha256([B)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_9} :catch_18

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :catch_18
    move-exception v1

    const-string v2, "SHA-256 algorithm not found"

    invoke-static {v2, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method public static mergeJsonObjects(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 7

    if-nez p0, :cond_3

    :goto_2
    return-object p1

    :cond_3
    if-nez p1, :cond_7

    move-object p1, p0

    goto :goto_2

    :cond_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_10

    :cond_24
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_5a

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_5a

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unity3d/splash/services/core/misc/Utilities;->mergeJsonObjects(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_28

    :cond_5a
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_28

    :cond_62
    move-object p1, v1

    goto :goto_2
.end method

.method public static readFileBytes(Ljava/io/File;)[B
    .registers 11

    const-wide/16 v8, 0x1000

    if-nez p0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v2, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-gez v0, :cond_38

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v0, v4

    :cond_20
    :goto_20
    invoke-virtual {v3, v2, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_3b

    add-int/2addr v1, v4

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    int-to-long v6, v1

    sub-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-gez v4, :cond_20

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v0, v4

    sub-int/2addr v0, v1

    goto :goto_20

    :cond_38
    const/16 v0, 0x1000

    goto :goto_20

    :cond_3b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    move-object v0, v2

    goto :goto_5
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;J)V
    .registers 8

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_13

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_12
    return-void

    :cond_13
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_12
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 7

    const-string v1, ""

    array-length v3, p0

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_7
    if-ge v1, v3, :cond_3e

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xf

    if-gt v2, v4, :cond_24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_7

    :cond_3e
    return-object v0
.end method

.method public static writeFile(Ljava/io/File;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    const/4 v3, 0x0

    const/4 v1, 0x1

    :try_start_6
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_3a
    .catchall {:try_start_6 .. :try_end_b} :catchall_4e

    :try_start_b
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_5f
    .catchall {:try_start_b .. :try_end_15} :catchall_5d

    :try_start_15
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_32

    move v0, v1

    :cond_19
    :goto_19
    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrote file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_3

    :catch_32
    move-exception v0

    const-string v2, "Error closing FileOutputStream"

    invoke-static {v2, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_19

    :catch_3a
    move-exception v1

    move-object v2, v3

    :goto_3c
    :try_start_3c
    const-string v3, "Could not write file"

    invoke-static {v3, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_5d

    if-eqz v2, :cond_19

    :try_start_43
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_19

    :catch_47
    move-exception v1

    const-string v2, "Error closing FileOutputStream"

    invoke-static {v2, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_19

    :catchall_4e
    move-exception v0

    move-object v2, v3

    :goto_50
    if-eqz v2, :cond_55

    :try_start_52
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_56

    :cond_55
    :goto_55
    throw v0

    :catch_56
    move-exception v1

    const-string v2, "Error closing FileOutputStream"

    invoke-static {v2, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_55

    :catchall_5d
    move-exception v0

    goto :goto_50

    :catch_5f
    move-exception v1

    goto :goto_3c
.end method
