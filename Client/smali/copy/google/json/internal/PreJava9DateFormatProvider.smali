.class public Lcopy/google/json/internal/PreJava9DateFormatProvider;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDateFormatPattern(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown DateFormat style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c
    const-string v0, "M/d/yy"

    :goto_1e
    return-object v0

    :pswitch_1f
    const-string v0, "MMM d, y"

    goto :goto_1e

    :pswitch_22
    const-string v0, "MMMM d, y"

    goto :goto_1e

    :pswitch_25
    const-string v0, "EEEE, MMMM d, y"

    goto :goto_1e

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method private static getDatePartOfDateTimePattern(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown DateFormat style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c
    const-string v0, "M/d/yy"

    :goto_1e
    return-object v0

    :pswitch_1f
    const-string v0, "MMM d, yyyy"

    goto :goto_1e

    :pswitch_22
    const-string v0, "MMMM d, yyyy"

    goto :goto_1e

    :pswitch_25
    const-string v0, "EEEE, MMMM d, yyyy"

    goto :goto_1e

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method private static getTimePartOfDateTimePattern(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown DateFormat style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c
    const-string v0, "h:mm a"

    :goto_1e
    return-object v0

    :pswitch_1f
    const-string v0, "h:mm:ss a"

    goto :goto_1e

    :pswitch_22
    const-string v0, "h:mm:ss a z"

    goto :goto_1e

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static getUSDateFormat(I)Ljava/text/DateFormat;
    .registers 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {p0}, Lcopy/google/json/internal/PreJava9DateFormatProvider;->getDateFormatPattern(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static getUSDateTimeFormat(II)Ljava/text/DateFormat;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcopy/google/json/internal/PreJava9DateFormatProvider;->getDatePartOfDateTimePattern(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcopy/google/json/internal/PreJava9DateFormatProvider;->getTimePartOfDateTimePattern(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1
.end method
