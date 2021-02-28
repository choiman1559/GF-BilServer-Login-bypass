.class public Lcn/sharesdk/google/c;
.super Ljava/lang/Object;
.source "ParcelWrite.java"


# direct methods
.method public static a(Landroid/os/Parcel;)I
    .registers 2

    .prologue
    .line 35
    const/16 v0, 0x4f45

    invoke-static {p0, v0}, Lcn/sharesdk/google/c;->b(Landroid/os/Parcel;I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/os/Parcel;I)V
    .registers 2

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcn/sharesdk/google/c;->c(Landroid/os/Parcel;I)V

    .line 40
    return-void
.end method

.method public static a(Landroid/os/Parcel;II)V
    .registers 4

    .prologue
    .line 58
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcn/sharesdk/google/c;->b(Landroid/os/Parcel;II)V

    .line 59
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return-void
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
    .registers 6

    .prologue
    .line 102
    if-nez p2, :cond_9

    .line 103
    if-eqz p4, :cond_8

    .line 104
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/sharesdk/google/c;->b(Landroid/os/Parcel;II)V

    .line 111
    :cond_8
    :goto_8
    return-void

    .line 108
    :cond_9
    invoke-static {p0, p1}, Lcn/sharesdk/google/c;->b(Landroid/os/Parcel;I)I

    move-result v0

    .line 109
    invoke-interface {p2, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 110
    invoke-static {p0, v0}, Lcn/sharesdk/google/c;->c(Landroid/os/Parcel;I)V

    goto :goto_8
.end method

.method public static a(Landroid/os/Parcel;ILjava/lang/String;Z)V
    .registers 5

    .prologue
    .line 78
    if-nez p2, :cond_9

    .line 79
    if-eqz p3, :cond_8

    .line 80
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/sharesdk/google/c;->b(Landroid/os/Parcel;II)V

    .line 87
    :cond_8
    :goto_8
    return-void

    .line 84
    :cond_9
    invoke-static {p0, p1}, Lcn/sharesdk/google/c;->b(Landroid/os/Parcel;I)I

    move-result v0

    .line 85
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    invoke-static {p0, v0}, Lcn/sharesdk/google/c;->c(Landroid/os/Parcel;I)V

    goto :goto_8
.end method

.method public static a(Landroid/os/Parcel;IZ)V
    .registers 4

    .prologue
    .line 43
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcn/sharesdk/google/c;->b(Landroid/os/Parcel;II)V

    .line 44
    if-eqz p2, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    return-void

    .line 44
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static b(Landroid/os/Parcel;I)I
    .registers 3

    .prologue
    .line 21
    const/high16 v0, -0x10000

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    return v0
.end method

.method private static b(Landroid/os/Parcel;II)V
    .registers 4

    .prologue
    .line 12
    const v0, 0xffff

    if-lt p2, v0, :cond_f

    .line 13
    const/high16 v0, -0x10000

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    :goto_e
    return-void

    .line 16
    :cond_f
    shl-int/lit8 v0, p2, 0x10

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e
.end method

.method private static c(Landroid/os/Parcel;I)V
    .registers 5

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 28
    sub-int v1, v0, p1

    .line 29
    add-int/lit8 v2, p1, -0x4

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 30
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 32
    return-void
.end method
