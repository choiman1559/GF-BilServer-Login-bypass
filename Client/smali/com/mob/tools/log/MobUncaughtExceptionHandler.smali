.class public Lcom/mob/tools/log/MobUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "MobUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static disable:Z

.field private static isDebug:Z

.field private static oriHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mob/tools/log/MobUncaughtExceptionHandler;->isDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeLog()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mob/tools/log/MobUncaughtExceptionHandler;->isDebug:Z

    .line 19
    return-void
.end method

.method public static disable()V
    .registers 1

    .prologue
    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mob/tools/log/MobUncaughtExceptionHandler;->disable:Z

    .line 15
    return-void
.end method

.method public static openLog()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mob/tools/log/MobUncaughtExceptionHandler;->isDebug:Z

    .line 23
    return-void
.end method

.method public static register()V
    .registers 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/mob/tools/log/MobUncaughtExceptionHandler;->disable:Z

    if-nez v0, :cond_12

    .line 27
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/mob/tools/log/MobUncaughtExceptionHandler;->oriHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 28
    new-instance v0, Lcom/mob/tools/log/MobUncaughtExceptionHandler;

    invoke-direct {v0}, Lcom/mob/tools/log/MobUncaughtExceptionHandler;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 30
    :cond_12
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 33
    sget-boolean v0, Lcom/mob/tools/log/MobUncaughtExceptionHandler;->isDebug:Z

    if-eqz v0, :cond_b

    .line 34
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mob/tools/log/NLog;->wtf(Ljava/lang/Throwable;)I

    .line 36
    :cond_b
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mob/tools/log/NLog;->crash(Ljava/lang/Throwable;)I

    .line 37
    sget-object v0, Lcom/mob/tools/log/MobUncaughtExceptionHandler;->oriHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1b

    .line 38
    sget-object v0, Lcom/mob/tools/log/MobUncaughtExceptionHandler;->oriHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 40
    :cond_1b
    return-void
.end method
