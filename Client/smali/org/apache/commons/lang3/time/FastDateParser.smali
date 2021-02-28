.class public Lorg/apache/commons/lang3/time/FastDateParser;
.super Ljava/lang/Object;
.source "FastDateParser.java"

# interfaces
.implements Lorg/apache/commons/lang3/time/DateParser;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;,
        Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;,
        Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;,
        Lorg/apache/commons/lang3/time/FastDateParser$CaseInsensitiveTextStrategy;,
        Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;,
        Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;,
        Lorg/apache/commons/lang3/time/FastDateParser$Strategy;,
        Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;,
        Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;
    }
.end annotation


# static fields
.field private static final ABBREVIATED_YEAR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final DAY_OF_MONTH_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final DAY_OF_WEEK_IN_MONTH_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final DAY_OF_WEEK_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final DAY_OF_YEAR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final HOUR12_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final HOUR24_OF_DAY_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final HOUR_OF_DAY_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final HOUR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field static final JAPANESE_IMPERIAL:Ljava/util/Locale;

.field private static final LITERAL_YEAR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final LONGER_FIRST_LOWERCASE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MILLISECOND_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final MINUTE_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final NUMBER_MONTH_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final SECOND_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final WEEK_OF_MONTH_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final WEEK_OF_YEAR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final caches:[Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Lorg/apache/commons/lang3/time/FastDateParser$Strategy;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x3L


# instance fields
.field private final century:I

.field private final locale:Ljava/util/Locale;

.field private final pattern:Ljava/lang/String;

.field private transient patterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;",
            ">;"
        }
    .end annotation
.end field

.field private final startYear:I

