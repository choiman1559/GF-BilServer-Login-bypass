.class public Lcopy/google/json/internal/bind/util/ISO8601Utils;
.super Ljava/lang/Object;


# static fields
.field private static final TIMEZONE_UTC:Ljava/util/TimeZone;

.field private static final UTC_ID:Ljava/lang/String; = "UTC"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcopy/google/json/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_e

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p2, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    sget-object v1, Lcopy/google/json/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-static {p0, v0, v1}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;Z)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcopy/google/json/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;
    .registers 11

    const v7, 0xea60

    const/16 v6, 0x3a

    const/16 v1, 0x2d

    new-instance v2, Ljava/util/GregorianCalendar;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, p2, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    invoke-virtual {v2, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const-string v0, "yyyy-MM-ddThh:mm:ss"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz p1, :cond_ec

    const-string v0, ".sss"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1f
    add-int/2addr v3, v0

    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    if-nez v0, :cond_ef

    const-string v0, "Z"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_2c
    add-int/2addr v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v4, "yyyy"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v0, v4}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v4, "MM"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v0, v4}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v4, "dd"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v0, v4}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    const/16 v0, 0x54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v4, "hh"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v0, v4}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v4, "mm"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v0, v4}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v4, "ss"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v0, v4}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    if-eqz p1, :cond_b2

    const/16 v0, 0x2e

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v4, "sss"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v0, v4}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    :cond_b2
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    if-eqz v0, :cond_fa

    div-int v2, v0, v7

    div-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int v4, v0, v7

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gez v0, :cond_f7

    move v0, v1

    :goto_cf
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "hh"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v3, v2, v0}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "mm"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v3, v4, v0}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    :goto_e7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_ec
    const/4 v0, 0x0

    goto/16 :goto_1f

    :cond_ef
    const-string v0, "+hh:mm"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto/16 :goto_2c

    :cond_f7
    const/16 v0, 0x2b

    goto :goto_cf

    :cond_fa
    const/16 v0, 0x5a

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e7
.end method

.method private static indexOfNonDigit(Ljava/lang/String;I)I
    .registers 4

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_16

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_12

    const/16 v1, 0x39

    if-le v0, v1, :cond_13

    :cond_12
    :goto_12
    return p1

    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_12
.end method

