.class public Lcom/android/data/sdk/utils/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    .registers 29

    const-wide/16 v14, 0x0

    :try_start_2
    invoke-static/range {p0 .. p3}, Lcom/android/data/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/data/sdk/utils/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    if-nez v4, :cond_186

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v16, v4

    :goto_15
    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/data/sdk/api/c;->f()J

    move-result-wide v4

    const-string v6, "yyyyMMdd"

    invoke-static {v4, v5, v6}, Lcom/android/data/sdk/utils/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2c} :catch_174

    move-result-wide v6

    :try_start_2d
    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_181

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "systemTimestamp"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_181

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "totalTime"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_181

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "totalSuccessTime"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_181

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "totalCount"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_181

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "totalTime"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "totalSuccessTime"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "totalCount"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "systemTimestamp"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v18, v4, v6

    if-lez v18, :cond_181

    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->clear()V
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_dc} :catch_163

    :try_start_dc
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "totalTime"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "totalSuccessTime"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "totalCount"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "systemTimestamp"

    move-object/from16 v0, v17

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v16 .. v16}, Lcom/android/data/sdk/utils/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v6}, Lcom/android/data/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_150
    .catch Ljava/lang/Throwable; {:try_start_dc .. :try_end_150} :catch_17a

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    :goto_153
    move-wide/from16 v20, v4

    move-wide v4, v10

    move-wide/from16 v10, v20

    move-wide/from16 v22, v8

    move-wide v8, v6

    move-wide/from16 v6, v22

    :goto_15d
    packed-switch p4, :pswitch_data_18a

    const-wide/16 v4, 0x0

    :goto_162
    :pswitch_162
    return-wide v4

    :catch_163
    move-exception v4

    :goto_164
    :try_start_164
    invoke-static {v4}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V
    :try_end_167
    .catch Ljava/lang/Throwable; {:try_start_164 .. :try_end_167} :catch_174

    move-wide v4, v12

    move-wide/from16 v20, v10

    move-wide v10, v6

    move-wide/from16 v6, v20

    goto :goto_15d

    :pswitch_16e
    move-wide v4, v6

    goto :goto_162

    :pswitch_170
    move-wide v4, v8

    goto :goto_162

    :pswitch_172
    move-wide v4, v10

    goto :goto_162

    :catch_174
    move-exception v4

    invoke-static {v4}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    move-wide v4, v14

    goto :goto_162

    :catch_17a
    move-exception v6

    move-object/from16 v20, v6

    move-wide v6, v4

    move-object/from16 v4, v20

    goto :goto_164

    :cond_181
    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    goto :goto_153

    :cond_186
    move-object/from16 v16, v4

    goto/16 :goto_15

    :pswitch_data_18a
    .packed-switch 0x1
        :pswitch_162
        :pswitch_16e
        :pswitch_170
        :pswitch_172
    .end packed-switch
.end method

.method public static a(Ljava/io/File;)J
    .registers 10

    const-wide/16 v2, 0x0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_27

    move-result-object v4

    const/4 v0, 0x0

    move v8, v0

    move-wide v0, v2

    move v2, v8

    :goto_a
    :try_start_a
    array-length v3, v4

    if-ge v2, v3, :cond_2e

    aget-object v3, v4, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1f

    aget-object v3, v4, v2

    invoke-static {v3}, Lcom/android/data/sdk/utils/b;->a(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1f
    aget-object v3, v4, v2

    invoke-virtual {v3}, Ljava/io/File;->length()J
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_24} :catch_2f

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_1c

    :catch_27
    move-exception v0

    move-object v8, v0

    move-wide v0, v2

    move-object v2, v8

    :goto_2b
    invoke-static {v2}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    :cond_2e
    return-wide v0

    :catch_2f
    move-exception v2

    goto :goto_2b
.end method

.method public static a(JLjava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/data/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p3, p2}, Lcom/android/data/sdk/utils/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p3}, Lcom/android/data/sdk/utils/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    :goto_11
    return-object v0

    :cond_12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    move-object v0, v1

    goto :goto_11

    :cond_1a
    const-string v0, ""
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_11

    :catch_1d
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    const-string v0, ""

    goto :goto_11
.end method

