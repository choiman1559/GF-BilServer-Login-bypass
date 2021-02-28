.class public Lcom/mob/tools/utils/SQLiteHelper;
.super Ljava/lang/Object;
.source "SQLiteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V
    .registers 1
    .param p0, "db"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    .prologue
    .line 85
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$400(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V

    .line 86
    return-void
.end method

.method public static delete(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p0, "db"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$100(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V

    .line 32
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$200(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static execSQL(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Ljava/lang/String;)V
    .registers 5
    .param p0, "db"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$100(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V

    .line 49
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 51
    :try_start_a
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_18} :catch_20
    .catchall {:try_start_a .. :try_end_18} :catchall_22

    .line 56
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 58
    return-void

    .line 53
    :catch_20
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_21
    throw v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    .line 56
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_22
    move-exception v1

    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public static getDatabase(Landroid/content/Context;Ljava/lang/String;)Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/mob/tools/utils/SQLiteHelper;->getDatabase(Ljava/lang/String;Ljava/lang/String;)Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    move-result-object v1

    return-object v1
.end method

.method public static getDatabase(Ljava/lang/String;Ljava/lang/String;)Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mob/tools/utils/SQLiteHelper$1;)V

    return-object v0
.end method

.method public static getSize(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)I
    .registers 7
    .param p0, "db"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$100(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V

    .line 68
    const/4 v1, 0x0

    .line 69
    .local v1, "count":I
    const/4 v0, 0x0

    .line 71
    .local v0, "c":Landroid/database/Cursor;
    :try_start_5
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select count(*) from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$200(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 73
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_2f} :catch_34
    .catchall {:try_start_5 .. :try_end_2f} :catchall_36

    move-result v1

    .line 78
    :cond_30
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 81
    return v1

    .line 75
    :catch_34
    move-exception v2

    .line 76
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_35
    throw v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 78
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_36
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public static insert(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Landroid/content/ContentValues;)J
    .registers 5
    .param p0, "db"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$100(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V

    .line 26
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$200(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static query(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .param p0, "db"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 43
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$100(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V

    .line 44
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$200(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static rawQuery(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .param p0, "db"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$100(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V

    .line 63
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static update(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p0, "db"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$100(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V

    .line 38
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$200(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
