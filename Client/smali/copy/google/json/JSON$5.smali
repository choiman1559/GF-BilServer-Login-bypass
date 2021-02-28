.class final Lcopy/google/json/JSON$5;
.super Lcopy/google/json/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcopy/google/json/JSON;->atomicLongArrayAdapter(Lcopy/google/json/TypeAdapter;)Lcopy/google/json/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcopy/google/json/TypeAdapter",
        "<",
        "Ljava/util/concurrent/atomic/AtomicLongArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$longAdapter:Lcopy/google/json/TypeAdapter;


# direct methods
.method constructor <init>(Lcopy/google/json/TypeAdapter;)V
    .registers 2

    iput-object p1, p0, Lcopy/google/json/JSON$5;->val$longAdapter:Lcopy/google/json/TypeAdapter;

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

    invoke-virtual {p0, p1}, Lcopy/google/json/JSON$5;->read(Lcopy/google/json/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicLongArray;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcopy/google/json/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicLongArray;
    .registers 10
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

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcopy/google/json/JSON$5;->val$longAdapter:Lcopy/google/json/TypeAdapter;

    invoke-virtual {v0, p1}, Lcopy/google/json/TypeAdapter;->read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_22
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->endArray()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_30
    if-ge v1, v3, :cond_43

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v1, v6, v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_30

    :cond_43
    return-object v4
.end method

.method public bridge synthetic write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {p0, p1, p2}, Lcopy/google/json/JSON$5;->write(Lcopy/google/json/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicLongArray;)V

    return-void
.end method

.method public write(Lcopy/google/json/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicLongArray;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->beginArray()Lcopy/google/json/stream/JsonWriter;

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v1

    :goto_8
    if-ge v0, v1, :cond_1a

    iget-object v2, p0, Lcopy/google/json/JSON$5;->val$longAdapter:Lcopy/google/json/TypeAdapter;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcopy/google/json/TypeAdapter;->write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1a
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->endArray()Lcopy/google/json/stream/JsonWriter;

    return-void
.end method
