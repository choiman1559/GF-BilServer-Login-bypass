.class public Lcn/sharesdk/framework/b/a/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelp.java"


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 31
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sharesdk.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 32
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 52
    monitor-exit p0

    return-void

    .line 51
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 36
    const-string v0, " create table  message(_id integer primary key autoincrement,post_time timestamp not null, message_data text not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 47
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 42
    return-void
.end method
