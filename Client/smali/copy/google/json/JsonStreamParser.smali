.class public final Lcopy/google/json/JsonStreamParser;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcopy/google/json/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final parser:Lcopy/google/json/stream/JsonReader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcopy/google/json/stream/JsonReader;

    invoke-direct {v0, p1}, Lcopy/google/json/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcopy/google/json/JsonStreamParser;->parser:Lcopy/google/json/stream/JsonReader;

    iget-object v0, p0, Lcopy/google/json/JsonStreamParser;->parser:Lcopy/google/json/stream/JsonReader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcopy/google/json/stream/JsonReader;->setLenient(Z)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcopy/google/json/JsonStreamParser;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcopy/google/json/JsonStreamParser;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    iget-object v1, p0, Lcopy/google/json/JsonStreamParser;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcopy/google/json/JsonStreamParser;->parser:Lcopy/google/json/stream/JsonReader;

    invoke-virtual {v0}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v0

    sget-object v2, Lcopy/google/json/stream/JsonToken;->END_DOCUMENT:Lcopy/google/json/stream/JsonToken;
    :try_end_b
    .catch Lcopy/google/json/stream/MalformedJsonException; {:try_start_3 .. :try_end_b} :catch_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_1c
    .catchall {:try_start_3 .. :try_end_b} :catchall_19

    if-eq v0, v2, :cond_10

    const/4 v0, 0x1

    :goto_e
    :try_start_e
    monitor-exit v1

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catch_12
    move-exception v0

    new-instance v2, Lcopy/google/json/JsonSyntaxException;

    invoke-direct {v2, v0}, Lcopy/google/json/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_19

    throw v0

    :catch_1c
    move-exception v0

    :try_start_1d
    new-instance v2, Lcopy/google/json/JsonIOException;

    invoke-direct {v2, v0}, Lcopy/google/json/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_19
.end method

.method public next()Lcopy/google/json/JsonElement;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcopy/google/json/JsonParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lcopy/google/json/JsonStreamParser;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcopy/google/json/JsonStreamParser;->parser:Lcopy/google/json/stream/JsonReader;

    invoke-static {v0}, Lcopy/google/json/internal/Streams;->parse(Lcopy/google/json/stream/JsonReader;)Lcopy/google/json/JsonElement;
    :try_end_11
    .catch Ljava/lang/StackOverflowError; {:try_start_c .. :try_end_11} :catch_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_11} :catch_1c
    .catch Lcopy/google/json/JsonParseException; {:try_start_c .. :try_end_11} :catch_25

    move-result-object v0

    return-object v0

    :catch_13
    move-exception v0

    new-instance v1, Lcopy/google/json/JsonParseException;

    const-string v2, "Failed parsing JSON source to Json"

    invoke-direct {v1, v2, v0}, Lcopy/google/json/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1c
    move-exception v0

    new-instance v1, Lcopy/google/json/JsonParseException;

    const-string v2, "Failed parsing JSON source to Json"

    invoke-direct {v1, v2, v0}, Lcopy/google/json/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Lcopy/google/json/JsonParseException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/EOFException;

    if-eqz v1, :cond_33

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    :cond_33
    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcopy/google/json/JsonStreamParser;->next()Lcopy/google/json/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
