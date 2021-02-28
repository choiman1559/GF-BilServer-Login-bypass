.class public Lorg/apache/commons/lang3/time/DurationFormatUtils;
.super Ljava/lang/Object;
.source "DurationFormatUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    }
.end annotation


# static fields
.field static final H:Ljava/lang/Object;

.field public static final ISO_EXTENDED_FORMAT_PATTERN:Ljava/lang/String; = "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.SSS\'S\'"

.field static final M:Ljava/lang/Object;

.field static final S:Ljava/lang/Object;

.field static final d:Ljava/lang/Object;

.field static final m:Ljava/lang/Object;

.field static final s:Ljava/lang/Object;

.field static final y:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 483
    const-string v0, "y"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    .line 484
    const-string v0, "M"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    .line 485
    const-string v0, "d"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    .line 486
    const-string v0, "H"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    .line 487
    const-string v0, "m"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    .line 488
    const-string v0, "s"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    .line 489
    const-string v0, "S"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->S:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method static format([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;
    .registers 29
    .param p0, "tokens"    # [Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    .param p1, "years"    # J
    .param p3, "months"    # J
    .param p5, "days"    # J
    .param p7, "hours"    # J
    .param p9, "minutes"    # J
    .param p11, "seconds"    # J
    .param p13, "milliseconds"    # J
    .param p15, "padWithZeros"    # Z

    .prologue
    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .local v3, "buffer":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 430
    .local v5, "lastOutputSeconds":Z
    array-length v10, p0

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v10, :cond_ca

    aget-object v6, p0, v9

    .line 431
    .local v6, "token":Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    invoke-virtual {v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 432
    .local v7, "value":Ljava/lang/Object;
    invoke-virtual {v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getCount()I

    move-result v4

    .line 433
    .local v4, "count":I
    instance-of v11, v7, Ljava/lang/StringBuilder;

    if-eqz v11, :cond_22

    .line 434
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_1f
    :goto_1f
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 436
    :cond_22
    sget-object v11, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_35

    .line 437
    move/from16 v0, p15

    invoke-static {p1, p2, v0, v4}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const/4 v5, 0x0

    goto :goto_1f

    .line 439
    :cond_35
    sget-object v11, Lorg/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4a

    .line 440
    move-wide/from16 v0, p3

    move/from16 v2, p15

    invoke-static {v0, v1, v2, v4}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const/4 v5, 0x0

    goto :goto_1f

    .line 442
    :cond_4a
    sget-object v11, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5f

    .line 443
    move-wide/from16 v0, p5

    move/from16 v2, p15

    invoke-static {v0, v1, v2, v4}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const/4 v5, 0x0

    goto :goto_1f

    .line 445
    :cond_5f
    sget-object v11, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_74

    .line 446
    move-wide/from16 v0, p7

    move/from16 v2, p15

    invoke-static {v0, v1, v2, v4}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const/4 v5, 0x0

    goto :goto_1f

    .line 448
    :cond_74
    sget-object v11, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_89

    .line 449
    move-wide/from16 v0, p9

    move/from16 v2, p15

    invoke-static {v0, v1, v2, v4}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const/4 v5, 0x0

    goto :goto_1f

    .line 451
    :cond_89
    sget-object v11, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9e

    .line 452
    move-wide/from16 v0, p11

    move/from16 v2, p15

    invoke-static {v0, v1, v2, v4}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const/4 v5, 0x1

    goto :goto_1f

    .line 454
    :cond_9e
    sget-object v11, Lorg/apache/commons/lang3/time/DurationFormatUtils;->S:Ljava/lang/Object;

    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 455
    if-eqz v5, :cond_be

    .line 457
    if-eqz p15, :cond_bc

    const/4 v11, 0x3

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 458
    .local v8, "width":I
    :goto_af
    const/4 v11, 0x1

    move-wide/from16 v0, p13

    invoke-static {v0, v1, v11, v8}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .end local v8    # "width":I
    :goto_b9
    const/4 v5, 0x0

    goto/16 :goto_1f

    .line 457
    :cond_bc
    const/4 v8, 0x3

    goto :goto_af

    .line 460
    :cond_be
    move-wide/from16 v0, p13

    move/from16 v2, p15

    invoke-static {v0, v1, v2, v4}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b9

    .line 466
    .end local v4    # "count":I
    .end local v6    # "token":Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_ca
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static formatDuration(JLjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "durationMillis"    # J
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(JLjava/lang/String;Z)Ljava/lang/String;
    .registers 22
    .param p0, "durationMillis"    # J
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "padWithZeros"    # Z

    .prologue
    .line 131
    const-wide/16 v0, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const-string v6, "durationMillis must not be negative"

    move-wide/from16 v4, p0

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/Validate;->inclusiveBetween(JJJLjava/lang/String;)V

    .line 133
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    move-result-object v1

    .line 135
    .local v1, "tokens":[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    const-wide/16 v6, 0x0

    .line 136
    .local v6, "days":J
    const-wide/16 v8, 0x0

    .line 137
    .local v8, "hours":J
    const-wide/16 v10, 0x0

    .line 138
    .local v10, "minutes":J
    const-wide/16 v12, 0x0

    .line 139
    .local v12, "seconds":J
    move-wide/from16 v14, p0

    .line 141
    .local v14, "milliseconds":J
    sget-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 142
    const-wide/32 v2, 0x5265c00

    div-long v6, v14, v2

    .line 143
    const-wide/32 v2, 0x5265c00

    mul-long/2addr v2, v6

    sub-long/2addr v14, v2

    .line 145
    :cond_2e
    sget-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 146
    const-wide/32 v2, 0x36ee80

    div-long v8, v14, v2

    .line 147
    const-wide/32 v2, 0x36ee80

    mul-long/2addr v2, v8

    sub-long/2addr v14, v2

    .line 149
    :cond_40
    sget-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 150
    const-wide/32 v2, 0xea60

    div-long v10, v14, v2

    .line 151
    const-wide/32 v2, 0xea60

    mul-long/2addr v2, v10

    sub-long/2addr v14, v2

    .line 153
    :cond_52
    sget-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 154
    const-wide/16 v2, 0x3e8

    div-long v12, v14, v2

    .line 155
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v12

    sub-long/2addr v14, v2

    .line 158
    :cond_62
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move/from16 v16, p3

    invoke-static/range {v1 .. v16}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->format([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationHMS(J)Ljava/lang/String;
    .registers 4
    .param p0, "durationMillis"    # J

    .prologue
    .line 83
    const-string v0, "HH:mm:ss.SSS"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationISO(J)Ljava/lang/String;
    .registers 4
    .param p0, "durationMillis"    # J

    .prologue
    .line 99
    const-string v0, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.SSS\'S\'"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationWords(JZZ)Ljava/lang/String;
    .registers 8
    .param p0, "durationMillis"    # J
    .param p2, "suppressLeadingZeroElements"    # Z
    .param p3, "suppressTrailingZeroElements"    # Z

    .prologue
    .line 181
    const-string v2, "d\' days \'H\' hours \'m\' minutes \'s\' seconds\'"

    invoke-static {p0, p1, v2}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "duration":Ljava/lang/String;
    if-eqz p2, :cond_67

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    const-string v2, " 0 days"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "tmp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_5c

    .line 187
    move-object v0, v1

    .line 188
    const-string v2, " 0 hours"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_5c

    .line 190
    move-object v0, v1

    .line 191
    const-string v2, " 0 minutes"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    move-object v0, v1

    .line 193
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_5c

    .line 194
    const-string v2, " 0 seconds"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    :cond_5c
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_67

    .line 200
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_67
    if-eqz p3, :cond_a9

    .line 204
    const-string v2, " 0 seconds"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .restart local v1    # "tmp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_a9

    .line 206
    move-object v0, v1

    .line 207
    const-string v2, " 0 minutes"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_a9

    .line 209
    move-object v0, v1

    .line 210
    const-string v2, " 0 hours"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_a9

    .line 212
    const-string v2, " 0 days"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_a9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    const-string v2, " 1 seconds"

    const-string v3, " 1 second"

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    const-string v2, " 1 minutes"

    const-string v3, " 1 minute"

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    const-string v2, " 1 hours"

    const-string v3, " 1 hour"

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    const-string v2, " 1 days"

    const-string v3, " 1 day"

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static formatPeriod(JJLjava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J
    .param p4, "format"    # Ljava/lang/String;

    .prologue
    .line 252
    const/4 v5, 0x1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;
    .registers 35
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "padWithZeros"    # Z
    .param p6, "timezone"    # Ljava/util/TimeZone;

    .prologue
    .line 281
    cmp-long v4, p0, p2

    if-gtz v4, :cond_b4

    const/4 v4, 0x1

    :goto_5
    const-string v5, "startMillis must not be greater than endMillis"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 290
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    move-result-object v3

    .line 294
    .local v3, "tokens":[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v25

    .line 295
    .local v25, "start":Ljava/util/Calendar;
    new-instance v4, Ljava/util/Date;

    move-wide/from16 v0, p0

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 296
    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v19

    .line 297
    .local v19, "end":Ljava/util/Calendar;
    new-instance v4, Ljava/util/Date;

    move-wide/from16 v0, p2

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 300
    const/16 v4, 0xe

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xe

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int v21, v4, v5

    .line 301
    .local v21, "milliseconds":I
    const/16 v4, 0xd

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xd

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int v24, v4, v5

    .line 302
    .local v24, "seconds":I
    const/16 v4, 0xc

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int v22, v4, v5

    .line 303
    .local v22, "minutes":I
    const/16 v4, 0xb

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xb

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int v20, v4, v5

    .line 304
    .local v20, "hours":I
    const/4 v4, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int v2, v4, v5

    .line 305
    .local v2, "days":I
    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int v23, v4, v5

    .line 306
    .local v23, "months":I
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int v27, v4, v5

    .line 309
    .local v27, "years":I
    :goto_a9
    if-gez v21, :cond_b7

    .line 310
    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    .line 311
    add-int/lit8 v24, v24, -0x1

    goto :goto_a9

    .line 281
    .end local v2    # "days":I
    .end local v3    # "tokens":[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    .end local v19    # "end":Ljava/util/Calendar;
    .end local v20    # "hours":I
    .end local v21    # "milliseconds":I
    .end local v22    # "minutes":I
    .end local v23    # "months":I
    .end local v24    # "seconds":I
    .end local v25    # "start":Ljava/util/Calendar;
    .end local v27    # "years":I
    :cond_b4
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 313
    .restart local v2    # "days":I
    .restart local v3    # "tokens":[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    .restart local v19    # "end":Ljava/util/Calendar;
    .restart local v20    # "hours":I
    .restart local v21    # "milliseconds":I
    .restart local v22    # "minutes":I
    .restart local v23    # "months":I
    .restart local v24    # "seconds":I
    .restart local v25    # "start":Ljava/util/Calendar;
    .restart local v27    # "years":I
    :cond_b7
    :goto_b7
    if-gez v24, :cond_be

    .line 314
    add-int/lit8 v24, v24, 0x3c

    .line 315
    add-int/lit8 v22, v22, -0x1

    goto :goto_b7

    .line 317
    :cond_be
    :goto_be
    if-gez v22, :cond_c5

    .line 318
    add-int/lit8 v22, v22, 0x3c

    .line 319
    add-int/lit8 v20, v20, -0x1

    goto :goto_be

    .line 321
    :cond_c5
    :goto_c5
    if-gez v20, :cond_cc

    .line 322
    add-int/lit8 v20, v20, 0x18

    .line 323
    add-int/lit8 v2, v2, -0x1

    goto :goto_c5

    .line 326
    :cond_cc
    sget-object v4, Lorg/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_102

    .line 327
    :goto_d4
    if-gez v2, :cond_e8

    .line 328
    const/4 v4, 0x5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 329
    add-int/lit8 v23, v23, -0x1

    .line 330
    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_d4

    .line 333
    :cond_e8
    :goto_e8
    if-gez v23, :cond_ef

    .line 334
    add-int/lit8 v23, v23, 0xc

    .line 335
    add-int/lit8 v27, v27, -0x1

    goto :goto_e8

    .line 338
    :cond_ef
    sget-object v4, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_195

    if-eqz v27, :cond_195

    .line 339
    :goto_f9
    if-eqz v27, :cond_195

    .line 340
    mul-int/lit8 v4, v27, 0xc

    add-int v23, v23, v4

    .line 341
    const/16 v27, 0x0

    goto :goto_f9

    .line 347
    :cond_102
    sget-object v4, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15f

    .line 348
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v26

    .line 349
    .local v26, "target":I
    if-gez v23, :cond_115

    .line 351
    add-int/lit8 v26, v26, -0x1

    .line 354
    :cond_115
    :goto_115
    const/4 v4, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move/from16 v0, v26

    if-eq v4, v0, :cond_15d

    .line 355
    const/4 v4, 0x6

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    const/4 v5, 0x6

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 358
    move-object/from16 v0, v25

    instance-of v4, v0, Ljava/util/GregorianCalendar;

    if-eqz v4, :cond_14d

    const/4 v4, 0x2

    .line 359
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14d

    const/4 v4, 0x5

    .line 360
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0x1d

    if-ne v4, v5, :cond_14d

    .line 361
    add-int/lit8 v2, v2, 0x1

    .line 364
    :cond_14d
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 366
    const/4 v4, 0x6

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_115

    .line 369
    :cond_15d
    const/16 v27, 0x0

    .line 372
    .end local v26    # "target":I
    :cond_15f
    :goto_15f
    const/4 v4, 0x2

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_17f

    .line 373
    const/4 v4, 0x5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 374
    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_15f

    .line 377
    :cond_17f
    const/16 v23, 0x0

    .line 379
    :goto_181
    if-gez v2, :cond_195

    .line 380
    const/4 v4, 0x5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 381
    add-int/lit8 v23, v23, -0x1

    .line 382
    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_181

    .line 391
    :cond_195
    sget-object v4, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a2

    .line 392
    mul-int/lit8 v4, v2, 0x18

    add-int v20, v20, v4

    .line 393
    const/4 v2, 0x0

    .line 395
    :cond_1a2
    sget-object v4, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b0

    .line 396
    mul-int/lit8 v4, v20, 0x3c

    add-int v22, v22, v4

    .line 397
    const/16 v20, 0x0

    .line 399
    :cond_1b0
    sget-object v4, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1be

    .line 400
    mul-int/lit8 v4, v22, 0x3c

    add-int v24, v24, v4

    .line 401
    const/16 v22, 0x0

    .line 403
    :cond_1be
    sget-object v4, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1ce

    .line 404
    move/from16 v0, v24

    mul-int/lit16 v4, v0, 0x3e8

    add-int v21, v21, v4

    .line 405
    const/16 v24, 0x0

    .line 408
    :cond_1ce
    move/from16 v0, v27

    int-to-long v4, v0

    move/from16 v0, v23

    int-to-long v6, v0

    int-to-long v8, v2

    move/from16 v0, v20

    int-to-long v10, v0

    move/from16 v0, v22

    int-to-long v12, v0

    move/from16 v0, v24

    int-to-long v14, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move/from16 v18, p5

    invoke-static/range {v3 .. v18}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->format([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static formatPeriodISO(JJ)Ljava/lang/String;
    .registers 12
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J

    .prologue
    .line 238
    const-string v4, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.SSS\'S\'"

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static lexx(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    .registers 12
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    .line 498
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 500
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;>;"
    const/4 v3, 0x0

    .line 503
    .local v3, "inLiteral":Z
    const/4 v0, 0x0

    .line 504
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 505
    .local v5, "previous":Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_7f

    .line 506
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 507
    .local v1, "ch":C
    if-eqz v3, :cond_23

    const/16 v8, 0x27

    if-eq v1, v8, :cond_23

    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 505
    :cond_20
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 511
    :cond_23
    const/4 v7, 0x0

    .line 512
    .local v7, "value":Ljava/lang/Object;
    sparse-switch v1, :sswitch_data_a8

    .line 546
    if-nez v0, :cond_36

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    new-instance v8, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v8, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 553
    .end local v7    # "value":Ljava/lang/Object;
    :goto_39
    if-eqz v7, :cond_20

    .line 554
    if-eqz v5, :cond_75

    invoke-virtual {v5}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_75

    .line 555
    invoke-virtual {v5}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->increment()V

    .line 561
    :goto_4a
    const/4 v0, 0x0

    goto :goto_20

    .line 515
    .restart local v7    # "value":Ljava/lang/Object;
    :sswitch_4c
    if-eqz v3, :cond_51

    .line 516
    const/4 v0, 0x0

    .line 517
    const/4 v3, 0x0

    goto :goto_39

    .line 519
    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    new-instance v8, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v8, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    const/4 v3, 0x1

    .line 523
    goto :goto_39

    .line 525
    :sswitch_60
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    .line 526
    goto :goto_39

    .line 528
    :sswitch_63
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    .line 529
    goto :goto_39

    .line 531
    :sswitch_66
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    .line 532
    goto :goto_39

    .line 534
    :sswitch_69
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    .line 535
    goto :goto_39

    .line 537
    :sswitch_6c
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    .line 538
    goto :goto_39

    .line 540
    :sswitch_6f
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    .line 541
    goto :goto_39

    .line 543
    :sswitch_72
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->S:Ljava/lang/Object;

    .line 544
    goto :goto_39

    .line 557
    .end local v7    # "value":Ljava/lang/Object;
    :cond_75
    new-instance v6, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v6, v7}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    .line 558
    .local v6, "token":Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    move-object v5, v6

    goto :goto_4a

    .line 564
    .end local v1    # "ch":C
    .end local v6    # "token":Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    :cond_7f
    if-eqz v3, :cond_9a

    .line 565
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unmatched quote in format: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 567
    :cond_9a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    return-object v8

    .line 512
    nop

    :sswitch_data_a8
    .sparse-switch
        0x27 -> :sswitch_4c
        0x48 -> :sswitch_69
        0x4d -> :sswitch_63
        0x53 -> :sswitch_72
        0x64 -> :sswitch_66
        0x6d -> :sswitch_6c
        0x73 -> :sswitch_6f
        0x79 -> :sswitch_60
    .end sparse-switch
.end method

.method private static paddedValue(JZI)Ljava/lang/String;
    .registers 6
    .param p0, "value"    # J
    .param p2, "padWithZeros"    # Z
    .param p3, "count"    # I

    .prologue
    .line 479
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "longString":Ljava/lang/String;
    if-eqz p2, :cond_c

    const/16 v1, 0x30

    invoke-static {v0, p3, v1}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "longString":Ljava/lang/String;
    :cond_c
    return-object v0
.end method
