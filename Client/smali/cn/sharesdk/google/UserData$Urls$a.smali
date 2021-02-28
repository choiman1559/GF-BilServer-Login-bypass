.class public Lcn/sharesdk/google/UserData$Urls$a;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/google/UserData$Urls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcn/sharesdk/google/UserData$Urls;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcn/sharesdk/google/UserData$Urls;Landroid/os/Parcel;I)V
    .registers 10

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1544
    invoke-static {p1}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 1545
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Urls;->a()Ljava/util/Set;

    move-result-object v1

    .line 1546
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1547
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Urls;->b()I

    move-result v2

    invoke-static {p1, v3, v2}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;II)V

    .line 1549
    :cond_1d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1550
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Urls;->c()Z

    move-result v2

    invoke-static {p1, v4, v2}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;IZ)V

    .line 1552
    :cond_2e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1553
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Urls;->d()I

    move-result v2

    invoke-static {p1, v5, v2}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;II)V

    .line 1555
    :cond_3f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1556
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Urls;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v6, v1, v3}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 1558
    :cond_50
    invoke-static {p1, v0}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;I)V

    .line 1559
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcn/sharesdk/google/UserData$Urls;
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 1493
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1497
    const/4 v5, 0x0

    .line 1499
    :try_start_7
    invoke-static {p1}, Lcn/sharesdk/google/d;->b(Landroid/os/Parcel;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_a} :catch_93

    move-result v6

    move-object v0, v5

    move v3, v2

    move v4, v2

    .line 1501
    :goto_e
    :try_start_e
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v6, :cond_67

    .line 1502
    invoke-static {p1}, Lcn/sharesdk/google/d;->a(Landroid/os/Parcel;)I

    move-result v5

    .line 1503
    invoke-static {v5}, Lcn/sharesdk/google/d;->a(I)I

    move-result v7

    packed-switch v7, :pswitch_data_98

    .line 1521
    invoke-static {p1, v5}, Lcn/sharesdk/google/d;->b(Landroid/os/Parcel;I)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_22} :catch_23

    goto :goto_e

    .line 1532
    :catch_23
    move-exception v5

    move-object v9, v5

    move-object v5, v0

    move-object v0, v9

    move v10, v2

    move v2, v4

    move v4, v10

    .line 1533
    :goto_2a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1535
    :goto_2d
    new-instance v0, Lcn/sharesdk/google/UserData$Urls;

    invoke-direct/range {v0 .. v5}, Lcn/sharesdk/google/UserData$Urls;-><init>(Ljava/util/Set;IZILjava/lang/String;)V

    .line 1536
    return-object v0

    .line 1505
    :pswitch_33
    :try_start_33
    invoke-static {p1, v5}, Lcn/sharesdk/google/d;->d(Landroid/os/Parcel;I)I

    move-result v4

    .line 1506
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1509
    :pswitch_40
    invoke-static {p1, v5}, Lcn/sharesdk/google/d;->c(Landroid/os/Parcel;I)Z

    move-result v3

    .line 1510
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1513
    :pswitch_4d
    invoke-static {p1, v5}, Lcn/sharesdk/google/d;->d(Landroid/os/Parcel;I)I

    move-result v2

    .line 1514
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1517
    :pswitch_5a
    invoke-static {p1, v5}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    .line 1518
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1525
    :cond_67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_6a} :catch_23

    move-result v5

    if-eq v5, v6, :cond_8e

    .line 1527
    :try_start_6d
    new-instance v5, Ljava/lang/Throwable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Overread allowed size end="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_86} :catch_86

    .line 1528
    :catch_86
    move-exception v5

    .line 1529
    :try_start_87
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_8e} :catch_23

    :cond_8e
    move-object v5, v0

    move v9, v2

    move v2, v4

    move v4, v9

    .line 1534
    goto :goto_2d

    .line 1532
    :catch_93
    move-exception v0

    move v4, v2

    move v3, v2

    goto :goto_2a

    .line 1503
    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_33
        :pswitch_40
        :pswitch_4d
        :pswitch_5a
    .end packed-switch
.end method

.method public a(I)[Lcn/sharesdk/google/UserData$Urls;
    .registers 3

    .prologue
    .line 1540
    new-array v0, p1, [Lcn/sharesdk/google/UserData$Urls;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1491
    invoke-virtual {p0, p1}, Lcn/sharesdk/google/UserData$Urls$a;->a(Landroid/os/Parcel;)Lcn/sharesdk/google/UserData$Urls;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1491
    invoke-virtual {p0, p1}, Lcn/sharesdk/google/UserData$Urls$a;->a(I)[Lcn/sharesdk/google/UserData$Urls;

    move-result-object v0

    return-object v0
.end method
