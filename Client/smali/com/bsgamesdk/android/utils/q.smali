.class public Lcom/bsgamesdk/android/utils/q;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_a} :catch_4e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_67
    .catchall {:try_start_1 .. :try_end_a} :catchall_84

    :try_start_a
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_18} :catch_ac
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_18} :catch_a5
    .catchall {:try_start_a .. :try_end_18} :catchall_9e

    :try_start_18
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_35

    const-string v0, ""
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_20} :catch_af
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_20} :catch_aa
    .catchall {:try_start_18 .. :try_end_20} :catchall_a3

    if-eqz v1, :cond_25

    :try_start_22
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_2b

    :cond_25
    :goto_25
    if-eqz v2, :cond_2a

    :try_start_27
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_30

    :cond_2a
    :goto_2a
    return-object v0

    :catch_2b
    move-exception v1

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_25

    :catch_30
    move-exception v1

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_2a

    :cond_35
    :try_start_35
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_38} :catch_af
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_aa
    .catchall {:try_start_35 .. :try_end_38} :catchall_a3

    move-result-object v0

    if-eqz v1, :cond_3e

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_49

    :cond_3e
    :goto_3e
    if-eqz v2, :cond_2a

    :try_start_40
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_2a

    :catch_44
    move-exception v1

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_2a

    :catch_49
    move-exception v1

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_3e

    :catch_4e
    move-exception v1

    move-object v1, v0

    :goto_50
    if-eqz v0, :cond_55

    :try_start_52
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_5d

    :cond_55
    :goto_55
    if-eqz v1, :cond_5a

    :try_start_57
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_62

    :cond_5a
    :goto_5a
    const-string v0, ""

    goto :goto_2a

    :catch_5d
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_55

    :catch_62
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_5a

    :catch_67
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_6c
    :try_start_6c
    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_a3

    if-eqz v1, :cond_74

    :try_start_71
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_7f

    :cond_74
    :goto_74
    if-eqz v2, :cond_5a

    :try_start_76
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_5a

    :catch_7a
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_5a

    :catch_7f
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_74

    :catchall_84
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_89
    if-eqz v1, :cond_8e

    :try_start_8b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_94

    :cond_8e
    :goto_8e
    if-eqz v2, :cond_93

    :try_start_90
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_99

    :cond_93
    :goto_93
    throw v0

    :catch_94
    move-exception v1

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_8e

    :catch_99
    move-exception v1

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_93

    :catchall_9e
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_89

    :catchall_a3
    move-exception v0

    goto :goto_89

    :catch_a5
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_6c

    :catch_aa
    move-exception v0

    goto :goto_6c

    :catch_ac
    move-exception v1

    move-object v1, v2

    goto :goto_50

    :catch_af
    move-exception v0

    move-object v0, v1

    move-object v1, v2

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
