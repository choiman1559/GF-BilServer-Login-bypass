.class public Lcom/unity3d/splash/services/core/log/DeviceLog;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;
    }
.end annotation


# static fields
.field private static FORCE_DEBUG_LOG:Z = false

.field public static final LOGLEVEL_DEBUG:I = 0x8

.field private static final LOGLEVEL_ERROR:I = 0x1

.field public static final LOGLEVEL_INFO:I = 0x4

.field private static final LOGLEVEL_WARNING:I = 0x2

.field private static LOG_DEBUG:Z = false

.field private static LOG_ERROR:Z = false

.field private static LOG_INFO:Z = false

.field private static LOG_WARNING:Z = false

.field private static final MAX_DEBUG_MSG_LENGTH:I = 0xc00

.field private static final _deviceLogLevel:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    sput-boolean v4, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_ERROR:Z

    sput-boolean v4, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_WARNING:Z

    sput-boolean v4, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_INFO:Z

    sput-boolean v4, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_DEBUG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->FORCE_DEBUG_LOG:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_51

    sget-object v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/splash/services/core/log/DeviceLogLevel;

    const-string v3, "i"

    invoke-direct {v2, v3}, Lcom/unity3d/splash/services/core/log/DeviceLogLevel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/splash/services/core/log/DeviceLogLevel;

    const-string v3, "d"

    invoke-direct {v2, v3}, Lcom/unity3d/splash/services/core/log/DeviceLogLevel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->WARNING:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/splash/services/core/log/DeviceLogLevel;

    const-string v3, "w"

    invoke-direct {v2, v3}, Lcom/unity3d/splash/services/core/log/DeviceLogLevel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/splash/services/core/log/DeviceLogLevel;

    const-string v3, "e"

    invoke-direct {v2, v3}, Lcom/unity3d/splash/services/core/log/DeviceLogLevel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_51
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/UnityAdsForceDebugMode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_60

    sput-boolean v4, Lcom/unity3d/splash/services/core/log/DeviceLog;->FORCE_DEBUG_LOG:Z

    :cond_60
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const-string p0, "DO NOT USE EMPTY MESSAGES, use DeviceLog.entered() instead"

    :cond_a
    return-object p0
.end method

.method private static createLogEntry(Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)Lcom/unity3d/splash/services/core/log/DeviceLogEntry;
    .registers 10

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->getLogLevel(Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;)Lcom/unity3d/splash/services/core/log/DeviceLogLevel;

    move-result-object v4

    if-eqz v4, :cond_4a

    move v1, v0

    :goto_11
    array-length v5, v3

    if-ge v1, v5, :cond_3c

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/unity3d/splash/services/core/log/DeviceLog;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    const/4 v0, 0x1

    :cond_27
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/unity3d/splash/services/core/log/DeviceLog;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    if-nez v0, :cond_3c

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_3c
    array-length v0, v3

    if-ge v1, v0, :cond_4c

    aget-object v0, v3, v1

    move-object v1, v0

    :goto_42
    if-eqz v1, :cond_4a

    new-instance v0, Lcom/unity3d/splash/services/core/log/DeviceLogEntry;

    invoke-direct {v0, v4, p1, v1}, Lcom/unity3d/splash/services/core/log/DeviceLogEntry;-><init>(Lcom/unity3d/splash/services/core/log/DeviceLogLevel;Ljava/lang/String;Ljava/lang/StackTraceElement;)V

    :goto_49
    return-object v0

    :cond_4a
    move-object v0, v2

    goto :goto_49

    :cond_4c
    move-object v1, v2

    goto :goto_42
.end method

