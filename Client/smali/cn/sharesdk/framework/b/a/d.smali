.class public Lcn/sharesdk/framework/b/a/d;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# direct methods
.method public static declared-synchronized a(Ljava/lang/String;J)J
    .registers 8

    .prologue
    .line 21
    const-class v2, Lcn/sharesdk/framework/b/a/d;

    monitor-enter v2

    if-eqz p0, :cond_d

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_33

    if-ne v0, v1, :cond_11

    .line 22
    :cond_d
    const-wide/16 v0, -0x1

    .line 30
    :goto_f
    monitor-exit v2

    return-wide v0

    .line 24
    :cond_11
    :try_start_11
    invoke-static {}, Lcn/sharesdk/framework/b/a/b;->a()Lcn/sharesdk/framework/b/a/b;

    move-result-object v0

    .line 25
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 26
    const-string v3, "post_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 27
    const-string v3, "message_data"

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v3, "message"

    invoke-virtual {v0, v3, v1}, Lcn/sharesdk/framework/b/a/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_33

    move-result-wide v0

    goto :goto_f

    .line 21
    :catchall_33
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized a(Ljava/util/ArrayList;)J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 58
    const-class v2, Lcn/sharesdk/framework/b/a/d;

    monitor-enter v2

    if-nez p0, :cond_a

    .line 59
    const-wide/16 v0, 0x0

    .line 73
    :goto_8
    monitor-exit v2

    return-wide v0

    .line 61
    :cond_a
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    .line 62
    :goto_10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_32

    .line 63
    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 68
    :cond_32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {}, Lcn/sharesdk/framework/b/a/b;->a()Lcn/sharesdk/framework/b/a/b;

    move-result-object v1

    .line 71
    const-string v3, "message"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id in ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " )"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v4}, Lcn/sharesdk/framework/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 72
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v3, "delete COUNT == %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_78
    .catchall {:try_start_a .. :try_end_78} :catchall_7a

    .line 73
    int-to-long v0, v0

    goto :goto_8

    .line 58
    :catchall_7a
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized a()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/framework/b/a/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    const-class v1, Lcn/sharesdk/framework/b/a/d;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcn/sharesdk/framework/b/a/b;->a()Lcn/sharesdk/framework/b/a/b;

    move-result-object v0

    .line 114
    const-string v2, "message"

    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/b/a/b;->a(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_17

    .line 115
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcn/sharesdk/framework/b/a/d;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1d

    move-result-object v0

    .line 118
    :goto_15
    monitor-exit v1

    return-object v0

    :cond_17
    :try_start_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1d

    goto :goto_15

    .line 113
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/framework/b/a/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    const-class v8, Lcn/sharesdk/framework/b/a/d;

    monitor-enter v8

    :try_start_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 79
    new-instance v7, Lcn/sharesdk/framework/b/a/c;

    invoke-direct {v7}, Lcn/sharesdk/framework/b/a/c;-><init>()V

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    invoke-static {}, Lcn/sharesdk/framework/b/a/b;->a()Lcn/sharesdk/framework/b/a/b;

    move-result-object v0

    .line 83
    const-string v1, "message"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "post_time"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "message_data"

    aput-object v4, v2, v3

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/framework/b/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v6

    move-object v1, v7

    .line 86
    :goto_33
    if-eqz v2, :cond_8a

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 87
    iget-object v3, v1, Lcn/sharesdk/framework/b/a/c;->b:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v3, v1, Lcn/sharesdk/framework/b/a/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_6e

    .line 90
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/framework/b/a/c;->a:Ljava/lang/String;

    .line 92
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v1, Lcn/sharesdk/framework/b/a/c;

    invoke-direct {v1}, Lcn/sharesdk/framework/b/a/c;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_6b

    goto :goto_33

    .line 78
    :catchall_6b
    move-exception v0

    monitor-exit v8

    throw v0

    .line 97
    :cond_6e
    :try_start_6e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 99
    :cond_8a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 103
    iget-object v2, v1, Lcn/sharesdk/framework/b/a/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_a9

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/framework/b/a/c;->a:Ljava/lang/String;

    .line 105
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a9
    .catchall {:try_start_6e .. :try_end_a9} :catchall_6b

    .line 107
    :cond_a9
    monitor-exit v8

    return-object v9
.end method
