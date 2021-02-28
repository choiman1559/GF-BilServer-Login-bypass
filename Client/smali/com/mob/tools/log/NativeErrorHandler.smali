.class public Lcom/mob/tools/log/NativeErrorHandler;
.super Ljava/lang/Object;
.source "NativeErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;
    }
.end annotation


# static fields
.field private static final ENABLE:Z

.field private static final MAX_LOG_SIZE:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x0

    .line 22
    .local v0, "loaded":Z
    :try_start_1
    const-string v1, "neh"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_a

    .line 23
    const/4 v0, 0x1

    .line 25
    :goto_7
    sput-boolean v0, Lcom/mob/tools/log/NativeErrorHandler;->ENABLE:Z

    .line 26
    return-void

    .line 24
    :catch_a
    move-exception v1

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCachePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->getCacheRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativeCrashLogs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_14

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 42
    :cond_14
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static native nativePrepare(Ljava/lang/String;)V
.end method

.method private static parseIndex(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 11
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v3, Ljava/io/File;

    const-string v8, ".ncl"

    invoke-direct {v3, p0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .local v3, "indexFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_13

    .line 63
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 84
    :goto_12
    return-object v5

    .line 66
    :cond_13
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 67
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 68
    .local v6, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 69
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v5, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;>;"
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "line":Ljava/lang/String;
    :cond_2b
    :goto_2b
    if-eqz v7, :cond_57

    .line 72
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "i":[Ljava/lang/String;
    array-length v8, v2

    const/4 v9, 0x2

    if-lt v8, v9, :cond_2b

    .line 77
    new-instance v4, Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;-><init>(Lcom/mob/tools/log/NativeErrorHandler$1;)V

    .line 78
    .local v4, "info":Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;
    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-static {v8}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;->time:J

    .line 79
    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-static {v8}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;->signal:I

    .line 80
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 82
    goto :goto_2b

    .line 83
    .end local v2    # "i":[Ljava/lang/String;
    .end local v4    # "info":Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;
    :cond_57
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_12
.end method

.method private static parseLog(Ljava/lang/String;Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;)Ljava/lang/String;
    .registers 15
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "info"    # Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 88
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p1, Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;->time:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, p0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .local v5, "logFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_24

    .line 90
    const-string v8, ""

    .line 111
    :goto_23
    return-object v8

    .line 93
    :cond_24
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 94
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 95
    .local v2, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 96
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 97
    .local v6, "logs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "line":Ljava/lang/String;
    :goto_3c
    if-eqz v3, :cond_51

    .line 99
    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v8

    const/16 v9, 0x64

    if-le v8, v9, :cond_4c

    .line 101
    invoke-virtual {v6, v12}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 103
    :cond_4c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_3c

    .line 105
    :cond_51
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 107
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    .local v7, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_73

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 109
    .local v4, "log":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5d

    .line 111
    .end local v4    # "log":Ljava/lang/String;
    :cond_73
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_84

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v12, v8}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_23

    :cond_84
    const-string v8, ""

    goto :goto_23
.end method

.method public static prepare(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-boolean v1, Lcom/mob/tools/log/NativeErrorHandler;->ENABLE:Z

    if-eqz v1, :cond_e

    .line 30
    invoke-static {p0}, Lcom/mob/tools/log/NativeErrorHandler;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/mob/tools/log/NativeErrorHandler;->uploadCreashLog(Ljava/lang/String;)V

    .line 32
    invoke-static {v0}, Lcom/mob/tools/log/NativeErrorHandler;->nativePrepare(Ljava/lang/String;)V

    .line 34
    .end local v0    # "path":Ljava/lang/String;
    :cond_e
    sget-boolean v1, Lcom/mob/tools/log/NativeErrorHandler;->ENABLE:Z

    return v1
.end method

.method private static uploadCreashLog(Ljava/lang/String;)V
    .registers 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 49
    :try_start_0
    invoke-static {p0}, Lcom/mob/tools/log/NativeErrorHandler;->parseIndex(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 50
    .local v0, "index":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;

    .line 51
    .local v1, "info":Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;
    invoke-static {p0, v1}, Lcom/mob/tools/log/NativeErrorHandler;->parseLog(Ljava/lang/String;Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "logList":Ljava/lang/String;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mob/tools/log/NLog;->nativeCrashLog(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_8

    .line 55
    .end local v0    # "index":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;>;"
    .end local v1    # "info":Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;
    .end local v2    # "logList":Ljava/lang/String;
    :catch_20
    move-exception v3

    .line 56
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 58
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_28
    return-void

    .line 54
    .restart local v0    # "index":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;>;"
    :cond_29
    :try_start_29
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_31} :catch_20

    goto :goto_28
.end method
