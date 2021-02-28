.class public Lcom/lohanry/android/framework/tools/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final DEBUG:I = 0x1

.field public static final ERROR:I = 0x8

.field public static final INFO:I = 0x2

.field private static LogLevel:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field public static final WARRING:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const-class v0, Lcom/lohanry/android/framework/tools/Logger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lohanry/android/framework/tools/Logger;->TAG:Ljava/lang/String;

    .line 15
    const/16 v0, 0x8

    sput v0, Lcom/lohanry/android/framework/tools/Logger;->LogLevel:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 22
    sget-object v0, Lcom/lohanry/android/framework/tools/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 25
    sget v0, Lcom/lohanry/android/framework/tools/Logger;->LogLevel:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_a
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 30
    sget v0, Lcom/lohanry/android/framework/tools/Logger;->LogLevel:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 31
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    :cond_a
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 64
    sget-object v0, Lcom/lohanry/android/framework/tools/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lohanry/android/framework/tools/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 67
    sget v0, Lcom/lohanry/android/framework/tools/Logger;->LogLevel:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 68
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_b
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    sget v0, Lcom/lohanry/android/framework/tools/Logger;->LogLevel:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 73
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :cond_b
    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 36
    sget-object v0, Lcom/lohanry/android/framework/tools/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lohanry/android/framework/tools/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 39
    sget v0, Lcom/lohanry/android/framework/tools/Logger;->LogLevel:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 40
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_a
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 44
    sget v0, Lcom/lohanry/android/framework/tools/Logger;->LogLevel:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 45
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    :cond_a
    return-void
.end method

.method public static isModeOf(I)Z
    .registers 2
    .param p0, "mode"    # I

    .prologue
    .line 78
    sget v0, Lcom/lohanry/android/framework/tools/Logger;->LogLevel:I

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static setLogLevel(I)V
    .registers 1
    .param p0, "debugMode"    # I

    .prologue
    .line 18
    sput p0, Lcom/lohanry/android/framework/tools/Logger;->LogLevel:I

    .line 19
    return-void
.end method

.method public static warning(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-object v0, Lcom/lohanry/android/framework/tools/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lohanry/android/framework/tools/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static warning(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 53
    sget v0, Lcom/lohanry/android/framework/tools/Logger;->LogLevel:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 54
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_a
    return-void
.end method

.method public static warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 58
    sget v0, Lcom/lohanry/android/framework/tools/Logger;->LogLevel:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 59
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :cond_a
    return-void
.end method
