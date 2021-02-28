.class Lcom/bsgamesdk/android/dc/c;
.super Ljava/lang/Object;


# static fields
.field static a:[Ljava/lang/String;

.field static b:[Ljava/lang/String;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field static e:Ljava/lang/String;

.field static f:Ljava/lang/String;

.field static g:[Ljava/lang/String;

.field static h:[Ljava/lang/String;

.field static i:Ljava/lang/String;

.field static j:I

.field static k:J

.field static l:J

.field static m:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static n:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "http://line3-realtime-api.biligame.net"

    aput-object v1, v0, v2

    const-string v1, "http://line1-realtime-api.biligame.net"

    aput-object v1, v0, v3

    sput-object v0, Lcom/bsgamesdk/android/dc/c;->a:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "https://line3-realtime-api.biligame.net"

    aput-object v1, v0, v2

    const-string v1, "https://line1-realtime-api.biligame.net"

    aput-object v1, v0, v3

    sput-object v0, Lcom/bsgamesdk/android/dc/c;->b:[Ljava/lang/String;

    const-string v0, "https://static.biligame.net/gamesdk/dataSdkHotConfig.json"

    sput-object v0, Lcom/bsgamesdk/android/dc/c;->c:Ljava/lang/String;

    const-string v0, "[\"tv.danmaku.bili\",\"com.bilibili.qing\",\"com.bilibili.comic\"]"

    sput-object v0, Lcom/bsgamesdk/android/dc/c;->d:Ljava/lang/String;

    const-string v0, "http://game-infoc.biligame.com/"

    sput-object v0, Lcom/bsgamesdk/android/dc/c;->e:Ljava/lang/String;

    const-string v0, "https://gameinfoc.biligame.net/"

    sput-object v0, Lcom/bsgamesdk/android/dc/c;->f:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "http://line1-sdk-app-api.biligame.net"

    aput-object v1, v0, v2

    const-string v1, "http://line3-sdk-app-api.biligame.net"

    aput-object v1, v0, v3

    sput-object v0, Lcom/bsgamesdk/android/dc/c;->g:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "https://line1-sdk-app-api.biligame.net"

    aput-object v1, v0, v2

    const-string v1, "https://line3-sdk-app-api.biligame.net"

    aput-object v1, v0, v3

    sput-object v0, Lcom/bsgamesdk/android/dc/c;->h:[Ljava/lang/String;

    const-string v0, "2.4.1"

    sput-object v0, Lcom/bsgamesdk/android/dc/c;->i:Ljava/lang/String;

    sput v2, Lcom/bsgamesdk/android/dc/c;->j:I

    sget-wide v0, Lcom/android/data/sdk/constant/ConstantTime;->DEFAULT_TIME_INTERVAL:J

    sput-wide v0, Lcom/bsgamesdk/android/dc/c;->k:J

    sget-wide v0, Lcom/android/data/sdk/constant/ConstantTime;->MINIMUM_TIME_INTERVAL:J

    sput-wide v0, Lcom/bsgamesdk/android/dc/c;->l:J

    const-class v0, Lcom/bsgamesdk/android/dc/service/DcUpService;

    sput-object v0, Lcom/bsgamesdk/android/dc/c;->m:Ljava/lang/Class;

    const-class v0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    sput-object v0, Lcom/bsgamesdk/android/dc/c;->n:Ljava/lang/Class;

    const-string v0, "BILIGAME_CHANNELID"

    sput-object v0, Lcom/bsgamesdk/android/dc/c;->o:Ljava/lang/String;

    return-void
.end method
