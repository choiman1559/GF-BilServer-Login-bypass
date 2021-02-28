.class public Lcn/sharesdk/google/UserData$Organizations$a;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/google/UserData$Organizations;
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
        "Lcn/sharesdk/google/UserData$Organizations;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcn/sharesdk/google/UserData$Organizations;Landroid/os/Parcel;I)V
    .registers 11

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 1381
    invoke-static {p1}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 1382
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Organizations;->a()Ljava/util/Set;

    move-result-object v1

    .line 1383
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1384
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Organizations;->b()I

    move-result v2

    invoke-static {p1, v4, v2}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;II)V

    .line 1386
    :cond_1e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1387
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Organizations;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v3, v2, v4}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 1389
    :cond_2f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1390
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Organizations;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v5, v2, v4}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 1392
    :cond_40
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 1393
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Organizations;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v6, v2, v4}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 1395
    :cond_51
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1396
    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Organizations;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v7, v2, v4}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 1398
    :cond_62
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 1399
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Organizations;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 1401
    :cond_75
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 1402
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Organizations;->h()Z

    move-result v3

    invoke-static {p1, v2, v3}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;IZ)V

    .line 1404
    :cond_88
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 1405
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Organizations;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 1407
    :cond_9d
    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 1408
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Organizations;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 1410
    :cond_b2
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 1411
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcn/sharesdk/google/UserData$Organizations;->k()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;II)V

    .line 1413
    :cond_c7
    invoke-static {p1, v0}, Lcn/sharesdk/google/c;->a(Landroid/os/Parcel;I)V

    .line 1414
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcn/sharesdk/google/UserData$Organizations;
    .registers 23

    .prologue
    .line 1300
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1301
    const/4 v11, 0x0

    .line 1302
    const/4 v10, 0x0

    .line 1303
    const/4 v9, 0x0

    .line 1304
    const/4 v8, 0x0

    .line 1305
    const/4 v7, 0x0

    .line 1306
    const/4 v6, 0x0

    .line 1307
    const/4 v5, 0x0

    .line 1308
    const/4 v4, 0x0

    .line 1309
    const/4 v3, 0x0

    .line 1310
    const/4 v12, 0x0

    .line 1312
    :try_start_f
    invoke-static/range {p1 .. p1}, Lcn/sharesdk/google/d;->b(Landroid/os/Parcel;)I
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_12} :catch_147

    move-result v13

    move v1, v12

    .line 1314
    :goto_14
    :try_start_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v12

    if-ge v12, v13, :cond_109

    .line 1315
    invoke-static/range {p1 .. p1}, Lcn/sharesdk/google/d;->a(Landroid/os/Parcel;)I

    move-result v12

    .line 1316
    invoke-static {v12}, Lcn/sharesdk/google/d;->a(I)I

    move-result v14

    packed-switch v14, :pswitch_data_15e

    .line 1358
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcn/sharesdk/google/d;->b(Landroid/os/Parcel;I)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_2a} :catch_2b

    goto :goto_14

    .line 1369
    :catch_2b
    move-exception v12

    move-object/from16 v16, v12

    move v12, v1

    move-object/from16 v1, v16

    move-object/from16 v17, v3

    move v3, v11

    move-object/from16 v11, v17

    move/from16 v18, v5

    move-object v5, v9

    move/from16 v9, v18

    move-object/from16 v19, v8

    move-object v8, v6

    move-object/from16 v6, v19

    move-object/from16 v20, v10

    move-object v10, v4

    move-object/from16 v4, v20

    .line 1370
    :goto_45
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1372
    :goto_48
    new-instance v1, Lcn/sharesdk/google/UserData$Organizations;

    invoke-direct/range {v1 .. v12}, Lcn/sharesdk/google/UserData$Organizations;-><init>(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 1373
    return-object v1

    .line 1318
    :pswitch_4e
    :try_start_4e
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcn/sharesdk/google/d;->d(Landroid/os/Parcel;I)I

    move-result v11

    .line 1319
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1322
    :pswitch_5d
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    .line 1323
    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1326
    :pswitch_6c
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    .line 1327
    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1330
    :pswitch_7b
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    .line 1331
    const/4 v12, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1334
    :pswitch_8a
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    .line 1335
    const/4 v12, 0x5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 1338
    :pswitch_9a
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    .line 1339
    const/4 v12, 0x6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 1342
    :pswitch_aa
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcn/sharesdk/google/d;->c(Landroid/os/Parcel;I)Z
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_af} :catch_2b

    move-result v5

    .line 1343
    const/4 v12, 0x7

    :try_start_b1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_b8} :catch_ba

    goto/16 :goto_14

    .line 1369
    :catch_ba
    move-exception v12

    move-object/from16 v16, v12

    move v12, v1

    move-object/from16 v1, v16

    move-object/from16 v17, v3

    move v3, v11

    move-object/from16 v11, v17

    move/from16 v18, v5

    move-object v5, v9

    move/from16 v9, v18

    move-object/from16 v19, v8

    move-object v8, v6

    move-object/from16 v6, v19

    move-object/from16 v20, v10

    move-object v10, v4

    move-object/from16 v4, v20

    goto/16 :goto_45

    .line 1346
    :pswitch_d6
    :try_start_d6
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    .line 1347
    const/16 v12, 0x8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 1350
    :pswitch_e7
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    .line 1351
    const/16 v12, 0x9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 1354
    :pswitch_f8
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcn/sharesdk/google/d;->d(Landroid/os/Parcel;I)I

    move-result v1

    .line 1355
    const/16 v12, 0xa

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 1362
    :cond_109
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
    :try_end_10c
    .catch Ljava/lang/Throwable; {:try_start_d6 .. :try_end_10c} :catch_2b

    move-result v12

    if-eq v12, v13, :cond_130

    .line 1364
    :try_start_10f
    new-instance v12, Ljava/lang/Throwable;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Overread allowed size end="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_128
    .catch Ljava/lang/Throwable; {:try_start_10f .. :try_end_128} :catch_128

    .line 1365
    :catch_128
    move-exception v12

    .line 1366
    :try_start_129
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_130
    .catch Ljava/lang/Throwable; {:try_start_129 .. :try_end_130} :catch_2b

    :cond_130
    move v12, v1

    move-object/from16 v16, v3

    move v3, v11

    move-object/from16 v11, v16

    move/from16 v17, v5

    move-object v5, v9

    move/from16 v9, v17

    move-object/from16 v18, v8

    move-object v8, v6

    move-object/from16 v6, v18

    move-object/from16 v19, v10

    move-object v10, v4

    move-object/from16 v4, v19

    .line 1371
    goto/16 :goto_48

    .line 1369
    :catch_147
    move-exception v1

    move-object/from16 v16, v3

    move v3, v11

    move-object/from16 v11, v16

    move/from16 v17, v5

    move-object v5, v9

    move/from16 v9, v17

    move-object/from16 v18, v8

    move-object v8, v6

    move-object/from16 v6, v18

    move-object/from16 v19, v10

    move-object v10, v4

    move-object/from16 v4, v19

    goto/16 :goto_45

    .line 1316
    :pswitch_data_15e
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_5d
        :pswitch_6c
        :pswitch_7b
        :pswitch_8a
        :pswitch_9a
        :pswitch_aa
        :pswitch_d6
        :pswitch_e7
        :pswitch_f8
    .end packed-switch
.end method

.method public a(I)[Lcn/sharesdk/google/UserData$Organizations;
    .registers 3

    .prologue
    .line 1377
    new-array v0, p1, [Lcn/sharesdk/google/UserData$Organizations;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1298
    invoke-virtual {p0, p1}, Lcn/sharesdk/google/UserData$Organizations$a;->a(Landroid/os/Parcel;)Lcn/sharesdk/google/UserData$Organizations;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1298
    invoke-virtual {p0, p1}, Lcn/sharesdk/google/UserData$Organizations$a;->a(I)[Lcn/sharesdk/google/UserData$Organizations;

    move-result-object v0

    return-object v0
.end method
