.class public Lcom/bilibili/track/utils/FlutterDeviceInfo;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppMemory(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    const/4 v1, 0x0

    :try_start_3
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v4, v2, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    iget-wide v2, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    long-to-double v2, v2

    div-double/2addr v2, v6

    sub-double v2, v4, v2

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_24} :catch_26

    move-result-object v0

    :goto_25
    return-object v0

    :catch_26
    move-exception v0

    move-object v0, v1

    goto :goto_25
.end method

.method public static getCpuFreq()J
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/bilibili/deviceutils/utils/CpuInforUtils;->getCurCpuFreq()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/bilibili/deviceutils/utils/CpuInforUtils;->getCurCpuFreq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result-wide v0

    :goto_e
    return-wide v0

    :catch_f
    move-exception v0

    :cond_10
    const-wide/16 v0, 0x0

    goto :goto_e
.end method
