.class final Lcom/bsgamesdk/android/model/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/model/j;
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
        "Lcom/bsgamesdk/android/model/j;",
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
.method public a(Landroid/os/Parcel;)Lcom/bsgamesdk/android/model/j;
    .registers 3

    new-instance v0, Lcom/bsgamesdk/android/model/j;

    invoke-direct {v0, p1}, Lcom/bsgamesdk/android/model/j;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/bsgamesdk/android/model/j;
    .registers 3

    new-array v0, p1, [Lcom/bsgamesdk/android/model/j;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/model/j$1;->a(Landroid/os/Parcel;)Lcom/bsgamesdk/android/model/j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/model/j$1;->a(I)[Lcom/bsgamesdk/android/model/j;

    move-result-object v0

    return-object v0
.end method
