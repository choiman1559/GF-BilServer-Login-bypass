.class public abstract Lcom/unity3d/splash/services/core/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/unity3d/splash/services/core/device/AdvertisingId$GoogleAdvertisingInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/services/core/device/AdvertisingId$GoogleAdvertisingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GoogleAdvertisingInfoBinder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/splash/services/core/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static create(Landroid/os/IBinder;)Lcom/unity3d/splash/services/core/device/AdvertisingId$GoogleAdvertisingInfo;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/unity3d/splash/services/core/device/AdvertisingId$GoogleAdvertisingInfo;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/unity3d/splash/services/core/device/AdvertisingId$GoogleAdvertisingInfo;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/unity3d/splash/services/core/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;

    invoke-direct {v0, p0}, Lcom/unity3d/splash/services/core/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_36

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_9
    return v1

    :pswitch_a
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_1a
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_34

    move v0, v1

    :goto_26
    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;->getEnabled(Z)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_30

    move v2, v1

    :cond_30
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :cond_34
    move v0, v2

    goto :goto_26

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_a
        :pswitch_1a
    .end packed-switch
.end method
