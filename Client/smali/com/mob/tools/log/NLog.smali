.class public abstract Lcom/mob/tools/log/NLog;
.super Ljava/lang/Object;
.source "NLog.java"


# static fields
.field private static disable:Z

.field private static loggers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mob/tools/log/NLog;",
            ">;"
        }
    .end annotation
.end field

.field private static printer:Lcom/mob/tools/log/LogPrinter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mob/tools/log/NLog;->loggers:Ljava/util/HashMap;

    .line 21
    new-instance v0, Lcom/mob/tools/log/LogPrinter;

    invoke-direct {v0}, Lcom/mob/tools/log/LogPrinter;-><init>()V

    sput-object v0, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    .line 22
    invoke-static {}, Lcom/mob/tools/log/MobUncaughtExceptionHandler;->register()V

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/mob/tools/log/NLog;->loggers:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/mob/tools/log/NLog;->loggers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 28
    sget-object v0, Lcom/mob/tools/log/NLog;->loggers:Ljava/util/HashMap;

    const-string v1, "__FIRST__"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_1c
    return-void
.end method

.method public static disable()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    .line 17
    return-void
.end method

.method protected static final getInstanceForSDK(Ljava/lang/String;Z)Lcom/mob/tools/log/NLog;
    .registers 5
    .param p0, "sdkTag"    # Ljava/lang/String;
    .param p1, "createNew"    # Z

    .prologue
    .line 44
    sget-object v1, Lcom/mob/tools/log/NLog;->loggers:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/log/NLog;

    .line 45
    .local v0, "instance":Lcom/mob/tools/log/NLog;
    if-nez v0, :cond_14

    .line 46
    sget-object v1, Lcom/mob/tools/log/NLog;->loggers:Ljava/util/HashMap;

    const-string v2, "__FIRST__"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "instance":Lcom/mob/tools/log/NLog;
    check-cast v0, Lcom/mob/tools/log/NLog;

    .line 48
    .restart local v0    # "instance":Lcom/mob/tools/log/NLog;
    :cond_14
    if-nez v0, :cond_1d

    if-eqz p1, :cond_1d

    .line 49
    new-instance v0, Lcom/mob/tools/log/NLog$1;

    .end local v0    # "instance":Lcom/mob/tools/log/NLog;
    invoke-direct {v0, p0}, Lcom/mob/tools/log/NLog$1;-><init>(Ljava/lang/String;)V

    .line 55
    .restart local v0    # "instance":Lcom/mob/tools/log/NLog;
    :cond_1d
    return-object v0
.end method

.method private final getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 6
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 219
    if-nez p1, :cond_5

    .line 220
    const-string v3, ""

    .line 236
    :goto_4
    return-object v3

    .line 225
    :cond_5
    move-object v2, p1

    .line 226
    .local v2, "t":Ljava/lang/Throwable;
    :goto_6
    if-eqz v2, :cond_14

    .line 227
    instance-of v3, v2, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_f

    .line 228
    const-string v3, ""

    goto :goto_4

    .line 230
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_6

    .line 233
    :cond_14
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 234
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 235
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 236
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4
.end method

.method public static setCollector(Ljava/lang/String;Lcom/mob/tools/log/LogCollector;)V
    .registers 3
    .param p0, "sdkTag"    # Ljava/lang/String;
    .param p1, "collector"    # Lcom/mob/tools/log/LogCollector;

    .prologue
    .line 40
    sget-object v0, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {v0, p0, p1}, Lcom/mob/tools/log/LogPrinter;->setCollector(Ljava/lang/String;Lcom/mob/tools/log/LogCollector;)V

    .line 41
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    if-eqz p0, :cond_a

    .line 34
    sget-object v0, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {v0, p0}, Lcom/mob/tools/log/LogPrinter;->setContext(Landroid/content/Context;)V

    .line 35
    invoke-static {p0}, Lcom/mob/tools/log/NativeErrorHandler;->prepare(Landroid/content/Context;)Z

    .line 37
    :cond_a
    return-void
