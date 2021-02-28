.class Lcopy/google/json/JSON$FutureTypeAdapter;
.super Lcopy/google/json/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcopy/google/json/JSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FutureTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcopy/google/json/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcopy/google/json/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcopy/google/json/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/JSON$FutureTypeAdapter;->delegate:Lcopy/google/json/TypeAdapter;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcopy/google/json/JSON$FutureTypeAdapter;->delegate:Lcopy/google/json/TypeAdapter;

    invoke-virtual {v0, p1}, Lcopy/google/json/TypeAdapter;->read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setDelegate(Lcopy/google/json/TypeAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/TypeAdapter",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/JSON$FutureTypeAdapter;->delegate:Lcopy/google/json/TypeAdapter;

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    iput-object p1, p0, Lcopy/google/json/JSON$FutureTypeAdapter;->delegate:Lcopy/google/json/TypeAdapter;

    return-void
.end method

.method public write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/JSON$FutureTypeAdapter;->delegate:Lcopy/google/json/TypeAdapter;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcopy/google/json/JSON$FutureTypeAdapter;->delegate:Lcopy/google/json/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcopy/google/json/TypeAdapter;->write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