.method public static a([B)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_d

    array-length v0, p0

    if-gtz v0, :cond_f

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0

    :cond_f
    move v0, v1

    :goto_10
    array-length v3, p0

    if-ge v0, v3, :cond_2b

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_25

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_16
    array-length v3, v2

    if-ge v0, v3, :cond_62

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_54

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :try_start_31
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/data/sdk/api/c;->f()J

    move-result-wide v6

    const-string v3, "yyyyMMdd"

    invoke-static {v6, v7, v3}, Lcom/android/data/sdk/utils/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_54

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_54} :catch_57

    :cond_54
    :goto_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :catch_57
    move-exception v3

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/String;)V

    goto :goto_54

    :cond_62
    move-object v0, v1

    goto :goto_b
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21

    const-class v8, Lcom/android/data/sdk/utils/b;

    monitor-enter v8

    :try_start_3
    invoke-static {}, Lcom/android/data/sdk/utils/b;->a()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_1a2
    .catchall {:try_start_3 .. :try_end_6} :catchall_1a8

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    :goto_9
    monitor-exit v8

    return-void

    :cond_b
    :try_start_b
    new-instance v9, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v9, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    :cond_1f
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    :cond_34
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    if-eqz v10, :cond_17d

    array-length v2, v10

    if-lez v2, :cond_17d

    const/4 v2, 0x1

    move v3, v2

    :goto_3f
    if-eqz v12, :cond_181

    array-length v2, v12

    if-lez v2, :cond_181

    const/4 v2, 0x1

    :goto_45
    if-eqz v3, :cond_217

    if-eqz v2, :cond_217

    const/4 v7, 0x0

    :goto_4a
    array-length v2, v10

    if-ge v7, v2, :cond_1c5

    const/4 v3, -0x1

    const/4 v2, 0x0

    move v6, v2

    move v2, v3

    :goto_51
    array-length v3, v12

    if-ge v6, v3, :cond_14c

    aget-object v2, v10, v7

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v12, v6

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1bf

    aget-object v2, v10, v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/android/data/sdk/utils/b;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    aget-object v3, v12, v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/android/data/sdk/utils/b;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14b

    aget-object v2, v10, v7

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/data/sdk/utils/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/data/sdk/utils/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    aget-object v3, v12, v6

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v3, v1}, Lcom/android/data/sdk/utils/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/data/sdk/utils/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    if-eqz v2, :cond_184

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_184

    const/4 v4, 0x1

    move v5, v4

    :goto_b2
    if-eqz v3, :cond_188

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_188

    const/4 v4, 0x1

    :goto_bb
    if-eqz v5, :cond_14b

    if-eqz v4, :cond_14b

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "systemTimestamp"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "systemTimestamp"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v13, v14, v4

    if-lez v13, :cond_18b

    aget-object v13, v10, v7

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    aget-object v16, v12, v6

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_104
    :goto_104
    cmp-long v4, v14, v4

    if-nez v4, :cond_14b

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v4, "totalTime"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "totalTime"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v13, v4, v2

    if-lez v13, :cond_1ab

    aget-object v2, v10, v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v12, v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_14b
    :goto_14b
    const/4 v2, -0x1

    :cond_14c
    const/4 v3, -0x1

    if-eq v3, v2, :cond_179

    aget-object v3, v10, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v2, v10, v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_179
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4a

    :cond_17d
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_3f

    :cond_181
    const/4 v2, 0x0

    goto/16 :goto_45

    :cond_184
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_b2

    :cond_188
    const/4 v4, 0x0

    goto/16 :goto_bb

    :cond_18b
    cmp-long v13, v14, v4

    if-gez v13, :cond_104

    aget-object v13, v12, v6

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    aget-object v16, v10, v7

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1a0
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_1a0} :catch_1a2
    .catchall {:try_start_b .. :try_end_1a0} :catchall_1a8

    goto/16 :goto_104

    :catch_1a2
    move-exception v2

    :try_start_1a3
    invoke-static {v2}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V
    :try_end_1a6
    .catchall {:try_start_1a3 .. :try_end_1a6} :catchall_1a8

    goto/16 :goto_9

    :catchall_1a8
    move-exception v2

    monitor-exit v8

    throw v2

    :cond_1ab
    cmp-long v2, v4, v2

    if-gez v2, :cond_14b

    :try_start_1af
    aget-object v2, v12, v6

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v10, v7

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_14b

    :cond_1bf
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v7

    goto/16 :goto_51

    :cond_1c5
    const/4 v4, 0x0

    :goto_1c6
    array-length v2, v12

    if-ge v4, v2, :cond_9

    const/4 v3, -0x1

    const/4 v2, 0x0

    move/from16 v17, v2

    move v2, v3

    move/from16 v3, v17

    :goto_1d0
    array-length v5, v10

    if-ge v3, v5, :cond_1e2

    aget-object v2, v12, v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v5, v10, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    if-ne v2, v5, :cond_212

    const/4 v2, -0x1

    :cond_1e2
    const/4 v3, -0x1

    if-eq v3, v2, :cond_20f

    aget-object v3, v12, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v2, v12, v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_20f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c6

    :cond_212
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1d0

    :cond_217
    if-eqz v3, :cond_226

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/data/sdk/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_9

    :cond_226
    if-eqz v2, :cond_9

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/data/sdk/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_233
    .catch Ljava/lang/Throwable; {:try_start_1af .. :try_end_233} :catch_1a2
    .catchall {:try_start_1af .. :try_end_233} :catchall_1a8

    goto/16 :goto_9
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 26

    const-class v13, Lcom/android/data/sdk/utils/b;

    monitor-enter v13

    :try_start_3
    invoke-static/range {p0 .. p3}, Lcom/android/data/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/data/sdk/utils/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    if-nez v4, :cond_24a

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_14} :catch_206
    .catchall {:try_start_3 .. :try_end_14} :catchall_218

    move-object v12, v4

    :goto_15
    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    :try_start_1b
    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/data/sdk/api/c;->f()J

    move-result-wide v4

    const-string v14, "yyyyMMdd"

    invoke-static {v4, v5, v14}, Lcom/android/data/sdk/utils/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_21b

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "systemTimestamp"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21b

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "totalTime"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21b

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "totalSuccessTime"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21b

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "totalCount"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21b

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "totalTime"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "totalSuccessTime"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "totalCount"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "systemTimestamp"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    cmp-long v4, v16, v4

    if-lez v4, :cond_167

    const-wide/16 v4, 0x1

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/data/sdk/api/c;->q()V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/data/sdk/api/c;->o()V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/data/sdk/api/c;->m()V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v6

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Lcom/android/data/sdk/api/c;->e(J)V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v6

    const-wide/16 v8, 0x1

    invoke-virtual {v6, v8, v9}, Lcom/android/data/sdk/api/c;->d(J)V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v6

    move-wide/from16 v0, p6

    invoke-virtual {v6, v0, v1}, Lcom/android/data/sdk/api/c;->c(J)V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Lcom/android/data/sdk/api/c;->b(J)V

    invoke-virtual {v12}, Ljava/util/LinkedList;->clear()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "totalTime"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p4

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "totalSuccessTime"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p6

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "totalCount"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "systemTimestamp"

    invoke-virtual {v6, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Lcom/android/data/sdk/utils/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/data/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_165
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_165} :catch_200
    .catchall {:try_start_1b .. :try_end_165} :catchall_218

    :goto_165
    monitor-exit v13

    return-void

    :cond_167
    :try_start_167
    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Lcom/android/data/sdk/api/c;->b(J)V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Lcom/android/data/sdk/api/c;->c(J)V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Lcom/android/data/sdk/api/c;->e(J)V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v4

    const-wide/16 v16, 0x1

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Lcom/android/data/sdk/api/c;->d(J)V

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v10

    :goto_190
    invoke-virtual {v12}, Ljava/util/LinkedList;->clear()V

    add-long v8, v8, p4

    add-long v6, v6, p6

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v11, "totalTime"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "totalSuccessTime"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "totalCount"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "systemTimestamp"

    invoke-virtual {v10, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Lcom/android/data/sdk/utils/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/data/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1fe
    .catch Ljava/lang/Throwable; {:try_start_167 .. :try_end_1fe} :catch_200
    .catchall {:try_start_167 .. :try_end_1fe} :catchall_218

    goto/16 :goto_165

    :catch_200
    move-exception v4

    :try_start_201
    invoke-static {v4}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V
    :try_end_204
    .catch Ljava/lang/Throwable; {:try_start_201 .. :try_end_204} :catch_206
    .catchall {:try_start_201 .. :try_end_204} :catchall_218

    goto/16 :goto_165

    :catch_206
    move-exception v4

    const/4 v5, 0x0

    :try_start_208
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v5}, Lcom/android/data/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    invoke-static {v4}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V
    :try_end_216
    .catchall {:try_start_208 .. :try_end_216} :catchall_218

    goto/16 :goto_165

    :catchall_218
    move-exception v4

    monitor-exit v13

    throw v4

    :cond_21b
    :try_start_21b
    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Lcom/android/data/sdk/api/c;->b(J)V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Lcom/android/data/sdk/api/c;->c(J)V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Lcom/android/data/sdk/api/c;->e(J)V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v4

    const-wide/16 v16, 0x1

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Lcom/android/data/sdk/api/c;->d(J)V
    :try_end_245
    .catch Ljava/lang/Throwable; {:try_start_21b .. :try_end_245} :catch_200
    .catchall {:try_start_21b .. :try_end_245} :catchall_218

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v10

    goto/16 :goto_190

    :cond_24a
    move-object v12, v4

    goto/16 :goto_15
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    :try_start_0
    invoke-static {p0, p2, p3, p4}, Lcom/android/data/sdk/utils/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/data/sdk/utils/b;->a()Z

    move-result v0

    if-eqz v0, :cond_6f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6f} :catch_70

    :cond_6f
    :goto_6f
    return-void

    :catch_70
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    goto :goto_6f
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v2, Lcom/android/data/sdk/utils/b;

    monitor-enter v2

    :try_start_3
    invoke-static {p0, p1, p2, p3}, Lcom/android/data/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_4a

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_14} :catch_3e
    .catchall {:try_start_3 .. :try_end_14} :catchall_47

    move-object v1, v0

    :goto_15
    if-nez p4, :cond_19

    :goto_17
    monitor-exit v2

    return-void

    :cond_19
    :try_start_19
    invoke-virtual {v1, p4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/android/data/sdk/utils/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_20
    invoke-static {p0, v0, p2}, Lcom/android/data/sdk/utils/b;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_35

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/data/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_30
    invoke-static {v1}, Lcom/android/data/sdk/utils/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_35
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/data/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_38} :catch_39
    .catchall {:try_start_19 .. :try_end_38} :catchall_47

    goto :goto_17

    :catch_39
    move-exception v0

    :try_start_3a
    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3d} :catch_3e
    .catchall {:try_start_3a .. :try_end_3d} :catchall_47

    goto :goto_17

    :catch_3e
    move-exception v0

    const/4 v1, 0x0

    :try_start_40
    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/data/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_47

    goto :goto_17

    :catchall_47
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4a
    move-object v1, v0

    goto :goto_15
