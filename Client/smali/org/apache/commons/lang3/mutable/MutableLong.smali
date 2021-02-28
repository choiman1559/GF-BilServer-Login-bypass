.class public Lorg/apache/commons/lang3/mutable/MutableLong;
.super Ljava/lang/Number;
.source "MutableLong.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/commons/lang3/mutable/MutableLong;",
        ">;",
        "Lorg/apache/commons/lang3/mutable/Mutable",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xeaa4a2677L


# instance fields
.field private value:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput-wide p1, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Number;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 78
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 79
    return-void
.end method


# virtual methods
.method public add(J)V
    .registers 6
    .param p1, "operand"    # J

    .prologue
    .line 189
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 190
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .registers 6
    .param p1, "operand"    # Ljava/lang/Number;

    .prologue
    .line 200
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 201
    return-void
.end method

.method public addAndGet(J)J
    .registers 6
    .param p1, "operand"    # J

    .prologue
    .line 233
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 234
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-wide v0
.end method

.method public addAndGet(Ljava/lang/Number;)J
    .registers 6
    .param p1, "operand"    # Ljava/lang/Number;

    .prologue
    .line 247
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 248
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-wide v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 29
    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableLong;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableLong;->compareTo(Lorg/apache/commons/lang3/mutable/MutableLong;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableLong;)I
    .registers 6
    .param p1, "other"    # Lorg/apache/commons/lang3/mutable/MutableLong;

    .prologue
    .line 368
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    iget-wide v2, p1, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public decrement()V
    .registers 5

    .prologue
    .line 153
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 154
    return-void
.end method

.method public decrementAndGet()J
    .registers 5

    .prologue
    .line 177
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 178
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-wide v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 319
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 343
    instance-of v1, p1, Lorg/apache/commons/lang3/mutable/MutableLong;

    if-eqz v1, :cond_12

    .line 344
    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableLong;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/apache/commons/lang3/mutable/MutableLong;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_12

    const/4 v0, 0x1

    .line 346
    :cond_12
    return v0
.end method

.method public floatValue()F
    .registers 3

    .prologue
    .line 309
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    long-to-float v0, v0

    return v0
.end method

.method public getAndAdd(J)J
    .registers 8
    .param p1, "operand"    # J

    .prologue
    .line 260
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 261
    .local v0, "last":J
    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 262
    return-wide v0
.end method

.method public getAndAdd(Ljava/lang/Number;)J
    .registers 8
    .param p1, "operand"    # Ljava/lang/Number;

    .prologue
    .line 275
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 276
    .local v0, "last":J
    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 277
    return-wide v0
.end method

.method public getAndDecrement()J
    .registers 7

    .prologue
    .line 164
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 165
    .local v0, "last":J
    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 166
    return-wide v0
.end method

.method public getAndIncrement()J
    .registers 7

    .prologue
    .line 130
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 131
    .local v0, "last":J
    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 132
    return-wide v0
.end method

.method public getValue()Ljava/lang/Long;
    .registers 3

    .prologue
    .line 89
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableLong;->getValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 356
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public increment()V
    .registers 5

    .prologue
    .line 119
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 120
    return-void
.end method

.method public incrementAndGet()J
    .registers 5

    .prologue
    .line 143
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 144
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-wide v0
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 289
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 299
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-wide v0
.end method

.method public setValue(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 99
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Number;

    .prologue
    .line 109
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 110
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 29
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableLong;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(J)V
    .registers 6
    .param p1, "operand"    # J

    .prologue
    .line 210
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 211
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .registers 6
    .param p1, "operand"    # Ljava/lang/Number;

    .prologue
    .line 221
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 222
    return-void
.end method

.method public toLong()Ljava/lang/Long;
    .registers 3

    .prologue
    .line 329
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableLong;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 379
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
