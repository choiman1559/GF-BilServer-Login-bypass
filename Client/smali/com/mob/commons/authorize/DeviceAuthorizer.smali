.class public final Lcom/mob/commons/authorize/DeviceAuthorizer;
.super Ljava/lang/Object;
.source "DeviceAuthorizer.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized authorize(Lcom/mob/commons/MobProduct;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 11
    const-class v1, Lcom/mob/commons/authorize/DeviceAuthorizer;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/mob/commons/MobProductCollector;->registerProduct(Lcom/mob/commons/MobProduct;)V

    .line 12
    new-instance v0, Lcom/mob/commons/authorize/a;

    invoke-direct {v0}, Lcom/mob/commons/authorize/a;-><init>()V

    .line 13
    if-eqz p0, :cond_19

    invoke-static {}, Lcom/mob/commons/a;->h()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 14
    invoke-virtual {v0, p0}, Lcom/mob/commons/authorize/a;->a(Lcom/mob/commons/MobProduct;)Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1f

    move-result-object v0

    .line 16
    :goto_17
    monitor-exit v1

    return-object v0

    :cond_19
    const/4 v2, 0x0

    :try_start_1a
    invoke-virtual {v0, v2}, Lcom/mob/commons/authorize/a;->a(Z)Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1f

    move-result-object v0

    goto :goto_17

    .line 11
    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method
