.class public Lcom/bilibili/deviceutils/utils/CpuInforUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodeVendor(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_60

    :cond_e
    :goto_e
    packed-switch v1, :pswitch_data_7a

    :goto_11
    return-object v0

    :sswitch_12
    const-string v3, "0x41"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x0

    goto :goto_e

    :sswitch_1c
    const-string v3, "0x44"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x1

    goto :goto_e

    :sswitch_26
    const-string v3, "0x4d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x2

    goto :goto_e

    :sswitch_30
    const-string v3, "0x51"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x3

    goto :goto_e

    :sswitch_3a
    const-string v3, "0x56"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x4

    goto :goto_e

    :sswitch_44
    const-string v3, "0x69"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x5

    goto :goto_e

    :pswitch_4e
    const-string v0, "ARM"

    goto :goto_11

    :pswitch_51
    const-string v0, "DEC"

    goto :goto_11

    :pswitch_54
    const-string v0, "Moto"

    goto :goto_11

    :pswitch_57
    const-string v0, "Qualcomm"

    goto :goto_11

    :pswitch_5a
    const-string v0, "Marvell"

    goto :goto_11

    :pswitch_5d
    const-string v0, "Intel"

    goto :goto_11

    :sswitch_data_60
    .sparse-switch
        0x179ac5 -> :sswitch_12
        0x179ac8 -> :sswitch_1c
        0x179ae4 -> :sswitch_30
        0x179ae9 -> :sswitch_3a
        0x179af8 -> :sswitch_26
        0x179b0b -> :sswitch_44
    .end sparse-switch

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_51
        :pswitch_54
        :pswitch_57
        :pswitch_5a
        :pswitch_5d
    .end packed-switch
.end method

.method public static getCpuInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    :try_start_2
    new-instance v0, Ljava/io/FileReader;

    const-string v1, "/proc/cpuinfo"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_15} :catch_17
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_15} :catch_1b

    move-result-object v0

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    const-string v0, "unknown"

    goto :goto_16

    :catch_1b
    move-exception v0

    const-string v0, "unknown"

    goto :goto_16
.end method

.method public static getCurCpuFreq()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    :try_start_2
    new-instance v0, Ljava/io/FileReader;

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_15} :catch_17
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_15} :catch_1b

    move-result-object v0

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    const-string v0, "unknown"

    goto :goto_16

    :catch_1b
    move-exception v0

    const-string v0, "unknown"

    goto :goto_16
.end method

.method public static getMaxCpuFreq()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    const/4 v1, 0x2

    :try_start_3
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/bin/cat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x18

    new-array v2, v2, [B

    :goto_20
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_3e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_41} :catch_46

    :goto_41
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_46
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "unknown"

    goto :goto_41
.end method

.method public static getMinCpuFreq()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    const/4 v1, 0x2

    :try_start_3
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/bin/cat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x18

    new-array v2, v2, [B

    :goto_20
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_3e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_41} :catch_46

    :goto_41
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_46
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "unknown"

    goto :goto_41
.end method
