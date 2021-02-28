.class final Lcopy/google/json/internal/bind/TypeAdapters$2;
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
        "Ljava/util/BitSet;",
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

    invoke-virtual {p0, p1}, Lcopy/google/json/internal/bind/TypeAdapters$2;->read(Lcopy/google/json/stream/JsonReader;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcopy/google/json/stream/JsonReader;)Ljava/util/BitSet;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->beginArray()V

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v0

    move v1, v2

    :goto_f
    sget-object v5, Lcopy/google/json/stream/JsonToken;->END_ARRAY:Lcopy/google/json/stream/JsonToken;

    if-eq v0, v5, :cond_79

    sget-object v5, Lcopy/google/json/internal/bind/TypeAdapters$36;->$SwitchMap$copy$google$json$stream$JsonToken:[I

    invoke-virtual {v0}, Lcopy/google/json/stream/JsonToken;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_7e

    new-instance v1, Lcopy/google/json/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid bitset value type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcopy/google/json/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_37
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextInt()I

    move-result v0

    if-eqz v0, :cond_4a

    move v0, v3

    :goto_3e
    if-eqz v0, :cond_43

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    :cond_43
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v0

    goto :goto_f

    :cond_4a
    move v0, v2

    goto :goto_3e

    :pswitch_4c
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextBoolean()Z

    move-result v0

    goto :goto_3e

    :pswitch_51
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    :try_start_55
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/NumberFormatException; {:try_start_55 .. :try_end_58} :catch_5f

    move-result v0

    if-eqz v0, :cond_5d

    move v0, v3

    goto :goto_3e

    :cond_5d
    move v0, v2

    goto :goto_3e

    :catch_5f
    move-exception v1

    new-instance v1, Lcopy/google/json/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcopy/google/json/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_79
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->endArray()V

    return-object v4

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_37
        :pswitch_4c
        :pswitch_51
    .end packed-switch
.end method

.method public bridge synthetic write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Lcopy/google/json/internal/bind/TypeAdapters$2;->write(Lcopy/google/json/stream/JsonWriter;Ljava/util/BitSet;)V

    return-void
.end method

.method public write(Lcopy/google/json/stream/JsonWriter;Ljava/util/BitSet;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->beginArray()Lcopy/google/json/stream/JsonWriter;

    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v3

    move v2, v1

    :goto_9
    if-ge v2, v3, :cond_1c

    invoke-virtual {p2, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_12
    int-to-long v4, v0

    invoke-virtual {p1, v4, v5}, Lcopy/google/json/stream/JsonWriter;->value(J)Lcopy/google/json/stream/JsonWriter;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    :cond_1a
    move v0, v1

    goto :goto_12

    :cond_1c
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->endArray()Lcopy/google/json/stream/JsonWriter;

    return-void
.end method
