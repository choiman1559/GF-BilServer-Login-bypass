.class public Lcom/mob/commons/iosbridge/UDPServer;
.super Ljava/lang/Object;
.source "UDPServer.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized start()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/mob/commons/iosbridge/UDPServer;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method