.end method

.method public static a(Ljava/lang/Object;)V
    .registers 2

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_3
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_12

    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_d

    goto :goto_2

    :catch_d
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_12
    :try_start_12
    instance-of v0, p0, Ljava/io/OutputStream;

    if-eqz v0, :cond_1c

    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :cond_1c
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_26

    check-cast p0, Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    goto :goto_2

    :cond_26
    instance-of v0, p0, Ljava/io/Reader;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/io/Reader;

    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_2f} :catch_d

    goto :goto_2
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .registers 4

    const-class v1, Lcom/android/data/sdk/utils/b;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_17} :catch_19
    .catchall {:try_start_3 .. :try_end_17} :catchall_1e

    :cond_17
    :goto_17
    monitor-exit v1

    return-void

    :catch_19
    move-exception v0

    :try_start_1a
    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_17

    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()Z
    .registers 2

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_21

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    :goto_20
    return v0

    :catch_21
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    :cond_25
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 17

    const-class v6, Lcom/android/data/sdk/utils/b;

    monitor-enter v6

    :try_start_3
    invoke-virtual {p0, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v7, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-nez p4, :cond_43

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_26
    invoke-static {}, Lcom/android/data/sdk/utils/b;->a()Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_40} :catch_87
    .catchall {:try_start_3 .. :try_end_40} :catchall_8c

    :cond_40
    :goto_40
    const/4 v0, 0x1

    :goto_41
    monitor-exit v6

    return v0

    :cond_43
    :try_start_43
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    array-length v0, v8

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4d

    const/4 v0, 0x0

    goto :goto_41

    :cond_4d
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_53
    array-length v1, v8

    if-ge v0, v1, :cond_8f

    aget-object v1, v8, v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_6d} :catch_87
    .catchall {:try_start_43 .. :try_end_6d} :catchall_8c

    move-result-object v1

    :try_start_6e
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_79} :catch_7c
    .catchall {:try_start_6e .. :try_end_79} :catchall_8c

    :cond_79
    :goto_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    :catch_7c
    move-exception v1

    :try_start_7d
    aget-object v1, v8, v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_86} :catch_87
    .catchall {:try_start_7d .. :try_end_86} :catchall_8c

    goto :goto_79

    :catch_87
    move-exception v0

    :try_start_88
    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    goto :goto_40

    :catchall_8c
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_8f
    const/4 v0, 0x0

    :try_start_90
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v2, 0x0

    const/4 v1, 0x1

    :goto_9c
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c0

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v0, v10, v4

    if-gez v0, :cond_eb

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move v0, v1

    :goto_bb
    add-int/lit8 v1, v1, 0x1

    move-wide v4, v2

    move v2, v0

    goto :goto_9c

    :cond_c0
    aget-object v0, v8, v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/data/sdk/utils/b;->a()Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Ljava/io/File;

    aget-object v1, v8, v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_e9
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_e9} :catch_87
    .catchall {:try_start_90 .. :try_end_e9} :catchall_8c

    goto/16 :goto_40

    :cond_eb
    move v0, v2

    move-wide v2, v4

    goto :goto_bb
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/data/sdk/utils/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {p0}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/String;)V

    :goto_b
    return v0

    :cond_c
    :try_start_c
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_20} :catch_6a
    .catchall {:try_start_c .. :try_end_20} :catchall_58

    move-result v1

    if-nez v1, :cond_2a

    :cond_23
    invoke-static {v3}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/Object;)V

    goto :goto_b

    :cond_2a
    :try_start_2a
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_6a
    .catchall {:try_start_2a .. :try_end_2f} :catchall_58

    :try_start_2f
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_6d
    .catchall {:try_start_2f .. :try_end_34} :catchall_61

    const/16 v1, 0x400

    :try_start_36
    new-array v1, v1, [B

    :goto_38
    const/4 v3, -0x1

    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-eq v3, v5, :cond_50

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_43} :catch_44
    .catchall {:try_start_36 .. :try_end_43} :catchall_63

    goto :goto_38

    :catch_44
    move-exception v1

    move-object v3, v4

    :goto_46
    :try_start_46
    invoke-static {v1}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_66

    invoke-static {v3}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/Object;)V

    goto :goto_b

    :cond_50
    const/4 v0, 0x1

    invoke-static {v4}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/Object;)V

    goto :goto_b

    :catchall_58
    move-exception v0

    move-object v4, v3

    :goto_5a
    invoke-static {v4}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/Object;)V

    throw v0

    :catchall_61
    move-exception v0

    goto :goto_5a

    :catchall_63
    move-exception v0

    move-object v3, v2

    goto :goto_5a

    :catchall_66
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    goto :goto_5a

    :catch_6a
    move-exception v1

    move-object v2, v3

    goto :goto_46

    :catch_6d
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_46
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v1, ""

    :try_start_2
    invoke-static {}, Lcom/android/data/sdk/utils/b;->a()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_14} :catch_99

    move-result v0

    if-nez v0, :cond_19

    move-object v0, v1

    goto :goto_a

    :cond_19
    const/4 v2, 0x0

    :try_start_1a
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_43

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_43
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6c

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_6c
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_71} :catch_8a
    .catchall {:try_start_1a .. :try_end_71} :catchall_94

    :try_start_71
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v2, v0, [B

    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    new-instance v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_81} :catch_a1
    .catchall {:try_start_71 .. :try_end_81} :catchall_9e

    :try_start_81
    invoke-static {v3}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/Object;)V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_a

    :catch_85
    move-exception v1

    :goto_86
    invoke-static {v1}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_8a
    move-exception v0

    :goto_8b
    :try_start_8b
    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_94

    :try_start_8e
    invoke-static {v2}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_a

    :catchall_94
    move-exception v0

    :goto_95
    invoke-static {v2}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/Object;)V

    throw v0
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_99} :catch_99

    :catch_99
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_86

    :catchall_9e
    move-exception v0

    move-object v2, v3

    goto :goto_95

    :catch_a1
    move-exception v0

    move-object v2, v3

    goto :goto_8b
