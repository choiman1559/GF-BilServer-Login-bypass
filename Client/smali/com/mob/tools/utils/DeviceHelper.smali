.class public Lcom/mob/tools/utils/DeviceHelper;
.super Ljava/lang/Object;
.source "DeviceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/DeviceHelper$GSConnection;
    }
.end annotation


# static fields
.field private static deviceHelper:Lcom/mob/tools/utils/DeviceHelper;


# instance fields
.field private advertiseID:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    .line 75
    return-void
.end method

.method private genDeviceKey()Ljava/lang/String;
    .registers 10

    .prologue
    .line 1089
    const/4 v4, 0x0

    .line 1091
    .local v4, "newKey":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 1092
    .local v2, "mac":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    .line 1093
    .local v6, "udid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v3

    .line 1094
    .local v3, "model":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1095
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Lcom/mob/tools/utils/Data;->SHA1(Ljava/lang/String;)[B

    move-result-object v0

    .line 1096
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->byteToHex([B)Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_35} :catch_37

    move-result-object v4

    .line 1101
    .end local v0    # "bytes":[B
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "mac":Ljava/lang/String;
    .end local v3    # "model":Ljava/lang/String;
    .end local v6    # "udid":Ljava/lang/String;
    :goto_36
    return-object v4

    .line 1097
    :catch_37
    move-exception v5

    .line 1098
    .local v5, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 1099
    const/4 v4, 0x0

    goto :goto_36
.end method

.method private getCurrentNetworkHardwareAddress()Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 277
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v8

    .line 278
    .local v8, "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-nez v8, :cond_9

    .line 310
    :cond_8
    :goto_8
    return-object v9

    .line 282
    :cond_9
    invoke-static {v8}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v5

    .line 283
    .local v5, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_11
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 284
    .local v6, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 285
    .local v4, "ias":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    if-eqz v4, :cond_11

    .line 289
    invoke-static {v4}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    .line 290
    .local v2, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 291
    .local v1, "add":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v13

    if-nez v13, :cond_2b

    instance-of v13, v1, Ljava/net/Inet4Address;

    if-eqz v13, :cond_2b

    .line 292
    const/4 v7, 0x0

    .line 293
    .local v7, "mac":[B
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x9

    if-lt v13, v14, :cond_4c

    .line 294
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v7

    .line 296
    :cond_4c
    if-eqz v7, :cond_2b

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v3, "buf":Ljava/lang/StringBuilder;
    array-length v11, v7

    move v9, v10

    :goto_55
    if-ge v9, v11, :cond_6e

    aget-byte v0, v7, v9

    .line 299
    .local v0, "aMac":B
    const-string v12, "%02x:"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v13, v10

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    add-int/lit8 v9, v9, 0x1

    goto :goto_55

    .line 301
    .end local v0    # "aMac":B
    :cond_6e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_7d

    .line 302
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 304
    :cond_7d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_8
.end method

.method private getDeviceKeyWithDuid(Ljava/lang/String;)Ljava/lang/String;
    .registers 18
    .param p1, "duidFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1131
    const/4 v9, 0x0

    .line 1134
    .local v9, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_1
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/mob/tools/utils/ResHelper;->getCacheRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-direct {v6, v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_34

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_19} :catch_4f

    move-result v14

    if-eqz v14, :cond_34

    .line 1136
    const/4 v11, 0x0

    .line 1138
    .local v11, "ois":Ljava/io/ObjectInputStream;
    :try_start_1d
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1139
    .local v7, "fis":Ljava/io/FileInputStream;
    new-instance v12, Ljava/io/ObjectInputStream;

    invoke-direct {v12, v7}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_27} :catch_38
    .catchall {:try_start_1d .. :try_end_27} :catchall_48

    .line 1140
    .end local v11    # "ois":Ljava/io/ObjectInputStream;
    .local v12, "ois":Ljava/io/ObjectInputStream;
    :try_start_27
    invoke-virtual {v12}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/util/HashMap;

    move-object v9, v0
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2f} :catch_d1
    .catchall {:try_start_27 .. :try_end_2f} :catchall_cd

    .line 1144
    if-eqz v12, :cond_34

    .line 1146
    :try_start_31
    invoke-virtual {v12}, Ljava/io/ObjectInputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_34} :catch_c8

    .line 1156
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "ois":Ljava/io/ObjectInputStream;
    :cond_34
    :goto_34
    if-nez v9, :cond_58

    .line 1157
    const/4 v5, 0x0

    .line 1180
    :goto_37
    return-object v5

    .line 1141
    .restart local v6    # "file":Ljava/io/File;
    .restart local v11    # "ois":Ljava/io/ObjectInputStream;
    :catch_38
    move-exception v13

    .line 1142
    .local v13, "t":Ljava/lang/Throwable;
    :goto_39
    :try_start_39
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_48

    .line 1144
    if-eqz v11, :cond_34

    .line 1146
    :try_start_42
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->close()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_34

    .line 1147
    :catch_46
    move-exception v14

    goto :goto_34

    .line 1144
    .end local v13    # "t":Ljava/lang/Throwable;
    :catchall_48
    move-exception v14

    :goto_49
    if-eqz v11, :cond_4e

    .line 1146
    :try_start_4b
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4e} :catch_cb

    .line 1148
    :cond_4e
    :goto_4e
    :try_start_4e
    throw v14
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4f} :catch_4f

    .line 1152
    .end local v6    # "file":Ljava/io/File;
    .end local v11    # "ois":Ljava/io/ObjectInputStream;
    :catch_4f
    move-exception v13

    .line 1153
    .restart local v13    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_34

    .line 1160
    .end local v13    # "t":Ljava/lang/Throwable;
    :cond_58
    const-string v14, "deviceInfo"

    invoke-virtual {v9, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 1161
    .local v4, "deviceInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v4, :cond_64

    .line 1162
    const/4 v5, 0x0

    goto :goto_37

    .line 1165
    :cond_64
    const-string v5, ""

    .line 1167
    .local v5, "deviceKey":Ljava/lang/String;
    :try_start_66
    const-string v14, "mac"

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1168
    .local v8, "mac":Ljava/lang/String;
    const-string v14, "imei"

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1169
    .local v3, "deviceId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8a

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x9

    if-lt v14, v15, :cond_8a

    .line 1170
    const-string v14, "serialno"

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "deviceId":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1172
    .restart local v3    # "deviceId":Ljava/lang/String;
    :cond_8a
    const-string v14, "model"

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1173
    .local v10, "model":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1174
    .local v2, "data":Ljava/lang/String;
    invoke-static {v2}, Lcom/mob/tools/utils/Data;->SHA1(Ljava/lang/String;)[B

    move-result-object v1

    .line 1175
    .local v1, "bytes":[B
    invoke-static {v1}, Lcom/mob/tools/utils/Data;->byteToHex([B)Ljava/lang/String;
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_ba} :catch_bd

    move-result-object v5

    goto/16 :goto_37

    .line 1176
    .end local v1    # "bytes":[B
    .end local v2    # "data":Ljava/lang/String;
    .end local v3    # "deviceId":Ljava/lang/String;
    .end local v8    # "mac":Ljava/lang/String;
    .end local v10    # "model":Ljava/lang/String;
    :catch_bd
    move-exception v13

    .line 1177
    .restart local v13    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 1178
    const/4 v5, 0x0

    goto/16 :goto_37

    .line 1147
    .end local v4    # "deviceInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "deviceKey":Ljava/lang/String;
    .end local v13    # "t":Ljava/lang/Throwable;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "ois":Ljava/io/ObjectInputStream;
    :catch_c8
    move-exception v14

    goto/16 :goto_34

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "ois":Ljava/io/ObjectInputStream;
    .restart local v11    # "ois":Ljava/io/ObjectInputStream;
    :catch_cb
    move-exception v15

    goto :goto_4e

    .line 1144
    .end local v11    # "ois":Ljava/io/ObjectInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "ois":Ljava/io/ObjectInputStream;
    :catchall_cd
    move-exception v14

    move-object v11, v12

    .end local v12    # "ois":Ljava/io/ObjectInputStream;
    .restart local v11    # "ois":Ljava/io/ObjectInputStream;
    goto/16 :goto_49

    .line 1141
    .end local v11    # "ois":Ljava/io/ObjectInputStream;
    .restart local v12    # "ois":Ljava/io/ObjectInputStream;
    :catch_d1
    move-exception v13

    move-object v11, v12

    .end local v12    # "ois":Ljava/io/ObjectInputStream;
    .restart local v11    # "ois":Ljava/io/ObjectInputStream;
    goto/16 :goto_39
.end method

.method private getHardwareAddressFromShell(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "networkCard"    # Ljava/lang/String;

    .prologue
    .line 390
    const/4 v3, 0x0

    .line 391
    .local v3, "line":Ljava/lang/String;
    const/4 v0, 0x0

    .line 393
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v7, "ca"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v7, "t "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string v7, "/s"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v7, "ys"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string v7, "/c"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const-string v7, "la"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string v7, "ss"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const-string v7, "/n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string v7, "et"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v7, "/a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v7, "dd"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const-string v7, "re"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    const-string v7, "ss"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 410
    .local v4, "p":Ljava/lang/Process;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 411
    .local v2, "isr":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_6a} :catch_7f
    .catchall {:try_start_2 .. :try_end_6a} :catchall_8f

    .line 412
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_6a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6d} :catch_9b
    .catchall {:try_start_6a .. :try_end_6d} :catchall_98

    move-result-object v3

    .line 416
    if-eqz v1, :cond_9e

    .line 418
    :try_start_70
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_73} :catch_7c

    move-object v0, v1

    .line 423
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "p":Ljava/lang/Process;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_74
    :goto_74
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7b

    const/4 v3, 0x0

    .end local v3    # "line":Ljava/lang/String;
    :cond_7b
    return-object v3

    .line 419
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "p":Ljava/lang/Process;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :catch_7c
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_74

    .line 413
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "p":Ljava/lang/Process;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catch_7f
    move-exception v6

    .line 414
    .local v6, "t":Ljava/lang/Throwable;
    :goto_80
    :try_start_80
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_87
    .catchall {:try_start_80 .. :try_end_87} :catchall_8f

    .line 416
    if-eqz v0, :cond_74

    .line 418
    :try_start_89
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_74

    .line 419
    :catch_8d
    move-exception v7

    goto :goto_74

    .line 416
    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_8f
    move-exception v7

    :goto_90
    if-eqz v0, :cond_95

    .line 418
    :try_start_92
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_95} :catch_96

    .line 419
    :cond_95
    :goto_95
    throw v7

    :catch_96
    move-exception v8

    goto :goto_95

    .line 416
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "p":Ljava/lang/Process;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :catchall_98
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_90

    .line 413
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_9b
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_80

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_9e
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_74
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;
    .registers 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 67
    const-class v1, Lcom/mob/tools/utils/DeviceHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/mob/tools/utils/DeviceHelper;->deviceHelper:Lcom/mob/tools/utils/DeviceHelper;

    if-nez v0, :cond_10

    if-eqz p0, :cond_10

    .line 68
    new-instance v0, Lcom/mob/tools/utils/DeviceHelper;

    invoke-direct {v0, p0}, Lcom/mob/tools/utils/DeviceHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mob/tools/utils/DeviceHelper;->deviceHelper:Lcom/mob/tools/utils/DeviceHelper;

    .line 70
    :cond_10
    sget-object v0, Lcom/mob/tools/utils/DeviceHelper;->deviceHelper:Lcom/mob/tools/utils/DeviceHelper;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v1

    return-object v0

    .line 67
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLocalDeviceKey()Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1184
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getSdcardState()Z

    move-result v9

    if-nez v9, :cond_8

    .line 1216
    :cond_7
    :goto_7
    return-object v7

    .line 1188
    :cond_8
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getSdcardPath()Ljava/lang/String;

    move-result-object v6

    .line 1190
    .local v6, "sdPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v9, "ShareSDK"

    invoke-direct {v1, v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    .local v1, "cacheRoot":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 1192
    new-instance v4, Ljava/io/File;

    const-string v9, ".dk"

    invoke-direct {v4, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1193
    .local v4, "keyFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 1194
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/mob/tools/utils/ResHelper;->getCacheRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ".dk"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    .line 1195
    .local v8, "success":Z
    if-eqz v8, :cond_3c

    .line 1196
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1201
    .end local v4    # "keyFile":Ljava/io/File;
    .end local v8    # "success":Z
    :cond_3c
    new-instance v4, Ljava/io/File;

    iget-object v9, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/mob/tools/utils/ResHelper;->getCacheRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ".dk"

    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    .restart local v4    # "keyFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1206
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1207
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1208
    .local v5, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1209
    .local v3, "key":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 1210
    .local v7, "strKey":Ljava/lang/String;
    if-eqz v3, :cond_6d

    instance-of v9, v3, [C

    if-eqz v9, :cond_6d

    .line 1211
    check-cast v3, [C

    .end local v3    # "key":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [C

    .line 1212
    .local v0, "cKey":[C
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    .line 1214
    .end local v0    # "cKey":[C
    :cond_6d
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_7
.end method

.method private getLocalWifiMac()Ljava/lang/String;
    .registers 6

    .prologue
    .line 167
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/mob/tools/utils/ResHelper;->getCacheRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".mcw"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .local v0, "file":Ljava/io/File;
    const-string v4, "1234567890abcdfg"

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/ResHelper;->readObjectFromFile(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    invoke-static {v4, v3}, Lcom/mob/tools/utils/Data;->AES128Decode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "wifiMac":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3e

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "^[a-fA-F0-9]{2}(:[a-fA-F0-9]{2}){5}$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 170
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_34} :catch_36

    move-result-object v3

    .line 175
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "wifiMac":Ljava/lang/String;
    :goto_35
    return-object v3

    .line 172
    :catch_36
    move-exception v1

    .line 173
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 175
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_3e
    const/4 v3, 0x0

    goto :goto_35
.end method

.method private getSystemServiceSave(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 817
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 821
    :goto_6
    return-object v1

    .line 818
    :catch_7
    move-exception v0

    .line 819
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 821
    const/4 v1, 0x0

    goto :goto_6
.end method

.method private is4GMobileNetwork()Z
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 922
    const-string v4, "phone"

    invoke-direct {p0, v4}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSave(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 923
    .local v0, "phone":Ljava/lang/Object;
    if-nez v0, :cond_a

    .line 942
    :goto_9
    return v5

    .line 928
    :cond_a
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 929
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v4, "ge"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    const-string v4, "tN"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    const-string v4, "et"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    const-string v4, "wo"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    const-string v4, "rk"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    const-string v4, "Ty"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    const-string v4, "pe"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v4, v6}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_42} :catch_4c

    move-result v3

    .line 937
    .local v3, "type":I
    const/16 v4, 0xd

    if-ne v3, v4, :cond_4a

    const/4 v4, 0x1

    :goto_48
    move v5, v4

    goto :goto_9

    :cond_4a
    move v4, v5

    goto :goto_48

    .line 938
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "type":I
    :catch_4c
    move-exception v2

    .line 939
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method private isFastMobileNetwork()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 946
    const-string v4, "phone"

    invoke-direct {p0, v4}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSave(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 947
    .local v0, "phone":Ljava/lang/Object;
    if-nez v0, :cond_c

    move v4, v5

    .line 983
    :goto_b
    return v4

    .line 952
    :cond_c
    :try_start_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 953
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v4, "ge"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    const-string v4, "tN"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    const-string v4, "et"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    const-string v4, "wo"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    const-string v4, "rk"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    const-string v4, "Ty"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    const-string v4, "pe"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v4, v7}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_44} :catch_6a

    move-result v3

    .line 961
    .local v3, "type":I
    packed-switch v3, :pswitch_data_74

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "type":I
    :goto_48
    move v4, v5

    .line 983
    goto :goto_b

    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "type":I
    :pswitch_4a
    move v4, v5

    .line 962
    goto :goto_b

    :pswitch_4c
    move v4, v5

    .line 963
    goto :goto_b

    :pswitch_4e
    move v4, v5

    .line 964
    goto :goto_b

    :pswitch_50
    move v4, v6

    .line 965
    goto :goto_b

    :pswitch_52
    move v4, v6

    .line 966
    goto :goto_b

    :pswitch_54
    move v4, v5

    .line 967
    goto :goto_b

    :pswitch_56
    move v4, v6

    .line 968
    goto :goto_b

    :pswitch_58
    move v4, v6

    .line 969
    goto :goto_b

    :pswitch_5a
    move v4, v6

    .line 970
    goto :goto_b

    :pswitch_5c
    move v4, v6

    .line 971
    goto :goto_b

    :pswitch_5e
    move v4, v6

    .line 972
    goto :goto_b

    :pswitch_60
    move v4, v6

    .line 973
    goto :goto_b

    :pswitch_62
    move v4, v6

    .line 974
    goto :goto_b

    :pswitch_64
    move v4, v5

    .line 975
    goto :goto_b

    :pswitch_66
    move v4, v6

    .line 976
    goto :goto_b

    :pswitch_68
    move v4, v5

    .line 977
    goto :goto_b

    .line 979
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "type":I
    :catch_6a
    move-exception v2

    .line 980
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_48

    .line 961
    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_68
        :pswitch_54
        :pswitch_4e
        :pswitch_5c
        :pswitch_4c
        :pswitch_50
        :pswitch_52
        :pswitch_4a
        :pswitch_56
        :pswitch_5a
        :pswitch_58
        :pswitch_64
        :pswitch_60
        :pswitch_66
        :pswitch_5e
        :pswitch_62
    .end packed-switch
.end method

.method private isSystemApp(Landroid/content/pm/PackageInfo;)Z
    .registers 7
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1365
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v2, :cond_1a

    move v0, v2

    .line 1366
    .local v0, "isSysApp":Z
    :goto_b
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-ne v4, v2, :cond_1c

    move v1, v2

    .line 1367
    .local v1, "isSysUpd":Z
    :goto_14
    if-nez v0, :cond_18

    if-eqz v1, :cond_19

    :cond_18
    move v3, v2

    :cond_19
    return v3

    .end local v0    # "isSysApp":Z
    .end local v1    # "isSysUpd":Z
    :cond_1a
    move v0, v3

    .line 1365
    goto :goto_b

    .restart local v0    # "isSysApp":Z
    :cond_1c
    move v1, v3

    .line 1366
    goto :goto_14
.end method

.method private listNetworkHardwareAddress()[Ljava/lang/String;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 315
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v14

    .line 316
    .local v14, "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-nez v14, :cond_8

    .line 317
    const/4 v10, 0x0

    .line 385
    :cond_7
    return-object v10

    .line 320
    :cond_8
    invoke-static {v14}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v7

    .line 321
    .local v7, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 322
    .local v11, "macs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_15
    :goto_15
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_83

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/NetworkInterface;

    .line 323
    .local v8, "intf":Ljava/net/NetworkInterface;
    const/4 v9, 0x0

    .line 324
    .local v9, "mac":[B
    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x9

    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_30

    .line 325
    invoke-virtual {v8}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v9

    .line 327
    :cond_30
    if-eqz v9, :cond_15

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .local v3, "buf":Ljava/lang/StringBuilder;
    array-length v0, v9

    move/from16 v22, v0

    const/16 v20, 0x0

    :goto_3c
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_62

    aget-byte v2, v9, v20

    .line 330
    .local v2, "aMac":B
    const-string v23, "%02x:"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    add-int/lit8 v20, v20, 0x1

    goto :goto_3c

    .line 332
    .end local v2    # "aMac":B
    :cond_62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_73

    .line 333
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 335
    :cond_73
    invoke-virtual {v8}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 338
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    .end local v8    # "intf":Ljava/net/NetworkInterface;
    .end local v9    # "mac":[B
    :cond_83
    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 340
    .local v13, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v19, "wlans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v5, "eths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v17, "rmnets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v4, "dummys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v18, "usbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v16, "rmnetUsbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v15, "others":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_b1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_121

    .line 348
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 349
    .local v12, "name":Ljava/lang/String;
    const-string v20, "wlan"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_d1

    .line 350
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b1

    .line 351
    :cond_d1
    const-string v20, "eth"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_df

    .line 352
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b1

    .line 353
    :cond_df
    const-string v20, "rev_rmnet"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_ef

    .line 354
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b1

    .line 355
    :cond_ef
    const-string v20, "dummy"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_fd

    .line 356
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b1

    .line 357
    :cond_fd
    const-string v20, "usbnet"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_10d

    .line 358
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b1

    .line 359
    :cond_10d
    const-string v20, "rmnet_usb"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_11d

    .line 360
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b1

    .line 362
    :cond_11d
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b1

    .line 365
    .end local v12    # "name":Ljava/lang/String;
    :cond_121
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 366
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 367
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 368
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 369
    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 370
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 371
    invoke-static {v15}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 373
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 374
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 375
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 376
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 377
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 378
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 379
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 381
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v10, v0, [Ljava/lang/String;

    .line 382
    .local v10, "macArr":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_15c
    array-length v0, v10

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_7

    .line 383
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    aput-object v20, v10, v6

    .line 382
    add-int/lit8 v6, v6, 0x1

    goto :goto_15c
.end method

.method private saveLocalDeviceKey(Ljava/lang/String;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1220
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getSdcardState()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1235
    :goto_6
    return-void

    .line 1224
    :cond_7
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->getCacheRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".dk"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    .local v2, "keyFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1226
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1229
    :cond_1d
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1230
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1231
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1232
    .local v0, "cKey":[C
    invoke-virtual {v3, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1233
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 1234
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_6
.end method

.method private saveLocalWifiMac(Ljava/lang/String;)V
    .registers 7
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 180
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "^[a-fA-F0-9]{2}(:[a-fA-F0-9]{2}){5}$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 181
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/mob/tools/utils/ResHelper;->getCacheRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".mcw"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .local v0, "file":Ljava/io/File;
    const-string v3, "1234567890abcdfg"

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 183
    .local v1, "string":[B
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/mob/tools/utils/ResHelper;->saveObjectToFile(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_30} :catch_31

    .line 188
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "string":[B
    :cond_30
    :goto_30
    return-void

    .line 185
    :catch_31
    move-exception v2

    .line 186
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_30
.end method


# virtual methods
.method public Base64AES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 572
    const/4 v1, 0x0

    .line 574
    .local v1, "result":Ljava/lang/String;
    :try_start_1
    invoke-static {p2, p1}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 576
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 577
    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_19} :catch_1b

    move-result-object v1

    .line 582
    :cond_1a
    :goto_1a
    return-object v1

    .line 579
    :catch_1b
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_1a
.end method

.method public amIOnForeground()Z
    .registers 10

    .prologue
    .line 1514
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->currentActivityThread()Ljava/lang/Object;

    move-result-object v6

    .line 1515
    .local v6, "thread":Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1516
    .local v2, "sb2":Ljava/lang/StringBuilder;
    const-string v7, "mA"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    const-string v7, "ct"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    const-string v7, "iv"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    const-string v7, "it"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    const-string v7, "ie"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    const-string v7, "s"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1522
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1523
    .local v0, "activities":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_39
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_76

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1524
    .local v1, "activity":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1525
    .local v3, "sb3":Ljava/lang/StringBuilder;
    const-string v8, "st"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    const-string v8, "op"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    const-string v8, "pe"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    const-string v8, "d"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 1530
    .local v4, "stopped":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_69} :catch_6e

    move-result v8

    if-nez v8, :cond_39

    .line 1531
    const/4 v7, 0x1

    .line 1537
    .end local v0    # "activities":Ljava/util/Map;
    .end local v1    # "activity":Ljava/lang/Object;
    .end local v2    # "sb2":Ljava/lang/StringBuilder;
    .end local v3    # "sb3":Ljava/lang/StringBuilder;
    .end local v4    # "stopped":Ljava/lang/Boolean;
    .end local v6    # "thread":Ljava/lang/Object;
    :goto_6d
    return v7

    .line 1534
    :catch_6e
    move-exception v5

    .line 1535
    .local v5, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 1537
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_76
    const/4 v7, 0x0

    goto :goto_6d
.end method

.method public checkPermission(Ljava/lang/String;)Z
    .registers 13
    .param p1, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1396
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_ae

    .line 1398
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1399
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v7, "an"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    const-string v7, "dr"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1401
    const-string v7, "oi"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    const-string v7, "d."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1403
    const-string v7, "co"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1404
    const-string v7, "nt"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    const-string v7, "en"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1406
    const-string v7, "t."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1407
    const-string v7, "Co"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1408
    const-string v7, "nt"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1409
    const-string v7, "ex"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    const-string v7, "t"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    .line 1412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1413
    .local v3, "sb1":Ljava/lang/StringBuilder;
    const-string v7, "ch"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1414
    const-string v7, "ec"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1415
    const-string v7, "kS"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1416
    const-string v7, "el"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1417
    const-string v7, "fP"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1418
    const-string v7, "er"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1419
    const-string v7, "mi"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1420
    const-string v7, "ss"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1421
    const-string v7, "io"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1422
    const-string v7, "n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1423
    iget-object v7, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v7, v8, v9}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1424
    .local v1, "ret":Ljava/lang/Integer;
    if-nez v1, :cond_9f

    const/4 v0, -0x1

    .line 1432
    .end local v1    # "ret":Ljava/lang/Integer;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "sb1":Ljava/lang/StringBuilder;
    .local v0, "res":I
    :goto_9c
    if-nez v0, :cond_bd

    :goto_9e
    return v5

    .line 1424
    .end local v0    # "res":I
    .restart local v1    # "ret":Ljava/lang/Integer;
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "sb1":Ljava/lang/StringBuilder;
    :cond_9f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_a2} :catch_a4

    move-result v0

    goto :goto_9c

    .line 1425
    .end local v1    # "ret":Ljava/lang/Integer;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "sb1":Ljava/lang/StringBuilder;
    :catch_a4
    move-exception v4

    .line 1426
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 1427
    const/4 v0, -0x1

    .line 1428
    .restart local v0    # "res":I
    goto :goto_9c

    .line 1430
    .end local v0    # "res":I
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_ae
    iget-object v7, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "res":I
    goto :goto_9c

    :cond_bd
    move v5, v6

    .line 1432
    goto :goto_9e
.end method

.method public currentActivityThread()Ljava/lang/Object;
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 1923
    new-instance v1, Lcom/mob/tools/utils/DeviceHelper$1;

    invoke-direct {v1, p0}, Lcom/mob/tools/utils/DeviceHelper$1;-><init>(Lcom/mob/tools/utils/DeviceHelper;)V

    .line 1960
    .local v1, "mainThreadAct":Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_24

    .line 1961
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1985
    :goto_23
    return-object v4

    .line 1963
    :cond_24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1964
    .local v0, "lock":Ljava/lang/Object;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/Object;

    .line 1965
    .local v2, "output":[Ljava/lang/Object;
    monitor-enter v0

    .line 1966
    const/4 v4, 0x0

    :try_start_2e
    new-instance v5, Lcom/mob/tools/utils/DeviceHelper$2;

    invoke-direct {v5, p0, v0, v2, v1}, Lcom/mob/tools/utils/DeviceHelper$2;-><init>(Lcom/mob/tools/utils/DeviceHelper;Ljava/lang/Object;[Ljava/lang/Object;Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;)V

    invoke-static {v4, v5}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_46

    .line 1980
    :try_start_36
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_39} :catch_3d
    .catchall {:try_start_36 .. :try_end_39} :catchall_46

    .line 1984
    :goto_39
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_46

    .line 1985
    aget-object v4, v2, v8

    goto :goto_23

    .line 1981
    :catch_3d
    move-exception v3

    .line 1982
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_3e
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_39

    .line 1984
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_46
    move-exception v4

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_46

    throw v4
.end method

.method public getAdvertisingID()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1565
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    if-ne v6, v7, :cond_12

    .line 1566
    new-instance v6, Ljava/lang/Throwable;

    const-string v7, "Do not call this function from the main thread !"

    invoke-direct {v6, v7}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1568
    :cond_12
    iget-object v6, p0, Lcom/mob/tools/utils/DeviceHelper;->advertiseID:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 1569
    iget-object v6, p0, Lcom/mob/tools/utils/DeviceHelper;->advertiseID:Ljava/lang/String;

    .line 1590
    :goto_1c
    return-object v6

    .line 1572
    :cond_1d
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1573
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "com.google.android.gms"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1574
    new-instance v1, Lcom/mob/tools/utils/DeviceHelper$GSConnection;

    const/4 v6, 0x0

    invoke-direct {v1, p0, v6}, Lcom/mob/tools/utils/DeviceHelper$GSConnection;-><init>(Lcom/mob/tools/utils/DeviceHelper;Lcom/mob/tools/utils/DeviceHelper$1;)V

    .line 1576
    .local v1, "gsc":Lcom/mob/tools/utils/DeviceHelper$GSConnection;
    :try_start_2f
    iget-object v6, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v1, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1577
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper$GSConnection;->takeBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1578
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1579
    .local v2, "input":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1580
    .local v4, "output":Landroid/os/Parcel;
    const-string v6, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1581
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v0, v6, v2, v4, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1582
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 1583
    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mob/tools/utils/DeviceHelper;->advertiseID:Ljava/lang/String;

    .line 1585
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1586
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1587
    iget-object v6, p0, Lcom/mob/tools/utils/DeviceHelper;->advertiseID:Ljava/lang/String;
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_5c} :catch_62
    .catchall {:try_start_2f .. :try_end_5c} :catchall_72

    .line 1592
    iget-object v7, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1c

    .line 1588
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "input":Landroid/os/Parcel;
    .end local v4    # "output":Landroid/os/Parcel;
    :catch_62
    move-exception v5

    .line 1589
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_63
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 1590
    iget-object v6, p0, Lcom/mob/tools/utils/DeviceHelper;->advertiseID:Ljava/lang/String;
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_72

    .line 1592
    iget-object v7, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1c

    .end local v5    # "t":Ljava/lang/Throwable;
    :catchall_72
    move-exception v6

    iget-object v7, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v6
.end method

.method public getAndroidID()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1558
    iget-object v1, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1559
    .local v0, "androidId":Ljava/lang/String;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAndroidID === "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1560
    return-object v0
.end method

.method public getAppLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1244
    iget-object v3, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 1245
    .local v1, "appName":Ljava/lang/String;
    if-eqz v1, :cond_1c

    .line 1246
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    if-lt v3, v4, :cond_2e

    const-string v3, ".*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 1248
    :try_start_18
    invoke-static {v1}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_3d

    .line 1250
    const/4 v1, 0x0

    .line 1257
    :cond_1c
    :goto_1c
    iget-object v3, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 1258
    .local v0, "appLbl":I
    if-lez v0, :cond_30

    .line 1259
    iget-object v3, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2c
    move-object v2, v1

    .line 1264
    .end local v0    # "appLbl":I
    .end local v1    # "appName":Ljava/lang/String;
    .local v2, "appName":Ljava/lang/String;
    :goto_2d
    return-object v2

    .end local v2    # "appName":Ljava/lang/String;
    .restart local v1    # "appName":Ljava/lang/String;
    :cond_2e
    move-object v2, v1

    .line 1253
    .end local v1    # "appName":Ljava/lang/String;
    .restart local v2    # "appName":Ljava/lang/String;
    goto :goto_2d

    .line 1261
    .end local v2    # "appName":Ljava/lang/String;
    .restart local v0    # "appLbl":I
    .restart local v1    # "appName":Ljava/lang/String;
    :cond_30
    iget-object v3, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2c

    .line 1251
    .end local v0    # "appLbl":I
    :catch_3d
    move-exception v3

    goto :goto_1c
.end method

.method public getAppVersion()I
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1270
    :try_start_1
    iget-object v4, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1271
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1272
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_15

    .line 1276
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_14
    return v3

    .line 1273
    :catch_15
    move-exception v2

    .line 1274
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public getAppVersionName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1282
    :try_start_0
    iget-object v3, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1283
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1284
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    .line 1288
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_13
    return-object v3

    .line 1285
    :catch_14
    move-exception v2

    .line 1286
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 1288
    const-string v3, "1.0"

    goto :goto_13
.end method

.method public getAvailableWifiList()Ljava/util/ArrayList;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1991
    :try_start_0
    const-string v18, "android.permission.ACCESS_WIFI_STATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_48d

    .line 1992
    const-string v18, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSave(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    .line 1993
    .local v17, "wifi":Ljava/lang/Object;
    if-nez v17, :cond_1a

    .line 1994
    const/4 v9, 0x0

    .line 2207
    .end local v17    # "wifi":Ljava/lang/Object;
    :cond_19
    :goto_19
    return-object v9

    .line 1997
    .restart local v17    # "wifi":Ljava/lang/Object;
    :cond_1a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1998
    .local v10, "sb":Ljava/lang/StringBuilder;
    const-string v18, "ge"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1999
    const-string v18, "tS"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    const-string v18, "ca"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2001
    const-string v18, "nR"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2002
    const-string v18, "es"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2003
    const-string v18, "ul"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2004
    const-string v18, "ts"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2005
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2006
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v6, :cond_66

    .line 2007
    const/4 v9, 0x0

    goto :goto_19

    .line 2010
    :cond_66
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2011
    .local v11, "sb1":Ljava/lang/StringBuilder;
    const-string v18, "SS"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2012
    const-string v18, "ID"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2013
    const-string v18, ",B"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2014
    const-string v18, "SS"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    const-string v18, "ID"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2016
    const-string v18, ",h"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2017
    const-string v18, "es"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2018
    const-string v18, "si"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2019
    const-string v18, "d,"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2020
    const-string v18, "an"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    const-string v18, "qp"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2022
    const-string v18, "Do"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2023
    const-string v18, "ma"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2024
    const-string v18, "in"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2025
    const-string v18, "Id"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2026
    const-string v18, ",c"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2027
    const-string v18, "ap"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2028
    const-string v18, "ab"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2029
    const-string v18, "il"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2030
    const-string v18, "it"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2031
    const-string v18, "ie"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2032
    const-string v18, "s,"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2033
    const-string v18, "le"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2034
    const-string v18, "ve"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2035
    const-string v18, "l,"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2036
    const-string v18, "fr"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2037
    const-string v18, "eq"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2038
    const-string v18, "ue"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2039
    const-string v18, "nc"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2040
    const-string v18, "y,"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2041
    const-string v18, "ch"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2042
    const-string v18, "an"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2043
    const-string v18, "ne"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2044
    const-string v18, "lW"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2045
    const-string v18, "id"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2046
    const-string v18, "th"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2047
    const-string v18, ",c"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2048
    const-string v18, "en"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2049
    const-string v18, "te"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2050
    const-string v18, "rF"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2051
    const-string v18, "re"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2052
    const-string v18, "q0"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2053
    const-string v18, ",c"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2054
    const-string v18, "en"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2055
    const-string v18, "te"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2056
    const-string v18, "rF"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2057
    const-string v18, "re"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2058
    const-string v18, "q1"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2059
    const-string v18, ",t"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2060
    const-string v18, "im"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2061
    const-string v18, "es"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    const-string v18, "ta"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2063
    const-string v18, "mp"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2064
    const-string v18, ",s"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2065
    const-string v18, "ee"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2066
    const-string v18, "n,"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2067
    const-string v18, "is"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2068
    const-string v18, "Au"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2069
    const-string v18, "to"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2070
    const-string v18, "Jo"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2071
    const-string v18, "in"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2072
    const-string v18, "Ca"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2073
    const-string v18, "nd"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2074
    const-string v18, "id"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2075
    const-string v18, "at"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2076
    const-string v18, "e,"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2077
    const-string v18, "nu"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2078
    const-string v18, "mI"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2079
    const-string v18, "pC"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2080
    const-string v18, "on"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2081
    const-string v18, "fi"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2082
    const-string v18, "gF"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2083
    const-string v18, "ai"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2084
    const-string v18, "lu"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2085
    const-string v18, "re"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2086
    const-string v18, "s,"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2087
    const-string v18, "bl"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2088
    const-string v18, "ac"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2089
    const-string v18, "kL"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2090
    const-string v18, "is"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2091
    const-string v18, "tT"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2092
    const-string v18, "im"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2093
    const-string v18, "es"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2094
    const-string v18, "ta"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2095
    const-string v18, "mp"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2096
    const-string v18, ",u"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2097
    const-string v18, "nt"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2098
    const-string v18, "ru"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2099
    const-string v18, "st"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2100
    const-string v18, "ed"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2101
    const-string v18, ",n"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2102
    const-string v18, "um"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    const-string v18, "Co"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2104
    const-string v18, "nn"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2105
    const-string v18, "ec"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2106
    const-string v18, "ti"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2107
    const-string v18, "on"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2108
    const-string v18, ",n"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2109
    const-string v18, "um"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2110
    const-string v18, "Us"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2111
    const-string v18, "ag"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2112
    const-string v18, "e,"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2113
    const-string v18, "di"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2114
    const-string v18, "st"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2115
    const-string v18, "an"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2116
    const-string v18, "ce"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2117
    const-string v18, "Cm"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2118
    const-string v18, ",d"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2119
    const-string v18, "is"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2120
    const-string v18, "ta"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2121
    const-string v18, "nc"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2122
    const-string v18, "eS"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2123
    const-string v18, "dC"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2124
    const-string v18, "m,"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2125
    const-string v18, "fl"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2126
    const-string v18, "ag"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2127
    const-string v18, "s"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2128
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, ","

    invoke-static/range {v18 .. v19}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2129
    .local v3, "fields":[Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2130
    .local v12, "sb2":Ljava/lang/StringBuilder;
    const-string v18, "wi"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2131
    const-string v18, "fi"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2132
    const-string v18, "Ss"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2133
    const-string v18, "id"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2134
    const-string v18, ",v"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2135
    const-string v18, "en"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2136
    const-string v18, "ue"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2137
    const-string v18, "Na"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2138
    const-string v18, "me"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2139
    const-string v18, ",o"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2140
    const-string v18, "pe"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2141
    const-string v18, "ra"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2142
    const-string v18, "to"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2143
    const-string v18, "rF"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2144
    const-string v18, "ri"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2145
    const-string v18, "en"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2146
    const-string v18, "dl"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2147
    const-string v18, "yN"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2148
    const-string v18, "am"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2149
    const-string v18, "e"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2150
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, ","

    invoke-static/range {v18 .. v19}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2151
    .local v5, "fldsToString":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2152
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_44c
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_19

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 2153
    .local v15, "sr":Ljava/lang/Object;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2154
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    array-length v0, v3

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_460
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_490

    aget-object v4, v3, v18
    :try_end_468
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_468} :catch_481

    .line 2156
    .local v4, "fld":Ljava/lang/String;
    :try_start_468
    invoke-static {v15, v4}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_471
    .catch Ljava/lang/Throwable; {:try_start_468 .. :try_end_471} :catch_474

    .line 2154
    :goto_471
    add-int/lit8 v18, v18, 0x1

    goto :goto_460

    .line 2157
    :catch_474
    move-exception v16

    .line 2158
    .local v16, "t":Ljava/lang/Throwable;
    :try_start_475
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_480
    .catch Ljava/lang/Throwable; {:try_start_475 .. :try_end_480} :catch_481

    goto :goto_471

    .line 2204
    .end local v3    # "fields":[Ljava/lang/String;
    .end local v4    # "fld":Ljava/lang/String;
    .end local v5    # "fldsToString":[Ljava/lang/String;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v7    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "sb1":Ljava/lang/StringBuilder;
    .end local v12    # "sb2":Ljava/lang/StringBuilder;
    .end local v15    # "sr":Ljava/lang/Object;
    .end local v16    # "t":Ljava/lang/Throwable;
    .end local v17    # "wifi":Ljava/lang/Object;
    :catch_481
    move-exception v16

    .line 2205
    .restart local v16    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 2207
    .end local v16    # "t":Ljava/lang/Throwable;
    :cond_48d
    const/4 v9, 0x0

    goto/16 :goto_19

    .line 2162
    .restart local v3    # "fields":[Ljava/lang/String;
    .restart local v5    # "fldsToString":[Ljava/lang/String;
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v7    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    .restart local v11    # "sb1":Ljava/lang/StringBuilder;
    .restart local v12    # "sb2":Ljava/lang/StringBuilder;
    .restart local v15    # "sr":Ljava/lang/Object;
    .restart local v17    # "wifi":Ljava/lang/Object;
    :cond_490
    :try_start_490
    array-length v0, v5

    move/from16 v21, v0

    const/16 v18, 0x0

    move/from16 v19, v18

    :goto_497
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_4c3

    aget-object v4, v5, v19
    :try_end_49f
    .catch Ljava/lang/Throwable; {:try_start_490 .. :try_end_49f} :catch_481

    .line 2164
    .restart local v4    # "fld":Ljava/lang/String;
    :try_start_49f
    invoke-static {v15, v4}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 2165
    .local v8, "o":Ljava/lang/Object;
    if-nez v8, :cond_4b1

    const/16 v18, 0x0

    :goto_4a7
    move-object/from16 v0, v18

    invoke-virtual {v7, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2162
    .end local v8    # "o":Ljava/lang/Object;
    :goto_4ac
    add-int/lit8 v18, v19, 0x1

    move/from16 v19, v18

    goto :goto_497

    .line 2165
    .restart local v8    # "o":Ljava/lang/Object;
    :cond_4b1
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_4b4
    .catch Ljava/lang/Throwable; {:try_start_49f .. :try_end_4b4} :catch_4b6

    move-result-object v18

    goto :goto_4a7

    .line 2166
    .end local v8    # "o":Ljava/lang/Object;
    :catch_4b6
    move-exception v16

    .line 2167
    .restart local v16    # "t":Ljava/lang/Throwable;
    :try_start_4b7
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_4c2
    .catch Ljava/lang/Throwable; {:try_start_4b7 .. :try_end_4c2} :catch_481

    goto :goto_4ac

    .line 2172
    .end local v4    # "fld":Ljava/lang/String;
    .end local v16    # "t":Ljava/lang/Throwable;
    :cond_4c3
    :try_start_4c3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 2173
    .local v13, "sb3":Ljava/lang/StringBuilder;
    const-string v18, "is"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2174
    const-string v18, "80"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2175
    const-string v18, "21"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2176
    const-string v18, "1m"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2177
    const-string v18, "cR"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2178
    const-string v18, "es"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2179
    const-string v18, "po"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2180
    const-string v18, "nd"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2181
    const-string v18, "er"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2182
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v15, v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 2183
    .restart local v8    # "o":Ljava/lang/Object;
    const-string v18, "is80211McRTTResponder"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_522
    .catch Ljava/lang/Throwable; {:try_start_4c3 .. :try_end_522} :catch_568

    .line 2189
    .end local v8    # "o":Ljava/lang/Object;
    .end local v13    # "sb3":Ljava/lang/StringBuilder;
    :goto_522
    :try_start_522
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 2190
    .local v14, "sb4":Ljava/lang/StringBuilder;
    const-string v18, "an"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2191
    const-string v18, "qp"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2192
    const-string v18, "Li"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2193
    const-string v18, "ne"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2194
    const-string v18, "s"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2195
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2196
    .local v2, "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v19, "anqpLines"

    if-nez v2, :cond_575

    const/16 v18, 0x0

    :goto_55c
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_563
    .catch Ljava/lang/Throwable; {:try_start_522 .. :try_end_563} :catch_57d

    .line 2200
    .end local v2    # "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "sb4":Ljava/lang/StringBuilder;
    :goto_563
    :try_start_563
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_44c

    .line 2184
    :catch_568
    move-exception v16

    .line 2185
    .restart local v16    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_574
    .catch Ljava/lang/Throwable; {:try_start_563 .. :try_end_574} :catch_481

    goto :goto_522

    .line 2196
    .end local v16    # "t":Ljava/lang/Throwable;
    .restart local v2    # "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "sb4":Ljava/lang/StringBuilder;
    :cond_575
    :try_start_575
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_57c
    .catch Ljava/lang/Throwable; {:try_start_575 .. :try_end_57c} :catch_57d

    goto :goto_55c

    .line 2197
    .end local v2    # "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "sb4":Ljava/lang/StringBuilder;
    :catch_57d
    move-exception v16

    .line 2198
    .restart local v16    # "t":Ljava/lang/Throwable;
    :try_start_57e
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_589
    .catch Ljava/lang/Throwable; {:try_start_57e .. :try_end_589} :catch_481

    goto :goto_563
.end method

.method public getBluetoothName()Ljava/lang/String;
    .registers 9

    .prologue
    .line 752
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 753
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v5, "an"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    const-string v5, "dr"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    const-string v5, "oi"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    const-string v5, "d."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    const-string v5, "bl"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    const-string v5, "ue"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    const-string v5, "to"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    const-string v5, "ot"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    const-string v5, "h."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    const-string v5, "Bl"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    const-string v5, "ue"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    const-string v5, "to"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    const-string v5, "ot"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    const-string v5, "hA"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    const-string v5, "da"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    const-string v5, "pt"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    const-string v5, "er"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    .line 771
    const-string v5, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v5}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d9

    .line 772
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 773
    .local v3, "sb1":Ljava/lang/StringBuilder;
    const-string v5, "ge"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    const-string v5, "tD"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    const-string v5, "ef"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    const-string v5, "au"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    const-string v5, "lt"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    const-string v5, "Ad"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    const-string v5, "ap"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    const-string v5, "te"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    const-string v5, "r"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    const-string v5, "BluetoothAdapter"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 783
    .local v1, "myDevice":Ljava/lang/Object;
    if-eqz v1, :cond_d9

    .line 784
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 785
    .local v4, "sb2":Ljava/lang/StringBuilder;
    const-string v5, "ge"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    const-string v5, "tN"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    const-string v5, "am"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    const-string v5, "e"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d0} :catch_d1

    .line 795
    .end local v1    # "myDevice":Ljava/lang/Object;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "sb1":Ljava/lang/StringBuilder;
    .end local v4    # "sb2":Ljava/lang/StringBuilder;
    :goto_d0
    return-object v5

    .line 792
    :catch_d1
    move-exception v0

    .line 793
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 795
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_d9
    const/4 v5, 0x0

    goto :goto_d0
.end method

.method public getBssid()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 132
    :try_start_1
    const-string v7, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v7}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 133
    const-string v7, "wifi"

    invoke-direct {p0, v7}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSave(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 134
    .local v5, "wifi":Ljava/lang/Object;
    if-nez v5, :cond_12

    .line 162
    .end local v5    # "wifi":Ljava/lang/Object;
    :cond_11
    :goto_11
    return-object v6

    .line 138
    .restart local v5    # "wifi":Ljava/lang/Object;
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v7, "ge"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v7, "tC"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v7, "on"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v7, "ne"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v7, "ct"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v7, "io"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v7, "nI"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v7, "nf"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v7, "o"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 149
    .local v1, "info":Ljava/lang/Object;
    if-eqz v1, :cond_11

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v3, "sb1":Ljava/lang/StringBuilder;
    const-string v7, "ge"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v7, "tB"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v7, "SS"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v7, "ID"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1, v7, v8}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_77} :catch_7c

    .line 156
    .local v0, "bssid":Ljava/lang/String;
    if-nez v0, :cond_7a

    move-object v0, v6

    .end local v0    # "bssid":Ljava/lang/String;
    :cond_7a
    move-object v6, v0

    goto :goto_11

    .line 159
    .end local v1    # "info":Ljava/lang/Object;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "sb1":Ljava/lang/StringBuilder;
    .end local v5    # "wifi":Ljava/lang/Object;
    :catch_7c
    move-exception v4

    .line 160
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public getCarrier()Ljava/lang/String;
    .registers 7

    .prologue
    .line 626
    :try_start_0
    const-string v4, "phone"

    invoke-direct {p0, v4}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSave(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 627
    .local v3, "tm":Ljava/lang/Object;
    if-nez v3, :cond_b

    .line 628
    const-string v0, "-1"

    .line 647
    .end local v3    # "tm":Ljava/lang/Object;
    :cond_a
    :goto_a
    return-object v0

    .line 631
    .restart local v3    # "tm":Ljava/lang/Object;
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 632
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v4, "ge"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    const-string v4, "tS"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    const-string v4, "im"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    const-string v4, "Op"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const-string v4, "er"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    const-string v4, "at"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const-string v4, "or"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 640
    .local v0, "operator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 641
    const-string v0, "-1"
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_48} :catch_49

    goto :goto_a

    .line 644
    .end local v0    # "operator":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "tm":Ljava/lang/Object;
    :catch_49
    move-exception v2

    .line 645
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 647
    const-string v0, "-1"

    goto :goto_a
.end method

.method public getCarrierName()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 651
    const-string v5, "phone"

    invoke-direct {p0, v5}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSave(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 652
    .local v3, "tm":Ljava/lang/Object;
    if-nez v3, :cond_b

    move-object v0, v4

    .line 678
    :cond_a
    :goto_a
    return-object v0

    .line 657
    :cond_b
    :try_start_b
    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v5}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 659
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v5, "ge"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    const-string v5, "tS"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    const-string v5, "im"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    const-string v5, "Op"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    const-string v5, "er"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    const-string v5, "at"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    const-string v5, "or"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    const-string v5, "Na"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    const-string v5, "me"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 669
    .local v0, "operator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_55} :catch_5a

    move-result v4

    if-eqz v4, :cond_a

    .line 670
    const/4 v0, 0x0

    goto :goto_a

    .line 674
    .end local v0    # "operator":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :catch_5a
    move-exception v2

    .line 675
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_62
    move-object v0, v4

    .line 678
    goto :goto_a
.end method

.method public getCellId()I
    .registers 9

    .prologue
    const/4 v6, -0x1

    .line 1797
    :try_start_1
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v5}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 1798
    const-string v5, "phone"

    invoke-direct {p0, v5}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSave(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1799
    .local v4, "tm":Ljava/lang/Object;
    if-eqz v4, :cond_82

    .line 1800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1801
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v5, "ge"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1802
    const-string v5, "tC"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1803
    const-string v5, "el"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1804
    const-string v5, "lL"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1805
    const-string v5, "oc"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1806
    const-string v5, "at"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1807
    const-string v5, "io"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1808
    const-string v5, "n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1809
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v7}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1810
    .local v0, "loc":Ljava/lang/Object;
    if-eqz v0, :cond_82

    .line 1811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1812
    .local v2, "sb1":Ljava/lang/StringBuilder;
    const-string v5, "ge"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1813
    const-string v5, "tC"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1814
    const-string v5, "id"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1815
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v5, v7}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_78} :catch_7a

    move-result v5

    .line 1822
    .end local v0    # "loc":Ljava/lang/Object;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "sb1":Ljava/lang/StringBuilder;
    .end local v4    # "tm":Ljava/lang/Object;
    :goto_79
    return v5

    .line 1819
    :catch_7a
    move-exception v3

    .line 1820
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_82
    move v5, v6

    .line 1822
    goto :goto_79
.end method

.method public getCellLac()I
    .registers 9

    .prologue
    const/4 v6, -0x1

    .line 1828
    :try_start_1
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v5}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 1829
    const-string v5, "phone"

    invoke-direct {p0, v5}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSave(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1830
    .local v4, "tm":Ljava/lang/Object;
    if-eqz v4, :cond_82

    .line 1831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1832
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v5, "ge"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1833
    const-string v5, "tC"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1834
    const-string v5, "el"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    const-string v5, "lL"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1836
    const-string v5, "oc"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1837
    const-string v5, "at"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1838
    const-string v5, "io"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1839
    const-string v5, "n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1840
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v7}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1841
    .local v0, "loc":Ljava/lang/Object;
    if-eqz v0, :cond_82

    .line 1842
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1843
    .local v2, "sb1":Ljava/lang/StringBuilder;
    const-string v5, "ge"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    const-string v5, "tL"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1845
    const-string v5, "ac"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1846
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v5, v7}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_78} :catch_7a

    move-result v5

    .line 1853
    .end local v0    # "loc":Ljava/lang/Object;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "sb1":Ljava/lang/StringBuilder;
    .end local v4    # "tm":Ljava/lang/Object;
    :goto_79
    return v5

    .line 1850
    :catch_7a
    move-exception v3

    .line 1851
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_82
    move v5, v6

    .line 1853
    goto :goto_79
