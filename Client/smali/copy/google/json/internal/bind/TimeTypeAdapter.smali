.class public final Lcopy/google/json/internal/bind/TimeTypeAdapter;
.super Lcopy/google/json/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcopy/google/json/TypeAdapter",
        "<",
        "Ljava/sql/Time;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lcopy/google/json/TypeAdapterFactory;


# instance fields
.field private final format:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcopy/google/json/internal/bind/TimeTypeAdapter$1;

    invoke-direct {v0}, Lcopy/google/json/internal/bind/TimeTypeAdapter$1;-><init>()V

    sput-object v0, Lcopy/google/json/internal/bind/TimeTypeAdapter;->FACTORY:Lcopy/google/json/TypeAdapterFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcopy/google/json/TypeAdapter;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcopy/google/json/internal/bind/TimeTypeAdapter;->format:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcopy/google/json/internal/bind/TimeTypeAdapter;->read(Lcopy/google/json/stream/JsonReader;)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized read(Lcopy/google/json/stream/JsonReader;)Ljava/sql/Time;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcopy/google/json/stream/JsonToken;->NULL:Lcopy/google/json/stream/JsonToken;

    if-ne v0, v1, :cond_f

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextNull()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2a

    const/4 v0, 0x0

    :goto_d
    monitor-exit p0

    return-object v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcopy/google/json/internal/bind/TimeTypeAdapter;->format:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    new-instance v0, Ljava/sql/Time;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Time;-><init>(J)V
    :try_end_22
    .catch Ljava/text/ParseException; {:try_start_f .. :try_end_22} :catch_23
    .catchall {:try_start_f .. :try_end_22} :catchall_2a

    goto :goto_d

    :catch_23
    move-exception v0

    :try_start_24
    new-instance v1, Lcopy/google/json/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcopy/google/json/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/sql/Time;

    invoke-virtual {p0, p1, p2}, Lcopy/google/json/internal/bind/TimeTypeAdapter;->write(Lcopy/google/json/stream/JsonWriter;Ljava/sql/Time;)V

    return-void
.end method

.method public declared-synchronized write(Lcopy/google/json/stream/JsonWriter;Ljava/sql/Time;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_9

    const/4 v0, 0x0

    :goto_4
    :try_start_4
    invoke-virtual {p1, v0}, Lcopy/google/json/stream/JsonWriter;->value(Ljava/lang/String;)Lcopy/google/json/stream/JsonWriter;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_10

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcopy/google/json/internal/bind/TimeTypeAdapter;->format:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    move-result-object v0

    goto :goto_4

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
