.class public Lcn/sharesdk/google/UserData$Cover$a;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/google/UserData$Cover;
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
        "Lcn/sharesdk/google/UserData$Cover;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcn/sharesdk/google/UserData$Cover;Landroid/os/Parcel;I)V
    .registers 10

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 551
    invoke-static {p1}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 552
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Cover;->a()Ljava/util/Set;

    move-result-object v1

    .line 553
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 554
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Cover;->b()I

    move-result v2

    invoke-static {p1, v3, v2}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;II)V

    .line 556
    :cond_1d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 557
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Cover;->c()Lcn/sharesdk/google/UserData$Cover$CoverInfo;

    move-result-object v2

    invoke-static {p1, v4, v2, p2, v3}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 559
    :cond_2e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 560
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Cover;->d()Lcn/sharesdk/google/UserData$Cover$CoverPhoto;

    move-result-object v2

    invoke-static {p1, v5, v2, p2, v3}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 562
    :cond_3f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 563
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Cover;->e()I

    move-result v1

    invoke-static {p1, v6, v1}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;II)V

    .line 565
    :cond_50
    invoke-static {p1, v0}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;I)V

    .line 566
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcn/sharesdk/google/UserData$Cover;
    .registers 13

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 500
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 507
    :try_start_7
    invoke-static {p1}, Lcn/sharesdk/google/d;->b(Landroid/os/Parcel;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_a} :catch_ab

    move-result v6

    move-object v4, v3

    move v5, v2

    .line 508
    :goto_d
    :try_start_d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v6, :cond_78

    .line 509
    invoke-static {p1}, Lcn/sharesdk/google/d;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 510
    invoke-static {v0}, Lcn/sharesdk/google/d;->a(I)I

    move-result v7

    packed-switch v7, :pswitch_data_de

    .line 528
    invoke-static {p1, v0}, Lcn/sharesdk/google/d;->b(Landroid/os/Parcel;I)V

    move v0, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    :goto_25
    move v5, v4

    move-object v4, v3

    move-object v3, v2

    move v2, v0

    .line 531
    goto :goto_d

    .line 512
    :pswitch_2a
    invoke-static {p1, v0}, Lcn/sharesdk/google/d;->d(Landroid/os/Parcel;I)I
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_2d} :catch_b2

    move-result v0

    .line 513
    const/4 v5, 0x1

    :try_start_2f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_36} :catch_ba

    move v9, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v0

    move v0, v9

    .line 514
    goto :goto_25

    .line 516
    :pswitch_3c
    :try_start_3c
    sget-object v7, Lcn/sharesdk/google/UserData$Cover$CoverInfo;->a:Lcn/sharesdk/google/UserData$Cover$CoverInfo$a;

    invoke-static {p1, v0, v7}, Lcn/sharesdk/google/d;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/google/UserData$Cover$CoverInfo;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_44} :catch_b2

    .line 517
    const/4 v4, 0x2

    :try_start_45
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_4c} :catch_c3

    move v4, v5

    move-object v9, v3

    move-object v3, v0

    move v0, v2

    move-object v2, v9

    .line 518
    goto :goto_25

    .line 520
    :pswitch_52
    :try_start_52
    sget-object v7, Lcn/sharesdk/google/UserData$Cover$CoverPhoto;->a:Lcn/sharesdk/google/UserData$Cover$CoverPhoto$a;

    invoke-static {p1, v0, v7}, Lcn/sharesdk/google/d;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/google/UserData$Cover$CoverPhoto;
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_5a} :catch_b2

    .line 521
    const/4 v3, 0x3

    :try_start_5b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_62} :catch_cc

    move-object v3, v4

    move v4, v5

    move v9, v2

    move-object v2, v0

    move v0, v9

    .line 522
    goto :goto_25

    .line 524
    :pswitch_68
    :try_start_68
    invoke-static {p1, v0}, Lcn/sharesdk/google/d;->d(Landroid/os/Parcel;I)I
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_6b} :catch_b2

    move-result v0

    .line 525
    const/4 v2, 0x4

    :try_start_6d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_74} :catch_d5

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    .line 526
    goto :goto_25

    .line 532
    :cond_78
    :try_start_78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7b} :catch_b2

    move-result v0

    if-eq v0, v6, :cond_9f

    .line 534
    :try_start_7e
    new-instance v0, Ljava/lang/Throwable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Overread allowed size end="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_97} :catch_97

    .line 535
    :catch_97
    move-exception v0

    .line 536
    :try_start_98
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_9f} :catch_b2

    :cond_9f
    move v9, v2

    move v2, v5

    move v5, v9

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    .line 542
    :goto_a5
    new-instance v0, Lcn/sharesdk/google/UserData$Cover;

    invoke-direct/range {v0 .. v5}, Lcn/sharesdk/google/UserData$Cover;-><init>(Ljava/util/Set;ILcn/sharesdk/google/UserData$Cover$CoverInfo;Lcn/sharesdk/google/UserData$Cover$CoverPhoto;I)V

    .line 543
    return-object v0

    .line 539
    :catch_ab
    move-exception v0

    move v5, v2

    move-object v4, v3

    .line 540
    :goto_ae
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a5

    .line 539
    :catch_b2
    move-exception v0

    move v9, v2

    move v2, v5

    move v5, v9

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto :goto_ae

    :catch_ba
    move-exception v5

    move-object v9, v5

    move v5, v2

    move v2, v0

    move-object v0, v9

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto :goto_ae

    :catch_c3
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v0

    move-object v0, v9

    move v10, v2

    move v2, v5

    move v5, v10

    goto :goto_ae

    :catch_cc
    move-exception v3

    move-object v9, v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v9

    move v10, v2

    move v2, v5

    move v5, v10

    goto :goto_ae

    :catch_d5
    move-exception v2

    move-object v9, v2

    move v2, v5

    move v5, v0

    move-object v0, v9

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto :goto_ae

    .line 510
    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_3c
        :pswitch_52
        :pswitch_68
    .end packed-switch
.end method

.method public a(I)[Lcn/sharesdk/google/UserData$Cover;
    .registers 3

    .prologue
    .line 547
    new-array v0, p1, [Lcn/sharesdk/google/UserData$Cover;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 498
    invoke-virtual {p0, p1}, Lcn/sharesdk/google/UserData$Cover$a;->a(Landroid/os/Parcel;)Lcn/sharesdk/google/UserData$Cover;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 498
    invoke-virtual {p0, p1}, Lcn/sharesdk/google/UserData$Cover$a;->a(I)[Lcn/sharesdk/google/UserData$Cover;

    move-result-object v0

    return-object v0
.end method
