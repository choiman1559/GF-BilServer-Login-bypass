.class public Lcom/mob/a;
.super Lcom/mob/tools/log/NLog;
.source "MobSDKLog.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mob/tools/log/NLog;-><init>()V

    .line 13
    const-string v0, "MOBSDK"

    new-instance v1, Lcom/mob/MobSDKLog$1;

    invoke-direct {v1, p0}, Lcom/mob/MobSDKLog$1;-><init>(Lcom/mob/a;)V

    invoke-static {v0, v1}, Lcom/mob/a;->setCollector(Ljava/lang/String;Lcom/mob/tools/log/LogCollector;)V

    .line 23
    return-void
.end method

.method public static a()Lcom/mob/tools/log/NLog;
    .registers 1

    .prologue
    .line 30
    new-instance v0, Lcom/mob/a;

    invoke-direct {v0}, Lcom/mob/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected getSDKTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    const-string v0, "MOBSDK"

    return-object v0
.end method
