.class public Lcn/sharesdk/google/UserData$Image$a;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/google/UserData$Image;
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
        "Lcn/sharesdk/google/UserData$Image;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcn/sharesdk/google/UserData$Image;Landroid/os/Parcel;I)V
    .registers 8

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 674
    invoke-static {p1}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 675
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Image;->a()Ljava/util/Set;

    move-result-object v1

    .line 676
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 677
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Image;->b()I

    move-result v2

    invoke-static {p1, v3, v2}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;II)V

    .line 679
    :cond_1b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 680
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Image;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v4, v1, v3}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 682
    :cond_2c
    invoke-static {p1, v0}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;I)V

    .line 683
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcn/sharesdk/google/UserData$Image;
    .registers 10

    .prologue
    .line 633
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 634
    const/4 v2, 0x0

    .line 635
    const/4 v1, 0x0

    .line 637
    :try_start_7
    invoke-static {p1}, Lcn/sharesdk/google/d;->b(Landroid/os/Parcel;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_a} :catch_6e

    move-result v4

    move-object v0, v1

    move v1, v2

    .line 639
    :goto_d
    :try_start_d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v4, :cond_46

    .line 640
    invoke-static {p1}, Lcn/sharesdk/google/d;->a(Landroid/os/Parcel;)I

    move-result v2

    .line 641
    invoke-static {v2}, Lcn/sharesdk/google/d;->a(I)I

    move-result v5

    packed-switch v5, :pswitch_data_74

    .line 651
    invoke-static {p1, v2}, Lcn/sharesdk/google/d;->b(Landroid/os/Parcel;I)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_21} :catch_22

    goto :goto_d

    .line 662
    :catch_22
    move-exception v2

    .line 663
    :goto_23
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 665
    :cond_26
    :goto_26
    new-instance v2, Lcn/sharesdk/google/UserData$Image;

    invoke-direct {v2, v3, v1, v0}, Lcn/sharesdk/google/UserData$Image;-><init>(Ljava/util/Set;ILjava/lang/String;)V

    .line 666
    return-object v2

    .line 643
    :pswitch_2c
    :try_start_2c
    invoke-static {p1, v2}, Lcn/sharesdk/google/d;->d(Landroid/os/Parcel;I)I

    move-result v1

    .line 644
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 647
    :pswitch_39
    invoke-static {p1, v2}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    .line 648
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 655
    :cond_46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_49} :catch_22

    move-result v2

    if-eq v2, v4, :cond_26

    .line 657
    :try_start_4c
    new-instance v2, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Overread allowed size end="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_65} :catch_65

    .line 658
    :catch_65
    move-exception v2

    .line 659
    :try_start_66
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_6d} :catch_22

    goto :goto_26

    .line 662
    :catch_6e
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move v1, v2

    move-object v2, v7

    goto :goto_23

    .line 641
    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_39
    .end packed-switch
.end method

.method public a(I)[Lcn/sharesdk/google/UserData$Image;
    .registers 3

    .prologue
    .line 670
    new-array v0, p1, [Lcn/sharesdk/google/UserData$Image;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 631
    invoke-virtual {p0, p1}, Lcn/sharesdk/google/UserData$Image$a;->a(Landroid/os/Parcel;)Lcn/sharesdk/google/UserData$Image;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 631
    invoke-virtual {p0, p1}, Lcn/sharesdk/google/UserData$Image$a;->a(I)[Lcn/sharesdk/google/UserData$Image;

    move-result-object v0

    return-object v0
.end method
