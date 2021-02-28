.class final Lcom/sina/weibo/sdk/api/MultiImageObject$1;
.super Ljava/lang/Object;
.source "MultiImageObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/api/MultiImageObject;
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
        "Lcom/sina/weibo/sdk/api/MultiImageObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sina/weibo/sdk/api/MultiImageObject;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 31
    new-instance v0, Lcom/sina/weibo/sdk/api/MultiImageObject;

    invoke-direct {v0, p1}, Lcom/sina/weibo/sdk/api/MultiImageObject;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/MultiImageObject$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sina/weibo/sdk/api/MultiImageObject;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sina/weibo/sdk/api/MultiImageObject;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 35
    new-array v0, p1, [Lcom/sina/weibo/sdk/api/MultiImageObject;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/MultiImageObject$1;->newArray(I)[Lcom/sina/weibo/sdk/api/MultiImageObject;

    move-result-object v0

    return-object v0
.end method