.end method

.method public static b(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    const/16 v1, 0x400

    new-array v1, v1, [B
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_2b

    :try_start_c
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_17
    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_32

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_25} :catch_26
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_25} :catch_2b

    goto :goto_17

    :catch_26
    move-exception v1

    :try_start_27
    invoke-static {v1}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_7

    :catch_2b
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    const-string v0, ""

    goto :goto_7

    :cond_32
    :try_start_32
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_26
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_2b

    :try_start_35
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/b;->a([B)Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_3c} :catch_2b

    move-result-object v0

    goto :goto_7
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_33

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    :cond_17
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1c} :catch_2b
    .catchall {:try_start_5 .. :try_end_1c} :catchall_38

    :try_start_1c
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_27} :catch_40
    .catchall {:try_start_1c .. :try_end_27} :catchall_3d

    :try_start_27
    invoke-static {v2}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_33

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    :goto_2c
    :try_start_2c
    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_38

    :try_start_2f
    invoke-static {v1}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_2a

    :catch_33
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    goto :goto_2a

    :catchall_38
    move-exception v0

    :goto_39
    :try_start_39
    invoke-static {v1}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/Object;)V

    throw v0
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3d} :catch_33

    :catchall_3d
    move-exception v0

    move-object v1, v2

    goto :goto_39

    :catch_40
    move-exception v0

    move-object v1, v2

    goto :goto_2c
