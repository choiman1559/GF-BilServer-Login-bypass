.class public Lcn/sharesdk/google/UserData$PlacesLived$a;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/google/UserData$PlacesLived;
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
        "Lcn/sharesdk/google/UserData$PlacesLived;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcn/sharesdk/google/UserData$PlacesLived;Landroid/os/Parcel;I)V
    .registers 9

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1148
    invoke-static {p1}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 1149
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$PlacesLived;->a()Ljava/util/Set;

    move-result-object v1

    .line 1150
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1151
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$PlacesLived;->b()I

    move-result v2

    invoke-static {p1, v3, v2}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;II)V

    .line 1153
    :cond_1c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1154
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$PlacesLived;->c()Z

    move-result v2

    invoke-static {p1, v4, v2}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;IZ)V

    .line 1156
    :cond_2d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1157
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$PlacesLived;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v5, v1, v3}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 1159
    :cond_3e
    invoke-static {p1, v0}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;I)V

    .line 1160
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcn/sharesdk/google/UserData$PlacesLived;
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 1102
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1105
    const/4 v1, 0x0

    .line 1107
    :try_start_7
    invoke-static {p1}, Lcn/sharesdk/google/d;->b(Landroid/os/Parcel;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_a} :catch_7b

    move-result v3

    move-object v0, v1

    move v1, v2

    .line 1109
    :goto_d
    :try_start_d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v3, :cond_53

    .line 1110
    invoke-static {p1}, Lcn/sharesdk/google/d;->a(Landroid/os/Parcel;)I

    move-result v5

    .line 1111
    invoke-static {v5}, Lcn/sharesdk/google/d;->a(I)I

    move-result v6

    packed-switch v6, :pswitch_data_80

    .line 1125
    invoke-static {p1, v5}, Lcn/sharesdk/google/d;->b(Landroid/os/Parcel;I)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_21} :catch_22

    goto :goto_d

    .line 1136
    :catch_22
    move-exception v3

    .line 1137
    :goto_23
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1139
    :cond_26
    :goto_26
    new-instance v3, Lcn/sharesdk/google/UserData$PlacesLived;

    invoke-direct {v3, v4, v2, v1, v0}, Lcn/sharesdk/google/UserData$PlacesLived;-><init>(Ljava/util/Set;IZLjava/lang/String;)V

    .line 1140
    return-object v3

    .line 1113
    :pswitch_2c
    :try_start_2c
    invoke-static {p1, v5}, Lcn/sharesdk/google/d;->d(Landroid/os/Parcel;I)I

    move-result v2

    .line 1114
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1117
    :pswitch_39
    invoke-static {p1, v5}, Lcn/sharesdk/google/d;->c(Landroid/os/Parcel;I)Z

    move-result v1

    .line 1118
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1121
    :pswitch_46
    invoke-static {p1, v5}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    .line 1122
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1129
    :cond_53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_56} :catch_22

    move-result v5

    if-eq v5, v3, :cond_26

    .line 1131
    :try_start_59
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
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_72} :catch_72

    .line 1132
    :catch_72
    move-exception v3

    .line 1133
    :try_start_73
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_7a} :catch_22

    goto :goto_26

    .line 1136
    :catch_7b
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move v1, v2

    goto :goto_23

    .line 1111
    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_39
        :pswitch_46
    .end packed-switch
.end method

.method public a(I)[Lcn/sharesdk/google/UserData$PlacesLived;
    .registers 3

    .prologue
    .line 1144
    new-array v0, p1, [Lcn/sharesdk/google/UserData$PlacesLived;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1100
    invoke-virtual {p0, p1}, Lcn/sharesdk/google/UserData$PlacesLived$a;->a(Landroid/os/Parcel;)Lcn/sharesdk/google/UserData$PlacesLived;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1100
    invoke-virtual {p0, p1}, Lcn/sharesdk/google/UserData$PlacesLived$a;->a(I)[Lcn/sharesdk/google/UserData$PlacesLived;

    move-result-object v0

    return-object v0
.end method
