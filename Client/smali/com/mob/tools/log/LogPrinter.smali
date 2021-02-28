.class public Lcom/mob/tools/log/LogPrinter;
.super Ljava/lang/Object;
.source "LogPrinter.java"


# instance fields
.field private collectors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mob/tools/log/LogCollector;",
            ">;"
        }
    .end annotation
.end field

.field private packageName:Ljava/lang/String;

.field private scope:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/log/LogPrinter;->collectors:Ljava/util/HashMap;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/mob/tools/log/LogPrinter;->packageName:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/mob/tools/log/LogPrinter;->scope:Ljava/lang/String;

    .line 17
    return-void
.end method

.method private getScope(Ljava/lang/Thread;)Ljava/lang/String;
    .registers 9
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 56
    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 57
    .local v3, "stackTrace":[Ljava/lang/StackTraceElement;
    if-eqz v3, :cond_6e

    array-length v5, v3

    if-lez v5, :cond_6e

    .line 58
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v3, v5

    .line 59
    .local v4, "trace":Ljava/lang/StackTraceElement;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_54

    .line 61
    :cond_1a
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_1e
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    .line 67
    .local v1, "lineNum":I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "source":Ljava/lang/String;
    if-gez v1, :cond_36

    .line 69
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 70
    if-eqz v2, :cond_34

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_36

    .line 71
    :cond_34
    const-string v2, "Unknown Source"

    .line 75
    :cond_36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 78
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "lineNum":I
    .end local v2    # "source":Ljava/lang/String;
    .end local v4    # "trace":Ljava/lang/StackTraceElement;
    :goto_53
    return-object v5

    .line 63
    .restart local v0    # "fileName":Ljava/lang/String;
    .restart local v4    # "trace":Ljava/lang/StackTraceElement;
    :cond_54
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mob/tools/log/LogPrinter;->scope:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 78
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v4    # "trace":Ljava/lang/StackTraceElement;
    :cond_6e
    iget-object v5, p0, Lcom/mob/tools/log/LogPrinter;->scope:Ljava/lang/String;

    goto :goto_53
.end method

.method private processMessage(Ljava/lang/Thread;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public nativeCrashLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "sdkTag"    # Ljava/lang/String;
    .param p2, "log"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v1, p0, Lcom/mob/tools/log/LogPrinter;->collectors:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/log/LogCollector;

    .line 46
    .local v0, "collector":Lcom/mob/tools/log/LogCollector;
    if-eqz v0, :cond_13

    .line 47
    const/4 v2, 0x6

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/mob/tools/log/LogPrinter;->scope:Ljava/lang/String;

    move-object v1, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/mob/tools/log/LogCollector;->log(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_13
    return-void
.end method

.method public println(Ljava/lang/String;IILjava/lang/String;)I
    .registers 12
    .param p1, "sdkTag"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "level"    # I
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    .line 35
    .local v6, "t":Ljava/lang/Thread;
    invoke-direct {p0, v6, p4}, Lcom/mob/tools/log/LogPrinter;->processMessage(Ljava/lang/Thread;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 36
    .local v5, "message":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/mob/tools/log/LogPrinter;->getScope(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, "scope":Ljava/lang/String;
    iget-object v1, p0, Lcom/mob/tools/log/LogPrinter;->collectors:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/log/LogCollector;

    .line 38
    .local v0, "collector":Lcom/mob/tools/log/LogCollector;
    if-eqz v0, :cond_1c

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 39
    invoke-interface/range {v0 .. v5}, Lcom/mob/tools/log/LogCollector;->log(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method public setCollector(Ljava/lang/String;Lcom/mob/tools/log/LogCollector;)V
    .registers 4
    .param p1, "sdkTag"    # Ljava/lang/String;
    .param p2, "collector"    # Lcom/mob/tools/log/LogCollector;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mob/tools/log/LogPrinter;->collectors:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/log/LogPrinter;->packageName:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/mob/tools/log/LogPrinter;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/mob/tools/log/LogPrinter;->packageName:Ljava/lang/String;

    .line 27
    :goto_12
    return-void

    .line 26
    :cond_13
    iget-object v0, p0, Lcom/mob/tools/log/LogPrinter;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/mob/tools/log/LogPrinter;->scope:Ljava/lang/String;

    goto :goto_12
.end method