.end method

.method public static declared-synchronized b(Ljava/lang/String;)Z
    .registers 7

    const-class v1, Lcom/android/data/sdk/utils/b;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_18

    move-result-wide v2

    const-wide/32 v4, 0x500000

    cmp-long v0, v2, v4

    if-lez v0, :cond_16

    const/4 v0, 0x1

    :goto_14
    monitor-exit v1

    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_14

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_d

    :goto_c
    return v0

    :cond_d
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1f
    move v1, v0

    :goto_20
    array-length v3, v2

    if-ge v1, v3, :cond_54

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_51

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_51} :catch_56

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_54
    const/4 v0, 0x1

    goto :goto_c

    :catch_56
    move-exception v1

    invoke-static {v1}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v1, ""

    :try_start_2
    invoke-virtual {p0, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_f} :catch_49

    :cond_f
    const/4 v2, 0x0

    :try_start_10
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    :cond_22
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_27} :catch_3b
    .catchall {:try_start_10 .. :try_end_27} :catchall_44

    :try_start_27
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v2, v0, [B

    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    new-instance v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_37} :catch_56
    .catchall {:try_start_27 .. :try_end_37} :catchall_53

    :try_start_37
    invoke-static {v3}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/Object;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3a} :catch_51

    :goto_3a
    return-object v0

    :catch_3b
    move-exception v0

    :goto_3c
    :try_start_3c
    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_44

    :try_start_3f
    invoke-static {v2}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_3a

    :catchall_44
    move-exception v0

    :goto_45
    invoke-static {v2}, Lcom/android/data/sdk/utils/b;->a(Ljava/lang/Object;)V

    throw v0
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_49} :catch_49

    :catch_49
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_4d
    invoke-static {v1}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    goto :goto_3a

    :catch_51
    move-exception v1

    goto :goto_4d

    :catchall_53
    move-exception v0

    move-object v2, v3

    goto :goto_45

    :catch_56
    move-exception v0

    move-object v2, v3

    goto :goto_3c
