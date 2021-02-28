.class public Lcom/mob/tools/utils/LocationHelper;
.super Ljava/lang/Object;
.source "LocationHelper.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/os/Handler$Callback;


# instance fields
.field private gpsRequesting:Z

.field private gpsTimeoutSec:I

.field private handler:Landroid/os/Handler;

.field private lm:Landroid/location/LocationManager;

.field private networkRequesting:Z

.field private networkTimeoutSec:I

.field private res:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/mob/tools/utils/LocationHelper$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/utils/LocationHelper$1;-><init>(Lcom/mob/tools/utils/LocationHelper;)V

    .line 34
    .local v0, "thread":Lcom/mob/tools/MobHandlerThread;
    invoke-virtual {v0}, Lcom/mob/tools/MobHandlerThread;->start()V

    .line 35
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/mob/tools/MobHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/mob/tools/utils/LocationHelper;->handler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method private onGPSTimeout()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 119
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 120
    iput-boolean v6, p0, Lcom/mob/tools/utils/LocationHelper;->gpsRequesting:Z

    .line 122
    iget v0, p0, Lcom/mob/tools/utils/LocationHelper;->networkTimeoutSec:I

    if-eqz v0, :cond_e

    move v6, v7

    .line 123
    .local v6, "preferNetwork":Z
    :cond_e
    if-eqz v6, :cond_36

    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 124
    iput-boolean v7, p0, Lcom/mob/tools/utils/LocationHelper;->networkRequesting:Z

    .line 125
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 126
    iget v0, p0, Lcom/mob/tools/utils/LocationHelper;->networkTimeoutSec:I

    if-lez v0, :cond_35

    .line 127
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/mob/tools/utils/LocationHelper;->networkTimeoutSec:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 135
    :cond_35
    :goto_35
    return-void

    .line 130
    :cond_36
    monitor-enter p0

    .line 131
    :try_start_37
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 132
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_45

    .line 133
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_35

    .line 132
    :catchall_45
    move-exception v0

    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v0
.end method

.method private onRequest()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 91
    iget v2, p0, Lcom/mob/tools/utils/LocationHelper;->gpsTimeoutSec:I

    if-eqz v2, :cond_36

    move v7, v0

    .line 92
    .local v7, "preferGPS":Z
    :goto_7
    iget v2, p0, Lcom/mob/tools/utils/LocationHelper;->networkTimeoutSec:I

    if-eqz v2, :cond_38

    move v8, v0

    .line 94
    .local v8, "preferNetwork":Z
    :goto_c
    if-eqz v7, :cond_3a

    :try_start_e
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mob/tools/utils/LocationHelper;->gpsRequesting:Z

    .line 96
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 97
    iget v0, p0, Lcom/mob/tools/utils/LocationHelper;->gpsTimeoutSec:I

    if-lez v0, :cond_35

    .line 98
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget v2, p0, Lcom/mob/tools/utils/LocationHelper;->gpsTimeoutSec:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 116
    :cond_35
    :goto_35
    return-void

    .end local v7    # "preferGPS":Z
    .end local v8    # "preferNetwork":Z
    :cond_36
    move v7, v1

    .line 91
    goto :goto_7

    .restart local v7    # "preferGPS":Z
    :cond_38
    move v8, v1

    .line 92
    goto :goto_c

    .line 100
    .restart local v8    # "preferNetwork":Z
    :cond_3a
    if-eqz v8, :cond_6d

    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mob/tools/utils/LocationHelper;->networkRequesting:Z

    .line 102
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 103
    iget v0, p0, Lcom/mob/tools/utils/LocationHelper;->networkTimeoutSec:I

    if-lez v0, :cond_35

    .line 104
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget v2, p0, Lcom/mob/tools/utils/LocationHelper;->networkTimeoutSec:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_63} :catch_64

    goto :goto_35

    .line 112
    :catch_64
    move-exception v6

    .line 113
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_35

    .line 107
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_6d
    :try_start_6d
    monitor-enter p0
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6e} :catch_64

    .line 108
    :try_start_6e
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 109
    monitor-exit p0
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_7c

    .line 110
    :try_start_72
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7b} :catch_64

    goto :goto_35

    .line 109
    :catchall_7c
    move-exception v0

    :try_start_7d
    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    :try_start_7e
    throw v0
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_7f} :catch_64
.end method


# virtual methods
.method public getLocation(Landroid/content/Context;)Landroid/location/Location;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/utils/LocationHelper;->getLocation(Landroid/content/Context;I)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getLocation(Landroid/content/Context;I)Landroid/location/Location;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "GPSTimeoutSec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/tools/utils/LocationHelper;->getLocation(Landroid/content/Context;II)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getLocation(Landroid/content/Context;II)Landroid/location/Location;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "GPSTimeoutSec"    # I
    .param p3, "networkTimeoutSec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mob/tools/utils/LocationHelper;->getLocation(Landroid/content/Context;IIZ)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getLocation(Landroid/content/Context;IIZ)Landroid/location/Location;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "GPSTimeoutSec"    # I
    .param p3, "networkTimeoutSec"    # I
    .param p4, "useLastKnown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 53
    iput p2, p0, Lcom/mob/tools/utils/LocationHelper;->gpsTimeoutSec:I

    .line 54
    iput p3, p0, Lcom/mob/tools/utils/LocationHelper;->networkTimeoutSec:I

    .line 56
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->lm:Landroid/location/LocationManager;

    .line 57
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->lm:Landroid/location/LocationManager;

    if-nez v0, :cond_14

    .line 58
    const/4 v0, 0x0

    .line 72
    :goto_13
    return-object v0

    .line 61
    :cond_14
    monitor-enter p0

    .line 62
    :try_start_15
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 64
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_42

    .line 66
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->res:Landroid/location/Location;

    if-nez v0, :cond_3f

    if-eqz p4, :cond_3f

    .line 67
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->res:Landroid/location/Location;

    .line 68
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->res:Landroid/location/Location;

    if-nez v0, :cond_3f

    .line 69
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->res:Landroid/location/Location;

    .line 72
    :cond_3f
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->res:Landroid/location/Location;

    goto :goto_13

    .line 64
    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_9

    .line 77
    invoke-direct {p0}, Lcom/mob/tools/utils/LocationHelper;->onRequest()V

    .line 87
    :cond_7
    :goto_7
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_9
    iget-boolean v0, p0, Lcom/mob/tools/utils/LocationHelper;->gpsRequesting:Z

    if-eqz v0, :cond_11

    .line 79
    invoke-direct {p0}, Lcom/mob/tools/utils/LocationHelper;->onGPSTimeout()V

    goto :goto_7

    .line 80
    :cond_11
    iget-boolean v0, p0, Lcom/mob/tools/utils/LocationHelper;->networkRequesting:Z

    if-eqz v0, :cond_7

    .line 81
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 82
    monitor-enter p0

    .line 83
    :try_start_1b
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 84
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_29

    .line 85
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_7

    .line 84
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 138
    monitor-enter p0

    .line 139
    :try_start_1
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 140
    iput-object p1, p0, Lcom/mob/tools/utils/LocationHelper;->res:Landroid/location/Location;

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 142
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 143
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 144
    return-void

    .line 142
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 156
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 152
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 148
    return-void
.end method
