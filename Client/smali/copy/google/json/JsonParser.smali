.class public final Lcopy/google/json/JsonParser;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseReader(Lcopy/google/json/stream/JsonReader;)Lcopy/google/json/JsonElement;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcopy/google/json/JsonIOException;,
            Lcopy/google/json/JsonSyntaxException;
        }
    .end annotation

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->isLenient()Z

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcopy/google/json/stream/JsonReader;->setLenient(Z)V

    :try_start_8
    invoke-static {p0}, Lcopy/google/json/internal/Streams;->parse(Lcopy/google/json/stream/JsonReader;)Lcopy/google/json/JsonElement;
    :try_end_b
    .catch Ljava/lang/StackOverflowError; {:try_start_8 .. :try_end_b} :catch_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_b} :catch_35
    .catchall {:try_start_8 .. :try_end_b} :catchall_30

    move-result-object v0

    invoke-virtual {p0, v1}, Lcopy/google/json/stream/JsonReader;->setLenient(Z)V

    return-object v0

    :catch_10
    move-exception v0

    :try_start_11
    new-instance v2, Lcopy/google/json/JsonParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing JSON source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to Json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcopy/google/json/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v0

    invoke-virtual {p0, v1}, Lcopy/google/json/stream/JsonReader;->setLenient(Z)V

    throw v0

    :catch_35
    move-exception v0

    :try_start_36
    new-instance v2, Lcopy/google/json/JsonParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing JSON source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to Json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcopy/google/json/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_55
    .catchall {:try_start_36 .. :try_end_55} :catchall_30
.end method

.method public static parseReader(Ljava/io/Reader;)Lcopy/google/json/JsonElement;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcopy/google/json/JsonIOException;,
            Lcopy/google/json/JsonSyntaxException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcopy/google/json/stream/JsonReader;

    invoke-direct {v0, p0}, Lcopy/google/json/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0}, Lcopy/google/json/JsonParser;->parseReader(Lcopy/google/json/stream/JsonReader;)Lcopy/google/json/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcopy/google/json/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {v0}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v0

    sget-object v2, Lcopy/google/json/stream/JsonToken;->END_DOCUMENT:Lcopy/google/json/stream/JsonToken;

    if-eq v0, v2, :cond_34

    new-instance v0, Lcopy/google/json/JsonSyntaxException;

    const-string v1, "Did not consume the entire document."

    invoke-direct {v0, v1}, Lcopy/google/json/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catch Lcopy/google/json/stream/MalformedJsonException; {:try_start_0 .. :try_end_1f} :catch_1f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1f} :catch_26
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_1f} :catch_2d

    :catch_1f
    move-exception v0

    new-instance v1, Lcopy/google/json/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcopy/google/json/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_26
    move-exception v0

    new-instance v1, Lcopy/google/json/JsonIOException;

    invoke-direct {v1, v0}, Lcopy/google/json/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2d
    move-exception v0

    new-instance v1, Lcopy/google/json/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcopy/google/json/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_34
    return-object v1
.end method

.method public static parseString(Ljava/lang/String;)Lcopy/google/json/JsonElement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcopy/google/json/JsonSyntaxException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcopy/google/json/JsonParser;->parseReader(Ljava/io/Reader;)Lcopy/google/json/JsonElement;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public parse(Lcopy/google/json/stream/JsonReader;)Lcopy/google/json/JsonElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcopy/google/json/JsonIOException;,
            Lcopy/google/json/JsonSyntaxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcopy/google/json/JsonParser;->parseReader(Lcopy/google/json/stream/JsonReader;)Lcopy/google/json/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/Reader;)Lcopy/google/json/JsonElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcopy/google/json/JsonIOException;,
            Lcopy/google/json/JsonSyntaxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcopy/google/json/JsonParser;->parseReader(Ljava/io/Reader;)Lcopy/google/json/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lcopy/google/json/JsonElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcopy/google/json/JsonSyntaxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcopy/google/json/JsonParser;->parseString(Ljava/lang/String;)Lcopy/google/json/JsonElement;

    move-result-object v0

    return-object v0
.end method
