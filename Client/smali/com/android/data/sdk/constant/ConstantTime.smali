.class public Lcom/android/data/sdk/constant/ConstantTime;
.super Ljava/lang/Object;


# static fields
.field public static DEFAULT_COMMON_CONNECT_TIMEOUT:J

.field public static DEFAULT_COMMON_READ_TIMEOUT:J

.field public static DEFAULT_SNIFF_CONNECT_TIMEOUT:J

.field public static DEFAULT_SNIFF_READ_TIMEOUT:J

.field public static DEFAULT_THREAD_POOL_KEEP_ALIVE_TIME:J

.field public static DEFAULT_TIME_INTERVAL:J

.field public static MINIMUM_TIME_INTERVAL:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide/32 v2, 0xea60

    const-wide/16 v0, 0xfa0

    sput-wide v0, Lcom/android/data/sdk/constant/ConstantTime;->DEFAULT_COMMON_CONNECT_TIMEOUT:J

    sput-wide v0, Lcom/android/data/sdk/constant/ConstantTime;->DEFAULT_COMMON_READ_TIMEOUT:J

    const-wide/16 v0, 0x5dc

    sput-wide v0, Lcom/android/data/sdk/constant/ConstantTime;->DEFAULT_SNIFF_CONNECT_TIMEOUT:J

    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/android/data/sdk/constant/ConstantTime;->DEFAULT_SNIFF_READ_TIMEOUT:J

    const-wide/32 v0, 0x1d4c0

    sput-wide v0, Lcom/android/data/sdk/constant/ConstantTime;->DEFAULT_THREAD_POOL_KEEP_ALIVE_TIME:J

    sput-wide v2, Lcom/android/data/sdk/constant/ConstantTime;->DEFAULT_TIME_INTERVAL:J

    sput-wide v2, Lcom/android/data/sdk/constant/ConstantTime;->MINIMUM_TIME_INTERVAL:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
