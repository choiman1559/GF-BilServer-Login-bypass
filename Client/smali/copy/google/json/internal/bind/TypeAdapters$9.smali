.class final Lcopy/google/json/internal/bind/TypeAdapters$9;
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
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
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

    invoke-virtual {p0, p1}, Lcopy/google/json/internal/bind/TypeAdapters$9;->read(Lcopy/google/json/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcopy/google/json/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    return-object v0
.end method

.method public bridge synthetic write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1, p2}, Lcopy/google/json/internal/bind/TypeAdapters$9;->write(Lcopy/google/json/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method public write(Lcopy/google/json/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcopy/google/json/stream/JsonWriter;->value(Z)Lcopy/google/json/stream/JsonWriter;

    return-void
.end method
