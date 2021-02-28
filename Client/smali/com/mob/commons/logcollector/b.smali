.class public Lcom/mob/commons/logcollector/b;
.super Ljava/lang/Object;
.source "DBProvider.java"


# static fields
.field private static b:Lcom/mob/commons/logcollector/b;


# instance fields
.field private a:Lcom/mob/commons/logcollector/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/mob/commons/logcollector/b;->b:Lcom/mob/commons/logcollector/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/mob/commons/logcollector/a;

    invoke-direct {v0}, Lcom/mob/commons/logcollector/a;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/logcollector/b;->a:Lcom/mob/commons/logcollector/a;

    .line 17
    return-void
.end method

.method public static declared-synchronized a()Lcom/mob/commons/logcollector/b;
    .registers 2

    .prologue
    .line 20
    const-class v1, Lcom/mob/commons/logcollector/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/mob/commons/logcollector/b;->b:Lcom/mob/commons/logcollector/b;

    if-nez v0, :cond_e

    .line 21
    new-instance v0, Lcom/mob/commons/logcollector/b;

    invoke-direct {v0}, Lcom/mob/commons/logcollector/b;-><init>()V

    sput-object v0, Lcom/mob/commons/logcollector/b;->b:Lcom/mob/commons/logcollector/b;

    .line 23
    :cond_e
    sget-object v0, Lcom/mob/commons/logcollector/b;->b:Lcom/mob/commons/logcollector/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 138
    .line 140
    iget-object v1, p0, Lcom/mob/commons/logcollector/b;->a:Lcom/mob/commons/logcollector/a;

    invoke-virtual {v1}, Lcom/mob/commons/logcollector/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 142
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select count(*) from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 143
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 144
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2a} :catch_2f
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3b

    move-result v0

    .line 150
    :cond_2b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 152
    :goto_2e
    return v0

    .line 146
    :catch_2f
    move-exception v1

    .line 147
    :try_start_30
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_3b

    .line 150
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2e

    :catchall_3b
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcom/mob/commons/logcollector/b;->a:Lcom/mob/commons/logcollector/a;

    invoke-virtual {v0}, Lcom/mob/commons/logcollector/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 100
    :try_start_8
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_23

    move-result v0

    .line 101
    :try_start_c
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v3, "Deleted %d rows from table: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_22} :catch_34

    .line 105
    :goto_22
    return v0

    .line 102
    :catch_23
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 103
    :goto_26
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    const-string v4, "when delete database occur error table:%s,"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {v3, v1, v4, v5}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_22

    .line 102
    :catch_34
    move-exception v1

    goto :goto_26
.end method

.method public a(Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 10

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mob/commons/logcollector/b;->a:Lcom/mob/commons/logcollector/a;

    invoke-virtual {v0}, Lcom/mob/commons/logcollector/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 55
    const-wide/16 v0, -0x1

    .line 57
    const/4 v3, 0x0

    :try_start_9
    invoke-virtual {v2, p1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_e

    move-result-wide v0

    .line 62
    :goto_d
    return-wide v0

    .line 58
    :catch_e
    move-exception v2

    .line 59
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    const-string v4, "when insert database occur error table:%s,"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v2, v4, v5}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_d
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    iget-object v1, p0, Lcom/mob/commons/logcollector/b;->a:Lcom/mob/commons/logcollector/a;

    invoke-virtual {v1}, Lcom/mob/commons/logcollector/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 205
    :try_start_7
    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v0

    .line 209
    :goto_b
    return-object v0

    .line 206
    :catch_c
    move-exception v1

    .line 207
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_b
.end method
