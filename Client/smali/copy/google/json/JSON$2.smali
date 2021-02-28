.class Lcopy/google/json/JSON$2;
.super Lcopy/google/json/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcopy/google/json/JSON;->floatAdapter(Z)Lcopy/google/json/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcopy/google/json/TypeAdapter",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcopy/google/json/JSON;


# direct methods
.method constructor <init>(Lcopy/google/json/JSON;)V
    .registers 2

    iput-object p1, p0, Lcopy/google/json/JSON$2;->this$0:Lcopy/google/json/JSON;

    invoke-direct {p0}, Lcopy/google/json/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Float;
    .registers 4
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
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_c
.end method

.method public bridge synthetic read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcopy/google/json/JSON$2;->read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Number;)V
    .registers 5
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
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcopy/google/json/JSON;->checkValidFloatingPoint(D)V

    invoke-virtual {p1, p2}, Lcopy/google/json/stream/JsonWriter;->value(Ljava/lang/Number;)Lcopy/google/json/stream/JsonWriter;

    goto :goto_5
.end method

.method public bridge synthetic write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcopy/google/json/JSON$2;->write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
