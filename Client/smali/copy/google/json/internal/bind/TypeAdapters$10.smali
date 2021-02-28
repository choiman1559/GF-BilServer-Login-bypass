.class final Lcopy/google/json/internal/bind/TypeAdapters$10;
.super Lcopy/google/json/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcopy/google/json/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcopy/google/json/TypeAdapter",
        "<",
        "Ljava/util/concurrent/atomic/AtomicIntegerArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcopy/google/json/TypeAdapter;-><init>()V

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

    invoke-virtual {p0, p1}, Lcopy/google/json/internal/bind/TypeAdapters$10;->read(Lcopy/google/json/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicIntegerArray;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcopy/google/json/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicIntegerArray;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->beginArray()V

    :goto_8
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    :try_start_e
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_19} :catch_1a

    goto :goto_8

    :catch_1a
    move-exception v0

    new-instance v1, Lcopy/google/json/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcopy/google/json/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_21
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->endArray()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_2f
    if-ge v1, v3, :cond_42

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2f

    :cond_42
    return-object v4
.end method

.method public bridge synthetic write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {p0, p1, p2}, Lcopy/google/json/internal/bind/TypeAdapters$10;->write(Lcopy/google/json/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicIntegerArray;)V

    return-void
.end method

.method public write(Lcopy/google/json/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicIntegerArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->beginArray()Lcopy/google/json/stream/JsonWriter;

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result v1

    :goto_8
    if-ge v0, v1, :cond_15

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lcopy/google/json/stream/JsonWriter;->value(J)Lcopy/google/json/stream/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_15
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->endArray()Lcopy/google/json/stream/JsonWriter;

    return-void
.end method
