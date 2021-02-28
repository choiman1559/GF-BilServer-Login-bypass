.class public Lcom/android/data/sdk/utils/LogUtils;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "DataSdk"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/data/sdk/utils/LogUtils;->a:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/data/sdk/utils/LogUtils;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/android/data/sdk/utils/LogUtils;->b:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/android/data/sdk/utils/LogUtils;->b:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/android/data/sdk/utils/LogUtils;->b:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    const-string v0, "DataSdk"

    invoke-static {v0, p0}, Lcom/android/data/sdk/utils/LogUtils;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/android/data/sdk/utils/LogUtils;->b:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    const-string v0, "DataSdk"

    invoke-static {v0, p0}, Lcom/android/data/sdk/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/android/data/sdk/utils/LogUtils;->b:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2

    const-string v0, "DataSdk"

    invoke-static {v0, p0}, Lcom/android/data/sdk/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static printExceptionStackTrace(Ljava/lang/Exception;)V
    .registers 4

    if-eqz p0, :cond_f

    sget-boolean v0, Lcom/android/data/sdk/utils/LogUtils;->b:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/data/sdk/utils/LogUtils;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    return-void
.end method

.method public static printThrowable(Ljava/lang/Throwable;)V
    .registers 4

    if-eqz p0, :cond_f

    sget-boolean v0, Lcom/android/data/sdk/utils/LogUtils;->b:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/data/sdk/utils/LogUtils;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .registers 2

    const-string v0, "DataSdk"

    invoke-static {v0, p0}, Lcom/android/data/sdk/utils/LogUtils;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2

    const-string v0, "DataSdk"

    invoke-static {v0, p0}, Lcom/android/data/sdk/utils/LogUtils;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
