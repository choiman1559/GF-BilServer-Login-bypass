.class public Lcn/sharesdk/google/UserData$Cover$CoverInfo$a;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/google/UserData$Cover$CoverInfo;
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
        "Lcn/sharesdk/google/UserData$Cover$CoverInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcn/sharesdk/google/UserData$Cover$CoverInfo;Landroid/os/Parcel;I)V
    .registers 9

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 481
    invoke-static {p1}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 482
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Cover$CoverInfo;->a()Ljava/util/Set;

    move-result-object v1

    .line 483
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 484
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Cover$CoverInfo;->b()I

    move-result v2

    invoke-static {p1, v3, v2}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;II)V

    .line 486
    :cond_1c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 487
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Cover$CoverInfo;->c()I

    move-result v2

    invoke-static {p1, v4, v2}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;II)V

    .line 489
    :cond_2d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 490
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Cover$CoverInfo;->d()I

    move-result v1

    invoke-static {p1, v5, v1}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;II)V

    .line 492
    :cond_3e
    invoke-static {p1, v0}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;I)V

    .line 493
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcn/sharesdk/google/UserData$Cover$CoverInfo;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 435
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 440
    :try_start_6
    invoke-static {p1}, Lcn/sharesdk/google/d;->b(Landroid/os/Parcel;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_7a

    move-result v3

    move v0, v1

    move v2, v1

    .line 442
    :goto_c
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v3, :cond_52

    .line 443
    invoke-static {p1}, Lcn/sharesdk/google/d;->a(Landroid/os/Parcel;)I

    move-result v5

    .line 444
    invoke-static {v5}, Lcn/sharesdk/google/d;->a(I)I

    move-result v6

    packed-switch v6, :pswitch_data_80

    .line 458
    invoke-static {p1, v5}, Lcn/sharesdk/google/d;->b(Landroid/os/Parcel;I)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_20} :catch_21

    goto :goto_c

    .line 469
    :catch_21
    move-exception v3

    .line 470
    :goto_22
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 472
    :cond_25
    :goto_25
    new-instance v3, Lcn/sharesdk/google/UserData$Cover$CoverInfo;

    invoke-direct {v3, v4, v2, v1, v0}, Lcn/sharesdk/google/UserData$Cover$CoverInfo;-><init>(Ljava/util/Set;III)V

    .line 473
    return-object v3

    .line 446
    :pswitch_2b
    :try_start_2b
    invoke-static {p1, v5}, Lcn/sharesdk/google/d;->d(Landroid/os/Parcel;I)I

    move-result v2

    .line 447
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 450
    :pswitch_38
    invoke-static {p1, v5}, Lcn/sharesdk/google/d;->d(Landroid/os/Parcel;I)I

    move-result v1

    .line 451
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 454
    :pswitch_45
    invoke-static {p1, v5}, Lcn/sharesdk/google/d;->d(Landroid/os/Parcel;I)I

    move-result v0

    .line 455
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 462
    :cond_52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_55} :catch_21

    move-result v5

    if-eq v5, v3, :cond_25

    .line 464
    :try_start_58
    new-instance v5, Ljava/lang/Throwable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Overread allowed size end="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_71} :catch_71

    .line 465
    :catch_71
    move-exception v3

    .line 466
    :try_start_72
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_79} :catch_21

    goto :goto_25

    .line 469
    :catch_7a
    move-exception v0

    move-object v3, v0

    move v2, v1

    move v0, v1

    goto :goto_22

    .line 444
    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_38
        :pswitch_45
    .end packed-switch
.end method

.method public a(I)[Lcn/sharesdk/google/UserData$Cover$CoverInfo;
    .registers 3

    .prologue
    .line 477
    new-array v0, p1, [Lcn/sharesdk/google/UserData$Cover$CoverInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcn/sharesdk/google/UserData$Cover$CoverInfo$a;->a(Landroid/os/Parcel;)Lcn/sharesdk/google/UserData$Cover$CoverInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcn/sharesdk/google/UserData$Cover$CoverInfo$a;->a(I)[Lcn/sharesdk/google/UserData$Cover$CoverInfo;

    move-result-object v0

    return-object v0
.end method
