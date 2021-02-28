.class public Lcom/bilibili/deviceutils/utils/Bridge;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execByRuntime(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_85
    .catchall {:try_start_1 .. :try_end_8} :catchall_55

    move-result-object v4

    :try_start_9
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_8a
    .catchall {:try_start_9 .. :try_end_12} :catchall_7a

    :try_start_12
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_8e
    .catchall {:try_start_12 .. :try_end_17} :catchall_7f

    const/16 v1, 0x1000

    :try_start_19
    new-array v1, v1, [C

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_20
    invoke-virtual {v3, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v6

    if-lez v6, :cond_3f

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2a} :catch_2b
    .catchall {:try_start_19 .. :try_end_2a} :catchall_83

    goto :goto_20

    :catch_2b
    move-exception v1

    :goto_2c
    :try_start_2c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_83

    if-eqz v2, :cond_34

    :try_start_31
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_34} :catch_6e

    :cond_34
    :goto_34
    if-eqz v3, :cond_39

    :try_start_36
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_39} :catch_70

    :cond_39
    :goto_39
    if-eqz v4, :cond_3e

    :try_start_3b
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3e} :catch_72

    :cond_3e
    :goto_3e
    return-object v0

    :cond_3f
    :try_start_3f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_2b
    .catchall {:try_start_3f .. :try_end_42} :catchall_83

    move-result-object v0

    if-eqz v2, :cond_48

    :try_start_45
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_48} :catch_6a

    :cond_48
    :goto_48
    if-eqz v3, :cond_4d

    :try_start_4a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4d} :catch_6c

    :cond_4d
    :goto_4d
    if-eqz v4, :cond_3e

    :try_start_4f
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_3e

    :catch_53
    move-exception v1

    goto :goto_3e

    :catchall_55
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v0, v1

    :goto_5a
    if-eqz v2, :cond_5f

    :try_start_5c
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5f} :catch_74

    :cond_5f
    :goto_5f
    if-eqz v3, :cond_64

    :try_start_61
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_64} :catch_76

    :cond_64
    :goto_64
    if-eqz v4, :cond_69

    :try_start_66
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_69} :catch_78

    :cond_69
    :goto_69
    throw v0

    :catch_6a
    move-exception v1

    goto :goto_48

    :catch_6c
    move-exception v1

    goto :goto_4d

    :catch_6e
    move-exception v1

    goto :goto_34

    :catch_70
    move-exception v1

    goto :goto_39

    :catch_72
    move-exception v1

    goto :goto_3e

    :catch_74
    move-exception v1

    goto :goto_5f

    :catch_76
    move-exception v1

    goto :goto_64

    :catch_78
    move-exception v1

    goto :goto_69

    :catchall_7a
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    goto :goto_5a

    :catchall_7f
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_5a

    :catchall_83
    move-exception v0

    goto :goto_5a

    :catch_85
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    goto :goto_2c

    :catch_8a
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_2c

    :catch_8e
    move-exception v1

    move-object v3, v0

    goto :goto_2c
.end method

.method public static read(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    if-eqz v0, :cond_2a

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_2a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_36

    move-result-object v0

    :goto_35
    return-object v0

    :catch_36
    move-exception v0

    const-string v0, ""

    goto :goto_35
.end method
