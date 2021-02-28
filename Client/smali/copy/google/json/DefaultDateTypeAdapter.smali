.class final Lcopy/google/json/DefaultDateTypeAdapter;
.super Lcopy/google/json/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcopy/google/json/TypeAdapter",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field private static final SIMPLE_NAME:Ljava/lang/String; = "DefaultDateTypeAdapter"


# instance fields
.field private final dateFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final dateType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .registers 4

    const-class v0, Ljava/util/Date;

    invoke-direct {p0, v0, p1, p2}, Lcopy/google/json/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x2

    invoke-direct {p0}, Lcopy/google/json/TypeAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    invoke-static {p1}, Lcopy/google/json/DefaultDateTypeAdapter;->verifyDateType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateType:Ljava/lang/Class;

    iget-object v0, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, v2, v1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    invoke-static {v2, v2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_31
    invoke-static {}, Lcopy/google/json/internal/JavaVersion;->isJava9OrLater()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    invoke-static {v2, v2}, Lcopy/google/json/internal/PreJava9DateFormatProvider;->getUSDateTimeFormat(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_40
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Date;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcopy/google/json/TypeAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    invoke-static {p1}, Lcopy/google/json/DefaultDateTypeAdapter;->verifyDateType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateType:Ljava/lang/Class;

    iget-object v0, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2, v1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    invoke-static {p2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    invoke-static {}, Lcopy/google/json/internal/JavaVersion;->isJava9OrLater()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    invoke-static {p2}, Lcopy/google/json/internal/PreJava9DateFormatProvider;->getUSDateFormat(I)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3f
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Date;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Lcopy/google/json/TypeAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    invoke-static {p1}, Lcopy/google/json/DefaultDateTypeAdapter;->verifyDateType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateType:Ljava/lang/Class;

    iget-object v0, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2, p3, v1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    invoke-static {}, Lcopy/google/json/internal/JavaVersion;->isJava9OrLater()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    invoke-static {p2, p3}, Lcopy/google/json/internal/PreJava9DateFormatProvider;->getUSDateTimeFormat(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3f
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Date;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcopy/google/json/TypeAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    invoke-static {p1}, Lcopy/google/json/DefaultDateTypeAdapter;->verifyDateType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateType:Ljava/lang/Class;

    iget-object v0, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, p2, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    return-void
.end method

.method private deserializeToDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 5

    iget-object v1, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_27

    :try_start_15
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_18
    .catch Ljava/text/ParseException; {:try_start_15 .. :try_end_18} :catch_31
    .catchall {:try_start_15 .. :try_end_18} :catchall_27

    move-result-object v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_27

    :goto_1a
    return-object v0

    :cond_1b
    :try_start_1b
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-static {p1, v0}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_24
    .catch Ljava/text/ParseException; {:try_start_1b .. :try_end_24} :catch_2a
    .catchall {:try_start_1b .. :try_end_24} :catchall_27

    move-result-object v0

    :try_start_25
    monitor-exit v1

    goto :goto_1a

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw v0

    :catch_2a
    move-exception v0

    :try_start_2b
    new-instance v2, Lcopy/google/json/JsonSyntaxException;

    invoke-direct {v2, p1, v0}, Lcopy/google/json/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_27

    :catch_31
    move-exception v0

    goto :goto_9
.end method

.method private static verifyDateType(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Date;",
            ">;)",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/util/Date;

    if-eq p0, v0, :cond_49

    const-class v0, Ljava/sql/Date;

    if-eq p0, v0, :cond_49

    const-class v0, Ljava/sql/Timestamp;

    if-eq p0, v0, :cond_49

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date type must be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/sql/Timestamp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/sql/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    return-object p0
.end method


# virtual methods
.method public bridge synthetic read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcopy/google/json/DefaultDateTypeAdapter;->read(Lcopy/google/json/stream/JsonReader;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcopy/google/json/stream/JsonReader;)Ljava/util/Date;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcopy/google/json/stream/JsonToken;->NULL:Lcopy/google/json/stream/JsonToken;

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextNull()V

    const/4 v0, 0x0

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcopy/google/json/DefaultDateTypeAdapter;->deserializeToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateType:Ljava/lang/Class;

    const-class v2, Ljava/util/Date;

    if-eq v1, v2, :cond_c

    iget-object v1, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateType:Ljava/lang/Class;

    const-class v2, Ljava/sql/Timestamp;

    if-ne v1, v2, :cond_2c

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    goto :goto_c

    :cond_2c
    iget-object v1, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateType:Ljava/lang/Class;

    const-class v2, Ljava/sql/Date;

    if-ne v1, v2, :cond_3d

    new-instance v1, Ljava/sql/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    move-object v0, v1

    goto :goto_c

    :cond_3d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/16 v3, 0x29

    iget-object v0, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultDateTypeAdapter("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2c
    return-object v0

    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultDateTypeAdapter("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c
.end method

.method public bridge synthetic write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lcopy/google/json/DefaultDateTypeAdapter;->write(Lcopy/google/json/stream/JsonWriter;Ljava/util/Date;)V

    return-void
.end method

.method public write(Lcopy/google/json/stream/JsonWriter;Ljava/util/Date;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->nullValue()Lcopy/google/json/stream/JsonWriter;

    :goto_5
    return-void

    :cond_6
    iget-object v1, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcopy/google/json/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcopy/google/json/stream/JsonWriter;->value(Ljava/lang/String;)Lcopy/google/json/stream/JsonWriter;

    monitor-exit v1

    goto :goto_5

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_1b

    throw v0
.end method
