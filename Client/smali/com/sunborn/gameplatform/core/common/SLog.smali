.class public Lcom/sunborn/gameplatform/core/common/SLog;
.super Ljava/lang/Object;
.source "SLog.java"


# static fields
.field public static final DEBUG:I = 0x1

.field public static final ERROR:I = 0x8

.field public static final INFO:I = 0x2

.field public static LogLevel:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SunbornGamePlatform"

.field public static final WARRING:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const/16 v0, 0x8

    sput v0, Lcom/sunborn/gameplatform/core/common/SLog;->LogLevel:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 19
    const-string v0, "SunbornGamePlatform"

    invoke-static {v0, p0}, Lcom/sunborn/gameplatform/core/common/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 22
    sget v0, Lcom/sunborn/gameplatform/core/common/SLog;->LogLevel:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 23
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_a
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 27
    sget v0, Lcom/sunborn/gameplatform/core/common/SLog;->LogLevel:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 28
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    :cond_a
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v0, "SunbornGamePlatform"

    invoke-static {v0, p0}, Lcom/sunborn/gameplatform/core/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 64
    sget v0, Lcom/sunborn/gameplatform/core/common/SLog;->LogLevel:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 65
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_b
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    sget v0, Lcom/sunborn/gameplatform/core/common/SLog;->LogLevel:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 70
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    :cond_b
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v0, "SunbornGamePlatform"

    invoke-static {v0, p0}, Lcom/sunborn/gameplatform/core/common/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 36
    sget v0, Lcom/sunborn/gameplatform/core/common/SLog;->LogLevel:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_a
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 41
    sget v0, Lcom/sunborn/gameplatform/core/common/SLog;->LogLevel:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 42
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :cond_a
    return-void
.end method

.method public static setLogLevel(I)V
    .registers 1
    .param p0, "debugMode"    # I

    .prologue
    .line 15
    sput p0, Lcom/sunborn/gameplatform/core/common/SLog;->LogLevel:I

    .line 16
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string v0, "SunbornGamePlatform"

    invoke-static {v0, p0}, Lcom/sunborn/gameplatform/core/common/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 50
    sget v0, Lcom/sunborn/gameplatform/core/common/SLog;->LogLevel:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_a
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    sget v0, Lcom/sunborn/gameplatform/core/common/SLog;->LogLevel:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 56
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    :cond_a
    return-void
.end method
