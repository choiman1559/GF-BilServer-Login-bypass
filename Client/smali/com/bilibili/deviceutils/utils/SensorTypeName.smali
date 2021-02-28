.class public Lcom/bilibili/deviceutils/utils/SensorTypeName;
.super Ljava/lang/Object;


# static fields
.field private static itsNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v3, 0xd

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/bilibili/deviceutils/utils/SensorTypeName;->itsNames:[Ljava/lang/String;

    sget-object v0, Lcom/bilibili/deviceutils/utils/SensorTypeName;->itsNames:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    aput-object v2, v0, v1

    sget-object v0, Lcom/bilibili/deviceutils/utils/SensorTypeName;->itsNames:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "\u52a0\u901f\u5ea6"

    aput-object v2, v0, v1

    sget-object v0, Lcom/bilibili/deviceutils/utils/SensorTypeName;->itsNames:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "\u78c1\u529b"

    aput-object v2, v0, v1

    sget-object v0, Lcom/bilibili/deviceutils/utils/SensorTypeName;->itsNames:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "\u65b9\u5411"

    aput-object v2, v0, v1

    sget-object v0, Lcom/bilibili/deviceutils/utils/SensorTypeName;->itsNames:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "\u9640\u87ba\u4eea"

    aput-object v2, v0, v1

    sget-object v0, Lcom/bilibili/deviceutils/utils/SensorTypeName;->itsNames:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "\u5149\u7ebf\u611f\u5e94"

    aput-object v2, v0, v1

    sget-object v0, Lcom/bilibili/deviceutils/utils/SensorTypeName;->itsNames:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "\u538b\u529b"

    aput-object v2, v0, v1

    sget-object v0, Lcom/bilibili/deviceutils/utils/SensorTypeName;->itsNames:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "\u6e29\u5ea6"

    aput-object v2, v0, v1

    sget-object v0, Lcom/bilibili/deviceutils/utils/SensorTypeName;->itsNames:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "\u63a5\u8fd1,\u8ddd\u79bb\u4f20\u611f\u5668"

    aput-object v2, v0, v1

    sget-object v0, Lcom/bilibili/deviceutils/utils/SensorTypeName;->itsNames:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "\u91cd\u529b"

    aput-object v2, v0, v1

    sget-object v0, Lcom/bilibili/deviceutils/utils/SensorTypeName;->itsNames:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "\u7ebf\u6027\u52a0\u901f\u5ea6"

    aput-object v2, v0, v1

    sget-object v0, Lcom/bilibili/deviceutils/utils/SensorTypeName;->itsNames:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "\u65cb\u8f6c\u77e2\u91cf"

    aput-object v2, v0, v1

    sget-object v0, Lcom/bilibili/deviceutils/utils/SensorTypeName;->itsNames:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "TYPE_RELATIVE_HUMIDITY"

    aput-object v2, v0, v1

    sget-object v0, Lcom/bilibili/deviceutils/utils/SensorTypeName;->itsNames:[Ljava/lang/String;

    const-string v1, "TYPE_AMBIENT_TEMPERATURE"

    aput-object v1, v0, v3

    sget-object v0, Lcom/bilibili/deviceutils/utils/SensorTypeName;->itsNames:[Ljava/lang/String;

    const-string v1, "TYPE_AMBIENT_TEMPERATURE"

    aput-object v1, v0, v3

    sget-object v0, Lcom/bilibili/deviceutils/utils/SensorTypeName;->itsNames:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "TYPE_MAGNETIC_FIELD_UNCALIBRATED"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSensorTypeName(I)Ljava/lang/String;
    .registers 2

    if-lez p0, :cond_c

    sget-object v0, Lcom/bilibili/deviceutils/utils/SensorTypeName;->itsNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_c

    sget-object v0, Lcom/bilibili/deviceutils/utils/SensorTypeName;->itsNames:[Ljava/lang/String;

    aget-object v0, v0, p0

    :goto_b
    return-object v0

    :cond_c
    const-string v0, "UNKNOWN"

    goto :goto_b
.end method
