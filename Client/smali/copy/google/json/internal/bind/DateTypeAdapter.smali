.class public final Lcopy/google/json/internal/bind/DateTypeAdapter;
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
.field public static final FACTORY:Lcopy/google/json/TypeAdapterFactory;


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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcopy/google/json/internal/bind/DateTypeAdapter$1;

    invoke-direct {v0}, Lcopy/google/json/internal/bind/DateTypeAdapter$1;-><init>()V

    sput-object v0, Lcopy/google/json/internal/bind/DateTypeAdapter;->FACTORY:Lcopy/google/json/TypeAdapterFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x2

    invoke-direct {p0}, Lcopy/google/json/TypeAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcopy/google/json/internal/bind/DateTypeAdapter;->dateFormats:Ljava/util/List;

    iget-object v0, p0, Lcopy/google/json/internal/bind/DateTypeAdapter;->dateFormats:Ljava/util/List;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, v2, v1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcopy/google/json/internal/bind/DateTypeAdapter;->dateFormats:Ljava/util/List;

    invoke-static {v2, v2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    invoke-static {}, Lcopy/google/json/internal/JavaVersion;->isJava9OrLater()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcopy/google/json/internal/bind/DateTypeAdapter;->dateFormats:Ljava/util/List;

    invoke-static {v2, v2}, Lcopy/google/json/internal/PreJava9DateFormatProvider;->getUSDateTimeFormat(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3a
    return-void
.end method

.method private declared-synchronized deserializeToDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcopy/google/json/internal/bind/DateTypeAdapter;->dateFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_2b

    :try_start_13
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_16
    .catch Ljava/text/ParseException; {:try_start_13 .. :try_end_16} :catch_2e
    .catchall {:try_start_13 .. :try_end_16} :catchall_2b

    move-result-object v0

    :goto_17
    monitor-exit p0

    return-object v0

    :cond_19
    :try_start_19
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-static {p1, v0}, Lcopy/google/json/internal/bind/util/ISO8601Utils;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_22
    .catch Ljava/text/ParseException; {:try_start_19 .. :try_end_22} :catch_24
    .catchall {:try_start_19 .. :try_end_22} :catchall_2b

    move-result-object v0

    goto :goto_17

    :catch_24
    move-exception v0

    :try_start_25
    new-instance v1, Lcopy/google/json/JsonSyntaxException;

    invoke-direct {v1, p1, v0}, Lcopy/google/json/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2e
    move-exception v0

    goto :goto_7
.end method


# virtual methods
.method public bridge synthetic read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcopy/google/json/internal/bind/DateTypeAdapter;->read(Lcopy/google/json/stream/JsonReader;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcopy/google/json/stream/JsonReader;)Ljava/util/Date;
    .registers 4
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

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcopy/google/json/internal/bind/DateTypeAdapter;->deserializeToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_c
.end method

.method public bridge synthetic write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lcopy/google/json/internal/bind/DateTypeAdapter;->write(Lcopy/google/json/stream/JsonWriter;Ljava/util/Date;)V

    return-void
.end method

.method public declared-synchronized write(Lcopy/google/json/stream/JsonWriter;Ljava/util/Date;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_8

    :try_start_3
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->nullValue()Lcopy/google/json/stream/JsonWriter;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    :goto_6
    monitor-exit p0

    return-void

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcopy/google/json/internal/bind/DateTypeAdapter;->dateFormats:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcopy/google/json/stream/JsonWriter;->value(Ljava/lang/String;)Lcopy/google/json/stream/JsonWriter;
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_19

    goto :goto_6

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method
