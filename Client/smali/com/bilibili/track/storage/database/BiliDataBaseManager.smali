.class public Lcom/bilibili/track/storage/database/BiliDataBaseManager;
.super Ljava/lang/Object;


# static fields
.field private static volatile INSTANCE:Lcom/bilibili/track/storage/database/BiliDataBaseManager;


# instance fields
.field private context:Landroid/content/Context;

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private helper:Lcom/bilibili/track/storage/database/BiliDatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->context:Landroid/content/Context;

    new-instance v0, Lcom/bilibili/track/storage/database/BiliDatabaseHelper;

    invoke-direct {v0, p1}, Lcom/bilibili/track/storage/database/BiliDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->helper:Lcom/bilibili/track/storage/database/BiliDatabaseHelper;

    iget-object v0, p0, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->helper:Lcom/bilibili/track/storage/database/BiliDatabaseHelper;

    invoke-virtual {v0}, Lcom/bilibili/track/storage/database/BiliDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private getBeanByCursor(Landroid/database/Cursor;)Lcom/bilibili/track/storage/database/BaseBean;
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Lcom/bilibili/track/storage/database/BaseBean;

    invoke-direct {v3}, Lcom/bilibili/track/storage/database/BaseBean;-><init>()V

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bilibili/track/storage/database/BaseBean;->setLogid(I)V

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bilibili/track/storage/database/BaseBean;->setEventId(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bilibili/track/storage/database/BaseBean;->setTrackDetail(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bilibili/track/storage/database/BaseBean;->setPageName(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bilibili/track/storage/database/BaseBean;->setLogType(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bilibili/track/storage/database/BaseBean;->setUser_id(Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bilibili/track/storage/database/BaseBean;->setDeviceInfo(Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bilibili/track/storage/database/BaseBean;->setLogLevel(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bilibili/track/storage/database/BaseBean;->setTrace_id(Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bilibili/track/storage/database/BaseBean;->setServer_id(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bilibili/track/storage/database/BaseBean;->setGame_id(Ljava/lang/String;)V

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bilibili/track/storage/database/BaseBean;->setSdk_ver(Ljava/lang/String;)V

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bilibili/track/storage/database/BaseBean;->setApp_id(Ljava/lang/String;)V

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bilibili/track/storage/database/BaseBean;->setModel_name(Ljava/lang/String;)V

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_a5

    move v0, v1

    :goto_84
    invoke-virtual {v3, v0}, Lcom/bilibili/track/storage/database/BaseBean;->setIs_focus(Z)V

    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_a7

    :goto_8f
    invoke-virtual {v3, v1}, Lcom/bilibili/track/storage/database/BaseBean;->setUploaded(Z)V

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/bilibili/track/storage/database/BaseBean;->setLogTime(J)V

    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bilibili/track/storage/database/BaseBean;->setTrackSn(I)V

    return-object v3

    :cond_a5
    move v0, v2

    goto :goto_84

    :cond_a7
    move v1, v2

    goto :goto_8f
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/bilibili/track/storage/database/BiliDataBaseManager;
    .registers 3

    sget-object v0, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->INSTANCE:Lcom/bilibili/track/storage/database/BiliDataBaseManager;

    if-nez v0, :cond_13

    const-class v1, Lcom/bilibili/track/storage/database/BiliDataBaseManager;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->INSTANCE:Lcom/bilibili/track/storage/database/BiliDataBaseManager;

    if-nez v0, :cond_12

    new-instance v0, Lcom/bilibili/track/storage/database/BiliDataBaseManager;

    invoke-direct {v0, p0}, Lcom/bilibili/track/storage/database/BiliDataBaseManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->INSTANCE:Lcom/bilibili/track/storage/database/BiliDataBaseManager;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->INSTANCE:Lcom/bilibili/track/storage/database/BiliDataBaseManager;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public delete(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->queryOldest(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->delete(Ljava/util/List;)V

    return-void
.end method

.method public delete(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/track/storage/database/BaseBean;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    :try_start_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v4, 0x32

    div-int v5, v0, v4

    move v3, v2

    :goto_d
    if-ge v3, v5, :cond_3

    new-array v6, v4, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    :goto_17
    if-ge v1, v4, :cond_35

    mul-int v0, v3, v4

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/track/storage/database/BaseBean;

    invoke-virtual {v0}, Lcom/bilibili/track/storage/database/BaseBean;->getLogid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    const-string v0, "?,"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    :cond_35
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_44

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete from BaseBean  where _logid in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_66} :catch_6a

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_d

    :catch_6a
    move-exception v0

    goto :goto_3
.end method

.method public insert(Lcom/bilibili/track/storage/database/BaseBean;)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    const-string v3, "insert into BaseBean ( eventId, trackDetail, pageName, logType, user_id,  deviceInfo, logLevel, trace_id, server_id, game_id, sdk_ver, app_id, model_name, is_focus, Uploaded, logTime, trackSn ) values ( ? , ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    const/16 v2, 0x11

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getEventId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getTrackDetail()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getPageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getLogType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getUser_id()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x5

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getDeviceInfo()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x6

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getLogLevel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x7

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getTrace_id()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/16 v2, 0x8

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getServer_id()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/16 v2, 0x9

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getGame_id()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/16 v2, 0xa

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getSdk_ver()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/16 v2, 0xb

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getApp_id()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/16 v2, 0xc

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getModel_name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/16 v5, 0xd

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->isIs_focus()Z

    move-result v2

    if-eqz v2, :cond_a3

    move v2, v0

    :goto_71
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const/16 v2, 0xe

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->isUploaded()Z

    move-result v5

    if-eqz v5, :cond_a5

    :goto_7f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const/16 v0, 0xf

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getLogTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    const/16 v0, 0x10

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getTrackSn()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a2} :catch_a7

    :goto_a2
    return-void

    :cond_a3
    move v2, v1

    goto :goto_71

    :cond_a5
    move v0, v1

    goto :goto_7f

    :catch_a7
    move-exception v0

    goto :goto_a2
.end method

.method public query(I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/track/storage/database/BaseBean;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :try_start_6
    const-string v2, "select * from BaseBean where Uploaded = 0 order by logTime desc limit ?"

    iget-object v3, p0, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_2e
    .catchall {:try_start_6 .. :try_end_17} :catchall_3b

    move-result-object v0

    if-eqz v0, :cond_35

    :try_start_1a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_35

    :goto_20
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-direct {p0, v0}, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->getBeanByCursor(Landroid/database/Cursor;)Lcom/bilibili/track/storage/database/BaseBean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2d} :catch_2e
    .catchall {:try_start_1a .. :try_end_2d} :catchall_45

    goto :goto_20

    :catch_2e
    move-exception v2

    if-eqz v0, :cond_34

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_34
    :goto_34
    return-object v1

    :cond_35
    if-eqz v0, :cond_34

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_34

    :catchall_3b
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_3f
    if-eqz v1, :cond_44

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_44
    throw v0

    :catchall_45
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3f
.end method

.method public query(ILjava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/track/storage/database/BaseBean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    const-string v1, "select * from BaseBean where Uploaded = 0 and logLevel = ? order by logTime desc limit ? "

    iget-object v2, p0, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_31

    :goto_22
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-direct {p0, v1}, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->getBeanByCursor(Landroid/database/Cursor;)Lcom/bilibili/track/storage/database/BaseBean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2f} :catch_30

    goto :goto_22

    :catch_30
    move-exception v1

    :cond_31
    return-object v0
.end method

.method public queryCount()I
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_2
    const-string v2, "select * from BaseBean"

    iget-object v3, p0, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_17
    .catchall {:try_start_2 .. :try_end_10} :catchall_1e

    move-result v0

    :cond_11
    if-eqz v1, :cond_16

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_16
    :goto_16
    return v0

    :catch_17
    move-exception v2

    if-eqz v1, :cond_16

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_16

    :catchall_1e
    move-exception v0

    if-eqz v1, :cond_24

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_24
    throw v0
.end method

.method public queryCountUploaded()I
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_2
    const-string v2, "select * from BaseBean where Uploaded = 0 "

    iget-object v3, p0, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_17
    .catchall {:try_start_2 .. :try_end_10} :catchall_1e

    move-result v0

    :cond_11
    if-eqz v1, :cond_16

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_16
    :goto_16
    return v0

    :catch_17
    move-exception v2

    if-eqz v1, :cond_16

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_16

    :catchall_1e
    move-exception v0

    if-eqz v1, :cond_24

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_24
    throw v0
.end method

.method public queryOldest(I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/track/storage/database/BaseBean;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :try_start_6
    const-string v2, "select * from BaseBean where Uploaded = 1 order by logTime asc limit ?  "

    iget-object v3, p0, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_2e
    .catchall {:try_start_6 .. :try_end_17} :catchall_3b

    move-result-object v0

    if-eqz v0, :cond_35

    :try_start_1a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_35

    :goto_20
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-direct {p0, v0}, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->getBeanByCursor(Landroid/database/Cursor;)Lcom/bilibili/track/storage/database/BaseBean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2d} :catch_2e
    .catchall {:try_start_1a .. :try_end_2d} :catchall_45

    goto :goto_20

    :catch_2e
    move-exception v2

    if-eqz v0, :cond_34

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_34
    :goto_34
    return-object v1

    :cond_35
    if-eqz v0, :cond_34

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_34

    :catchall_3b
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_3f
    if-eqz v1, :cond_44

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_44
    throw v0

    :catchall_45
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3f
.end method

.method public update(Lcom/bilibili/track/storage/database/BaseBean;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update BaseBean set Uploaded = 1 where game_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1f} :catch_20

    goto :goto_2

    :catch_20
    move-exception v0

    goto :goto_2
.end method

.method public update(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/track/storage/database/BaseBean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2f

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/track/storage/database/BaseBean;

    invoke-virtual {v0}, Lcom/bilibili/track/storage/database/BaseBean;->getLogid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "?,"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3e

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update BaseBean set Uploaded = 1 where _logid in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_60} :catch_61

    goto :goto_2

    :catch_61
    move-exception v0

    goto :goto_2
.end method

.method public updateExpired(J)V
    .registers 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update BaseBean set Uploaded = 1 where logTime < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    goto :goto_19
.end method
