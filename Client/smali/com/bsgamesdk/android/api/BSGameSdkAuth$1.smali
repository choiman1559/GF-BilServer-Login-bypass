.class final Lcom/bsgamesdk/android/api/BSGameSdkAuth$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/api/BSGameSdkAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/bsgamesdk/android/api/BSGameSdkAuth;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 3

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-direct {v0, p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 3

    new-array v0, p1, [Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth$1;->a(Landroid/os/Parcel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth$1;->a(I)[Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    return-object v0
.end method
