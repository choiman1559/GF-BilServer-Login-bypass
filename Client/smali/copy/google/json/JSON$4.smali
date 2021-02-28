.class final Lcopy/google/json/JSON$4;
.super Lcopy/google/json/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcopy/google/json/JSON;->atomicLongAdapter(Lcopy/google/json/TypeAdapter;)Lcopy/google/json/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcopy/google/json/TypeAdapter",
        "<",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$longAdapter:Lcopy/google/json/TypeAdapter;


# direct methods
.method constructor <init>(Lcopy/google/json/TypeAdapter;)V
    .registers 2

    iput-object p1, p0, Lcopy/google/json/JSON$4;->val$longAdapter:Lcopy/google/json/TypeAdapter;

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

    invoke-virtual {p0, p1}, Lcopy/google/json/JSON$4;->read(Lcopy/google/json/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcopy/google/json/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/JSON$4;->val$longAdapter:Lcopy/google/json/TypeAdapter;

    invoke-virtual {v0, p1}, Lcopy/google/json/TypeAdapter;->read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    return-object v1
.end method

.method public bridge synthetic write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2}, Lcopy/google/json/JSON$4;->write(Lcopy/google/json/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-void
.end method

.method public write(Lcopy/google/json/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicLong;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/JSON$4;->val$longAdapter:Lcopy/google/json/TypeAdapter;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcopy/google/json/TypeAdapter;->write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
