.class public abstract Lcn/sharesdk/google/GoogleOutIinterface$a;
.super Landroid/os/Binder;
.source "GoogleOutIinterface.java"

# interfaces
.implements Lcn/sharesdk/google/GoogleOutIinterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/google/GoogleOutIinterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    invoke-virtual {p0, p0, v0}, Lcn/sharesdk/google/GoogleOutIinterface$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 31
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 35
    sparse-switch p1, :sswitch_data_36

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    .line 37
    :sswitch_9
    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 38
    goto :goto_8

    .line 41
    :sswitch_10
    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_33

    .line 46
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 50
    :goto_2b
    invoke-virtual {p0, v2, v3, v0}, Lcn/sharesdk/google/GoogleOutIinterface$a;->Callback(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 52
    goto :goto_8

    .line 48
    :cond_33
    const/4 v0, 0x0

    goto :goto_2b

    .line 35
    nop

    :sswitch_data_36
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
