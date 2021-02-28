.class public final Lcom/qiniu/android/dns/Record;
.super Ljava/lang/Object;


# static fields
.field public static final TTL_MIN_SECONDS:I = 0x258

.field public static final TYPE_A:I = 0x1

.field public static final TYPE_CNAME:I = 0x5


# instance fields
.field public domain:Ljava/lang/String;

.field public requestime:J

.field public final timeStamp:J

.field public final ttl:I

.field public final type:I

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJ)V
    .registers 10

    const/16 v0, 0x258

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v2, 0x3b9ac9ff

    iput-wide v2, p0, Lcom/qiniu/android/dns/Record;->requestime:J

    const-string v1, ""

    iput-object v1, p0, Lcom/qiniu/android/dns/Record;->domain:Ljava/lang/String;

    iput-object p1, p0, Lcom/qiniu/android/dns/Record;->value:Ljava/lang/String;

    iput p2, p0, Lcom/qiniu/android/dns/Record;->type:I

    if-ge p3, v0, :cond_15

    move p3, v0

    :cond_15
    iput p3, p0, Lcom/qiniu/android/dns/Record;->ttl:I

    iput-wide p4, p0, Lcom/qiniu/android/dns/Record;->timeStamp:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qiniu/android/dns/Record;->requestime:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_b

    instance-of v2, p1, Lcom/qiniu/android/dns/Record;

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    goto :goto_4

    :cond_d
    check-cast p1, Lcom/qiniu/android/dns/Record;

    iget-object v2, p0, Lcom/qiniu/android/dns/Record;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/qiniu/android/dns/Record;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget v2, p0, Lcom/qiniu/android/dns/Record;->type:I

    iget v3, p1, Lcom/qiniu/android/dns/Record;->type:I

    if-ne v2, v3, :cond_2d

    iget v2, p0, Lcom/qiniu/android/dns/Record;->ttl:I

    iget v3, p1, Lcom/qiniu/android/dns/Record;->ttl:I

    if-ne v2, v3, :cond_2d

    iget-wide v2, p0, Lcom/qiniu/android/dns/Record;->timeStamp:J

    iget-wide v4, p1, Lcom/qiniu/android/dns/Record;->timeStamp:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    :cond_2d
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isA()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/qiniu/android/dns/Record;->type:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isCname()Z
    .registers 3

    iget v0, p0, Lcom/qiniu/android/dns/Record;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isExpired()Z
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/qiniu/android/dns/Record;->isExpired(J)Z

    move-result v0

    return v0
.end method

.method public isExpired(J)Z
    .registers 8

    iget-wide v0, p0, Lcom/qiniu/android/dns/Record;->timeStamp:J

    iget v2, p0, Lcom/qiniu/android/dns/Record;->ttl:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-gez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
