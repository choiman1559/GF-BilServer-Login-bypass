.class public Lcom/mob/commons/logcollector/f;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# direct methods
.method public static declared-synchronized a(JLjava/lang/String;ILjava/lang/String;)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 20
    const-class v2, Lcom/mob/commons/logcollector/f;

    monitor-enter v2

    :try_start_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_3d

    move-result v0

    if-eqz v0, :cond_d

    .line 21
    const-wide/16 v0, -0x1

    .line 31
    :goto_b
    monitor-exit v2

    return-wide v0

    .line 23
    :cond_d
    :try_start_d
    invoke-static {}, Lcom/mob/commons/logcollector/b;->a()Lcom/mob/commons/logcollector/b;

    move-result-object v0

    .line 24
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 25
    const-string v3, "exception_time"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 26
    const-string v3, "exception_msg"

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v3, "exception_level"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 28
    const-string v3, "exception_md5"

    invoke-virtual {v1, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v3, "table_exception"

    invoke-virtual {v0, v3, v1}, Lcom/mob/commons/logcollector/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_3d

    move-result-wide v0

    goto :goto_b

    .line 20
    :catchall_3d
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 66
    const-class v2, Lcom/mob/commons/logcollector/f;

    monitor-enter v2

    if-nez p0, :cond_a

    .line 67
    const-wide/16 v0, 0x0

    .line 81
    :goto_8
    monitor-exit v2

    return-wide v0

    .line 69
    :cond_a
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    .line 70
    :goto_10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_32

    .line 71
    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 76
    :cond_32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {}, Lcom/mob/commons/logcollector/b;->a()Lcom/mob/commons/logcollector/b;

    move-result-object v1

    .line 79
    const-string v3, "table_exception"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception_md5 in ( "

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

    invoke-virtual {v1, v3, v0, v4}, Lcom/mob/commons/logcollector/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 80
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

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

    .line 81
    int-to-long v0, v0

    goto :goto_8

    .line 66
    :catchall_7a
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static declared-synchronized a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/commons/logcollector/e;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 88
    const-class v2, Lcom/mob/commons/logcollector/f;

    monitor-enter v2

    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 89
    new-instance v0, Lcom/mob/commons/logcollector/e;

    invoke-direct {v0}, Lcom/mob/commons/logcollector/e;-><init>()V

    .line 91
    invoke-static {}, Lcom/mob/commons/logcollector/b;->a()Lcom/mob/commons/logcollector/b;

    move-result-object v4

    .line 92
    const-string v1, " select exception_md5, exception_level, exception_time, exception_msg, sum(exception_counts) from table_exception group by exception_md5 having max(_id)"

    .line 94
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_37

    if-eqz p1, :cond_37

    array-length v5, p1

    if-lez v5, :cond_37

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " select exception_md5, exception_level, exception_time, exception_msg, sum(exception_counts) from table_exception where "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " group by exception_md5 having max(_id)"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    :cond_37
    invoke-virtual {v4, v1, p1}, Lcom/mob/commons/logcollector/b;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 100
    :cond_3b
    if-eqz v1, :cond_a6

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 101
    iget-object v4, v0, Lcom/mob/commons/logcollector/e;->b:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 103
    const-string v5, "type"

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v5, "errat"

    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v5, "msg"

    const/4 v6, 0x3

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v5, "times"

    const/4 v6, 0x4

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v5, v0, Lcom/mob/commons/logcollector/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v4, v0, Lcom/mob/commons/logcollector/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x32

    if-ne v4, v5, :cond_3b

    .line 111
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v0, Lcom/mob/commons/logcollector/e;

    invoke-direct {v0}, Lcom/mob/commons/logcollector/e;-><init>()V

    .line 116
    :cond_a6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 120
    iget-object v1, v0, Lcom/mob/commons/logcollector/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_b4

    .line 121
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b4
    .catchall {:try_start_3 .. :try_end_b4} :catchall_b6

    .line 123
    :cond_b4
    monitor-exit v2

    return-object v3

    .line 88
    :catchall_b6
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized a([Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/commons/logcollector/e;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 131
    const-class v2, Lcom/mob/commons/logcollector/f;

    monitor-enter v2

    :try_start_4
    const-string v0, "exception_level = ?"

    .line 132
    if-eqz p0, :cond_b

    array-length v3, p0

    if-gtz v3, :cond_d

    :cond_b
    move-object v0, v1

    move-object p0, v1

    .line 137
    :cond_d
    invoke-static {}, Lcom/mob/commons/logcollector/b;->a()Lcom/mob/commons/logcollector/b;

    move-result-object v1

    .line 138
    const-string v3, "table_exception"

    invoke-virtual {v1, v3}, Lcom/mob/commons/logcollector/b;->a(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1f

    .line 139
    invoke-static {v0, p0}, Lcom/mob/commons/logcollector/f;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_25

    move-result-object v0

    .line 142
    :goto_1d
    monitor-exit v2

    return-object v0

    :cond_1f
    :try_start_1f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_25

    goto :goto_1d

    .line 131
    :catchall_25
    move-exception v0

    monitor-exit v2

    throw v0
.end method
