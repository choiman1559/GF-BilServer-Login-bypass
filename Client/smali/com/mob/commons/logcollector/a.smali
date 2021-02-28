.class public Lcom/mob/commons/logcollector/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelp.java"


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 37
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ThrowalbeLog.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    .prologue
    .line 56
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 57
    monitor-exit p0

    return-void

    .line 56
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    .line 41
    const-string v0, " create table  table_exception(_id integer primary key autoincrement,exception_level integer not null, exception_msg text not null,exception_time timestamp not null, exception_md5 text not null, exception_counts integer DEFAULT 1, exception_sending bit);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 52
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .prologue
    .line 47
    return-void
.end method
