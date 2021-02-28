.class public Lcn/sharesdk/google/d;
.super Ljava/lang/Object;
.source "PersonStructure.java"


# direct methods
.method public static a(I)I
    .registers 2

    .prologue
    .line 19
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static a(Landroid/os/Parcel;)I
    .registers 2

    .prologue
    .line 15
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/os/Parcel;I)I
    .registers 4

    .prologue
    const/high16 v1, -0x10000

    .line 23
    and-int v0, p1, v1

    if-eq v0, v1, :cond_d

    .line 24
    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 26
    :goto_c
    return v0

    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    goto :goto_c
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {p0, p1}, Lcn/sharesdk/google/d;->a(Landroid/os/Parcel;I)I

    move-result v1

    .line 139
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 140
    if-nez v1, :cond_c

    .line 141
    const/4 v0, 0x0

    .line 145
    :goto_b
    return-object v0

    .line 143
    :cond_c
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 144
    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_b
.end method

.method private static a(Landroid/os/Parcel;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcn/sharesdk/google/d;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 36
    if-eq v0, p2, :cond_3d

    .line 37
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_3d
    return-void
.end method

.method public static b(Landroid/os/Parcel;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p0}, Lcn/sharesdk/google/d;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 43
    invoke-static {p0, v0}, Lcn/sharesdk/google/d;->a(Landroid/os/Parcel;I)I

    move-result v1

    .line 44
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 45
    invoke-static {v0}, Lcn/sharesdk/google/d;->a(I)I

    move-result v3

    const/16 v4, 0x4f45

    if-eq v3, v4, :cond_31

    .line 46
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected object header. Got 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_31
    add-int v0, v2, v1

    .line 49
    if-lt v0, v2, :cond_3b

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    if-le v0, v1, :cond_5e

    .line 50
    :cond_3b
    new-instance v1, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Size read is invalid start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_5e
    return v0
.end method

.method public static b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 294
    invoke-static {p0, p1}, Lcn/sharesdk/google/d;->a(Landroid/os/Parcel;I)I

    move-result v1

    .line 295
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 296
    if-nez v1, :cond_c

    .line 297
    const/4 v0, 0x0

    .line 301
    :goto_b
    return-object v0

    .line 299
    :cond_c
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 300
    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_b
.end method

.method public static b(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcn/sharesdk/google/d;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 31
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 32
    return-void
.end method

.method public static c(Landroid/os/Parcel;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcn/sharesdk/google/d;->a(Landroid/os/Parcel;II)V

    .line 57
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static d(Landroid/os/Parcel;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcn/sharesdk/google/d;->a(Landroid/os/Parcel;II)V

    .line 72
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0
.end method

.method public static e(Landroid/os/Parcel;I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 114
    invoke-static {p0, p1}, Lcn/sharesdk/google/d;->a(Landroid/os/Parcel;I)I

    move-result v1

    .line 115
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 116
    if-nez v1, :cond_c

    .line 117
    const/4 v0, 0x0

    .line 121
    :goto_b
    return-object v0

    .line 119
    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 120
    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_b
.end method
