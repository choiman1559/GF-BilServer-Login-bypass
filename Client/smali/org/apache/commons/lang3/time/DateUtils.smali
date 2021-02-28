.class public Lorg/apache/commons/lang3/time/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/DateUtils$DateIterator;,
        Lorg/apache/commons/lang3/time/DateUtils$ModifyType;
    }
.end annotation


# static fields
.field public static final MILLIS_PER_DAY:J = 0x5265c00L

.field public static final MILLIS_PER_HOUR:J = 0x36ee80L

.field public static final MILLIS_PER_MINUTE:J = 0xea60L

.field public static final MILLIS_PER_SECOND:J = 0x3e8L

.field public static final RANGE_MONTH_MONDAY:I = 0x6

.field public static final RANGE_MONTH_SUNDAY:I = 0x5

.field public static final RANGE_WEEK_CENTER:I = 0x4

.field public static final RANGE_WEEK_MONDAY:I = 0x2

.field public static final RANGE_WEEK_RELATIVE:I = 0x3

.field public static final RANGE_WEEK_SUNDAY:I = 0x1

.field public static final SEMI_MONTH:I = 0x3e9

.field private static final fields:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v4, [I

    const/16 v2, 0xe

    aput v2, v1, v3

    aput-object v1, v0, v3

    new-array v1, v4, [I

    const/16 v2, 0xd

    aput v2, v1, v3

    aput-object v1, v0, v4

    new-array v1, v4, [I

    const/16 v2, 0xc

    aput v2, v1, v3

    aput-object v1, v0, v5

    new-array v1, v5, [I

    fill-array-data v1, :array_48

    aput-object v1, v0, v6

    const/4 v1, 0x4

    new-array v2, v6, [I

    fill-array-data v2, :array_50

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [I

    fill-array-data v2, :array_5a

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    aput v3, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/lang3/time/DateUtils;->fields:[[I

    return-void

    :array_48
    .array-data 4
        0xb
        0xa
    .end array-data

    :array_50
    .array-data 4
        0x5
        0x5
        0x9
    .end array-data

    :array_5a
    .array-data 4
        0x2
        0x3e9
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method private static add(Ljava/util/Date;II)Ljava/util/Date;
    .registers 5
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "calendarField"    # I
    .param p2, "amount"    # I

    .prologue
    .line 515
    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    .line 516
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 517
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 518
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 519
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static addDays(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 444
    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addHours(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 458
    const/16 v0, 0xb

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMilliseconds(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 500
    const/16 v0, 0xe

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMinutes(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 472
    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMonths(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 416
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addSeconds(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 486
    const/16 v0, 0xd

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addWeeks(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 430
    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addYears(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 402
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static ceiling(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .registers 5
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "field"    # I

    .prologue
    .line 911
    if-nez p0, :cond_a

    .line 912
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 914
    :cond_a
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 915
    .local v0, "ceiled":Ljava/util/Calendar;
    sget-object v1, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->CEILING:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V

    .line 916
    return-object v0
.end method

.method public static ceiling(Ljava/lang/Object;I)Ljava/util/Date;
    .registers 5
    .param p0, "date"    # Ljava/lang/Object;
    .param p1, "field"    # I

    .prologue
    .line 937
    if-nez p0, :cond_a

    .line 938
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 940
    :cond_a
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_15

    .line 941
    check-cast p0, Ljava/util/Date;

    .end local p0    # "date":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->ceiling(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 943
    :goto_14
    return-object v0

    .line 942
    .restart local p0    # "date":Ljava/lang/Object;
    :cond_15
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_24

    .line 943
    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "date":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->ceiling(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_14

    .line 945
    .restart local p0    # "date":Ljava/lang/Object;
    :cond_24
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find ceiling of for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ceiling(Ljava/util/Date;I)Ljava/util/Date;
    .registers 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "field"    # I

    .prologue
    .line 887
    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    .line 888
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 889
    .local v0, "gval":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 890
    sget-object v1, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->CEILING:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V

    .line 891
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private static getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J
    .registers 9
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 1665
    if-nez p0, :cond_a

    .line 1666
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "The date must not be null"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1669
    :cond_a
    const-wide/16 v2, 0x0

    .line 1671
    .local v2, "result":J
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    if-ne p2, v1, :cond_36

    const/4 v0, 0x0

    .line 1674
    .local v0, "offset":I
    :goto_11
    packed-switch p1, :pswitch_data_90

    .line 1685
    :goto_14
    packed-switch p1, :pswitch_data_98

    .line 1705
    :pswitch_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1671
    .end local v0    # "offset":I
    :cond_36
    const/4 v0, 0x1

    goto :goto_11

    .line 1676
    .restart local v0    # "offset":I
    :pswitch_38
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v1, v0

    int-to-long v4, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v4, v5, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1677
    goto :goto_14

    .line 1679
    :pswitch_47
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v1, v0

    int-to-long v4, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v4, v5, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1680
    goto :goto_14

    .line 1693
    :pswitch_56
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v4, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v4, v5, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1696
    :pswitch_64
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v4, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v4, v5, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1699
    :pswitch_72
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v4, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v4, v5, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1702
    :pswitch_80
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v4, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v4, v5, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1707
    :pswitch_8e
    return-wide v2

    .line 1674
    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_38
        :pswitch_47
    .end packed-switch

    .line 1685
    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_56
        :pswitch_56
        :pswitch_17
        :pswitch_17
        :pswitch_56
        :pswitch_56
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_64
        :pswitch_72
        :pswitch_80
        :pswitch_8e
    .end packed-switch
.end method

.method private static getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J
    .registers 7
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 1647
    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    .line 1648
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1649
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1650
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getFragmentInDays(Ljava/util/Calendar;I)J
    .registers 4
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .prologue
    .line 1632
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInDays(Ljava/util/Date;I)J
    .registers 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .prologue
    .line 1441
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInHours(Ljava/util/Calendar;I)J
    .registers 4
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .prologue
    .line 1592
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInHours(Ljava/util/Date;I)J
    .registers 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .prologue
    .line 1403
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMilliseconds(Ljava/util/Calendar;I)J
    .registers 4
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .prologue
    .line 1479
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMilliseconds(Ljava/util/Date;I)J
    .registers 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .prologue
    .line 1289
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMinutes(Ljava/util/Calendar;I)J
    .registers 4
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .prologue
    .line 1554
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMinutes(Ljava/util/Date;I)J
    .registers 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .prologue
    .line 1365
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInSeconds(Ljava/util/Calendar;I)J
    .registers 4
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .prologue
    .line 1516
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInSeconds(Ljava/util/Date;I)J
    .registers 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .prologue
    .line 1327
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 7
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    if-eqz p0, :cond_7

    if-nez p1, :cond_f

    .line 192
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_f
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2e

    .line 195
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2e

    .line 196
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2e

    .line 194
    :goto_2d
    return v0

    :cond_2e
    move v0, v1

    .line 196
    goto :goto_2d
.end method

.method public static isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .registers 6
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;

    .prologue
    .line 167
    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    .line 168
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The date must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    :cond_c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 171
    .local v0, "cal1":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 172
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 173
    .local v1, "cal2":Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 174
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DateUtils;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    return v2
.end method

.method public static isSameInstant(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 6
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;

    .prologue
    .line 230
    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    .line 231
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_c
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static isSameInstant(Ljava/util/Date;Ljava/util/Date;)Z
    .registers 6
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;

    .prologue
    .line 212
    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    .line 213
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_c
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static isSameLocalTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 9
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v4, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 250
    if-eqz p0, :cond_b

    if-nez p1, :cond_13

    .line 251
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_13
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xe

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_6c

    const/16 v2, 0xd

    .line 254
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xd

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_6c

    .line 255
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_6c

    .line 256
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_6c

    .line 257
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_6c

    .line 258
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_6c

    .line 259
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_6c

    .line 260
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_6c

    .line 253
    :goto_6b
    return v0

    :cond_6c
    move v0, v1

    .line 260
    goto :goto_6b
.end method

.method public static iterator(Ljava/lang/Object;I)Ljava/util/Iterator;
    .registers 5
    .param p0, "focus"    # Ljava/lang/Object;
    .param p1, "rangeStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1245
    if-nez p0, :cond_a

    .line 1246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1248
    :cond_a
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_15

    .line 1249
    check-cast p0, Ljava/util/Date;

    .end local p0    # "focus":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->iterator(Ljava/util/Date;I)Ljava/util/Iterator;

    move-result-object v0

    .line 1251
    :goto_14
    return-object v0

    .line 1250
    .restart local p0    # "focus":Ljava/lang/Object;
    :cond_15
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_20

    .line 1251
    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "focus":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;

    move-result-object v0

    goto :goto_14

    .line 1253
    .restart local p0    # "focus":Ljava/lang/Object;
    :cond_20
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not iterate based on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;
    .registers 11
    .param p0, "focus"    # Ljava/util/Calendar;
    .param p1, "rangeStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "I)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v5, 0x7

    .line 1155
    if-nez p0, :cond_f

    .line 1156
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The date must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1158
    :cond_f
    const/4 v2, 0x0

    .line 1159
    .local v2, "start":Ljava/util/Calendar;
    const/4 v0, 0x0

    .line 1160
    .local v0, "end":Ljava/util/Calendar;
    const/4 v3, 0x1

    .line 1161
    .local v3, "startCutoff":I
    const/4 v1, 0x7

    .line 1162
    .local v1, "endCutoff":I
    packed-switch p1, :pswitch_data_98

    .line 1205
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The range style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not valid."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1166
    :pswitch_35
    invoke-static {p0, v4}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v2

    .line 1168
    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "end":Ljava/util/Calendar;
    check-cast v0, Ljava/util/Calendar;

    .line 1169
    .restart local v0    # "end":Ljava/util/Calendar;
    invoke-virtual {v0, v4, v7}, Ljava/util/Calendar;->add(II)V

    .line 1170
    invoke-virtual {v0, v6, v8}, Ljava/util/Calendar;->add(II)V

    .line 1172
    const/4 v4, 0x6

    if-ne p1, v4, :cond_4a

    .line 1173
    const/4 v3, 0x2

    .line 1174
    const/4 v1, 0x1

    .line 1207
    :cond_4a
    :goto_4a
    :pswitch_4a
    if-ge v3, v7, :cond_4e

    .line 1208
    add-int/lit8 v3, v3, 0x7

    .line 1210
    :cond_4e
    if-le v3, v5, :cond_52

    .line 1211
    add-int/lit8 v3, v3, -0x7

    .line 1213
    :cond_52
    if-ge v1, v7, :cond_56

    .line 1214
    add-int/lit8 v1, v1, 0x7

    .line 1216
    :cond_56
    if-le v1, v5, :cond_5a

    .line 1217
    add-int/lit8 v1, v1, -0x7

    .line 1219
    :cond_5a
    :goto_5a
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v3, :cond_87

    .line 1220
    invoke-virtual {v2, v6, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_5a

    .line 1182
    :pswitch_64
    invoke-static {p0, v6}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v2

    .line 1183
    invoke-static {p0, v6}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    .line 1184
    packed-switch p1, :pswitch_data_a8

    goto :goto_4a

    .line 1189
    :pswitch_70
    const/4 v3, 0x2

    .line 1190
    const/4 v1, 0x1

    .line 1191
    goto :goto_4a

    .line 1193
    :pswitch_73
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1194
    add-int/lit8 v1, v3, -0x1

    .line 1195
    goto :goto_4a

    .line 1197
    :pswitch_7a
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v3, v4, -0x3

    .line 1198
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v1, v4, 0x3

    .line 1199
    goto :goto_4a

    .line 1222
    :cond_87
    :goto_87
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v1, :cond_91

    .line 1223
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_87

    .line 1225
    :cond_91
    new-instance v4, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;

    invoke-direct {v4, v2, v0}, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;-><init>(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-object v4

    .line 1162
    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_35
        :pswitch_35
    .end packed-switch

    .line 1184
    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_70
        :pswitch_73
        :pswitch_7a
    .end packed-switch
.end method

.method public static iterator(Ljava/util/Date;I)Ljava/util/Iterator;
    .registers 4
    .param p0, "focus"    # Ljava/util/Date;
    .param p1, "rangeStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1124
    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    .line 1125
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1126
    .local v0, "gval":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1127
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method private static modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V
    .registers 26
    .param p0, "val"    # Ljava/util/Calendar;
    .param p1, "field"    # I
    .param p2, "modType"    # Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    .prologue
    .line 959
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const v19, 0x10b07600

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1b

    .line 960
    new-instance v18, Ljava/lang/ArithmeticException;

    const-string v19, "Calendar value too large for accurate calculations"

    invoke-direct/range {v18 .. v19}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 963
    :cond_1b
    const/16 v18, 0xe

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_24

    .line 1042
    :cond_23
    :goto_23
    return-void

    .line 973
    :cond_24
    invoke-virtual/range {p0 .. p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 974
    .local v5, "date":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    .line 975
    .local v16, "time":J
    const/4 v6, 0x0

    .line 978
    .local v6, "done":Z
    const/16 v18, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 979
    .local v9, "millisecs":I
    sget-object v18, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->TRUNCATE:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_45

    const/16 v18, 0x1f4

    move/from16 v0, v18

    if-ge v9, v0, :cond_4a

    .line 980
    :cond_45
    int-to-long v0, v9

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    .line 982
    :cond_4a
    const/16 v18, 0xd

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_53

    .line 983
    const/4 v6, 0x1

    .line 987
    :cond_53
    const/16 v18, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 988
    .local v15, "seconds":I
    if-nez v6, :cond_76

    sget-object v18, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->TRUNCATE:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_6d

    const/16 v18, 0x1e

    move/from16 v0, v18

    if-ge v15, v0, :cond_76

    .line 989
    :cond_6d
    int-to-long v0, v15

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x3e8

    mul-long v18, v18, v20

    sub-long v16, v16, v18

    .line 991
    :cond_76
    const/16 v18, 0xc

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_7f

    .line 992
    const/4 v6, 0x1

    .line 996
    :cond_7f
    const/16 v18, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 997
    .local v11, "minutes":I
    if-nez v6, :cond_a3

    sget-object v18, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->TRUNCATE:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_99

    const/16 v18, 0x1e

    move/from16 v0, v18

    if-ge v11, v0, :cond_a3

    .line 998
    :cond_99
    int-to-long v0, v11

    move-wide/from16 v18, v0

    const-wide/32 v20, 0xea60

    mul-long v18, v18, v20

    sub-long v16, v16, v18

    .line 1002
    :cond_a3
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    cmp-long v18, v18, v16

    if-eqz v18, :cond_b5

    .line 1003
    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 1004
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1008
    :cond_b5
    const/4 v14, 0x0

    .line 1009
    .local v14, "roundUp":Z
    sget-object v20, Lorg/apache/commons/lang3/time/DateUtils;->fields:[[I

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    const/16 v18, 0x0

    move/from16 v19, v18

    :goto_c1
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_235

    aget-object v4, v20, v19

    .line 1010
    .local v4, "aField":[I
    array-length v0, v4

    move/from16 v22, v0

    const/16 v18, 0x0

    :goto_ce
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_185

    aget v7, v4, v18

    .line 1011
    .local v7, "element":I
    move/from16 v0, p1

    if-ne v7, v0, :cond_181

    .line 1013
    sget-object v18, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->CEILING:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_ec

    sget-object v18, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->ROUND:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_23

    if-eqz v14, :cond_23

    .line 1014
    :cond_ec
    const/16 v18, 0x3e9

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_131

    .line 1018
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_115

    .line 1019
    const/16 v18, 0x5

    const/16 v19, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_23

    .line 1021
    :cond_115
    const/16 v18, 0x5

    const/16 v19, -0xf

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1022
    const/16 v18, 0x2

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_23

    .line 1025
    :cond_131
    const/16 v18, 0x9

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_170

    .line 1029
    const/16 v18, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v18

    if-nez v18, :cond_154

    .line 1030
    const/16 v18, 0xb

    const/16 v19, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_23

    .line 1032
    :cond_154
    const/16 v18, 0xb

    const/16 v19, -0xc

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1033
    const/16 v18, 0x5

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_23

    .line 1039
    :cond_170
    const/16 v18, 0x0

    aget v18, v4, v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_23

    .line 1010
    :cond_181
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_ce

    .line 1046
    .end local v7    # "element":I
    :cond_185
    const/4 v12, 0x0

    .line 1047
    .local v12, "offset":I
    const/4 v13, 0x0

    .line 1049
    .local v13, "offsetSet":Z
    sparse-switch p1, :sswitch_data_258

    .line 1081
    :cond_18a
    :goto_18a
    if-nez v13, :cond_1bb

    .line 1082
    const/16 v18, 0x0

    aget v18, v4, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v10

    .line 1083
    .local v10, "min":I
    const/16 v18, 0x0

    aget v18, v4, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v8

    .line 1085
    .local v8, "max":I
    const/16 v18, 0x0

    aget v18, v4, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v18

    sub-int v12, v18, v10

    .line 1087
    sub-int v18, v8, v10

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    if-le v12, v0, :cond_233

    const/4 v14, 0x1

    .line 1090
    .end local v8    # "max":I
    .end local v10    # "min":I
    :cond_1bb
    :goto_1bb
    if-eqz v12, :cond_1d8

    .line 1091
    const/16 v18, 0x0

    aget v18, v4, v18

    const/16 v22, 0x0

    aget v22, v4, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v22

    sub-int v22, v22, v12

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1009
    :cond_1d8
    add-int/lit8 v18, v19, 0x1

    move/from16 v19, v18

    goto/16 :goto_c1

    .line 1051
    :sswitch_1de
    const/16 v18, 0x0

    aget v18, v4, v18

    const/16 v22, 0x5

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_18a

    .line 1055
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v18

    add-int/lit8 v12, v18, -0x1

    .line 1058
    const/16 v18, 0xf

    move/from16 v0, v18

    if-lt v12, v0, :cond_1fe

    .line 1059
    add-int/lit8 v12, v12, -0xf

    .line 1062
    :cond_1fe
    const/16 v18, 0x7

    move/from16 v0, v18

    if-le v12, v0, :cond_207

    const/4 v14, 0x1

    .line 1063
    :goto_205
    const/4 v13, 0x1

    goto :goto_18a

    .line 1062
    :cond_207
    const/4 v14, 0x0

    goto :goto_205

    .line 1067
    :sswitch_209
    const/16 v18, 0x0

    aget v18, v4, v18

    const/16 v22, 0xb

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_18a

    .line 1070
    const/16 v18, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 1071
    const/16 v18, 0xc

    move/from16 v0, v18

    if-lt v12, v0, :cond_227

    .line 1072
    add-int/lit8 v12, v12, -0xc

    .line 1074
    :cond_227
    const/16 v18, 0x6

    move/from16 v0, v18

    if-lt v12, v0, :cond_231

    const/4 v14, 0x1

    .line 1075
    :goto_22e
    const/4 v13, 0x1

    goto/16 :goto_18a

    .line 1074
    :cond_231
    const/4 v14, 0x0

    goto :goto_22e

    .line 1087
    .restart local v8    # "max":I
    .restart local v10    # "min":I
    :cond_233
    const/4 v14, 0x0

    goto :goto_1bb

    .line 1094
    .end local v4    # "aField":[I
    .end local v8    # "max":I
    .end local v10    # "min":I
    .end local v12    # "offset":I
    .end local v13    # "offsetSet":Z
    :cond_235
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "The field "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is not supported"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1049
    :sswitch_data_258
    .sparse-switch
        0x9 -> :sswitch_209
        0x3e9 -> :sswitch_1de
    .end sparse-switch
.end method

.method public static varargs parseDate(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "parsePatterns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 302
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/DateUtils;->parseDateWithLeniency(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "parsePatterns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->parseDate(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseDateStrictly(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "parsePatterns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/DateUtils;->parseDateWithLeniency(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseDateStrictly(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "parsePatterns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->parseDateStrictly(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private static parseDateWithLeniency(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;Z)Ljava/util/Date;
    .registers 15
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "parsePatterns"    # [Ljava/lang/String;
    .param p3, "lenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 366
    if-eqz p0, :cond_5

    if-nez p2, :cond_d

    .line 367
    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Date and Patterns must not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 370
    :cond_d
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    .line 371
    .local v5, "tz":Ljava/util/TimeZone;
    if-nez p1, :cond_46

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 372
    .local v2, "lcl":Ljava/util/Locale;
    :goto_17
    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v7}, Ljava/text/ParsePosition;-><init>(I)V

    .line 373
    .local v4, "pos":Ljava/text/ParsePosition;
    invoke-static {v5, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 374
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p3}, Ljava/util/Calendar;->setLenient(Z)V

    .line 376
    array-length v8, p2

    move v6, v7

    :goto_25
    if-ge v6, v8, :cond_4f

    aget-object v3, p2, v6

    .line 377
    .local v3, "parsePattern":Ljava/lang/String;
    new-instance v1, Lorg/apache/commons/lang3/time/FastDateParser;

    invoke-direct {v1, v3, v5, v2}, Lorg/apache/commons/lang3/time/FastDateParser;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 378
    .local v1, "fdp":Lorg/apache/commons/lang3/time/FastDateParser;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 380
    :try_start_31
    invoke-virtual {v1, p0, v4, v0}, Lorg/apache/commons/lang3/time/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z

    move-result v9

    if-eqz v9, :cond_49

    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v9, v10, :cond_49

    .line 381
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_44} :catch_48

    move-result-object v6

    return-object v6

    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "fdp":Lorg/apache/commons/lang3/time/FastDateParser;
    .end local v2    # "lcl":Ljava/util/Locale;
    .end local v3    # "parsePattern":Ljava/lang/String;
    .end local v4    # "pos":Ljava/text/ParsePosition;
    :cond_46
    move-object v2, p1

    .line 371
    goto :goto_17

    .line 383
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v1    # "fdp":Lorg/apache/commons/lang3/time/FastDateParser;
    .restart local v2    # "lcl":Ljava/util/Locale;
    .restart local v3    # "parsePattern":Ljava/lang/String;
    .restart local v4    # "pos":Ljava/text/ParsePosition;
    :catch_48
    move-exception v9

    .line 386
    :cond_49
    invoke-virtual {v4, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 376
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 388
    .end local v1    # "fdp":Lorg/apache/commons/lang3/time/FastDateParser;
    .end local v3    # "parsePattern":Ljava/lang/String;
    :cond_4f
    new-instance v6, Ljava/text/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to parse the date: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6
.end method

.method public static round(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .registers 5
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "field"    # I

    .prologue
    .line 743
    if-nez p0, :cond_a

    .line 744
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 746
    :cond_a
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 747
    .local v0, "rounded":Ljava/util/Calendar;
    sget-object v1, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->ROUND:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V

    .line 748
    return-object v0
.end method

.method public static round(Ljava/lang/Object;I)Ljava/util/Date;
    .registers 5
    .param p0, "date"    # Ljava/lang/Object;
    .param p1, "field"    # I

    .prologue
    .line 780
    if-nez p0, :cond_a

    .line 781
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    :cond_a
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_15

    .line 784
    check-cast p0, Ljava/util/Date;

    .end local p0    # "date":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->round(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 786
    :goto_14
    return-object v0

    .line 785
    .restart local p0    # "date":Ljava/lang/Object;
    :cond_15
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_24

    .line 786
    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "date":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->round(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_14

    .line 788
    .restart local p0    # "date":Ljava/lang/Object;
    :cond_24
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not round "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static round(Ljava/util/Date;I)Ljava/util/Date;
    .registers 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "field"    # I

    .prologue
    .line 708
    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    .line 709
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 710
    .local v0, "gval":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 711
    sget-object v1, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->ROUND:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V

    .line 712
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private static set(Ljava/util/Date;II)Ljava/util/Date;
    .registers 5
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "calendarField"    # I
    .param p2, "amount"    # I

    .prologue
    .line 642
    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    .line 644
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 645
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 646
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 647
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 648
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static setDays(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 564
    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setHours(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 580
    const/16 v0, 0xb

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMilliseconds(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 625
    const/16 v0, 0xe

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMinutes(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 595
    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMonths(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 549
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setSeconds(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 610
    const/16 v0, 0xd

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setYears(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 534
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static toCalendar(Ljava/util/Date;)Ljava/util/Calendar;
    .registers 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 661
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 662
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 663
    return-object v0
.end method

.method public static toCalendar(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/util/Calendar;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 675
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 676
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 677
    return-object v0
.end method

.method public static truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .registers 5
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "field"    # I

    .prologue
    .line 832
    if-nez p0, :cond_a

    .line 833
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 835
    :cond_a
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 836
    .local v0, "truncated":Ljava/util/Calendar;
    sget-object v1, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->TRUNCATE:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V

    .line 837
    return-object v0
.end method

.method public static truncate(Ljava/lang/Object;I)Ljava/util/Date;
    .registers 5
    .param p0, "date"    # Ljava/lang/Object;
    .param p1, "field"    # I

    .prologue
    .line 857
    if-nez p0, :cond_a

    .line 858
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_a
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_15

    .line 861
    check-cast p0, Ljava/util/Date;

    .end local p0    # "date":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 863
    :goto_14
    return-object v0

    .line 862
    .restart local p0    # "date":Ljava/lang/Object;
    :cond_15
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_24

    .line 863
    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "date":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_14

    .line 865
    .restart local p0    # "date":Ljava/lang/Object;
    :cond_24
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not truncate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static truncate(Ljava/util/Date;I)Ljava/util/Date;
    .registers 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "field"    # I

    .prologue
    .line 809
    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    .line 810
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 811
    .local v0, "gval":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 812
    sget-object v1, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->TRUNCATE:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V

    .line 813
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static truncatedCompareTo(Ljava/util/Calendar;Ljava/util/Calendar;I)I
    .registers 6
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;
    .param p2, "field"    # I

    .prologue
    .line 1759
    invoke-static {p0, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    .line 1760
    .local v0, "truncatedCal1":Ljava/util/Calendar;
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v1

    .line 1761
    .local v1, "truncatedCal2":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    return v2
.end method

.method public static truncatedCompareTo(Ljava/util/Date;Ljava/util/Date;I)I
    .registers 6
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;
    .param p2, "field"    # I

    .prologue
    .line 1779
    invoke-static {p0, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 1780
    .local v0, "truncatedDate1":Ljava/util/Date;
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    .line 1781
    .local v1, "truncatedDate2":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    return v2
.end method

.method public static truncatedEquals(Ljava/util/Calendar;Ljava/util/Calendar;I)Z
    .registers 4
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;
    .param p2, "field"    # I

    .prologue
    .line 1724
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncatedCompareTo(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static truncatedEquals(Ljava/util/Date;Ljava/util/Date;I)Z
    .registers 4
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;
    .param p2, "field"    # I

    .prologue
    .line 1741
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncatedCompareTo(Ljava/util/Date;Ljava/util/Date;I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static validateDateNotNull(Ljava/util/Date;)V
    .registers 4
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    const/4 v1, 0x0

    .line 1785
    if-eqz p0, :cond_c

    const/4 v0, 0x1

    :goto_4
    const-string v2, "The date must not be null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1786
    return-void

    :cond_c
    move v0, v1

    .line 1785
    goto :goto_4
.end method
