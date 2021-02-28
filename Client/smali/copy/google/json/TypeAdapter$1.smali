.class Lcopy/google/json/TypeAdapter$1;
.super Lcopy/google/json/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcopy/google/json/TypeAdapter;->nullSafe()Lcopy/google/json/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcopy/google/json/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcopy/google/json/TypeAdapter;


# direct methods
.method constructor <init>(Lcopy/google/json/TypeAdapter;)V
    .registers 2

    iput-object p1, p0, Lcopy/google/json/TypeAdapter$1;->this$0:Lcopy/google/json/TypeAdapter;

    invoke-direct {p0}, Lcopy/google/json/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;
    .registers 4
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

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcopy/google/json/stream/JsonToken;->NULL:Lcopy/google/json/stream/JsonToken;

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextNull()V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcopy/google/json/TypeAdapter$1;->this$0:Lcopy/google/json/TypeAdapter;

    invoke-virtual {v0, p1}, Lcopy/google/json/TypeAdapter;->read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
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

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->nullValue()Lcopy/google/json/stream/JsonWriter;

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcopy/google/json/TypeAdapter$1;->this$0:Lcopy/google/json/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcopy/google/json/TypeAdapter;->write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_5
.end method
