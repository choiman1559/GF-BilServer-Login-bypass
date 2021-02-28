.class public Llib/xdsdk/passport/CustomDeviceIdHelper;
.super Ljava/lang/Object;
.source "CustomDeviceIdHelper.java"


# static fields
.field private static final DEVICE_CACHE_DIR:Ljava/lang/String; = "aray/cache/devices"

.field private static final DEVICE_FILE_NAME:Ljava/lang/String; = ".DEVICES"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDeviceIDFile(Landroid/content/Context;)Ljava/io/File;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 91
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Llib/xdsdk/passport/CustomDeviceIdHelper;->lacksPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Llib/xdsdk/passport/CustomDeviceIdHelper;->lacksPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_51

    .line 93
    :cond_11
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ".DEVICES"

    const-string v2, "aray/cache/devices"

    if-eqz v0, :cond_39

    .line 94
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    .local v0, "r2":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_33

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 98
    :cond_33
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2

    .line 100
    .end local v0    # "r2":Ljava/io/File;
    :cond_39
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .local v0, "r0":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4b

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 104
    :cond_4b
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2

    .line 92
    .end local v0    # "r0":Ljava/io/File;
    :cond_51
    :goto_51
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDeviceId(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 35
    invoke-static {p0}, Llib/xdsdk/passport/CustomDeviceIdHelper;->readDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "r0":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 37
    return-object v0

    .line 39
    :cond_b
    invoke-static {p0}, Llib/xdsdk/passport/CustomDeviceIdHelper;->getTimeAndroidID(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getTimeAndroidID(Landroid/app/Activity;)Ljava/lang/String;
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 43
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "r0":Ljava/lang/String;
    invoke-static {v0, p0}, Llib/xdsdk/passport/CustomDeviceIdHelper;->saveDeviceId(Ljava/lang/String;Landroid/content/Context;)V

    .line 45
    return-object v0
.end method

.method private static lacksPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_f

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private static readDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 49
    invoke-static {p0}, Llib/xdsdk/passport/CustomDeviceIdHelper;->getDeviceIDFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 50
    .local v0, "r5":Ljava/io/File;
    const-string v1, ""

    if-nez v0, :cond_9

    .line 51
    return-object v1

    .line 53
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v2, "r0":Ljava/lang/StringBuilder;
    :try_start_e
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 56
    .local v3, "r1":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 57
    .local v4, "r6":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 59
    .local v5, "r2":Ljava/io/BufferedReader;
    :goto_1f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->read()I

    move-result v6

    .line 60
    .local v6, "r3":I
    const/4 v7, -0x1

    if-le v6, v7, :cond_2b

    .line 61
    int-to-char v7, v6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .end local v6    # "r3":I
    goto :goto_1f

    .line 63
    .restart local v6    # "r3":I
    :cond_2b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 64
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 65
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_38} :catch_39

    return-object v1

    .line 69
    .end local v3    # "r1":Ljava/io/FileInputStream;
    .end local v4    # "r6":Ljava/io/InputStreamReader;
    .end local v5    # "r2":Ljava/io/BufferedReader;
    .end local v6    # "r3":I
    :catch_39
    move-exception v3

    .line 70
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 71
    return-object v1
.end method

.method public static saveCustomDeviceId(Landroid/app/Activity;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 25
    invoke-static {p0}, Llib/xdsdk/passport/CustomDeviceIdHelper;->getDeviceId(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "r0":Ljava/lang/String;
    sget-object v1, Llib/xdsdk/passport/Constants;->CUSTOM_DEVICE_ID:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v1, v2}, Llib/xdsdk/passport/SPTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "r1":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 28
    invoke-static {v1, p0}, Llib/xdsdk/passport/CustomDeviceIdHelper;->saveDeviceId(Ljava/lang/String;Landroid/content/Context;)V

    .line 29
    move-object v0, v1

    .line 31
    :cond_1c
    sget-object v2, Llib/xdsdk/passport/Constants;->CUSTOM_DEVICE_ID:Ljava/lang/String;

    invoke-static {p0, v2, v0}, Llib/xdsdk/passport/SPTools;->putString(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private static saveDeviceId(Ljava/lang/String;Landroid/content/Context;)V
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    invoke-static {p1}, Llib/xdsdk/passport/CustomDeviceIdHelper;->getDeviceIDFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 77
    .local v0, "r3":Ljava/io/File;
    if-eqz v0, :cond_20

    .line 79
    :try_start_6
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 80
    .local v1, "r0":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 81
    .local v2, "r4":Ljava/io/OutputStreamWriter;
    invoke-virtual {v2, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 83
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1b} :catch_1c

    .line 86
    .end local v1    # "r0":Ljava/io/FileOutputStream;
    .end local v2    # "r4":Ljava/io/OutputStreamWriter;
    goto :goto_20

    .line 84
    :catch_1c
    move-exception v1

    .line 85
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 88
    .end local v1    # "e":Ljava/io/IOException;
    :cond_20
    :goto_20
    return-void
.end method