.method public static debug(Ljava/lang/String;)V
    .registers 4

    const/16 v2, 0xc00

    sget-boolean v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_DEBUG:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->FORCE_DEBUG_LOG:Z

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_29

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7800

    if-ge v0, v1, :cond_a

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_a

    :cond_29
    sget-object v0, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->checkMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->write(Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public static entered()V
    .registers 1

    const-string v0, "ENTERED METHOD"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->checkMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->write(Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public static exception(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    const-string v0, ""

    if-eqz p0, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_15
    if-eqz p1, :cond_32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_32
    if-eqz p1, :cond_59

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_59

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_59
    sget-object v1, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->write(Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    return-void
.end method

.method private static getLogLevel(Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;)Lcom/unity3d/splash/services/core/log/DeviceLogLevel;
    .registers 2

    sget-object v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/core/log/DeviceLogLevel;

    return-object v0
.end method

.method public static info(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->checkMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->write(Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->info(Ljava/lang/String;)V

    return-void
.end method

.method public static setLogLevel(I)V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x8

    if-lt p0, v0, :cond_f

    sput-boolean v2, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_ERROR:Z

    sput-boolean v2, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_WARNING:Z

    sput-boolean v2, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_INFO:Z

    sput-boolean v2, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_DEBUG:Z

    :goto_e
    return-void

    :cond_f
    const/4 v0, 0x4

    if-lt p0, v0, :cond_1b

    sput-boolean v2, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_ERROR:Z

    sput-boolean v2, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_WARNING:Z

    sput-boolean v2, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_INFO:Z

    sput-boolean v1, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_DEBUG:Z

    goto :goto_e

    :cond_1b
    const/4 v0, 0x2

    if-lt p0, v0, :cond_27

    sput-boolean v2, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_ERROR:Z

    sput-boolean v2, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_WARNING:Z

    sput-boolean v1, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_INFO:Z

    sput-boolean v1, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_DEBUG:Z

    goto :goto_e

    :cond_27
    if-lez p0, :cond_32

    sput-boolean v2, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_ERROR:Z

    sput-boolean v1, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_WARNING:Z

    sput-boolean v1, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_INFO:Z

    sput-boolean v1, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_DEBUG:Z

    goto :goto_e

    :cond_32
    sput-boolean v1, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_ERROR:Z

    sput-boolean v1, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_WARNING:Z

    sput-boolean v1, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_INFO:Z

    sput-boolean v1, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_DEBUG:Z

    goto :goto_e
.end method

.method public static warning(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->WARNING:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->checkMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->write(Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->warning(Ljava/lang/String;)V

    return-void
.end method

.method private static write(Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x1

    sget-object v0, Lcom/unity3d/splash/services/core/log/DeviceLog$1;->$SwitchMap$com$unity3d$splash$services$core$log$DeviceLog$UnityAdsLogLevel:[I

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_2a

    move v0, v1

    :goto_d
    sget-boolean v2, Lcom/unity3d/splash/services/core/log/DeviceLog;->FORCE_DEBUG_LOG:Z

    if-eqz v2, :cond_27

    :goto_11
    if-eqz v1, :cond_1a

    invoke-static {p0, p1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->createLogEntry(Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)Lcom/unity3d/splash/services/core/log/DeviceLogEntry;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->writeToLog(Lcom/unity3d/splash/services/core/log/DeviceLogEntry;)V

    :cond_1a
    return-void

    :pswitch_1b
    sget-boolean v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_INFO:Z

    goto :goto_d

    :pswitch_1e
    sget-boolean v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_DEBUG:Z

    goto :goto_d

    :pswitch_21
    sget-boolean v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_WARNING:Z

    goto :goto_d

    :pswitch_24
    sget-boolean v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->LOG_ERROR:Z

    goto :goto_d

    :cond_27
    move v1, v0

    goto :goto_11

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
    .end packed-switch
.end method

.method private static writeToLog(Lcom/unity3d/splash/services/core/log/DeviceLogEntry;)V
    .registers 7

    const/4 v1, 0x0

    if-eqz p0, :cond_3f

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/log/DeviceLogEntry;->getLogLevel()Lcom/unity3d/splash/services/core/log/DeviceLogLevel;

    move-result-object v0

    if-eqz v0, :cond_3f

    :try_start_9
    const-class v0, Landroid/util/Log;

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/log/DeviceLogEntry;->getLogLevel()Lcom/unity3d/splash/services/core/log/DeviceLogLevel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/splash/services/core/log/DeviceLogLevel;->getReceivingMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_23} :catch_40

    move-result-object v0

    :goto_24
    if-eqz v0, :cond_3f

    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_28
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/log/DeviceLogEntry;->getLogLevel()Lcom/unity3d/splash/services/core/log/DeviceLogLevel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unity3d/splash/services/core/log/DeviceLogLevel;->getLogTag()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/log/DeviceLogEntry;->getParsedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3f} :catch_4a

    :cond_3f
    :goto_3f
    return-void

    :catch_40
    move-exception v0

    const-string v2, "UnityAds"

    const-string v3, "Writing to log failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_24

    :catch_4a
    move-exception v0

    const-string v1, "UnityAds"

    const-string v2, "Writing to log failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f
.end method
