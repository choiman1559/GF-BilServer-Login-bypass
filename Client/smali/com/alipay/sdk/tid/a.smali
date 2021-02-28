.class final Lcom/alipay/sdk/tid/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static final a:Ljava/lang/String; = "msp.db"

.field private static final b:I = 0x1


# instance fields
.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "msp.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/sdk/tid/a;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    const-string v1, "select tid from tb_tid where name=?"

    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/sdk/tid/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_48
    .catchall {:try_start_3 .. :try_end_6} :catchall_5d

    move-result-object v2

    const/4 v3, 0x1

    :try_start_8
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lcom/alipay/sdk/tid/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_7a
    .catchall {:try_start_8 .. :try_end_14} :catchall_73

    move-result-object v1

    :try_start_15
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1f} :catch_7d
    .catchall {:try_start_15 .. :try_end_1f} :catchall_78

    move-result-object v0

    :cond_20
    if-eqz v1, :cond_25

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_25
    if-eqz v2, :cond_81

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_81

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v1, v0

    :goto_31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/alipay/sdk/tid/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/sdk/util/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/sdk/encrypt/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_47
    return-object v1

    :catch_48
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_4b
    if-eqz v1, :cond_50

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_50
    if-eqz v2, :cond_7f

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v1, v0

    goto :goto_31

    :catchall_5d
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_62
    if-eqz v1, :cond_67

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_67
    if-eqz v2, :cond_72

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_72
    throw v0

    :catchall_73
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_62

    :catchall_78
    move-exception v0

    goto :goto_62

    :catch_7a
    move-exception v1

    move-object v1, v0

    goto :goto_4b

    :catch_7d
    move-exception v3

    goto :goto_4b

    :cond_7f
    move-object v1, v0

    goto :goto_31

    :cond_81
    move-object v1, v0

    goto :goto_31
.end method

.method a()V
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/sdk/tid/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v0, "drop table if exists tb_tid"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_16
    .catchall {:try_start_1 .. :try_end_a} :catchall_26

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    :try_start_17
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_26

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_15

    :catchall_26
    move-exception v0

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_32
    throw v0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    const-string v1, "select key_tid from tb_tid where name=?"

    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/sdk/tid/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_31
    .catchall {:try_start_3 .. :try_end_6} :catchall_45

    move-result-object v2

    const/4 v3, 0x1

    :try_start_8
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lcom/alipay/sdk/tid/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_62
    .catchall {:try_start_8 .. :try_end_14} :catchall_5b

    move-result-object v1

    :try_start_15
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1f} :catch_65
    .catchall {:try_start_15 .. :try_end_1f} :catchall_60

    move-result-object v0

    :cond_20
    if-eqz v1, :cond_25

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_25
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_30
    :goto_30
    return-object v0

    :catch_31
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_34
    if-eqz v1, :cond_39

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_39
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_30

    :catchall_45
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_4a
    if-eqz v1, :cond_4f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4f
    if-eqz v2, :cond_5a

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5a
    throw v0

    :catchall_5b
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4a

    :catchall_60
    move-exception v0

    goto :goto_4a

    :catch_62
    move-exception v1

    move-object v1, v0

    goto :goto_34

    :catch_65
    move-exception v3

    goto :goto_34
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "create table if not exists tb_tid (name text primary key, tid text, key_tid text, dt datetime);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    const-string v0, "drop table if exists tb_tid"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