.method private static padInt(Ljava/lang/StringBuilder;II)V
    .registers 6

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p2, v0

    :goto_a
    if-lez v0, :cond_14

    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_14
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v12, 0x2b

    const/16 v13, 0x22

    const/4 v11, 0x5

    const/16 v10, 0x2d

    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int/lit8 v1, v2, 0x4

    invoke-static {p0, v2, v1}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v6

    const/16 v2, 0x2d

    invoke-static {p0, v1, v2}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v2

    if-eqz v2, :cond_253

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    :goto_1d
    add-int/lit8 v1, v2, 0x2

    invoke-static {p0, v2, v1}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v7

    const/16 v2, 0x2d

    invoke-static {p0, v1, v2}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v2

    if-eqz v2, :cond_250

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    :goto_2e
    add-int/lit8 v1, v2, 0x2

    invoke-static {p0, v2, v1}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v8

    const/16 v2, 0x54

    invoke-static {p0, v1, v2}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v2

    if-nez v2, :cond_51

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v1, :cond_51

    new-instance v0, Ljava/util/GregorianCalendar;

    add-int/lit8 v2, v7, -0x1

    invoke-direct {v0, v6, v2, v8}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :goto_50
    return-object v0

    :cond_51
    if-eqz v2, :cond_24a

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v2, 0x2

    invoke-static {p0, v2, v1}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v3

    const/16 v2, 0x3a

    invoke-static {p0, v1, v2}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v2

    if-eqz v2, :cond_247

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    :goto_66
    add-int/lit8 v1, v2, 0x2

    invoke-static {p0, v2, v1}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v2

    const/16 v4, 0x3a

    invoke-static {p0, v1, v4}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v4

    if-eqz v4, :cond_76

    add-int/lit8 v1, v1, 0x1

    :cond_76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_241

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_241

    if-eq v4, v12, :cond_241

    if-eq v4, v10, :cond_241

    add-int/lit8 v4, v1, 0x2

    invoke-static {p0, v1, v4}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v1

    const/16 v5, 0x3b

    if-le v1, v5, :cond_98

    const/16 v5, 0x3f

    if-ge v1, v5, :cond_98

    const/16 v1, 0x3b

    :cond_98
    const/16 v5, 0x2e

    invoke-static {p0, v4, v5}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v5

    if-eqz v5, :cond_23a

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v0, v5, 0x1

    invoke-static {p0, v0}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->indexOfNonDigit(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v0, v5, 0x3

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {p0, v5, v9}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v0

    sub-int v5, v9, v5

    packed-switch v5, :pswitch_data_256

    :goto_b7
    move v5, v3

    move v3, v1

    move v1, v4

    move v4, v2

    move v2, v0

    :goto_bc
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v1, :cond_12c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No time zone indicator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ca
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_ca} :catch_ca
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_ca} :catch_1fc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_ca} :catch_21f

    :catch_ca
    move-exception v0

    move-object v2, v0

    :goto_cc
    if-nez p0, :cond_223

    const/4 v0, 0x0

    :goto_cf
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_db

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_fc

    :cond_db
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_fc
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse date ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-direct {v3, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v2}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v3

    :pswitch_126
    mul-int/lit8 v0, v0, 0xa

    goto :goto_b7

    :pswitch_129
    mul-int/lit8 v0, v0, 0x64

    goto :goto_b7

    :cond_12c
    :try_start_12c
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v9, 0x5a

    if-ne v0, v9, :cond_16c

    sget-object v0, Lcopy/google/json/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    add-int/lit8 v1, v1, 0x1

    :cond_138
    :goto_138
    new-instance v9, Ljava/util/GregorianCalendar;

    invoke-direct {v9, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->setLenient(Z)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x2

    add-int/lit8 v6, v7, -0x1

    invoke-virtual {v9, v0, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {v9, v0, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xb

    invoke-virtual {v9, v0, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {v9, v0, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {v9, v0, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {v9, v0, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_50

    :cond_16c
    if-eq v0, v12, :cond_170

    if-ne v0, v10, :cond_200

    :cond_170
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v11, :cond_192

    :goto_17a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v1, v9

    const-string v9, "+0000"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18f

    const-string v9, "+00:00"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a6

    :cond_18f
    sget-object v0, Lcopy/google/json/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    goto :goto_138

    :cond_192
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "00"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17a

    :cond_1a6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GMT"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_138

    const-string v11, ":"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_138

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mismatching time zone indicator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " given, resolves to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1fc
    move-exception v0

    move-object v2, v0

    goto/16 :goto_cc

    :cond_200
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid time zone indicator \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_21f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12c .. :try_end_21f} :catch_ca
    .catch Ljava/lang/NumberFormatException; {:try_start_12c .. :try_end_21f} :catch_1fc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12c .. :try_end_21f} :catch_21f

    :catch_21f
    move-exception v0

    move-object v2, v0

    goto/16 :goto_cc

    :cond_223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_cf

    :cond_23a
    move v5, v3

    move v3, v1

    move v1, v4

    move v4, v2

    move v2, v0

    goto/16 :goto_bc

    :cond_241
    move v4, v2

    move v5, v3

    move v2, v0

    move v3, v0

    goto/16 :goto_bc

    :cond_247
    move v2, v1

    goto/16 :goto_66

    :cond_24a
    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    goto/16 :goto_bc

    :cond_250
    move v2, v1

    goto/16 :goto_2e

    :cond_253
    move v2, v1

    goto/16 :goto_1d

    :pswitch_data_256
    .packed-switch 0x1
        :pswitch_129
        :pswitch_126
    .end packed-switch
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v3, 0xa

    if-ltz p1, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_c

    if-le p1, p2, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const/4 v0, 0x0

    if-ge p1, p2, :cond_71

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    if-gez v0, :cond_3e

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    neg-int v0, v0

    :goto_3f
    if-ge v1, p2, :cond_6f

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    if-gez v1, :cond_6a

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v0, v1

    move v1, v2

    goto :goto_3f

    :cond_6f
    neg-int v0, v0

    return v0

    :cond_71
    move v1, p1

    goto :goto_3f
.end method
