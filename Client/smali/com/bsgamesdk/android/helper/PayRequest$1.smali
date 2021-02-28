.class final Lcom/bsgamesdk/android/helper/PayRequest$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/helper/PayRequest;
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
        "Lcom/bsgamesdk/android/helper/PayRequest;",
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
.method public a(Landroid/os/Parcel;)Lcom/bsgamesdk/android/helper/PayRequest;
    .registers 4

    new-instance v0, Lcom/bsgamesdk/android/helper/PayRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/bsgamesdk/android/helper/PayRequest;-><init>(Landroid/os/Parcel;Lcom/bsgamesdk/android/helper/PayRequest$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/bsgamesdk/android/helper/PayRequest;
    .registers 3

    new-array v0, p1, [Lcom/bsgamesdk/android/helper/PayRequest;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/helper/PayRequest$1;->a(Landroid/os/Parcel;)Lcom/bsgamesdk/android/helper/PayRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/helper/PayRequest$1;->a(I)[Lcom/bsgamesdk/android/helper/PayRequest;

    move-result-object v0

    return-object v0
.end method