.end method

.method public getCharAndNumr(I)Ljava/lang/String;
    .registers 16
    .param p1, "length"    # I

    .prologue
    .line 1107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1108
    .local v2, "currentTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1109
    .local v4, "elapseTime":J
    xor-long v8, v2, v4

    .line 1110
    .local v8, "realTime":J
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 1111
    .local v10, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1113
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 1114
    .local v7, "random":Ljava/util/Random;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_18
    if-ge v6, p1, :cond_4f

    .line 1115
    const/4 v11, 0x2

    invoke-virtual {v7, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    rem-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_3e

    const-string v0, "char"

    .line 1116
    .local v0, "charOrNum":Ljava/lang/String;
    :goto_25
    const-string v11, "char"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_41

    .line 1118
    const/16 v11, 0x1a

    invoke-virtual {v7, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x61

    int-to-char v1, v11

    .line 1119
    .local v1, "charValue":C
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v10, v11, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 1114
    .end local v1    # "charValue":C
    :goto_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 1115
    .end local v0    # "charOrNum":Ljava/lang/String;
    :cond_3e
    const-string v0, "num"

    goto :goto_25

    .line 1122
    .restart local v0    # "charOrNum":Ljava/lang/String;
    :cond_41
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    const/16 v12, 0xa

    invoke-virtual {v7, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuffer;->insert(II)Ljava/lang/StringBuffer;

    goto :goto_3b

    .line 1125
    .end local v0    # "charOrNum":Ljava/lang/String;
    :cond_4f
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v13, 0x28

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method public getDetailNetworkTypeForStatic()Ljava/lang/String;
    .registers 3

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 897
    .local v0, "networkType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 898
    :cond_16
    const-string v0, "none"

    .line 913
    .end local v0    # "networkType":Ljava/lang/String;
    :cond_18
    :goto_18
    return-object v0

    .line 901
    .restart local v0    # "networkType":Ljava/lang/String;
    :cond_19
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 902
    const-string v0, "wifi"

    goto :goto_18

    .line 903
    :cond_24
    const-string v1, "4g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 904
    const-string v0, "4g"

    goto :goto_18

    .line 905
    :cond_2f
    const-string v1, "3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 906
    const-string v0, "3g"

    goto :goto_18

    .line 907
    :cond_3a
    const-string v1, "2g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 908
    const-string v0, "2g"

    goto :goto_18

    .line 909
    :cond_45
    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 910
    const-string v0, "bluetooth"

    goto :goto_18
.end method

.method public getDeviceData()Ljava/lang/String;
    .registers 5

    .prologue
    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 554
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getCarrier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getScreenSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceKey()Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "deviString":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/mob/tools/utils/DeviceHelper;->Base64AES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getDeviceDataNotAES()Ljava/lang/String;
    .registers 3

    .prologue
    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 562
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getCarrier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getScreenSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getIMEI()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "deviceId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_14

    .line 450
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getSerialno()Ljava/lang/String;

    move-result-object v0

    .line 452
    .end local v0    # "deviceId":Ljava/lang/String;
    :cond_14
    return-object v0
.end method

.method public getDeviceKey()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x28

    .line 1043
    const/4 v0, 0x0

    .line 1046
    .local v0, "deviceKey":Ljava/lang/String;
    :try_start_3
    const-string v2, "comm/dbs/.duid"

    invoke-direct {p0, v2}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceKeyWithDuid(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_2a

    move-result-object v0

    .line 1050
    :goto_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_19

    .line 1052
    :cond_15
    invoke-direct {p0}, Lcom/mob/tools/utils/DeviceHelper;->genDeviceKey()Ljava/lang/String;

    move-result-object v0

    .line 1054
    :cond_19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_33

    .line 1055
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1083
    :goto_29
    return-object v2

    .line 1047
    :catch_2a
    move-exception v1

    .line 1048
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_9

    .line 1060
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_33
    :try_start_33
    invoke-direct {p0}, Lcom/mob/tools/utils/DeviceHelper;->getLocalDeviceKey()Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_36} :catch_48

    move-result-object v0

    .line 1065
    :goto_37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_52

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_52

    .line 1066
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_29

    .line 1061
    :catch_48
    move-exception v1

    .line 1062
    .restart local v1    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 1063
    const/4 v0, 0x0

    goto :goto_37

    .line 1069
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_62

    .line 1071
    :cond_5e
    invoke-virtual {p0, v3}, Lcom/mob/tools/utils/DeviceHelper;->getCharAndNumr(I)Ljava/lang/String;

    move-result-object v0

    .line 1075
    :cond_62
    if-eqz v0, :cond_6b

    .line 1077
    :try_start_64
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1078
    invoke-direct {p0, v0}, Lcom/mob/tools/utils/DeviceHelper;->saveLocalDeviceKey(Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_6b} :catch_6d

    :cond_6b
    :goto_6b
    move-object v2, v0

    .line 1083
    goto :goto_29

    .line 1079
    :catch_6d
    move-exception v1

    .line 1080
    .restart local v1    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_6b
.end method

.method public getDeviceType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1858
    const-string v2, "uimode"

    invoke-direct {p0, v2}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSave(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    .line 1859
    .local v1, "um":Landroid/app/UiModeManager;
    if-eqz v1, :cond_11

    .line 1860
    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    .line 1861
    .local v0, "type":I
    packed-switch v0, :pswitch_data_26

    .line 1870
    .end local v0    # "type":I
    :cond_11
    const-string v2, "UNDEFINED"

    :goto_13
    return-object v2

    .line 1862
    .restart local v0    # "type":I
    :pswitch_14
    const-string v2, "NO_UI"

    goto :goto_13

    .line 1863
    :pswitch_17
    const-string v2, "DESK"

    goto :goto_13

    .line 1864
    :pswitch_1a
    const-string v2, "CAR"

    goto :goto_13

    .line 1865
    :pswitch_1d
    const-string v2, "TELEVISION"

    goto :goto_13

    .line 1866
    :pswitch_20
    const-string v2, "APPLIANCE"

    goto :goto_13

    .line 1867
    :pswitch_23
    const-string v2, "WATCH"

    goto :goto_13

    .line 1861
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
    .end packed-switch
.end method

.method public getIMEI()Ljava/lang/String;
    .registers 16

    .prologue
    const/4 v11, 0x0

    .line 457
    const-string v13, "phone"

    invoke-direct {p0, v13}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSave(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 458
    .local v9, "phone":Ljava/lang/Object;
    if-nez v9, :cond_b

    move-object v2, v11

    .line 512
    :cond_a
    :goto_a
    return-object v2

    .line 462
    :cond_b
    const/4 v2, 0x0

    .line 464
    .local v2, "deviceId":Ljava/lang/String;
    :try_start_c
    const-string v13, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v13}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_46

    .line 465
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .local v10, "sb":Ljava/lang/StringBuilder;
    const-string v13, "ge"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const-string v13, "tD"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const-string v13, "ev"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    const-string v13, "ic"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const-string v13, "eI"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const-string v13, "d"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v9, v13, v14}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 475
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_46
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getSdcardState()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 479
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8b

    .line 480
    new-instance v6, Ljava/io/File;

    iget-object v13, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/mob/tools/utils/ResHelper;->getCacheRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "comm/.di"

    invoke-direct {v6, v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .local v6, "keyFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_67

    move-object v2, v11

    .line 482
    goto :goto_a

    .line 485
    :cond_67
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 486
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v7, Ljava/io/ObjectInputStream;

    invoke-direct {v7, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 487
    .local v7, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 488
    .local v5, "key":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 489
    .local v11, "strKey":Ljava/lang/String;
    if-eqz v5, :cond_86

    instance-of v13, v5, [C

    if-eqz v13, :cond_86

    .line 490
    check-cast v5, [C

    .end local v5    # "key":Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, [C

    move-object v1, v0

    .line 491
    .local v1, "cKey":[C
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    .line 493
    .end local v1    # "cKey":[C
    :cond_86
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V

    move-object v2, v11

    .line 494
    goto :goto_a

    .line 496
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "keyFile":Ljava/io/File;
    .end local v7    # "ois":Ljava/io/ObjectInputStream;
    .end local v11    # "strKey":Ljava/lang/String;
    :cond_8b
    new-instance v6, Ljava/io/File;

    iget-object v13, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/mob/tools/utils/ResHelper;->getCacheRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "comm/.di"

    invoke-direct {v6, v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    .restart local v6    # "keyFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_a1

    .line 498
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 501
    :cond_a1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 502
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v8, Ljava/io/ObjectOutputStream;

    invoke-direct {v8, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 503
    .local v8, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 504
    .restart local v1    # "cKey":[C
    invoke-virtual {v8, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 505
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->flush()V

    .line 506
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_b8} :catch_ba

    goto/16 :goto_a

    .line 508
    .end local v1    # "cKey":[C
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "keyFile":Ljava/io/File;
    .end local v8    # "oos":Ljava/io/ObjectOutputStream;
    :catch_ba
    move-exception v12

    .line 509
    .local v12, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto/16 :goto_a
.end method

.method public getIMSI()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 1666
    const-string v5, "phone"

    invoke-direct {p0, v5}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSave(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1667
    .local v2, "phone":Ljava/lang/Object;
    if-nez v2, :cond_b

    move-object v1, v6

    .line 1693
    :cond_a
    :goto_a
    return-object v1

    .line 1671
    :cond_b
    const/4 v1, 0x0

    .line 1673
    .local v1, "imsi":Ljava/lang/String;
    :try_start_c
    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v5}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 1674
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1675
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v5, "ge"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    const-string v5, "tS"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    const-string v5, "ub"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1678
    const-string v5, "sc"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1679
    const-string v5, "ri"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    const-string v5, "be"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1681
    const-string v5, "rI"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    const-string v5, "d"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1683
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v5, v7}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_50} :catch_58

    .line 1689
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_50
    :goto_50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object v1, v6

    .line 1690
    goto :goto_a

    .line 1685
    :catch_58
    move-exception v4

    .line 1686
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_50
.end method

.method public getIPAddress()Ljava/lang/String;
    .registers 7

    .prologue
    .line 1698
    :try_start_0
    const-string v5, "android.permission.INTERNET"

    invoke-virtual {p0, v5}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 1699
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 1700
    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 1701
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 1702
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 1703
    .local v2, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1c
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1704
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1705
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1c

    instance-of v5, v3, Ljava/net/Inet4Address;

    if-eqz v5, :cond_1c

    .line 1706
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_35} :catch_37

    move-result-object v5

    .line 1714
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    :goto_36
    return-object v5

    .line 1711
    :catch_37
    move-exception v0

    .line 1712
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 1714
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3f
    const-string v5, "0.0.0.0"

    goto :goto_36
.end method

.method public getInstalledApp(Z)Ljava/util/ArrayList;
    .registers 22
    .param p1, "includeSystemApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1293
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_135

    .line 1295
    .local v11, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1296
    .local v15, "sb":Ljava/lang/StringBuilder;
    const-string v17, "pm"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    const-string v17, " l"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    const-string v17, "is"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    const-string v17, "t "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    const-string v17, "pa"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    const-string v17, "ck"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    const-string v17, "ag"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    const-string v17, "es"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v17

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v10

    .line 1305
    .local v10, "p":Ljava/lang/Process;
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v10}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    const-string v18, "utf-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1306
    .local v7, "isr":Ljava/io/InputStreamReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1307
    .local v6, "br":Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 1308
    .local v9, "line":Ljava/lang/String;
    :goto_66
    if-eqz v9, :cond_92

    .line 1309
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 1310
    const-string v17, "package:"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8d

    .line 1311
    const-string v17, "package:"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 1312
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    :cond_8d
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    goto :goto_66

    .line 1316
    :cond_92
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 1317
    invoke-virtual {v10}, Ljava/lang/Process;->destroy()V
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_98} :catch_147

    .line 1322
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .end local v9    # "line":Ljava/lang/String;
    .end local v10    # "p":Ljava/lang/Process;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    :goto_98
    :try_start_98
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1323
    .local v5, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 1324
    .local v14, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_ab
    :goto_ab
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_146

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_b7} :catch_135

    .line 1325
    .local v13, "pkg":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1327
    .local v12, "pi":Landroid/content/pm/PackageInfo;
    const/16 v18, 0x0

    :try_start_ba
    move/from16 v0, v18

    invoke-virtual {v14, v13, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_ba .. :try_end_bf} :catch_155

    move-result-object v12

    .line 1331
    :goto_c0
    if-eqz v12, :cond_ab

    .line 1332
    if-nez p1, :cond_cc

    :try_start_c4
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/mob/tools/utils/DeviceHelper;->isSystemApp(Landroid/content/pm/PackageInfo;)Z

    move-result v18

    if-nez v18, :cond_ab

    .line 1336
    :cond_cc
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1337
    .local v2, "app":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v18, "pkg"

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 1339
    .local v4, "appName":Ljava/lang/String;
    if-nez v4, :cond_11c

    .line 1340
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 1341
    .local v3, "appLbl":I
    if-lez v3, :cond_10c

    .line 1342
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v3, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1343
    .local v8, "label":Ljava/lang/CharSequence;
    if-eqz v8, :cond_10c

    .line 1344
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1347
    .end local v8    # "label":Ljava/lang/CharSequence;
    :cond_10c
    if-nez v4, :cond_11c

    .line 1348
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1351
    .end local v3    # "appLbl":I
    :cond_11c
    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    const-string v18, "version"

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_133
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_133} :catch_135

    goto/16 :goto_ab

    .line 1358
    .end local v2    # "app":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "appName":Ljava/lang/String;
    .end local v5    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v11    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "pi":Landroid/content/pm/PackageInfo;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    :catch_135
    move-exception v16

    .line 1359
    .local v16, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 1360
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .end local v16    # "t":Ljava/lang/Throwable;
    :cond_146
    return-object v5

    .line 1318
    .restart local v11    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_147
    move-exception v16

    .line 1319
    .restart local v16    # "t":Ljava/lang/Throwable;
    :try_start_148
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto/16 :goto_98

    .line 1328
    .end local v16    # "t":Ljava/lang/Throwable;
    .restart local v5    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v12    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v13    # "pkg":Ljava/lang/String;
    .restart local v14    # "pm":Landroid/content/pm/PackageManager;
    :catch_155
    move-exception v16

    .line 1329
    .restart local v16    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_161
    .catch Ljava/lang/Throwable; {:try_start_148 .. :try_end_161} :catch_135

    goto/16 :goto_c0
.end method

.method public getLine1Number()Ljava/lang/String;
    .registers 6

    .prologue
    .line 727
    :try_start_0
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v3}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 728
    const-string v3, "phone"

    invoke-direct {p0, v3}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSave(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 729
    .local v2, "tm":Ljava/lang/Object;
    if-nez v2, :cond_13

    .line 730
    const-string v3, "-1"

    .line 746
    .end local v2    # "tm":Ljava/lang/Object;
    :goto_12
    return-object v3

    .line 733
    .restart local v2    # "tm":Ljava/lang/Object;
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 734
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v3, "ge"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    const-string v3, "tL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    const-string v3, "in"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    const-string v3, "e1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    const-string v3, "Nu"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    const-string v3, "mb"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    const-string v3, "er"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_48} :catch_49

    goto :goto_12

    .line 743
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "tm":Ljava/lang/Object;
    :catch_49
    move-exception v1

    .line 744
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 746
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_51
    const-string v3, "-1"

    goto :goto_12
.end method

.method public getLocation(IIZ)Landroid/location/Location;
    .registers 7
    .param p1, "GPSTimeout"    # I
    .param p2, "networkTimeout"    # I
    .param p3, "useLastKnown"    # Z

    .prologue
    .line 1720
    :try_start_0
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1721
    new-instance v0, Lcom/mob/tools/utils/LocationHelper;

    invoke-direct {v0}, Lcom/mob/tools/utils/LocationHelper;-><init>()V

    .line 1722
    .local v0, "helper":Lcom/mob/tools/utils/LocationHelper;
    iget-object v2, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/mob/tools/utils/LocationHelper;->getLocation(Landroid/content/Context;IIZ)Landroid/location/Location;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v2

    .line 1727
    .end local v0    # "helper":Lcom/mob/tools/utils/LocationHelper;
    :goto_13
    return-object v2

    .line 1724
    :catch_14
    move-exception v1

    .line 1725
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 1727
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1c
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public getMCC()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x3

    .line 682
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_13

    .line 684
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 686
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getMNC()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x5

    .line 690
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_13

    .line 692
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 694
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getMacAddress()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v9, 0x0

    .line 191
    invoke-direct {p0}, Lcom/mob/tools/utils/DeviceHelper;->getLocalWifiMac()Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "localWifiMac":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    move-object v0, v3

    .line 272
    :cond_c
    :goto_c
    return-object v0

    .line 195
    :cond_d
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    if-lt v10, v11, :cond_61

    .line 196
    const/4 v0, 0x0

    .line 198
    .local v0, "hd":Ljava/lang/String;
    :try_start_14
    const-string v10, "wlan0"

    invoke-direct {p0, v10}, Lcom/mob/tools/utils/DeviceHelper;->getHardwareAddressFromShell(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_29

    .line 200
    invoke-direct {p0, v0}, Lcom/mob/tools/utils/DeviceHelper;->saveLocalWifiMac(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_c

    .line 203
    :catch_20
    move-exception v7

    .line 204
    .local v7, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 205
    const/4 v0, 0x0

    .line 208
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_29
    if-nez v0, :cond_2f

    .line 210
    :try_start_2b
    invoke-direct {p0}, Lcom/mob/tools/utils/DeviceHelper;->getCurrentNetworkHardwareAddress()Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2e} :catch_4d

    move-result-object v0

    .line 217
    :cond_2f
    :goto_2f
    if-nez v0, :cond_3b

    .line 219
    :try_start_31
    invoke-direct {p0}, Lcom/mob/tools/utils/DeviceHelper;->listNetworkHardwareAddress()[Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "hds":[Ljava/lang/String;
    array-length v10, v1

    if-lez v10, :cond_3b

    .line 221
    const/4 v10, 0x0

    aget-object v0, v1, v10
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_3b} :catch_57

    .line 229
    .end local v1    # "hds":[Ljava/lang/String;
    :cond_3b
    :goto_3b
    if-eqz v0, :cond_61

    .line 230
    const-string v9, "wifi"

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 231
    invoke-direct {p0, v0}, Lcom/mob/tools/utils/DeviceHelper;->saveLocalWifiMac(Ljava/lang/String;)V

    goto :goto_c

    .line 211
    :catch_4d
    move-exception v7

    .line 212
    .restart local v7    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 213
    const/4 v0, 0x0

    goto :goto_2f

    .line 223
    .end local v7    # "t":Ljava/lang/Throwable;
    :catch_57
    move-exception v7

    .line 224
    .restart local v7    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 225
    const/4 v0, 0x0

    goto :goto_3b

    .line 238
    .end local v0    # "hd":Ljava/lang/String;
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_61
    :try_start_61
    const-string v10, "wifi"

    invoke-direct {p0, v10}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSave(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 239
    .local v8, "wifi":Ljava/lang/Object;
    if-nez v8, :cond_6b

    move-object v0, v9

    .line 240
    goto :goto_c

    .line 243
    :cond_6b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v10, "ge"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v10, "tC"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v10, "on"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v10, "ne"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v10, "ct"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const-string v10, "io"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v10, "nI"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string v10, "nf"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v10, "o"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v10, v11}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 254
    .local v2, "info":Ljava/lang/Object;
    if-eqz v2, :cond_f6

    .line 255
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v6, "sb1":Ljava/lang/StringBuilder;
    const-string v10, "ge"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string v10, "tM"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v10, "ac"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v10, "Ad"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v10, "dr"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v10, "es"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v10, "s"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2, v10, v11}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 264
    .local v4, "mac":Ljava/lang/String;
    if-eqz v4, :cond_f6

    .line 265
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mob/tools/utils/DeviceHelper;->saveLocalWifiMac(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_eb
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_eb} :catch_ee

    move-result-object v0

    goto/16 :goto_c

    .line 269
    .end local v2    # "info":Ljava/lang/Object;
    .end local v4    # "mac":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "sb1":Ljava/lang/StringBuilder;
    .end local v8    # "wifi":Ljava/lang/Object;
    :catch_ee
    move-exception v7

    .line 270
    .restart local v7    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_f6
    move-object v0, v9

    .line 272
    goto/16 :goto_c
.end method

.method public getManufacturer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 437
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 428
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 429
    .local v0, "model":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 430
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 432
    :cond_c
    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 1371
    const-string v3, "phone"

    invoke-direct {p0, v3}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSave(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1372
    .local v2, "tm":Ljava/lang/Object;
    if-nez v2, :cond_b

    move-object v3, v4

    .line 1391
    :goto_a
    return-object v3

    .line 1377
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1378
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v3, "ge"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    const-string v3, "tN"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    const-string v3, "et"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    const-string v3, "wo"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    const-string v3, "rk"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    const-string v3, "Op"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1384
    const-string v3, "er"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    const-string v3, "at"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1386
    const-string v3, "or"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_4a} :catch_4b

    goto :goto_a

    .line 1388
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :catch_4b
    move-exception v1

    .line 1389
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 1391
    goto :goto_a
.end method

.method public getNetworkType()Ljava/lang/String;
    .registers 6

    .prologue
    .line 826
    const-string v4, "connectivity"

    invoke-direct {p0, v4}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSave(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 827
    .local v0, "conn":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_d

    .line 828
    const-string v4, "none"

    .line 870
    :goto_c
    return-object v4

    .line 832
    :cond_d
    :try_start_d
    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v4}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 833
    const-string v4, "none"
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_17} :catch_18

    goto :goto_c

    .line 835
    :catch_18
    move-exception v2

    .line 836
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 837
    const-string v4, "none"

    goto :goto_c

    .line 840
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_23
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 841
    .local v1, "network":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_32

    .line 842
    :cond_2f
    const-string v4, "none"

    goto :goto_c

    .line 845
    :cond_32
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 846
    .local v3, "type":I
    packed-switch v3, :pswitch_data_62

    .line 870
    :pswitch_39
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    .line 848
    :pswitch_3e
    const-string v4, "wifi"

    goto :goto_c

    .line 851
    :pswitch_41
    invoke-direct {p0}, Lcom/mob/tools/utils/DeviceHelper;->is4GMobileNetwork()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 852
    const-string v4, "4G"

    goto :goto_c

    .line 854
    :cond_4a
    invoke-direct {p0}, Lcom/mob/tools/utils/DeviceHelper;->isFastMobileNetwork()Z

    move-result v4

    if-eqz v4, :cond_53

    const-string v4, "3G"

    goto :goto_c

    :cond_53
    const-string v4, "2G"

    goto :goto_c

    .line 857
    :pswitch_56
    const-string v4, "bluetooth"

    goto :goto_c

    .line 860
    :pswitch_59
    const-string v4, "dummy"

    goto :goto_c

    .line 863
    :pswitch_5c
    const-string v4, "ethernet"

    goto :goto_c

    .line 866
    :pswitch_5f
    const-string v4, "wimax"

    goto :goto_c

    .line 846
    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_41
        :pswitch_3e
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_5f
        :pswitch_56
        :pswitch_59
        :pswitch_5c
    .end packed-switch
.end method

.method public getNetworkTypeForStatic()Ljava/lang/String;
    .registers 3

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 876
    .local v0, "networkType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 877
    :cond_16
    const-string v1, "none"

    .line 889
    :goto_18
    return-object v1

    .line 880
    :cond_19
    const-string v1, "4g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "2g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 881
    :cond_31
    const-string v1, "cell"

    goto :goto_18

    .line 884
    :cond_34
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 885
    const-string v1, "wifi"

    goto :goto_18

    .line 889
    :cond_3f
    const-string v1, "other"

    goto :goto_18
.end method

.method public getOSCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 607
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOSLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 597
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOSVersionInt()I
    .registers 2

    .prologue
    .line 587
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public getOSVersionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 592
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformCode()I
    .registers 2

    .prologue
    .line 918
    const/4 v0, 0x1

    return v0
.end method

.method public getRunningApp()Lorg/json/JSONArray;
    .registers 10

    .prologue
    .line 987
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 989
    .local v2, "appNmes":Lorg/json/JSONArray;
    const-string v7, "activity"

    invoke-direct {p0, v7}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSave(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 990
    .local v0, "am":Ljava/lang/Object;
    if-nez v0, :cond_e

    .line 1026
    :cond_d
    :goto_d
    return-object v2

    .line 995
    :cond_e
    :try_start_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 996
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v7, "ge"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    const-string v7, "tR"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    const-string v7, "un"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    const-string v7, "ni"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    const-string v7, "ng"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    const-string v7, "Ap"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    const-string v7, "pP"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    const-string v7, "ro"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    const-string v7, "ce"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    const-string v7, "ss"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    const-string v7, "es"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1008
    .local v3, "apps":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v3, :cond_d

    .line 1012
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1013
    .local v1, "app":Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1014
    .local v5, "sb1":Ljava/lang/StringBuilder;
    const-string v8, "pr"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    const-string v8, "oc"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    const-string v8, "es"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    const-string v8, "sN"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    const-string v8, "am"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    const-string v8, "e"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_95} :catch_96

    goto :goto_5d

    .line 1022
    .end local v1    # "app":Ljava/lang/Object;
    .end local v3    # "apps":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "sb1":Ljava/lang/StringBuilder;
    :catch_96
    move-exception v6

    .line 1023
    .local v6, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto/16 :goto_d
.end method

.method public getRunningAppStr()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1030
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getRunningApp()Lorg/json/JSONArray;

    move-result-object v0

    .line 1031
    .local v0, "apps":Lorg/json/JSONArray;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1032
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_25

    .line 1033
    if-lez v1, :cond_17

    .line 1034
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1036
    :cond_17
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1038
    :cond_25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSSID()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 97
    :try_start_1
    const-string v7, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v7}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 98
    const-string v7, "wifi"

    invoke-direct {p0, v7}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSave(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 99
    .local v5, "wifi":Ljava/lang/Object;
    if-nez v5, :cond_12

    .line 127
    .end local v5    # "wifi":Ljava/lang/Object;
    :cond_11
    :goto_11
    return-object v6

    .line 103
    .restart local v5    # "wifi":Ljava/lang/Object;
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v7, "ge"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v7, "tC"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v7, "on"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v7, "ne"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v7, "ct"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v7, "io"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v7, "nI"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v7, "nf"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v7, "o"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    .local v0, "info":Ljava/lang/Object;
    if-eqz v0, :cond_11

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v2, "sb1":Ljava/lang/StringBuilder;
    const-string v7, "ge"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v7, "tS"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v7, "SI"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v7, "D"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 121
    .local v3, "ssid":Ljava/lang/String;
    if-eqz v3, :cond_11

    const-string v7, "\""

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_80} :catch_82

    move-result-object v6

    goto :goto_11

    .line 124
    .end local v0    # "info":Ljava/lang/Object;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "sb1":Ljava/lang/StringBuilder;
    .end local v3    # "ssid":Ljava/lang/String;
    .end local v5    # "wifi":Ljava/lang/Object;
    :catch_82
    move-exception v4

    .line 125
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public getScreenSize()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 612
    iget-object v1, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    .line 614
    .local v0, "size":[I
    iget-object v1, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_32

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 619
    :goto_31
    return-object v1

    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_31
.end method

.method public getSdcardPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1553
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdcardState()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1543
    :try_start_1
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "mounted"

    .line 1544
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_17

    move-result v2

    if-eqz v2, :cond_16

    const/4 v1, 0x1

    .line 1548
    :cond_16
    :goto_16
    return v1

    .line 1545
    :catch_17
    move-exception v0

    .line 1546
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method public getSerialno()Ljava/lang/String;
    .registers 10

    .prologue
    .line 517
    const/4 v2, 0x0

    .line 518
    .local v2, "serialno":Ljava/lang/String;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_81

    .line 520
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v4, "an"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    const-string v4, "dr"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    const-string v4, "oi"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    const-string v4, "d."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string v4, "os"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    const-string v4, ".S"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    const-string v4, "ys"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    const-string v4, "te"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const-string v4, "mP"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const-string v4, "ro"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    const-string v4, "pe"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    const-string v4, "rt"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const-string v4, "ie"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    const-string v4, "s"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    .local v1, "sb1":Ljava/lang/StringBuilder;
    const-string v4, "ge"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const-string v4, "t"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    const-string v4, "SystemProperties"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "ro.serialno"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "unknown"

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "serialno":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_81} :catch_8c

    .line 545
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "sb1":Ljava/lang/StringBuilder;
    .restart local v2    # "serialno":Ljava/lang/String;
    :cond_81
    :goto_81
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8b

    .line 546
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 548
    :cond_8b
    return-object v2

    .line 540
    .end local v2    # "serialno":Ljava/lang/String;
    :catch_8c
    move-exception v3

    .line 541
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 542
    const/4 v2, 0x0

    .restart local v2    # "serialno":Ljava/lang/String;
    goto :goto_81
.end method

.method public getSignMD5()Ljava/lang/String;
    .registers 7

    .prologue
    .line 801
    :try_start_0
    iget-object v3, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 802
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    .line 801
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 803
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 804
    .local v2, "signs":[Landroid/content/pm/Signature;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/Data;->MD5([B)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v3

    .line 808
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "signs":[Landroid/content/pm/Signature;
    :goto_1d
    return-object v3

    .line 805
    :catch_1e
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 808
    const/4 v3, 0x0

    goto :goto_1d
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .registers 6

    .prologue
    .line 700
    :try_start_0
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v3}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 701
    const-string v3, "phone"

    invoke-direct {p0, v3}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSave(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 702
    .local v2, "tm":Ljava/lang/Object;
    if-nez v2, :cond_13

    .line 703
    const-string v3, "-1"

    .line 721
    .end local v2    # "tm":Ljava/lang/Object;
    :goto_12
    return-object v3

    .line 706
    .restart local v2    # "tm":Ljava/lang/Object;
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 707
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v3, "ge"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    const-string v3, "tS"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    const-string v3, "im"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    const-string v3, "Se"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    const-string v3, "ri"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    const-string v3, "al"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    const-string v3, "Nu"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    const-string v3, "mb"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    const-string v3, "er"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_52} :catch_53

    goto :goto_12

    .line 718
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "tm":Ljava/lang/Object;
    :catch_53
    move-exception v1

    .line 719
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 721
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_5b
    const-string v3, "-1"

    goto :goto_12
.end method

.method public getStatusBarHeight()I
    .registers 5

    .prologue
    .line 2235
    :try_start_0
    const-string v3, "com.android.internal.R$dimen"

    invoke-static {v3}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2236
    .local v0, "clzName":Ljava/lang/String;
    const-string v3, "status_bar_height"

    invoke-static {v0, v3}, Lcom/mob/tools/utils/ReflectHelper;->getStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2237
    .local v1, "resId":I
    iget-object v3, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result v3

    .line 2241
    .end local v0    # "clzName":Ljava/lang/String;
    .end local v1    # "resId":I
    :goto_1c
    return v3

    .line 2238
    :catch_1d
    move-exception v2

    .line 2239
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 2241
    const/4 v3, -0x1

    goto :goto_1c
.end method

.method public getTopActivity()Landroid/app/Activity;
    .registers 11

    .prologue
    .line 1876
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->currentActivityThread()Ljava/lang/Object;

    move-result-object v7

    .line 1877
    .local v7, "thread":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1878
    .local v3, "sb2":Ljava/lang/StringBuilder;
    const-string v8, "mA"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1879
    const-string v8, "ct"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1880
    const-string v8, "iv"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1881
    const-string v8, "it"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1882
    const-string v8, "ie"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1883
    const-string v8, "s"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1884
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1885
    .local v0, "activities":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_39
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1886
    .local v1, "activity":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1887
    .local v4, "sb3":Ljava/lang/StringBuilder;
    const-string v9, "pa"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    const-string v9, "us"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1889
    const-string v9, "ed"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 1891
    .local v2, "paused":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_39

    .line 1892
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1893
    .local v5, "sb4":Ljava/lang/StringBuilder;
    const-string v8, "ac"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    const-string v8, "ti"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1895
    const-string v8, "vi"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1896
    const-string v8, "ty"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1897
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    .line 1918
    .end local v0    # "activities":Ljava/util/Map;
    .end local v1    # "activity":Ljava/lang/Object;
    .end local v2    # "paused":Ljava/lang/Boolean;
    .end local v3    # "sb2":Ljava/lang/StringBuilder;
    .end local v4    # "sb3":Ljava/lang/StringBuilder;
    .end local v5    # "sb4":Ljava/lang/StringBuilder;
    .end local v7    # "thread":Ljava/lang/Object;
    :goto_8a
    return-object v8

    .line 1901
    .restart local v0    # "activities":Ljava/util/Map;
    .restart local v3    # "sb2":Ljava/lang/StringBuilder;
    .restart local v7    # "thread":Ljava/lang/Object;
    :cond_8b
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_93
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_eb

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1902
    .restart local v1    # "activity":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1903
    .restart local v4    # "sb3":Ljava/lang/StringBuilder;
    const-string v9, "st"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1904
    const-string v9, "op"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1905
    const-string v9, "pe"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1906
    const-string v9, "d"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1907
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 1908
    .local v6, "stopped":Ljava/lang/Boolean;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_93

    .line 1909
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1910
    .restart local v5    # "sb4":Ljava/lang/StringBuilder;
    const-string v8, "ac"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1911
    const-string v8, "ti"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1912
    const-string v8, "vi"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1913
    const-string v8, "ty"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;
    :try_end_e9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e9} :catch_ea

    goto :goto_8a

    .line 1917
    .end local v0    # "activities":Ljava/util/Map;
    .end local v1    # "activity":Ljava/lang/Object;
    .end local v3    # "sb2":Ljava/lang/StringBuilder;
    .end local v4    # "sb3":Ljava/lang/StringBuilder;
    .end local v5    # "sb4":Ljava/lang/StringBuilder;
    .end local v6    # "stopped":Ljava/lang/Boolean;
    .end local v7    # "thread":Ljava/lang/Object;
    :catch_ea
    move-exception v8

    .line 1918
    :cond_eb
    const/4 v8, 0x0

    goto :goto_8a
.end method

.method public getTopTaskPackageName()Ljava/lang/String;
    .registers 16

    .prologue
    const/4 v11, 0x0

    .line 1437
    const/4 v1, 0x0

    .line 1439
    .local v1, "hasPer":Z
    :try_start_2
    const-string v10, "android.permission.GET_TASKS"

    invoke-virtual {p0, v10}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_14

    move-result v1

    .line 1445
    :goto_8
    if-eqz v1, :cond_15b

    .line 1447
    :try_start_a
    const-string v10, "activity"

    invoke-direct {p0, v10}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSave(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_153

    move-result-object v0

    .line 1448
    .local v0, "am":Ljava/lang/Object;
    if-nez v0, :cond_1e

    move-object v10, v11

    .line 1509
    .end local v0    # "am":Ljava/lang/Object;
    :goto_13
    return-object v10

    .line 1440
    :catch_14
    move-exception v7

    .line 1441
    .local v7, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 1442
    const/4 v1, 0x0

    goto :goto_8

    .line 1452
    .end local v7    # "t":Ljava/lang/Throwable;
    .restart local v0    # "am":Ljava/lang/Object;
    :cond_1e
    :try_start_1e
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x14

    if-gt v10, v12, :cond_cd

    .line 1454
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1455
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v10, "ge"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    const-string v10, "tR"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    const-string v10, "un"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    const-string v10, "ni"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    const-string v10, "ng"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    const-string v10, "Ta"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    const-string v10, "sk"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    const-string v10, "s"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v0, v10, v12}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1464
    .local v8, "tasks":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1465
    .local v5, "sb1":Ljava/lang/StringBuilder;
    const-string v10, "to"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    const-string v10, "pA"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    const-string v10, "ct"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    const-string v10, "iv"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    const-string v10, "it"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    const-string v10, "y"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 1472
    .local v9, "topActivity":Ljava/lang/Object;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1473
    .local v6, "sb2":Ljava/lang/StringBuilder;
    const-string v10, "ge"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    const-string v10, "tP"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    const-string v10, "ac"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    const-string v10, "ka"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    const-string v10, "ge"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1478
    const-string v10, "Na"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    const-string v10, "me"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v12}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto/16 :goto_13

    .line 1482
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "sb1":Ljava/lang/StringBuilder;
    .end local v6    # "sb2":Ljava/lang/StringBuilder;
    .end local v8    # "tasks":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v9    # "topActivity":Ljava/lang/Object;
    :cond_cd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1483
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    const-string v10, "ge"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    const-string v10, "tR"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1485
    const-string v10, "un"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    const-string v10, "ni"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    const-string v10, "ng"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    const-string v10, "Ap"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1489
    const-string v10, "pP"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    const-string v10, "ro"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1491
    const-string v10, "ce"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    const-string v10, "ss"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    const-string v10, "es"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1494
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v0, v10, v12}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1495
    .local v2, "processInfos":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1496
    .restart local v5    # "sb1":Ljava/lang/StringBuilder;
    const-string v10, "pr"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    const-string v10, "oc"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    const-string v10, "es"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    const-string v10, "sN"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    const-string v10, "am"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1501
    const-string v10, "e"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1503
    .local v3, "processName":Ljava/lang/String;
    const-string v10, ":"

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    aget-object v10, v10, v12
    :try_end_151
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_151} :catch_153

    goto/16 :goto_13

    .line 1505
    .end local v0    # "am":Ljava/lang/Object;
    .end local v2    # "processInfos":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v3    # "processName":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "sb1":Ljava/lang/StringBuilder;
    :catch_153
    move-exception v7

    .line 1506
    .restart local v7    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_15b
    move-object v10, v11

    .line 1509
    goto/16 :goto_13