.end method


# virtual methods
.method public final crash(Ljava/lang/Throwable;)I
    .registers 7
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 205
    sget-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    if-eqz v0, :cond_6

    .line 206
    const/4 v0, 0x0

    .line 208
    :goto_5
    return v0

    :cond_6
    sget-object v0, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public final varargs d(Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 9
    .param p1, "format"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 94
    sget-boolean v3, Lcom/mob/tools/log/NLog;->disable:Z

    if-eqz v3, :cond_6

    .line 99
    :goto_5
    return v2

    .line 97
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "s":Ljava/lang/String;
    array-length v3, p2

    if-lez v3, :cond_1d

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "message":Ljava/lang/String;
    :goto_11
    sget-object v3, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    goto :goto_5

    .end local v0    # "message":Ljava/lang/String;
    :cond_1d
    move-object v0, v1

    .line 98
    goto :goto_11
.end method

.method public final d(Ljava/lang/Throwable;)I
    .registers 7
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 87
    sget-boolean v1, Lcom/mob/tools/log/NLog;->disable:Z

    if-eqz v1, :cond_6

    .line 90
    :goto_5
    return v0

    :cond_6
    sget-object v1, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public final varargs d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 10
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 103
    sget-boolean v3, Lcom/mob/tools/log/NLog;->disable:Z

    if-eqz v3, :cond_6

    .line 109
    :goto_5
    return v2

    .line 106
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "s":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p3

    if-lez v4, :cond_16

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "s":Ljava/lang/String;
    :cond_16
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 108
    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "message":Ljava/lang/String;
    sget-object v3, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    goto :goto_5
.end method

.method public final varargs e(Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 9
    .param p1, "format"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 179
    sget-boolean v3, Lcom/mob/tools/log/NLog;->disable:Z

    if-eqz v3, :cond_6

    .line 184
    :goto_5
    return v2

    .line 182
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "s":Ljava/lang/String;
    array-length v3, p2

    if-lez v3, :cond_1d

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "message":Ljava/lang/String;
    :goto_11
    sget-object v3, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    goto :goto_5

    .end local v0    # "message":Ljava/lang/String;
    :cond_1d
    move-object v0, v1

    .line 183
    goto :goto_11
.end method

.method public final e(Ljava/lang/Throwable;)I
    .registers 7
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 172
    sget-boolean v1, Lcom/mob/tools/log/NLog;->disable:Z

    if-eqz v1, :cond_6

    .line 175
    :goto_5
    return v0

    :cond_6
    sget-object v1, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public final varargs e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 10
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 188
    sget-boolean v3, Lcom/mob/tools/log/NLog;->disable:Z

    if-eqz v3, :cond_6

    .line 194
    :goto_5
    return v2

    .line 191
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "s":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p3

    if-lez v4, :cond_16

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "s":Ljava/lang/String;
    :cond_16
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 193
    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "message":Ljava/lang/String;
    sget-object v3, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    goto :goto_5
.end method

.method protected abstract getSDKTag()Ljava/lang/String;
.end method

.method public final varargs i(Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 9
    .param p1, "format"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 120
    sget-boolean v3, Lcom/mob/tools/log/NLog;->disable:Z

    if-eqz v3, :cond_6

    .line 125
    :goto_5
    return v2

    .line 123
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "s":Ljava/lang/String;
    array-length v3, p2

    if-lez v3, :cond_1d

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "message":Ljava/lang/String;
    :goto_11
    sget-object v3, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    goto :goto_5

    .end local v0    # "message":Ljava/lang/String;
    :cond_1d
    move-object v0, v1

    .line 124
    goto :goto_11
.end method

.method public final i(Ljava/lang/Throwable;)I
    .registers 7
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 113
    sget-boolean v1, Lcom/mob/tools/log/NLog;->disable:Z

    if-eqz v1, :cond_6

    .line 116
    :goto_5
    return v0

    :cond_6
    sget-object v1, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public final varargs i(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 10
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 129
    sget-boolean v3, Lcom/mob/tools/log/NLog;->disable:Z

    if-eqz v3, :cond_6

    .line 135
    :goto_5
    return v2

    .line 132
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "s":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p3

    if-lez v4, :cond_16

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "s":Ljava/lang/String;
    :cond_16
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 134
    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "message":Ljava/lang/String;
    sget-object v3, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    goto :goto_5
.end method

.method public final nativeCrashLog(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 212
    sget-boolean v0, Lcom/mob/tools/log/NLog;->disable:Z

    if-eqz v0, :cond_5

    .line 216
    :goto_4
    return-void

    .line 215
    :cond_5
    sget-object v0, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/log/LogPrinter;->nativeCrashLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public final varargs v(Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 9
    .param p1, "format"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 68
    sget-boolean v3, Lcom/mob/tools/log/NLog;->disable:Z

    if-eqz v3, :cond_6

    .line 73
    :goto_5
    return v2

    .line 71
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "s":Ljava/lang/String;
    array-length v3, p2

    if-lez v3, :cond_1d

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "message":Ljava/lang/String;
    :goto_11
    sget-object v3, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    goto :goto_5

    .end local v0    # "message":Ljava/lang/String;
    :cond_1d
    move-object v0, v1

    .line 72
    goto :goto_11
.end method

.method public final v(Ljava/lang/Throwable;)I
    .registers 7
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 61
    sget-boolean v1, Lcom/mob/tools/log/NLog;->disable:Z

    if-eqz v1, :cond_6

    .line 64
    :goto_5
    return v0

    :cond_6
    sget-object v1, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public final varargs v(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 10
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 77
    sget-boolean v3, Lcom/mob/tools/log/NLog;->disable:Z

    if-eqz v3, :cond_6

    .line 83
    :goto_5
    return v2

    .line 80
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "s":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p3

    if-lez v4, :cond_16

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "s":Ljava/lang/String;
    :cond_16
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 82
    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "message":Ljava/lang/String;
    sget-object v3, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    goto :goto_5
.end method

.method public final varargs w(Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 9
    .param p1, "format"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 146
    sget-boolean v3, Lcom/mob/tools/log/NLog;->disable:Z

    if-eqz v3, :cond_6

    .line 151
    :goto_5
    return v2

    .line 149
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "s":Ljava/lang/String;
    array-length v3, p2

    if-lez v3, :cond_1d

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "message":Ljava/lang/String;
    :goto_11
    sget-object v3, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    goto :goto_5

    .end local v0    # "message":Ljava/lang/String;
    :cond_1d
    move-object v0, v1

    .line 150
    goto :goto_11
.end method

.method public final w(Ljava/lang/String;)I
    .registers 6
    .param p1, "m"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 165
    sget-boolean v1, Lcom/mob/tools/log/NLog;->disable:Z

    if-eqz v1, :cond_6

    .line 168
    :goto_5
    return v0

    :cond_6
    sget-object v1, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public final w(Ljava/lang/Throwable;)I
    .registers 7
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 139
    sget-boolean v1, Lcom/mob/tools/log/NLog;->disable:Z

    if-eqz v1, :cond_6

    .line 142
    :goto_5
    return v0

    :cond_6
    sget-object v1, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public final varargs w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 10
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 155
    sget-boolean v3, Lcom/mob/tools/log/NLog;->disable:Z

    if-eqz v3, :cond_6

    .line 161
    :goto_5
    return v2

    .line 158
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "s":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p3

    if-lez v4, :cond_16

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "s":Ljava/lang/String;
    :cond_16
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 160
    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "message":Ljava/lang/String;
    sget-object v3, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    goto :goto_5
.end method

.method public wtf(Ljava/lang/Throwable;)I
    .registers 7
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 198
    sget-boolean v1, Lcom/mob/tools/log/NLog;->disable:Z

    if-eqz v1, :cond_6

    .line 201
    :goto_5
    return v0

    :cond_6
    sget-object v1, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {p0, p1}, Lcom/mob/tools/log/NLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    goto :goto_5
.end method