.end method

.method public static declared-synchronized d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15

    const/4 v0, 0x0

    const-class v4, Lcom/android/data/sdk/utils/b;

    monitor-enter v4

    :try_start_4
    invoke-virtual {p0, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_11
    invoke-static {v5}, Lcom/android/data/sdk/utils/b;->a(Ljava/io/File;)J
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_14} :catch_2d
    .catchall {:try_start_4 .. :try_end_14} :catchall_54

    move-result-wide v6

    const-wide/16 v2, 0x0

    :try_start_17
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1
    :try_end_1e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_1e} :catch_28
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1e} :catch_2d
    .catchall {:try_start_17 .. :try_end_1e} :catchall_54

    int-to-long v2, v1

    :goto_1f
    const-wide/32 v8, 0x100000

    cmp-long v1, v2, v8

    if-lez v1, :cond_33

    :cond_26
    :goto_26
    monitor-exit v4

    return v0

    :catch_28
    move-exception v1

    :try_start_29
    invoke-static {v1}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_2d
    .catchall {:try_start_29 .. :try_end_2c} :catchall_54

    goto :goto_1f

    :catch_2d
    move-exception v0

    :try_start_2e
    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_54

    :cond_31
    const/4 v0, 0x1

    goto :goto_26

    :cond_33
    :try_start_33
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v8, v5

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_44} :catch_2d
    .catchall {:try_start_33 .. :try_end_44} :catchall_54

    move-result v1

    int-to-long v10, v1

    mul-long/2addr v8, v10

    cmp-long v1, v2, v8

    if-gtz v1, :cond_26

    add-long/2addr v2, v6

    const-wide/32 v6, 0x500000

    cmp-long v1, v2, v6

    if-lez v1, :cond_31

    goto :goto_26

    :catchall_54
    move-exception v0

    monitor-exit v4

    throw v0
.end method