.end method

.method public hideSoftInput(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1598
    const-string v2, "input_method"

    invoke-direct {p0, v2}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSave(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1599
    .local v1, "service":Ljava/lang/Object;
    if-nez v1, :cond_9

    .line 1605
    :goto_8
    return-void

    :cond_9
    move-object v0, v1

    .line 1603
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1604
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_8
.end method

.method public isMainProcess(I)Z
    .registers 15
    .param p1, "pid"    # I

    .prologue
    const/4 v11, 0x0

    .line 1621
    :try_start_1
    const-string v10, "activity"

    invoke-direct {p0, v10}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSave(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1622
    .local v0, "am":Ljava/lang/Object;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1623
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string v10, "ge"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    const-string v10, "tR"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    const-string v10, "un"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    const-string v10, "ni"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    const-string v10, "ng"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1628
    const-string v10, "Ap"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1629
    const-string v10, "pP"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    const-string v10, "ro"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    const-string v10, "ce"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1632
    const-string v10, "ss"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    const-string v10, "es"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v0, v10, v12}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1635
    .local v5, "rps":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez v5, :cond_58

    .line 1636
    if-gtz p1, :cond_56

    const/4 v10, 0x1

    .line 1662
    .end local v0    # "am":Ljava/lang/Object;
    .end local v5    # "rps":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :goto_55
    return v10

    .restart local v0    # "am":Ljava/lang/Object;
    .restart local v5    # "rps":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_56
    move v10, v11

    .line 1636
    goto :goto_55

    .line 1639
    :cond_58
    const/4 v3, 0x0

    .line 1640
    .local v3, "application":Ljava/lang/String;
    if-gtz p1, :cond_c2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 1641
    .local v4, "myPid":I
    :goto_5f
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_63
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1642
    .local v2, "appProcess":Ljava/lang/Object;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1643
    .local v7, "sb1":Ljava/lang/StringBuilder;
    const-string v10, "pi"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    const-string v10, "d"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1645
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1646
    .local v1, "apid":I
    if-ne v1, v4, :cond_63

    .line 1647
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1648
    .local v8, "sb2":Ljava/lang/StringBuilder;
    const-string v10, "pr"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1649
    const-string v10, "oc"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    const-string v10, "es"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1651
    const-string v10, "sN"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    const-string v10, "am"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    const-string v10, "e"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "application":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1658
    .end local v1    # "apid":I
    .end local v2    # "appProcess":Ljava/lang/Object;
    .end local v7    # "sb1":Ljava/lang/StringBuilder;
    .end local v8    # "sb2":Ljava/lang/StringBuilder;
    .restart local v3    # "application":Ljava/lang/String;
    :cond_b9
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c0} :catch_c4

    move-result v10

    goto :goto_55

    .end local v4    # "myPid":I
    :cond_c2
    move v4, p1

    .line 1640
    goto :goto_5f

    .line 1659
    .end local v0    # "am":Ljava/lang/Object;
    .end local v3    # "application":Ljava/lang/String;
    .end local v5    # "rps":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_c4
    move-exception v9

    .line 1660
    .local v9, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move v10, v11

    .line 1662
    goto :goto_55
.end method

.method public isRooted()Z
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public ping(Ljava/lang/String;II)Ljava/util/HashMap;
    .registers 25
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "packetsize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1731
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1733
    .local v16, "sucRes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :try_start_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ping -c "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " -s "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1734
    .local v5, "cmd":Ljava/lang/String;
    add-int/lit8 v4, p3, 0x8

    .line 1735
    .local v4, "bytes":I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v14

    .line 1736
    .local v14, "p":Ljava/lang/Process;
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v14}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1737
    .local v8, "isr":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1738
    .local v3, "br":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 1739
    .local v10, "line":Ljava/lang/String;
    :goto_58
    if-eqz v10, :cond_139

    .line 1740
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " bytes from"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_ba

    .line 1741
    const-string v18, "ms"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_bf

    .line 1742
    const/16 v18, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 1746
    :cond_95
    :goto_95
    const-string v18, "time="

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 1747
    .local v7, "i":I
    if-lez v7, :cond_ba

    .line 1748
    add-int/lit8 v18, v7, 0x5

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_aa} :catch_fe

    move-result-object v10

    .line 1750
    :try_start_ab
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_ba} :catch_f1

    .line 1756
    .end local v7    # "i":I
    :cond_ba
    :goto_ba
    :try_start_ba
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    goto :goto_58

    .line 1743
    :cond_bf
    const-string v18, "s"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_95

    .line 1744
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "000"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_95

    .line 1751
    .restart local v7    # "i":I
    :catch_f1
    move-exception v17

    .line 1752
    .local v17, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_fd
    .catch Ljava/lang/Throwable; {:try_start_ba .. :try_end_fd} :catch_fe

    goto :goto_ba

    .line 1759
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v4    # "bytes":I
    .end local v5    # "cmd":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v10    # "line":Ljava/lang/String;
    .end local v14    # "p":Ljava/lang/Process;
    .end local v17    # "t":Ljava/lang/Throwable;
    :catch_fe
    move-exception v17

    .line 1760
    .restart local v17    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 1763
    .end local v17    # "t":Ljava/lang/Throwable;
    :goto_10a
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1764
    .local v15, "sucCount":I
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    sub-int v6, p2, v18

    .line 1765
    .local v6, "fldCount":I
    const/4 v13, 0x0

    .line 1766
    .local v13, "min":F
    const/4 v12, 0x0

    .line 1767
    .local v12, "max":F
    const/4 v2, 0x0

    .line 1768
    .local v2, "average":F
    if-lez v15, :cond_142

    .line 1769
    const v13, 0x7f7fffff    # Float.MAX_VALUE

    .line 1770
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_11d
    if-ge v7, v15, :cond_13d

    .line 1771
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Float;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 1772
    .local v9, "item":F
    cmpg-float v18, v9, v13

    if-gez v18, :cond_130

    .line 1773
    move v13, v9

    .line 1775
    :cond_130
    cmpl-float v18, v9, v12

    if-lez v18, :cond_135

    .line 1776
    move v12, v9

    .line 1778
    :cond_135
    add-float/2addr v2, v9

    .line 1770
    add-int/lit8 v7, v7, 0x1

    goto :goto_11d

    .line 1758
    .end local v2    # "average":F
    .end local v6    # "fldCount":I
    .end local v7    # "i":I
    .end local v9    # "item":F
    .end local v12    # "max":F
    .end local v13    # "min":F
    .end local v15    # "sucCount":I
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "bytes":I
    .restart local v5    # "cmd":Ljava/lang/String;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v14    # "p":Ljava/lang/Process;
    :cond_139
    :try_start_139
    invoke-virtual {v14}, Ljava/lang/Process;->waitFor()I
    :try_end_13c
    .catch Ljava/lang/Throwable; {:try_start_139 .. :try_end_13c} :catch_fe

    goto :goto_10a

    .line 1780
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v4    # "bytes":I
    .end local v5    # "cmd":Ljava/lang/String;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v10    # "line":Ljava/lang/String;
    .end local v14    # "p":Ljava/lang/Process;
    .restart local v2    # "average":F
    .restart local v6    # "fldCount":I
    .restart local v7    # "i":I
    .restart local v12    # "max":F
    .restart local v13    # "min":F
    .restart local v15    # "sucCount":I
    :cond_13d
    int-to-float v0, v15

    move/from16 v18, v0

    div-float v2, v2, v18

    .line 1783
    .end local v7    # "i":I
    :cond_142
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1784
    .local v11, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v18, "address"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    const-string v18, "transmitted"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1786
    const-string v18, "received"

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    const-string v18, "loss"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1788
    const-string v18, "min"

    invoke-static {v13}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    const-string v18, "max"

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    const-string v18, "avg"

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    return-object v11
.end method

