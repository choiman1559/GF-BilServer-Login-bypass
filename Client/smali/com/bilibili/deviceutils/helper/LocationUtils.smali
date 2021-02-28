.class Lcom/bilibili/deviceutils/helper/LocationUtils;
.super Ljava/lang/Object;


# static fields
.field static latitude:D

.field static longitude:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/bilibili/deviceutils/helper/LocationUtils;->latitude:D

    sput-wide v0, Lcom/bilibili/deviceutils/helper/LocationUtils;->longitude:D

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initLocation(Landroid/content/Context;)V
    .registers 7

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    sput-wide v2, Lcom/bilibili/deviceutils/helper/LocationUtils;->latitude:D

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    sput-wide v0, Lcom/bilibili/deviceutils/helper/LocationUtils;->longitude:D

    :cond_24
    :goto_24
    return-void

    :cond_25
    new-instance v5, Lcom/bilibili/deviceutils/helper/LocationUtils$1;

    invoke-direct {v5}, Lcom/bilibili/deviceutils/helper/LocationUtils$1;-><init>()V

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    sput-wide v2, Lcom/bilibili/deviceutils/helper/LocationUtils;->latitude:D

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    sput-wide v0, Lcom/bilibili/deviceutils/helper/LocationUtils;->longitude:D

    goto :goto_24
.end method
