.class public Lcn/sharesdk/google/UserData$Name$a;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/google/UserData$Name;
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
        "Lcn/sharesdk/google/UserData$Name;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcn/sharesdk/google/UserData$Name;Landroid/os/Parcel;I)V
    .registers 11

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 861
    invoke-static {p1}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 862
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Name;->a()Ljava/util/Set;

    move-result-object v1

    .line 863
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 864
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Name;->b()I

    move-result v2

    invoke-static {p1, v4, v2}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;II)V

    .line 866
    :cond_1e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 867
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Name;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v3, v2, v4}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 869
    :cond_2f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 870
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Name;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v5, v2, v4}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 872
    :cond_40
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 873
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Name;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v6, v2, v4}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 875
    :cond_51
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 876
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Name;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v7, v2, v4}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 878
    :cond_62
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 879
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Name;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 881
    :cond_75
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 882
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Name;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 884
    :cond_88
    invoke-static {p1, v0}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;I)V

    .line 886
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcn/sharesdk/google/UserData$Name;
    .registers 19

    .prologue
    .line 795
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 796
    const/4 v8, 0x0

    .line 797
    const/4 v7, 0x0

    .line 798
    const/4 v6, 0x0

    .line 799
    const/4 v5, 0x0

    .line 800
    const/4 v4, 0x0

    .line 801
    const/4 v3, 0x0

    .line 802
    const/4 v9, 0x0

    .line 804
    :try_start_c
    invoke-static/range {p1 .. p1}, Lcn/sharesdk/google/d;->b(Landroid/os/Parcel;)I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_de

    move-result v10

    move-object v1, v9

    .line 806
    :goto_11
    :try_start_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    if-ge v9, v10, :cond_ab

    .line 807
    invoke-static/range {p1 .. p1}, Lcn/sharesdk/google/d;->a(Landroid/os/Parcel;)I

    move-result v9

    .line 808
    invoke-static {v9}, Lcn/sharesdk/google/d;->a(I)I

    move-result v11

    packed-switch v11, :pswitch_data_ea

    .line 838
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcn/sharesdk/google/d;->b(Landroid/os/Parcel;I)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_27} :catch_28

    goto :goto_11

    .line 849
    :catch_28
    move-exception v9

    move-object v13, v9

    move-object v9, v1

    move-object v1, v13

    move-object v14, v3

    move v3, v8

    move-object v8, v14

    move-object v15, v5

    move-object v5, v6

    move-object v6, v15

    move-object/from16 v16, v7

    move-object v7, v4

    move-object/from16 v4, v16

    .line 850
    :goto_37
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 852
    :goto_3a
    new-instance v1, Lcn/sharesdk/google/UserData$Name;

    invoke-direct/range {v1 .. v9}, Lcn/sharesdk/google/UserData$Name;-><init>(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    return-object v1

    .line 810
    :pswitch_40
    :try_start_40
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcn/sharesdk/google/d;->d(Landroid/os/Parcel;I)I

    move-result v8

    .line 811
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 814
    :pswitch_4f
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    .line 815
    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 818
    :pswitch_5e
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    .line 819
    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 822
    :pswitch_6d
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    .line 823
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 826
    :pswitch_7c
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    .line 827
    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 830
    :pswitch_8b
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    .line 831
    const/4 v9, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 834
    :pswitch_9b
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    .line 835
    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 842
    :cond_ab
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_ae} :catch_28

    move-result v9

    if-eq v9, v10, :cond_d2

    .line 844
    :try_start_b1
    new-instance v9, Ljava/lang/Throwable;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Overread allowed size end="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_ca
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_ca} :catch_ca

    .line 845
    :catch_ca
    move-exception v9

    .line 846
    :try_start_cb
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_d2
    .catch Ljava/lang/Throwable; {:try_start_cb .. :try_end_d2} :catch_28

    :cond_d2
    move-object v9, v1

    move-object v13, v3

    move v3, v8

    move-object v8, v13

    move-object v14, v5

    move-object v5, v6

    move-object v6, v14

    move-object v15, v7

    move-object v7, v4

    move-object v4, v15

    .line 851
    goto/16 :goto_3a

    .line 849
    :catch_de
    move-exception v1

    move-object v13, v3

    move v3, v8

    move-object v8, v13

    move-object v14, v5

    move-object v5, v6

    move-object v6, v14

    move-object v15, v7

    move-object v7, v4

    move-object v4, v15

    goto/16 :goto_37

    .line 808
    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_40
        :pswitch_4f
        :pswitch_5e
        :pswitch_6d
        :pswitch_7c
        :pswitch_8b
        :pswitch_9b
    .end packed-switch
.end method

.method public a(I)[Lcn/sharesdk/google/UserData$Name;
    .registers 3

    .prologue
    .line 857
    new-array v0, p1, [Lcn/sharesdk/google/UserData$Name;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 793
    invoke-virtual {p0, p1}, Lcn/sharesdk/google/UserData$Name$a;->a(Landroid/os/Parcel;)Lcn/sharesdk/google/UserData$Name;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 793
    invoke-virtual {p0, p1}, Lcn/sharesdk/google/UserData$Name$a;->a(I)[Lcn/sharesdk/google/UserData$Name;

    move-result-object v0

    return-object v0
.end method
