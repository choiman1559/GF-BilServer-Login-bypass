.class public Lcom/android/data/sdk/utils/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_a} :catch_4e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_6a
    .catchall {:try_start_1 .. :try_end_a} :catchall_84

    :try_start_a
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_18} :catch_a9
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_18} :catch_a4
    .catchall {:try_start_a .. :try_end_18} :catchall_9b

    :try_start_18
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_35

    const-string v0, ""
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_20} :catch_ad
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_20} :catch_a6
    .catchall {:try_start_18 .. :try_end_20} :catchall_9d

    if-eqz v1, :cond_25

    :try_start_22
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_2b

    :cond_25
    :goto_25
    if-eqz v3, :cond_2a

    :try_start_27
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_30

    :cond_2a
    :goto_2a
    return-object v0

    :catch_2b
    move-exception v1

    invoke-static {v1}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_25

    :catch_30
    move-exception v1

    invoke-static {v1}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_2a

    :cond_35
    :try_start_35
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_38} :catch_ad
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_a6
    .catchall {:try_start_35 .. :try_end_38} :catchall_9d

    move-result-object v0

    if-eqz v1, :cond_3e

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_49

    :cond_3e
    :goto_3e
    if-eqz v3, :cond_2a

    :try_start_40
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_2a

    :catch_44
    move-exception v1

    invoke-static {v1}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_2a

    :catch_49
    move-exception v1

    invoke-static {v1}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_3e

    :catch_4e
    move-exception v0

    move-object v1, v2

    :goto_50
    :try_start_50
    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_a0

    if-eqz v1, :cond_58

    :try_start_55
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_60

    :cond_58
    :goto_58
    if-eqz v2, :cond_5d

    :try_start_5a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_65

    :cond_5d
    :goto_5d
    const-string v0, ""

    goto :goto_2a

    :catch_60
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_58

    :catch_65
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_5d

    :catch_6a
    move-exception v0

    move-object v3, v2

    :goto_6c
    :try_start_6c
    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_9b

    if-eqz v2, :cond_74

    :try_start_71
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_7f

    :cond_74
    :goto_74
    if-eqz v3, :cond_5d

    :try_start_76
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_5d

    :catch_7a
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_5d

    :catch_7f
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_74

    :catchall_84
    move-exception v0

    move-object v3, v2

    :goto_86
    if-eqz v2, :cond_8b

    :try_start_88
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_91

    :cond_8b
    :goto_8b
    if-eqz v3, :cond_90

    :try_start_8d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_96

    :cond_90
    :goto_90
    throw v0

    :catch_91
    move-exception v1

    invoke-static {v1}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_8b

    :catch_96
    move-exception v1

    invoke-static {v1}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_90

    :catchall_9b
    move-exception v0

    goto :goto_86

    :catchall_9d
    move-exception v0

    move-object v2, v1

    goto :goto_86

    :catchall_a0
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_86

    :catch_a4
    move-exception v0

    goto :goto_6c

    :catch_a6
    move-exception v0

    move-object v2, v1

    goto :goto_6c

    :catch_a9
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_50

    :catch_ad
    move-exception v0

    move-object v2, v3

    goto :goto_50
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_26

    const-string v0, ""

    :goto_25
    return-object v0

    :cond_26
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2b

    move-result-object v0

    goto :goto_25

    :catch_2b
    move-exception v0

    const-string v0, ""

    goto :goto_25
.end method
