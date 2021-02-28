.class public Lcn/sharesdk/framework/b/a/b;
.super Ljava/lang/Object;
.source "DBProvider.java"


# static fields
.field private static b:Lcn/sharesdk/framework/b/a/b;


# instance fields
.field private a:Lcn/sharesdk/framework/b/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcn/sharesdk/framework/b/a/b;->b:Lcn/sharesdk/framework/b/a/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcn/sharesdk/framework/b/a/a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/a/a;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/b/a/b;->a:Lcn/sharesdk/framework/b/a/a;

    .line 18
    return-void
.end method

.method public static declared-synchronized a()Lcn/sharesdk/framework/b/a/b;
    .registers 2

    .prologue
    .line 21
    const-class v1, Lcn/sharesdk/framework/b/a/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcn/sharesdk/framework/b/a/b;->b:Lcn/sharesdk/framework/b/a/b;

    if-nez v0, :cond_e

    .line 22
    new-instance v0, Lcn/sharesdk/framework/b/a/b;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/a/b;-><init>()V

    sput-object v0, Lcn/sharesdk/framework/b/a/b;->b:Lcn/sharesdk/framework/b/a/b;

    .line 24
    :cond_e
    sget-object v0, Lcn/sharesdk/framework/b/a/b;->b:Lcn/sharesdk/framework/b/a/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 21
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

    .line 141
    .line 143
    iget-object v1, p0, Lcn/sharesdk/framework/b/a/b;->a:Lcn/sharesdk/framework/b/a/a;

    invoke-virtual {v1}, Lcn/sharesdk/framework/b/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 145
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

    .line 146
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 147
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2a} :catch_2f
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3b

    move-result v0

    .line 153
    :cond_2b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 155
    :goto_2e
    return v0

    .line 149
    :catch_2f
    move-exception v1

    .line 150
    :try_start_30
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_3b

    .line 153
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

    .line 98
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/b;->a:Lcn/sharesdk/framework/b/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 101
    :try_start_8
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_23

    move-result v0

    .line 102
    :try_start_c
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

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

    .line 107
    :goto_22
    return v0

    .line 103
    :catch_23
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 104
    :goto_26
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    const-string v4, "when delete database occur error table:%s,"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {v3, v1, v4, v5}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_22

    .line 103
    :catch_34
    move-exception v1

    goto :goto_26
.end method

.method public a(Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 10

    .prologue
    .line 55
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/b;->a:Lcn/sharesdk/framework/b/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 56
    const-wide/16 v0, -0x1

    .line 58
    const/4 v3, 0x0

    :try_start_9
    invoke-virtual {v2, p1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_e

    move-result-wide v0

    .line 63
    :goto_d
    return-wide v0

    .line 59
    :catch_e
    move-exception v2

    .line 60
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    const-string v4, "when insert database occur error table:%s,"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v2, v4, v5}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_d
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15

    .prologue
    .line 37
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/b;->a:Lcn/sharesdk/framework/b/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 38
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "Query table: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 39
    const/4 v8, 0x0

    .line 41
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    :try_start_1d
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_22

    move-result-object v0

    .line 45
    :goto_21
    return-object v0

    .line 42
    :catch_22
    move-exception v0

    .line 43
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "when query database occur error table:%s,"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object v0, v8

    goto :goto_21
.end method
