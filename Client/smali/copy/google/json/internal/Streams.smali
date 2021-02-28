.class public final Lcopy/google/json/internal/Streams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcopy/google/json/internal/Streams$AppendableWriter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static parse(Lcopy/google/json/stream/JsonReader;)Lcopy/google/json/JsonElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcopy/google/json/JsonParseException;
        }
    .end annotation

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    const/4 v1, 0x0

    sget-object v0, Lcopy/google/json/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcopy/google/json/TypeAdapter;

    invoke-virtual {v0, p0}, Lcopy/google/json/TypeAdapter;->read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_d} :catch_e
    .catch Lcopy/google/json/stream/MalformedJsonException; {:try_start_1 .. :try_end_d} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_d} :catch_28

    :goto_d
    return-object v0

    :catch_e
    move-exception v0

    if-eqz v1, :cond_14

    sget-object v0, Lcopy/google/json/JsonNull;->INSTANCE:Lcopy/google/json/JsonNull;

    goto :goto_d

    :cond_14
    new-instance v1, Lcopy/google/json/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcopy/google/json/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1a
    move-exception v0

    new-instance v1, Lcopy/google/json/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcopy/google/json/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_21
    move-exception v0

    new-instance v1, Lcopy/google/json/JsonIOException;

    invoke-direct {v1, v0}, Lcopy/google/json/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_28
    move-exception v0

    new-instance v1, Lcopy/google/json/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcopy/google/json/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static write(Lcopy/google/json/JsonElement;Lcopy/google/json/stream/JsonWriter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcopy/google/json/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcopy/google/json/TypeAdapter;

    invoke-virtual {v0, p1, p0}, Lcopy/google/json/TypeAdapter;->write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public static writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;
    .registers 2

    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/io/Writer;

    :goto_6
    return-object p0

    :cond_7
    new-instance v0, Lcopy/google/json/internal/Streams$AppendableWriter;

    invoke-direct {v0, p0}, Lcopy/google/json/internal/Streams$AppendableWriter;-><init>(Ljava/lang/Appendable;)V

    move-object p0, v0

    goto :goto_6
.end method
