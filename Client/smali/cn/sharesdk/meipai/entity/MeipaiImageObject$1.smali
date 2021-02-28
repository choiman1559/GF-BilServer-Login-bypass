.class final Lcn/sharesdk/meipai/entity/MeipaiImageObject$1;
.super Ljava/lang/Object;
.source "MeipaiImageObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/meipai/entity/MeipaiImageObject;
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
        "Lcn/sharesdk/meipai/entity/MeipaiImageObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcn/sharesdk/meipai/entity/MeipaiImageObject;
    .registers 3

    .prologue
    .line 17
    new-instance v0, Lcn/sharesdk/meipai/entity/MeipaiImageObject;

    invoke-direct {v0, p1}, Lcn/sharesdk/meipai/entity/MeipaiImageObject;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcn/sharesdk/meipai/entity/MeipaiImageObject;
    .registers 3

    .prologue
    .line 20
    new-array v0, p1, [Lcn/sharesdk/meipai/entity/MeipaiImageObject;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcn/sharesdk/meipai/entity/MeipaiImageObject$1;->a(Landroid/os/Parcel;)Lcn/sharesdk/meipai/entity/MeipaiImageObject;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcn/sharesdk/meipai/entity/MeipaiImageObject$1;->a(I)[Lcn/sharesdk/meipai/entity/MeipaiImageObject;

    move-result-object v0

    return-object v0
.end method
