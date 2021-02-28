.class final Lcom/mob/MobSDK$1;
.super Ljava/lang/Thread;
.source "MobSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/MobSDK;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 75
    invoke-static {}, Lcom/mob/commons/clt/ActClt;->startCollector()V

    .line 76
    invoke-static {}, Lcom/mob/commons/clt/DvcClt;->startCollector()V

    .line 77
    invoke-static {}, Lcom/mob/commons/clt/PkgClt;->startCollector()V

    .line 78
    invoke-static {}, Lcom/mob/commons/clt/RtClt;->startCollector()V

    .line 79
    invoke-static {}, Lcom/mob/commons/iosbridge/UDPServer;->start()V

    .line 80
    return-void
.end method