.method public scanWifiList()Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 2212
    :try_start_1
    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {p0, v3}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 2213
    const-string v3, "wifi"

    invoke-direct {p0, v3}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSave(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2214
    .local v2, "wifi":Ljava/lang/Object;
    if-nez v2, :cond_13

    move v3, v4

    .line 2229
    .end local v2    # "wifi":Ljava/lang/Object;
    :goto_12
    return v3

    .line 2218
    .restart local v2    # "wifi":Ljava/lang/Object;
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2219
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v3, "st"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2220
    const-string v3, "ar"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2221
    const-string v3, "tS"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2222
    const-string v3, "ca"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2223
    const-string v3, "n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_41} :catch_43

    move-result v3

    goto :goto_12

    .line 2226
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "wifi":Ljava/lang/Object;
    :catch_43
    move-exception v1

    .line 2227
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_4b
    move v3, v4

    .line 2229
    goto :goto_12
.end method

.method public showSoftInput(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1609
    const-string v2, "input_method"

    invoke-direct {p0, v2}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSave(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1610
    .local v1, "service":Ljava/lang/Object;
    if-nez v1, :cond_9

    .line 1616
    :goto_8
    return-void

    :cond_9
    move-object v0, v1

    .line 1614
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1615
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    goto :goto_8
.end method
