.class synthetic Lcopy/google/json/internal/bind/ObjectTypeAdapter$2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcopy/google/json/internal/bind/ObjectTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$copy$google$json$stream$JsonToken:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcopy/google/json/stream/JsonToken;->values()[Lcopy/google/json/stream/JsonToken;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcopy/google/json/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$copy$google$json$stream$JsonToken:[I

    :try_start_9
    sget-object v0, Lcopy/google/json/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$copy$google$json$stream$JsonToken:[I

    sget-object v1, Lcopy/google/json/stream/JsonToken;->BEGIN_ARRAY:Lcopy/google/json/stream/JsonToken;

    invoke-virtual {v1}, Lcopy/google/json/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_56

    :goto_14
    :try_start_14
    sget-object v0, Lcopy/google/json/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$copy$google$json$stream$JsonToken:[I

    sget-object v1, Lcopy/google/json/stream/JsonToken;->BEGIN_OBJECT:Lcopy/google/json/stream/JsonToken;

    invoke-virtual {v1}, Lcopy/google/json/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_54

    :goto_1f
    :try_start_1f
    sget-object v0, Lcopy/google/json/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$copy$google$json$stream$JsonToken:[I

    sget-object v1, Lcopy/google/json/stream/JsonToken;->STRING:Lcopy/google/json/stream/JsonToken;

    invoke-virtual {v1}, Lcopy/google/json/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_52

    :goto_2a
    :try_start_2a
    sget-object v0, Lcopy/google/json/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$copy$google$json$stream$JsonToken:[I

    sget-object v1, Lcopy/google/json/stream/JsonToken;->NUMBER:Lcopy/google/json/stream/JsonToken;

    invoke-virtual {v1}, Lcopy/google/json/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_50

    :goto_35
    :try_start_35
    sget-object v0, Lcopy/google/json/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$copy$google$json$stream$JsonToken:[I

    sget-object v1, Lcopy/google/json/stream/JsonToken;->BOOLEAN:Lcopy/google/json/stream/JsonToken;

    invoke-virtual {v1}, Lcopy/google/json/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_4e

    :goto_40
    :try_start_40
    sget-object v0, Lcopy/google/json/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$copy$google$json$stream$JsonToken:[I

    sget-object v1, Lcopy/google/json/stream/JsonToken;->NULL:Lcopy/google/json/stream/JsonToken;

    invoke-virtual {v1}, Lcopy/google/json/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_4c

    :goto_4b
    return-void

    :catch_4c
    move-exception v0

    goto :goto_4b

    :catch_4e
    move-exception v0

    goto :goto_40

    :catch_50
    move-exception v0

    goto :goto_35

    :catch_52
    move-exception v0

    goto :goto_2a

    :catch_54
    move-exception v0

    goto :goto_1f

    :catch_56
    move-exception v0

    goto :goto_14
.end method
