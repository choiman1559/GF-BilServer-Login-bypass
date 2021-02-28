.class public Lcom/bilibili/track/storage/database/BiliDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "trackDatabase.db"

.field private static final DB_VER:I = 0x1

.field public static final TB_NAME:Ljava/lang/String; = "BaseBean"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "trackDatabase.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE IF NOT EXISTS BaseBean(_logid INTEGER PRIMARY KEY AUTOINCREMENT, eventId VARCHAR,trackDetail VARCHAR, pageName VARCHAR, logType VARCHAR, user_id VARCHAR, deviceInfo VARCHAR, logLevel VARCHAR, trace_id VARCHAR, server_id VARCHAR, game_id VARCHAR, sdk_ver VARCHAR, app_id VARCHAR, model_name VARCHAR, is_focus INTAGER, Uploaded INTAGER, logTime LONG, trackSn INTAGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method
