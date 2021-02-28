.class public Lcom/bilibili/deviceutils/DeviceLog;
.super Ljava/lang/Object;


# static fields
.field private static debug:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bilibili/deviceutils/DeviceLog;->debug:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/bilibili/deviceutils/DeviceLog;->debug:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/bilibili/deviceutils/DeviceLog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/bilibili/deviceutils/DeviceLog;->debug:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1, p2}, Lcom/bilibili/deviceutils/DeviceLog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/bilibili/deviceutils/DeviceLog;->debug:Z

    if-eqz v0, :cond_13

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/bilibili/deviceutils/DeviceLog;->debug:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/bilibili/deviceutils/DeviceLog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/bilibili/deviceutils/DeviceLog;->debug:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1, p2}, Lcom/bilibili/deviceutils/DeviceLog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    sget-boolean v0, Lcom/bilibili/deviceutils/DeviceLog;->debug:Z

    if-eqz v0, :cond_9

    const-string v0, ""

    invoke-static {p0, v0, p1}, Lcom/bilibili/deviceutils/DeviceLog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/bilibili/deviceutils/DeviceLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method public static printStackTrace(Ljava/lang/Exception;)V
    .registers 2

    sget-boolean v0, Lcom/bilibili/deviceutils/DeviceLog;->debug:Z

    if-eqz v0, :cond_6

    if-eqz p0, :cond_6

    :cond_6
    return-void
.end method

.method static setDebug(Z)V
    .registers 1

    sput-boolean p0, Lcom/bilibili/deviceutils/DeviceLog;->debug:Z

    return-void
.end method
