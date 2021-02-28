.class public Lcn/sharesdk/google/UserData$AgeRange$a;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/google/UserData$AgeRange;
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
        "Lcn/sharesdk/google/UserData$AgeRange;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcn/sharesdk/google/UserData$AgeRange;Landroid/os/Parcel;I)V
    .registers 9

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 124
    invoke-static {p1}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 125
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$AgeRange;->a()Ljava/util/Set;

    move-result-object v1

    .line 126
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 127
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$AgeRange;->b()I

    move-result v2

    invoke-static {p1, v3, v2}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;II)V

    .line 129
    :cond_1c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 130
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$AgeRange;->c()I

    move-result v2

    invoke-static {p1, v4, v2}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;II)V

    .line 132
    :cond_2d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 133
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$AgeRange;->d()I

    move-result v1

    invoke-static {p1, v5, v1}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;II)V

    .line 135
    :cond_3e
    invoke-static {p1, v0}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;I)V

    .line 136
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcn/sharesdk/google/UserData$AgeRange;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 78
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 83
    :try_start_6
    invoke-static {p1}, Lcn/sharesdk/google/d;->b(Landroid/os/Parcel;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_7a

    move-result v3

    move v0, v1

    move v2, v1

    .line 85
    :goto_c
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v3, :cond_52

    .line 86
    invoke-static {p1}, Lcn/sharesdk/google/d;->a(Landroid/os/Parcel;)I

    move-result v5

    .line 87
    invoke-static {v5}, Lcn/sharesdk/google/d;->a(I)I

    move-result v6

    packed-switch v6, :pswitch_data_80

    .line 101
    invoke-static {p1, v5}, Lcn/sharesdk/google/d;->b(Landroid/os/Parcel;I)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_20} :catch_21

    goto :goto_c

    .line 112
    :catch_21
    move-exception v3

    .line 113
    :goto_22
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    :cond_25
    :goto_25
    new-instance v3, Lcn/sharesdk/google/UserData$AgeRange;

    invoke-direct {v3, v4, v2, v1, v0}, Lcn/sharesdk/google/UserData$AgeRange;-><init>(Ljava/util/Set;III)V

    .line 116
    return-object v3

    .line 89
    :pswitch_2b
    :try_start_2b
    invoke-static {p1, v5}, Lcn/sharesdk/google/d;->d(Landroid/os/Parcel;I)I

    move-result v2

    .line 90
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 93
    :pswitch_38
    invoke-static {p1, v5}, Lcn/sharesdk/google/d;->d(Landroid/os/Parcel;I)I

    move-result v1

    .line 94
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 97
    :pswitch_45
    invoke-static {p1, v5}, Lcn/sharesdk/google/d;->d(Landroid/os/Parcel;I)I

    move-result v0

    .line 98
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 105
    :cond_52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_55} :catch_21

    move-result v5

    if-eq v5, v3, :cond_25

    .line 107
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

    .line 108
    :catch_71
    move-exception v3

    .line 109
    :try_start_72
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_79} :catch_21

    goto :goto_25

    .line 112
    :catch_7a
    move-exception v0

    move-object v3, v0

    move v2, v1

    move v0, v1

    goto :goto_22

    .line 87
    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_38
        :pswitch_45
    .end packed-switch
.end method

.method public a(I)[Lcn/sharesdk/google/UserData$AgeRange;
    .registers 3

    .prologue
    .line 120
    new-array v0, p1, [Lcn/sharesdk/google/UserData$AgeRange;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcn/sharesdk/google/UserData$AgeRange$a;->a(Landroid/os/Parcel;)Lcn/sharesdk/google/UserData$AgeRange;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcn/sharesdk/google/UserData$AgeRange$a;->a(I)[Lcn/sharesdk/google/UserData$AgeRange;

    move-result-object v0

    return-object v0
.end method
