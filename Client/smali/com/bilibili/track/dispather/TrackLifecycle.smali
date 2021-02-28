.class public Lcom/bilibili/track/dispather/TrackLifecycle;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static activityAount:I

.field private static volatile mSingleton:Lcom/bilibili/track/dispather/TrackLifecycle;


# instance fields
.field private start:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/bilibili/track/dispather/TrackLifecycle;->activityAount:I

    const/4 v0, 0x0

    sput-object v0, Lcom/bilibili/track/dispather/TrackLifecycle;->mSingleton:Lcom/bilibili/track/dispather/TrackLifecycle;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bilibili/track/dispather/TrackLifecycle;->start:J

    return-void
.end method

.method public static getInstance()Lcom/bilibili/track/dispather/TrackLifecycle;
    .registers 2

    sget-object v0, Lcom/bilibili/track/dispather/TrackLifecycle;->mSingleton:Lcom/bilibili/track/dispather/TrackLifecycle;

    if-nez v0, :cond_13

    const-class v1, Lcom/bilibili/track/dispather/TrackLifecycle;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/bilibili/track/dispather/TrackLifecycle;->mSingleton:Lcom/bilibili/track/dispather/TrackLifecycle;

    if-nez v0, :cond_12

    new-instance v0, Lcom/bilibili/track/dispather/TrackLifecycle;

    invoke-direct {v0}, Lcom/bilibili/track/dispather/TrackLifecycle;-><init>()V

    sput-object v0, Lcom/bilibili/track/dispather/TrackLifecycle;->mSingleton:Lcom/bilibili/track/dispather/TrackLifecycle;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/bilibili/track/dispather/TrackLifecycle;->mSingleton:Lcom/bilibili/track/dispather/TrackLifecycle;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public isInBackground()Z
    .registers 2

    sget v0, Lcom/bilibili/track/dispather/TrackLifecycle;->activityAount:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Lcom/bilibili/track/dispather/TrackWindowCallBack;

    invoke-direct {v1, p1}, Lcom/bilibili/track/dispather/TrackWindowCallBack;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    :try_start_0
    sget v0, Lcom/bilibili/track/dispather/TrackLifecycle;->activityAount:I

    if-gtz v0, :cond_14

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->batterReciever:Lcom/bilibili/deviceutils/BatterReciever;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->batterReciever:Lcom/bilibili/deviceutils/BatterReciever;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_d
    invoke-static {}, Lcom/bilibili/track/utils/TrackLooper;->getInstance()Lcom/bilibili/track/utils/TrackLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/track/utils/TrackLooper;->quit()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 14

    sget v0, Lcom/bilibili/track/dispather/TrackLifecycle;->activityAount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/bilibili/track/dispather/TrackLifecycle;->activityAount:I

    invoke-static {}, Lcom/bilibili/track/Track;->getInstance()Lcom/bilibili/track/Track;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "expourse"

    const-string v5, ""

    sget-object v0, Lcom/bilibili/track/constants/LogLevel;->dispensable:Lcom/bilibili/track/constants/LogLevel;

    invoke-virtual {v0}, Lcom/bilibili/track/constants/LogLevel;->getLevel()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/bilibili/track/dispather/TrackLifecycle;->start:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual/range {v1 .. v11}, Lcom/bilibili/track/Track;->reportExposureEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JJ)V

    sget v0, Lcom/bilibili/track/dispather/TrackLifecycle;->activityAount:I

    if-gtz v0, :cond_2e

    invoke-static {}, Lcom/bilibili/track/utils/TrackLooper;->getInstance()Lcom/bilibili/track/utils/TrackLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/track/utils/TrackLooper;->start()V

    :cond_2e
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/track/dispather/TrackLifecycle;->start:J

    invoke-static {}, Lcom/bilibili/track/Track;->getInstance()Lcom/bilibili/track/Track;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pv"

    const-string v4, ""

    sget-object v5, Lcom/bilibili/track/constants/LogLevel;->dispensable:Lcom/bilibili/track/constants/LogLevel;

    invoke-virtual {v5}, Lcom/bilibili/track/constants/LogLevel;->getLevel()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/track/Track;->reportPageViewEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/bilibili/track/utils/TrackLooper;->getInstance()Lcom/bilibili/track/utils/TrackLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/track/utils/TrackLooper;->quit()V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    sget v0, Lcom/bilibili/track/dispather/TrackLifecycle;->activityAount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/bilibili/track/dispather/TrackLifecycle;->activityAount:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
