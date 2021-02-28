.class Lcopy/google/json/internal/bind/TypeAdapters$26$1;
.super Lcopy/google/json/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcopy/google/json/internal/bind/TypeAdapters$26;->create(Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcopy/google/json/TypeAdapter",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcopy/google/json/internal/bind/TypeAdapters$26;

.field final synthetic val$dateTypeAdapter:Lcopy/google/json/TypeAdapter;


# direct methods
.method constructor <init>(Lcopy/google/json/internal/bind/TypeAdapters$26;Lcopy/google/json/TypeAdapter;)V
    .registers 3

    iput-object p1, p0, Lcopy/google/json/internal/bind/TypeAdapters$26$1;->this$0:Lcopy/google/json/internal/bind/TypeAdapters$26;

    iput-object p2, p0, Lcopy/google/json/internal/bind/TypeAdapters$26$1;->val$dateTypeAdapter:Lcopy/google/json/TypeAdapter;

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

    invoke-virtual {p0, p1}, Lcopy/google/json/internal/bind/TypeAdapters$26$1;->read(Lcopy/google/json/stream/JsonReader;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcopy/google/json/stream/JsonReader;)Ljava/sql/Timestamp;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/internal/bind/TypeAdapters$26$1;->val$dateTypeAdapter:Lcopy/google/json/TypeAdapter;

    invoke-virtual {v0, p1}, Lcopy/google/json/TypeAdapter;->read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_15

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public bridge synthetic write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lcopy/google/json/internal/bind/TypeAdapters$26$1;->write(Lcopy/google/json/stream/JsonWriter;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public write(Lcopy/google/json/stream/JsonWriter;Ljava/sql/Timestamp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/internal/bind/TypeAdapters$26$1;->val$dateTypeAdapter:Lcopy/google/json/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcopy/google/json/TypeAdapter;->write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
