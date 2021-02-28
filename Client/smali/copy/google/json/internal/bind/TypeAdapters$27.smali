.class final Lcopy/google/json/internal/bind/TypeAdapters$27;
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
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final DAY_OF_MONTH:Ljava/lang/String; = "dayOfMonth"

.field private static final HOUR_OF_DAY:Ljava/lang/String; = "hourOfDay"

.field private static final MINUTE:Ljava/lang/String; = "minute"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final SECOND:Ljava/lang/String; = "second"

.field private static final YEAR:Ljava/lang/String; = "year"


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

    invoke-virtual {p0, p1}, Lcopy/google/json/internal/bind/TypeAdapters$27;->read(Lcopy/google/json/stream/JsonReader;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcopy/google/json/stream/JsonReader;)Ljava/util/Calendar;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcopy/google/json/stream/JsonToken;->NULL:Lcopy/google/json/stream/JsonToken;

    if-ne v0, v1, :cond_e

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextNull()V

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->beginObject()V

    move v5, v6

    move v4, v6

    move v3, v6

    move v2, v6

    move v1, v6

    :cond_16
    :goto_16
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v0

    sget-object v7, Lcopy/google/json/stream/JsonToken;->END_OBJECT:Lcopy/google/json/stream/JsonToken;

    if-eq v0, v7, :cond_62

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextInt()I

    move-result v0

    const-string v8, "year"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    move v1, v0

    goto :goto_16

    :cond_30
    const-string v8, "month"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3a

    move v2, v0

    goto :goto_16

    :cond_3a
    const-string v8, "dayOfMonth"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_44

    move v3, v0

    goto :goto_16

    :cond_44
    const-string v8, "hourOfDay"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    move v4, v0

    goto :goto_16

    :cond_4e
    const-string v8, "minute"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_58

    move v5, v0

    goto :goto_16

    :cond_58
    const-string v8, "second"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    move v6, v0

    goto :goto_16

    :cond_62
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->endObject()V

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    goto :goto_d
.end method

.method public bridge synthetic write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lcopy/google/json/internal/bind/TypeAdapters$27;->write(Lcopy/google/json/stream/JsonWriter;Ljava/util/Calendar;)V

    return-void
.end method

.method public write(Lcopy/google/json/stream/JsonWriter;Ljava/util/Calendar;)V
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
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->beginObject()Lcopy/google/json/stream/JsonWriter;

    const-string v0, "year"

    invoke-virtual {p1, v0}, Lcopy/google/json/stream/JsonWriter;->name(Ljava/lang/String;)Lcopy/google/json/stream/JsonWriter;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcopy/google/json/stream/JsonWriter;->value(J)Lcopy/google/json/stream/JsonWriter;

    const-string v0, "month"

    invoke-virtual {p1, v0}, Lcopy/google/json/stream/JsonWriter;->name(Ljava/lang/String;)Lcopy/google/json/stream/JsonWriter;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcopy/google/json/stream/JsonWriter;->value(J)Lcopy/google/json/stream/JsonWriter;

    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lcopy/google/json/stream/JsonWriter;->name(Ljava/lang/String;)Lcopy/google/json/stream/JsonWriter;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcopy/google/json/stream/JsonWriter;->value(J)Lcopy/google/json/stream/JsonWriter;

    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lcopy/google/json/stream/JsonWriter;->name(Ljava/lang/String;)Lcopy/google/json/stream/JsonWriter;

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcopy/google/json/stream/JsonWriter;->value(J)Lcopy/google/json/stream/JsonWriter;

    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lcopy/google/json/stream/JsonWriter;->name(Ljava/lang/String;)Lcopy/google/json/stream/JsonWriter;

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcopy/google/json/stream/JsonWriter;->value(J)Lcopy/google/json/stream/JsonWriter;

    const-string v0, "second"

    invoke-virtual {p1, v0}, Lcopy/google/json/stream/JsonWriter;->name(Ljava/lang/String;)Lcopy/google/json/stream/JsonWriter;

    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcopy/google/json/stream/JsonWriter;->value(J)Lcopy/google/json/stream/JsonWriter;

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->endObject()Lcopy/google/json/stream/JsonWriter;

    goto :goto_5
.end method