.field private final timeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0xb

    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 82
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ja"

    const-string v2, "JP"

    const-string v3, "JP"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    .line 97
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$1;

    invoke-direct {v0}, Lorg/apache/commons/lang3/time/FastDateParser$1;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->LONGER_FIRST_LOWERCASE:Ljava/util/Comparator;

    .line 611
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/util/concurrent/ConcurrentMap;

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    .line 805
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$2;

    invoke-direct {v0, v4}, Lorg/apache/commons/lang3/time/FastDateParser$2;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->ABBREVIATED_YEAR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 960
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$3;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$3;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->NUMBER_MONTH_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 967
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    invoke-direct {v0, v4}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->LITERAL_YEAR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 968
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->WEEK_OF_YEAR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 969
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->WEEK_OF_MONTH_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 970
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->DAY_OF_YEAR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 971
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->DAY_OF_MONTH_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 972
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$4;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$4;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->DAY_OF_WEEK_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 979
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->DAY_OF_WEEK_IN_MONTH_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 980
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->HOUR_OF_DAY_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 981
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$5;

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/time/FastDateParser$5;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->HOUR24_OF_DAY_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 988
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$6;

    invoke-direct {v0, v5}, Lorg/apache/commons/lang3/time/FastDateParser$6;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->HOUR12_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 995
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    invoke-direct {v0, v5}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->HOUR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 996
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->MINUTE_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 997
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->SECOND_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 998
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->MILLISECOND_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/time/FastDateParser;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V

    .line 117
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V
    .registers 9
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;
    .param p4, "centuryStart"    # Ljava/util/Date;

    .prologue
    const/4 v3, 0x1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->pattern:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    .line 133
    iput-object p3, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    .line 135
    invoke-static {p2, p3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 138
    .local v1, "definingCalendar":Ljava/util/Calendar;
    if-eqz p4, :cond_27

    .line 139
    invoke-virtual {v1, p4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 140
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 148
    .local v0, "centuryStartYear":I
    :goto_17
    div-int/lit8 v2, v0, 0x64

    mul-int/lit8 v2, v2, 0x64

    iput v2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->century:I

    .line 149
    iget v2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->century:I

    sub-int v2, v0, v2

    iput v2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->startYear:I

    .line 151
    invoke-direct {p0, v1}, Lorg/apache/commons/lang3/time/FastDateParser;->init(Ljava/util/Calendar;)V

    .line 152
    return-void

    .line 141
    .end local v0    # "centuryStartYear":I
    :cond_27
    sget-object v2, Lorg/apache/commons/lang3/time/FastDateParser;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    invoke-virtual {p3, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 142
    const/4 v0, 0x0

    .restart local v0    # "centuryStartYear":I
    goto :goto_17

    .line 145
    .end local v0    # "centuryStartYear":I
    :cond_31
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 146
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v0, v2, -0x50

    .restart local v0    # "centuryStartYear":I
    goto :goto_17
.end method

.method static synthetic access$000(Lorg/apache/commons/lang3/time/FastDateParser;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/lang3/time/FastDateParser;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(C)Z
    .registers 2
    .param p0, "x0"    # C

    .prologue
    .line 73
    invoke-static {p0}, Lorg/apache/commons/lang3/time/FastDateParser;->isFormatLetter(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/apache/commons/lang3/time/FastDateParser;CILjava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    .registers 5
    .param p0, "x0"    # Lorg/apache/commons/lang3/time/FastDateParser;
    .param p1, "x1"    # C
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/util/Calendar;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/time/FastDateParser;->getStrategy(CILjava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/util/Calendar;Ljava/util/Locale;ILjava/lang/StringBuilder;)Ljava/util/Map;
    .registers 5
    .param p0, "x0"    # Ljava/util/Calendar;
    .param p1, "x1"    # Ljava/util/Locale;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/StringBuilder;

    .prologue
    .line 73
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/time/FastDateParser;->appendDisplayNames(Ljava/util/Calendar;Ljava/util/Locale;ILjava/lang/StringBuilder;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/commons/lang3/time/FastDateParser;I)I
    .registers 3
    .param p0, "x0"    # Lorg/apache/commons/lang3/time/FastDateParser;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/time/FastDateParser;->adjustYear(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800()Ljava/util/Comparator;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->LONGER_FIRST_LOWERCASE:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 3
    .param p0, "x0"    # Ljava/lang/StringBuilder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/FastDateParser;->simpleQuote(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private adjustYear(I)I
    .registers 4
    .param p1, "twoDigitYear"    # I

    .prologue
    .line 489
    iget v1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->century:I

    add-int v0, v1, p1

    .line 490
    .local v0, "trial":I
    iget v1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->startYear:I

    if-lt p1, v1, :cond_9

    .end local v0    # "trial":I
    :goto_8
    return v0

    .restart local v0    # "trial":I
    :cond_9
    add-int/lit8 v0, v0, 0x64

    goto :goto_8
.end method

.method private static appendDisplayNames(Ljava/util/Calendar;Ljava/util/Locale;ILjava/lang/StringBuilder;)Ljava/util/Map;
    .registers 13
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "field"    # I
    .param p3, "regex"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/Locale;",
            "I",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 469
    .local v5, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    invoke-virtual {p0, p2, v6, p1}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v1

    .line 470
    .local v1, "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/TreeSet;

    sget-object v6, Lorg/apache/commons/lang3/time/FastDateParser;->LONGER_FIRST_LOWERCASE:Ljava/util/Comparator;

    invoke-direct {v3, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 471
    .local v3, "sorted":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_19
    :goto_19
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 472
    .local v0, "displayName":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 474
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 477
    .end local v0    # "displayName":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_3d
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_41
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_57

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 478
    .local v4, "symbol":Ljava/lang/String;
    invoke-static {p3, v4}, Lorg/apache/commons/lang3/time/FastDateParser;->simpleQuote(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x7c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 480
    .end local v4    # "symbol":Ljava/lang/String;
    :cond_57
    return-object v5
.end method

.method private static getCache(I)Ljava/util/concurrent/ConcurrentMap;
    .registers 5
    .param p0, "field"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Lorg/apache/commons/lang3/time/FastDateParser$Strategy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    sget-object v1, Lorg/apache/commons/lang3/time/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v1

    .line 620
    :try_start_3
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, p0

    if-nez v0, :cond_13

    .line 621
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    aput-object v2, v0, p0

    .line 623
    :cond_13
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, p0

    monitor-exit v1

    return-object v0

    .line 624
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    .registers 7
    .param p1, "field"    # I
    .param p2, "definingCalendar"    # Ljava/util/Calendar;

    .prologue
    .line 634
    invoke-static {p1}, Lorg/apache/commons/lang3/time/FastDateParser;->getCache(I)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    .line 635
    .local v0, "cache":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/Locale;Lorg/apache/commons/lang3/time/FastDateParser$Strategy;>;"
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 636
    .local v2, "strategy":Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    if-nez v2, :cond_2c

    .line 637
    const/16 v3, 0xf

    if-ne p1, v3, :cond_24

    new-instance v2, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;

    .end local v2    # "strategy":Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;-><init>(Ljava/util/Locale;)V

    .line 640
    .restart local v2    # "strategy":Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    :goto_19
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-interface {v0, v3, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 641
    .local v1, "inCache":Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    if-eqz v1, :cond_2c

    .line 645
    .end local v1    # "inCache":Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    :goto_23
    return-object v1

    .line 637
    :cond_24
    new-instance v2, Lorg/apache/commons/lang3/time/FastDateParser$CaseInsensitiveTextStrategy;

    .end local v2    # "strategy":Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-direct {v2, p1, p2, v3}, Lorg/apache/commons/lang3/time/FastDateParser$CaseInsensitiveTextStrategy;-><init>(ILjava/util/Calendar;Ljava/util/Locale;)V

    goto :goto_19

    .restart local v2    # "strategy":Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    :cond_2c
    move-object v1, v2

    .line 645
    goto :goto_23
.end method

.method private getStrategy(CILjava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    .registers 7
    .param p1, "f"    # C
    .param p2, "width"    # I
    .param p3, "definingCalendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x2

    .line 558
    sparse-switch p1, :sswitch_data_84

    .line 560
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Format \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :sswitch_23
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->DAY_OF_YEAR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 606
    :goto_25
    return-object v0

    .line 564
    :sswitch_26
    const/4 v0, 0x7

    invoke-direct {p0, v0, p3}, Lorg/apache/commons/lang3/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    move-result-object v0

    goto :goto_25

    .line 566
    :sswitch_2c
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->DAY_OF_WEEK_IN_MONTH_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_25

    .line 568
    :sswitch_2f
    const/4 v0, 0x0

    invoke-direct {p0, v0, p3}, Lorg/apache/commons/lang3/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    move-result-object v0

    goto :goto_25

    .line 570
    :sswitch_35
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->HOUR_OF_DAY_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_25

    .line 572
    :sswitch_38
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->HOUR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_25

    .line 574
    :sswitch_3b
    const/4 v0, 0x3

    if-lt p2, v0, :cond_43

    invoke-direct {p0, v1, p3}, Lorg/apache/commons/lang3/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    move-result-object v0

    goto :goto_25

    :cond_43
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->NUMBER_MONTH_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_25

    .line 576
    :sswitch_46
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->MILLISECOND_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_25

    .line 578
    :sswitch_49
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->WEEK_OF_MONTH_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_25

    .line 580
    :sswitch_4c
    const/16 v0, 0x9

    invoke-direct {p0, v0, p3}, Lorg/apache/commons/lang3/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    move-result-object v0

    goto :goto_25

    .line 582
    :sswitch_53
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->DAY_OF_MONTH_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_25

    .line 584
    :sswitch_56
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->HOUR12_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_25

    .line 586
    :sswitch_59
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->HOUR24_OF_DAY_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_25

    .line 588
    :sswitch_5c
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->MINUTE_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_25

    .line 590
    :sswitch_5f
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->SECOND_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_25

    .line 592
    :sswitch_62
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->DAY_OF_WEEK_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_25

    .line 594
    :sswitch_65
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->WEEK_OF_YEAR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_25

    .line 597
    :sswitch_68
    if-le p2, v1, :cond_6d

    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->LITERAL_YEAR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_25

    :cond_6d
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->ABBREVIATED_YEAR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_25

    .line 599
    :sswitch_70
    invoke-static {p2}, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->getStrategy(I)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    move-result-object v0

    goto :goto_25

    .line 601
    :sswitch_75
    if-ne p2, v1, :cond_7c

    .line 602
    invoke-static {}, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->access$400()Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    move-result-object v0

    goto :goto_25

    .line 606
    :cond_7c
    :sswitch_7c
    const/16 v0, 0xf

    invoke-direct {p0, v0, p3}, Lorg/apache/commons/lang3/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    move-result-object v0

    goto :goto_25

    .line 558
    nop

    :sswitch_data_84
    .sparse-switch
        0x44 -> :sswitch_23
        0x45 -> :sswitch_26
        0x46 -> :sswitch_2c
        0x47 -> :sswitch_2f
        0x48 -> :sswitch_35
        0x4b -> :sswitch_38
        0x4d -> :sswitch_3b
        0x53 -> :sswitch_46
        0x57 -> :sswitch_49
        0x58 -> :sswitch_70
        0x59 -> :sswitch_68
        0x5a -> :sswitch_75
        0x61 -> :sswitch_4c
        0x64 -> :sswitch_53
        0x68 -> :sswitch_56
        0x6b -> :sswitch_59
        0x6d -> :sswitch_5c
        0x73 -> :sswitch_5f
        0x75 -> :sswitch_62
        0x77 -> :sswitch_65
        0x79 -> :sswitch_68
        0x7a -> :sswitch_7c
    .end sparse-switch
.end method

.method private init(Ljava/util/Calendar;)V
    .registers 5
    .param p1, "definingCalendar"    # Ljava/util/Calendar;

    .prologue
    .line 161
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->patterns:Ljava/util/List;

    .line 163
    new-instance v1, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;-><init>(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;)V

    .line 165
    .local v1, "fm":Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;
    :goto_c
    invoke-virtual {v1}, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->getNextStrategy()Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;

    move-result-object v0

    .line 166
    .local v0, "field":Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;
    if-nez v0, :cond_13

    .line 171
    return-void

    .line 169
    :cond_13
    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->patterns:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method private static isFormatLetter(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 259
    const/16 v0, 0x41

    if-lt p0, v0, :cond_8

    const/16 v0, 0x5a

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_12

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 341
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 342
    .local v0, "definingCalendar":Ljava/util/Calendar;
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser;->init(Ljava/util/Calendar;)V

    .line 343
    return-void
.end method

.method private static simpleQuote(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 431
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 432
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 433
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_2e

    .line 448
    :goto_e
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 446
    :sswitch_14
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 451
    .end local v0    # "c":C
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2d

    .line 453
    const/16 v2, 0x3f

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 455
    :cond_2d
    return-object p0

    .line 433
    :sswitch_data_2e
    .sparse-switch
        0x24 -> :sswitch_14
        0x28 -> :sswitch_14
        0x29 -> :sswitch_14
        0x2a -> :sswitch_14
        0x2b -> :sswitch_14
        0x2e -> :sswitch_14
        0x3f -> :sswitch_14
        0x5b -> :sswitch_14
        0x5c -> :sswitch_14
        0x5e -> :sswitch_14
        0x7b -> :sswitch_14
        0x7c -> :sswitch_14
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 299
    instance-of v2, p1, Lorg/apache/commons/lang3/time/FastDateParser;

    if-nez v2, :cond_6

    .line 303
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 302
    check-cast v0, Lorg/apache/commons/lang3/time/FastDateParser;

    .line 303
    .local v0, "other":Lorg/apache/commons/lang3/time/FastDateParser;
    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->pattern:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/commons/lang3/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    iget-object v3, v0, Lorg/apache/commons/lang3/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    .line 304
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    iget-object v3, v0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    .line 305
    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 315
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0xd

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .registers 7
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 358
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 359
    .local v1, "pp":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/lang3/time/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 360
    .local v0, "date":Ljava/util/Date;
    if-nez v0, :cond_5c

    .line 362
    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    sget-object v3, Lorg/apache/commons/lang3/time/FastDateParser;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 363
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(The "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " locale does not support dates before 1868 AD)\nUnparseable date: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 365
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 367
    :cond_3f
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unparseable date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 369
    :cond_5c
    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 6
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 395
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 396
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 398
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    :goto_15
    return-object v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z
    .registers 12
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 416
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser;->patterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    .line 417
    .local v6, "lt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;>;"
    :cond_6
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 418
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;

    .line 419
    .local v7, "strategyAndWidth":Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;
    invoke-virtual {v7, v6}, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;->getMaxWidth(Ljava/util/ListIterator;)I

    move-result v5

    .line 420
    .local v5, "maxWidth":I
    iget-object v0, v7, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;->strategy:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;->parse(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 421
    const/4 v0, 0x0

    .line 424
    .end local v5    # "maxWidth":I
    .end local v7    # "strategyAndWidth":Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x1

    goto :goto_23
.end method

.method public parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/time/FastDateParser;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 377
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FastDateParser["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
