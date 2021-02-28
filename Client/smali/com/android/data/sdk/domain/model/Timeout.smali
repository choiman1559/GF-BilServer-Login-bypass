.class public Lcom/android/data/sdk/domain/model/Timeout;
.super Ljava/lang/Object;


# static fields
.field public static final UNIT:Ljava/util/concurrent/TimeUnit;


# instance fields
.field private connectTimeout:J

.field private readTimeout:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/android/data/sdk/domain/model/Timeout;->UNIT:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/data/sdk/domain/model/Timeout;->connectTimeout:J

    iput-wide p3, p0, Lcom/android/data/sdk/domain/model/Timeout;->readTimeout:J

    return-void
.end method


# virtual methods
.method public getConnectTimeout()J
    .registers 3

    iget-wide v0, p0, Lcom/android/data/sdk/domain/model/Timeout;->connectTimeout:J

    return-wide v0
.end method

.method public getReadTimeout()J
    .registers 3

    iget-wide v0, p0, Lcom/android/data/sdk/domain/model/Timeout;->readTimeout:J

    return-wide v0
.end method

.method public setConnectTimeout(J)V
    .registers 4

    iput-wide p1, p0, Lcom/android/data/sdk/domain/model/Timeout;->connectTimeout:J

    return-void
.end method

.method public setReadTimeout(J)V
    .registers 4

    iput-wide p1, p0, Lcom/android/data/sdk/domain/model/Timeout;->readTimeout:J

    return-void
.end method
