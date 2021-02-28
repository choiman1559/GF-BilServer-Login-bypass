.class public final Lcopy/google/json/JSON;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcopy/google/json/JSON$FutureTypeAdapter;
    }
.end annotation


# static fields
.field static final DEFAULT_COMPLEX_MAP_KEYS:Z = false

.field static final DEFAULT_ESCAPE_HTML:Z = true

.field static final DEFAULT_JSON_NON_EXECUTABLE:Z = false

.field static final DEFAULT_LENIENT:Z = false

.field static final DEFAULT_PRETTY_PRINT:Z = false

.field static final DEFAULT_SERIALIZE_NULLS:Z = false

.field static final DEFAULT_SPECIALIZE_FLOAT_VALUES:Z = false

.field private static final JSON_NON_EXECUTABLE_PREFIX:Ljava/lang/String; = ")]}\'\n"

.field private static final NULL_KEY_SURROGATE:Lcopy/google/json/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/reflect/TypeToken",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final builderFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcopy/google/json/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field final builderHierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcopy/google/json/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final calls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcopy/google/json/reflect/TypeToken",
            "<*>;",
            "Lcopy/google/json/JSON$FutureTypeAdapter",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field final complexMapKeySerialization:Z

.field private final constructorConstructor:Lcopy/google/json/internal/ConstructorConstructor;

.field final datePattern:Ljava/lang/String;

.field final dateStyle:I

.field final excluder:Lcopy/google/json/internal/Excluder;

.field final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcopy/google/json/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field final fieldNamingStrategy:Lcopy/google/json/FieldNamingStrategy;

.field final generateNonExecutableJson:Z

.field final htmlSafe:Z

.field final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcopy/google/json/InstanceCreator",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final jsonAdapterFactory:Lcopy/google/json/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

.field final lenient:Z

.field final longSerializationPolicy:Lcopy/google/json/LongSerializationPolicy;

.field final prettyPrinting:Z

.field final serializeNulls:Z

.field final serializeSpecialFloatingPointValues:Z

.field final timeStyle:I

.field private final typeTokenCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcopy/google/json/reflect/TypeToken",
            "<*>;",
            "Lcopy/google/json/TypeAdapter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcopy/google/json/reflect/TypeToken;->get(Ljava/lang/Class;)Lcopy/google/json/reflect/TypeToken;

    move-result-object v0

    sput-object v0, Lcopy/google/json/JSON;->NULL_KEY_SURROGATE:Lcopy/google/json/reflect/TypeToken;

    return-void
.end method

.method public constructor <init>()V
    .registers 19

    sget-object v1, Lcopy/google/json/internal/Excluder;->DEFAULT:Lcopy/google/json/internal/Excluder;

    sget-object v2, Lcopy/google/json/FieldNamingPolicy;->IDENTITY:Lcopy/google/json/FieldNamingPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcopy/google/json/LongSerializationPolicy;->DEFAULT:Lcopy/google/json/LongSerializationPolicy;

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v17}, Lcopy/google/json/JSON;-><init>(Lcopy/google/json/internal/Excluder;Lcopy/google/json/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcopy/google/json/LongSerializationPolicy;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcopy/google/json/internal/Excluder;Lcopy/google/json/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcopy/google/json/LongSerializationPolicy;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/internal/Excluder;",
            "Lcopy/google/json/FieldNamingStrategy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcopy/google/json/InstanceCreator",
            "<*>;>;ZZZZZZZ",
            "Lcopy/google/json/LongSerializationPolicy;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcopy/google/json/TypeAdapterFactory;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcopy/google/json/TypeAdapterFactory;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcopy/google/json/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, Lcopy/google/json/JSON;->calls:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcopy/google/json/JSON;->typeTokenCache:Ljava/util/Map;

    iput-object p1, p0, Lcopy/google/json/JSON;->excluder:Lcopy/google/json/internal/Excluder;

    iput-object p2, p0, Lcopy/google/json/JSON;->fieldNamingStrategy:Lcopy/google/json/FieldNamingStrategy;

    iput-object p3, p0, Lcopy/google/json/JSON;->instanceCreators:Ljava/util/Map;

    new-instance v1, Lcopy/google/json/internal/ConstructorConstructor;

    invoke-direct {v1, p3}, Lcopy/google/json/internal/ConstructorConstructor;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcopy/google/json/JSON;->constructorConstructor:Lcopy/google/json/internal/ConstructorConstructor;

    iput-boolean p4, p0, Lcopy/google/json/JSON;->serializeNulls:Z

    iput-boolean p5, p0, Lcopy/google/json/JSON;->complexMapKeySerialization:Z

    iput-boolean p6, p0, Lcopy/google/json/JSON;->generateNonExecutableJson:Z

    iput-boolean p7, p0, Lcopy/google/json/JSON;->htmlSafe:Z

    iput-boolean p8, p0, Lcopy/google/json/JSON;->prettyPrinting:Z

    iput-boolean p9, p0, Lcopy/google/json/JSON;->lenient:Z

    move/from16 v0, p10

    iput-boolean v0, p0, Lcopy/google/json/JSON;->serializeSpecialFloatingPointValues:Z

    move-object/from16 v0, p11

    iput-object v0, p0, Lcopy/google/json/JSON;->longSerializationPolicy:Lcopy/google/json/LongSerializationPolicy;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcopy/google/json/JSON;->datePattern:Ljava/lang/String;

    move/from16 v0, p13

    iput v0, p0, Lcopy/google/json/JSON;->dateStyle:I

    move/from16 v0, p14

    iput v0, p0, Lcopy/google/json/JSON;->timeStyle:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lcopy/google/json/JSON;->builderFactories:Ljava/util/List;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcopy/google/json/JSON;->builderHierarchyFactories:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcopy/google/json/internal/bind/TypeAdapters;->JSON_ELEMENT_FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcopy/google/json/internal/bind/ObjectTypeAdapter;->FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p17

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcopy/google/json/internal/bind/TypeAdapters;->STRING_FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcopy/google/json/internal/bind/TypeAdapters;->INTEGER_FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcopy/google/json/internal/bind/TypeAdapters;->BOOLEAN_FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcopy/google/json/internal/bind/TypeAdapters;->BYTE_FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcopy/google/json/internal/bind/TypeAdapters;->SHORT_FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p11 .. p11}, Lcopy/google/json/JSON;->longAdapter(Lcopy/google/json/LongSerializationPolicy;)Lcopy/google/json/TypeAdapter;

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Long;

    invoke-static {v3, v4, v2}, Lcopy/google/json/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcopy/google/json/TypeAdapter;)Lcopy/google/json/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Double;

    move/from16 v0, p10

    invoke-direct {p0, v0}, Lcopy/google/json/JSON;->doubleAdapter(Z)Lcopy/google/json/TypeAdapter;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcopy/google/json/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcopy/google/json/TypeAdapter;)Lcopy/google/json/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    move/from16 v0, p10

    invoke-direct {p0, v0}, Lcopy/google/json/JSON;->floatAdapter(Z)Lcopy/google/json/TypeAdapter;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcopy/google/json/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcopy/google/json/TypeAdapter;)Lcopy/google/json/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcopy/google/json/internal/bind/TypeAdapters;->NUMBER_FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcopy/google/json/internal/bind/TypeAdapters;->ATOMIC_INTEGER_FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcopy/google/json/internal/bind/TypeAdapters;->ATOMIC_BOOLEAN_FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v2}, Lcopy/google/json/JSON;->atomicLongAdapter(Lcopy/google/json/TypeAdapter;)Lcopy/google/json/TypeAdapter;

    move-result-object v4

    invoke-static {v3, v4}, Lcopy/google/json/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcopy/google/json/TypeAdapter;)Lcopy/google/json/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v3, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v2}, Lcopy/google/json/JSON;->atomicLongArrayAdapter(Lcopy/google/json/TypeAdapter;)Lcopy/google/json/TypeAdapter;

    move-result-object v2

    invoke-static {v3, v2}, Lcopy/google/json/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcopy/google/json/TypeAdapter;)Lcopy/google/json/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcopy/google/json/internal/bind/TypeAdapters;->ATOMIC_INTEGER_ARRAY_FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcopy/google/json/internal/bind/TypeAdapters;->CHARACTER_FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcopy/google/json/internal/bind/TypeAdapters;->STRING_BUILDER_FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcopy/google/json/internal/bind/TypeAdapters;->STRING_BUFFER_FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v2, Ljava/math/BigDecimal;

    sget-object v3, Lcopy/google/json/internal/bind/TypeAdapters;->BIG_DECIMAL:Lcopy/google/json/TypeAdapter;

    invoke-static {v2, v3}, Lcopy/google/json/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcopy/google/json/TypeAdapter;)Lcopy/google/json/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v2, Ljava/math/BigInteger;

    sget-object v3, Lcopy/google/json/internal/bind/TypeAdapters;->BIG_INTEGER:Lcopy/google/json/TypeAdapter;

    invoke-static {v2, v3}, Lcopy/google/json/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcopy/google/json/TypeAdapter;)Lcopy/google/json/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcopy/google/json/internal/bind/TypeAdapters;->URL_FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcopy/google/json/internal/bind/TypeAdapters;->URI_FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcopy/google/json/internal/bind/TypeAdapters;->UUID_FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcopy/google/json/internal/bind/TypeAdapters;->CURRENCY_FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcopy/google/json/internal/bind/TypeAdapters;->LOCALE_FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcopy/google/json/internal/bind/TypeAdapters;->INET_ADDRESS_FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcopy/google/json/internal/bind/TypeAdapters;->BIT_SET_FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcopy/google/json/internal/bind/DateTypeAdapter;->FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcopy/google/json/internal/bind/TypeAdapters;->CALENDAR_FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcopy/google/json/internal/bind/TimeTypeAdapter;->FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcopy/google/json/internal/bind/SqlDateTypeAdapter;->FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcopy/google/json/internal/bind/TypeAdapters;->TIMESTAMP_FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcopy/google/json/internal/bind/ArrayTypeAdapter;->FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcopy/google/json/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcopy/google/json/internal/bind/CollectionTypeAdapterFactory;

    iget-object v3, p0, Lcopy/google/json/JSON;->constructorConstructor:Lcopy/google/json/internal/ConstructorConstructor;

    invoke-direct {v2, v3}, Lcopy/google/json/internal/bind/CollectionTypeAdapterFactory;-><init>(Lcopy/google/json/internal/ConstructorConstructor;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcopy/google/json/internal/bind/MapTypeAdapterFactory;

    iget-object v3, p0, Lcopy/google/json/JSON;->constructorConstructor:Lcopy/google/json/internal/ConstructorConstructor;

    invoke-direct {v2, v3, p5}, Lcopy/google/json/internal/bind/MapTypeAdapterFactory;-><init>(Lcopy/google/json/internal/ConstructorConstructor;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcopy/google/json/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    iget-object v3, p0, Lcopy/google/json/JSON;->constructorConstructor:Lcopy/google/json/internal/ConstructorConstructor;

    invoke-direct {v2, v3}, Lcopy/google/json/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;-><init>(Lcopy/google/json/internal/ConstructorConstructor;)V

    iput-object v2, p0, Lcopy/google/json/JSON;->jsonAdapterFactory:Lcopy/google/json/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    iget-object v2, p0, Lcopy/google/json/JSON;->jsonAdapterFactory:Lcopy/google/json/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcopy/google/json/internal/bind/TypeAdapters;->ENUM_FACTORY:Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;

    iget-object v3, p0, Lcopy/google/json/JSON;->constructorConstructor:Lcopy/google/json/internal/ConstructorConstructor;

    iget-object v4, p0, Lcopy/google/json/JSON;->jsonAdapterFactory:Lcopy/google/json/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-direct {v2, v3, p2, p1, v4}, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lcopy/google/json/internal/ConstructorConstructor;Lcopy/google/json/FieldNamingStrategy;Lcopy/google/json/internal/Excluder;Lcopy/google/json/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcopy/google/json/JSON;->factories:Ljava/util/List;

    return-void
.end method

.method private static assertFullConsumption(Ljava/lang/Object;Lcopy/google/json/stream/JsonReader;)V
    .registers 4

    if-eqz p0, :cond_20

    :try_start_2
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcopy/google/json/stream/JsonToken;->END_DOCUMENT:Lcopy/google/json/stream/JsonToken;

    if-eq v0, v1, :cond_20

    new-instance v0, Lcopy/google/json/JsonIOException;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcopy/google/json/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catch Lcopy/google/json/stream/MalformedJsonException; {:try_start_2 .. :try_end_12} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_19

    :catch_12
    move-exception v0

    new-instance v1, Lcopy/google/json/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcopy/google/json/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_19
    move-exception v0

    new-instance v1, Lcopy/google/json/JsonIOException;

    invoke-direct {v1, v0}, Lcopy/google/json/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_20
    return-void
.end method

.method private static atomicLongAdapter(Lcopy/google/json/TypeAdapter;)Lcopy/google/json/TypeAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcopy/google/json/TypeAdapter",
            "<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcopy/google/json/JSON$4;

    invoke-direct {v0, p0}, Lcopy/google/json/JSON$4;-><init>(Lcopy/google/json/TypeAdapter;)V

    invoke-virtual {v0}, Lcopy/google/json/JSON$4;->nullSafe()Lcopy/google/json/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method private static atomicLongArrayAdapter(Lcopy/google/json/TypeAdapter;)Lcopy/google/json/TypeAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcopy/google/json/TypeAdapter",
            "<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcopy/google/json/JSON$5;

    invoke-direct {v0, p0}, Lcopy/google/json/JSON$5;-><init>(Lcopy/google/json/TypeAdapter;)V

    invoke-virtual {v0}, Lcopy/google/json/JSON$5;->nullSafe()Lcopy/google/json/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method static checkValidFloatingPoint(D)V
    .registers 6

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    return-void
.end method

.method private doubleAdapter(Z)Lcopy/google/json/TypeAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcopy/google/json/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    sget-object v0, Lcopy/google/json/internal/bind/TypeAdapters;->DOUBLE:Lcopy/google/json/TypeAdapter;

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcopy/google/json/JSON$1;

    invoke-direct {v0, p0}, Lcopy/google/json/JSON$1;-><init>(Lcopy/google/json/JSON;)V

    goto :goto_4
.end method

.method private floatAdapter(Z)Lcopy/google/json/TypeAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcopy/google/json/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    sget-object v0, Lcopy/google/json/internal/bind/TypeAdapters;->FLOAT:Lcopy/google/json/TypeAdapter;

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcopy/google/json/JSON$2;

    invoke-direct {v0, p0}, Lcopy/google/json/JSON$2;-><init>(Lcopy/google/json/JSON;)V

    goto :goto_4
.end method

.method private static longAdapter(Lcopy/google/json/LongSerializationPolicy;)Lcopy/google/json/TypeAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/LongSerializationPolicy;",
            ")",
            "Lcopy/google/json/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcopy/google/json/LongSerializationPolicy;->DEFAULT:Lcopy/google/json/LongSerializationPolicy;

    if-ne p0, v0, :cond_7

    sget-object v0, Lcopy/google/json/internal/bind/TypeAdapters;->LONG:Lcopy/google/json/TypeAdapter;

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Lcopy/google/json/JSON$3;

    invoke-direct {v0}, Lcopy/google/json/JSON$3;-><init>()V

    goto :goto_6
.end method


# virtual methods
.method public excluder()Lcopy/google/json/internal/Excluder;
    .registers 2

    iget-object v0, p0, Lcopy/google/json/JSON;->excluder:Lcopy/google/json/internal/Excluder;

    return-object v0
.end method

.method public fieldNamingStrategy()Lcopy/google/json/FieldNamingStrategy;
    .registers 2

    iget-object v0, p0, Lcopy/google/json/JSON;->fieldNamingStrategy:Lcopy/google/json/FieldNamingStrategy;

    return-object v0
.end method

.method public fromJson(Lcopy/google/json/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcopy/google/json/JsonElement;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcopy/google/json/JsonSyntaxException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcopy/google/json/JSON;->fromJson(Lcopy/google/json/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcopy/google/json/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Lcopy/google/json/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcopy/google/json/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcopy/google/json/JsonSyntaxException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcopy/google/json/internal/bind/JsonTreeReader;

    invoke-direct {v0, p1}, Lcopy/google/json/internal/bind/JsonTreeReader;-><init>(Lcopy/google/json/JsonElement;)V

    invoke-virtual {p0, v0, p2}, Lcopy/google/json/JSON;->fromJson(Lcopy/google/json/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public fromJson(Lcopy/google/json/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcopy/google/json/stream/JsonReader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcopy/google/json/JsonIOException;,
            Lcopy/google/json/JsonSyntaxException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->isLenient()Z

    move-result v2

    invoke-virtual {p1, v1}, Lcopy/google/json/stream/JsonReader;->setLenient(Z)V

    :try_start_8
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    const/4 v1, 0x0

    invoke-static {p2}, Lcopy/google/json/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcopy/google/json/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcopy/google/json/JSON;->getAdapter(Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcopy/google/json/TypeAdapter;->read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_17} :catch_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_17} :catch_2f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_17} :catch_36
    .catch Ljava/lang/AssertionError; {:try_start_8 .. :try_end_17} :catch_3d
    .catchall {:try_start_8 .. :try_end_17} :catchall_2a

    move-result-object v0

    invoke-virtual {p1, v2}, Lcopy/google/json/stream/JsonReader;->setLenient(Z)V

    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    if-eqz v1, :cond_24

    const/4 v0, 0x0

    invoke-virtual {p1, v2}, Lcopy/google/json/stream/JsonReader;->setLenient(Z)V

    goto :goto_1b

    :cond_24
    :try_start_24
    new-instance v1, Lcopy/google/json/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcopy/google/json/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    invoke-virtual {p1, v2}, Lcopy/google/json/stream/JsonReader;->setLenient(Z)V

    throw v0

    :catch_2f
    move-exception v0

    :try_start_30
    new-instance v1, Lcopy/google/json/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcopy/google/json/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_36
    move-exception v0

    new-instance v1, Lcopy/google/json/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcopy/google/json/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3d
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AssertionError : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
    :try_end_5e
    .catchall {:try_start_30 .. :try_end_5e} :catchall_2a
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcopy/google/json/JsonSyntaxException;,
            Lcopy/google/json/JsonIOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcopy/google/json/JSON;->newJsonReader(Ljava/io/Reader;)Lcopy/google/json/stream/JsonReader;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcopy/google/json/JSON;->fromJson(Lcopy/google/json/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcopy/google/json/JSON;->assertFullConsumption(Ljava/lang/Object;Lcopy/google/json/stream/JsonReader;)V

    invoke-static {p2}, Lcopy/google/json/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcopy/google/json/JsonIOException;,
            Lcopy/google/json/JsonSyntaxException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcopy/google/json/JSON;->newJsonReader(Ljava/io/Reader;)Lcopy/google/json/stream/JsonReader;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcopy/google/json/JSON;->fromJson(Lcopy/google/json/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcopy/google/json/JSON;->assertFullConsumption(Ljava/lang/Object;Lcopy/google/json/stream/JsonReader;)V

    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcopy/google/json/JsonSyntaxException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcopy/google/json/JSON;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcopy/google/json/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcopy/google/json/JsonSyntaxException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcopy/google/json/JSON;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public getAdapter(Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcopy/google/json/reflect/TypeToken",
            "<TT;>;)",
            "Lcopy/google/json/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    iget-object v1, p0, Lcopy/google/json/JSON;->typeTokenCache:Ljava/util/Map;

    if-nez p1, :cond_f

    sget-object v0, Lcopy/google/json/JSON;->NULL_KEY_SURROGATE:Lcopy/google/json/reflect/TypeToken;

    :goto_6
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/TypeAdapter;

    if-eqz v0, :cond_11

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    move-object v0, p1

    goto :goto_6

    :cond_11
    iget-object v0, p0, Lcopy/google/json/JSON;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_89

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcopy/google/json/JSON;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    :goto_29
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JSON$FutureTypeAdapter;

    if-nez v0, :cond_e

    :try_start_31
    new-instance v3, Lcopy/google/json/JSON$FutureTypeAdapter;

    invoke-direct {v3}, Lcopy/google/json/JSON$FutureTypeAdapter;-><init>()V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcopy/google/json/JSON;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v0, p0, p1}, Lcopy/google/json/TypeAdapterFactory;->create(Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {v3, v0}, Lcopy/google/json/JSON$FutureTypeAdapter;->setDelegate(Lcopy/google/json/TypeAdapter;)V

    iget-object v3, p0, Lcopy/google/json/JSON;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catchall {:try_start_31 .. :try_end_59} :catchall_7d

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcopy/google/json/JSON;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_e

    :cond_64
    :try_start_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7d
    .catchall {:try_start_64 .. :try_end_7d} :catchall_7d

    :catchall_7d
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_88

    iget-object v1, p0, Lcopy/google/json/JSON;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_88
    throw v0

    :cond_89
    move-object v2, v0

    goto :goto_29
.end method

.method public getAdapter(Ljava/lang/Class;)Lcopy/google/json/TypeAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcopy/google/json/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcopy/google/json/reflect/TypeToken;->get(Ljava/lang/Class;)Lcopy/google/json/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcopy/google/json/JSON;->getAdapter(Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getDelegateAdapter(Lcopy/google/json/TypeAdapterFactory;Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcopy/google/json/TypeAdapterFactory;",
            "Lcopy/google/json/reflect/TypeToken",
            "<TT;>;)",
            "Lcopy/google/json/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/JSON;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object p1, p0, Lcopy/google/json/JSON;->jsonAdapterFactory:Lcopy/google/json/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    :cond_a
    const/4 v0, 0x0

    iget-object v1, p0, Lcopy/google/json/JSON;->factories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/TypeAdapterFactory;

    if-nez v1, :cond_25

    if-ne v0, p1, :cond_12

    const/4 v0, 0x1

    move v1, v0

    goto :goto_12

    :cond_25
    invoke-interface {v0, p0, p2}, Lcopy/google/json/TypeAdapterFactory;->create(Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;

    move-result-object v0

    if-eqz v0, :cond_12

    return-object v0

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSON cannot serialize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public htmlSafe()Z
    .registers 2

    iget-boolean v0, p0, Lcopy/google/json/JSON;->htmlSafe:Z

    return v0
.end method

.method public newBuilder()Lcopy/google/json/GsonBuilder;
    .registers 2

    new-instance v0, Lcopy/google/json/GsonBuilder;

    invoke-direct {v0, p0}, Lcopy/google/json/GsonBuilder;-><init>(Lcopy/google/json/JSON;)V

    return-object v0
.end method

.method public newJsonReader(Ljava/io/Reader;)Lcopy/google/json/stream/JsonReader;
    .registers 4

    new-instance v0, Lcopy/google/json/stream/JsonReader;

    invoke-direct {v0, p1}, Lcopy/google/json/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    iget-boolean v1, p0, Lcopy/google/json/JSON;->lenient:Z

    invoke-virtual {v0, v1}, Lcopy/google/json/stream/JsonReader;->setLenient(Z)V

    return-object v0
.end method

.method public newJsonWriter(Ljava/io/Writer;)Lcopy/google/json/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcopy/google/json/JSON;->generateNonExecutableJson:Z

    if-eqz v0, :cond_9

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_9
    new-instance v0, Lcopy/google/json/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcopy/google/json/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    iget-boolean v1, p0, Lcopy/google/json/JSON;->prettyPrinting:Z

    if-eqz v1, :cond_17

    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcopy/google/json/stream/JsonWriter;->setIndent(Ljava/lang/String;)V

    :cond_17
    iget-boolean v1, p0, Lcopy/google/json/JSON;->serializeNulls:Z

    invoke-virtual {v0, v1}, Lcopy/google/json/stream/JsonWriter;->setSerializeNulls(Z)V

    return-object v0
.end method

.method public serializeNulls()Z
    .registers 2

    iget-boolean v0, p0, Lcopy/google/json/JSON;->serializeNulls:Z

    return v0
.end method

.method public toJson(Lcopy/google/json/JsonElement;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcopy/google/json/JSON;->toJson(Lcopy/google/json/JsonElement;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_9

    sget-object v0, Lcopy/google/json/JsonNull;->INSTANCE:Lcopy/google/json/JsonNull;

    invoke-virtual {p0, v0}, Lcopy/google/json/JSON;->toJson(Lcopy/google/json/JsonElement;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcopy/google/json/JSON;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcopy/google/json/JSON;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson(Lcopy/google/json/JsonElement;Lcopy/google/json/stream/JsonWriter;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcopy/google/json/JsonIOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcopy/google/json/stream/JsonWriter;->isLenient()Z

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcopy/google/json/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p2}, Lcopy/google/json/stream/JsonWriter;->isHtmlSafe()Z

    move-result v2

    iget-boolean v0, p0, Lcopy/google/json/JSON;->htmlSafe:Z

    invoke-virtual {p2, v0}, Lcopy/google/json/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p2}, Lcopy/google/json/stream/JsonWriter;->getSerializeNulls()Z

    move-result v3

    iget-boolean v0, p0, Lcopy/google/json/JSON;->serializeNulls:Z

    invoke-virtual {p2, v0}, Lcopy/google/json/stream/JsonWriter;->setSerializeNulls(Z)V

    :try_start_1a
    invoke-static {p1, p2}, Lcopy/google/json/internal/Streams;->write(Lcopy/google/json/JsonElement;Lcopy/google/json/stream/JsonWriter;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_27
    .catch Ljava/lang/AssertionError; {:try_start_1a .. :try_end_1d} :catch_39
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2e

    invoke-virtual {p2, v1}, Lcopy/google/json/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p2, v2}, Lcopy/google/json/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p2, v3}, Lcopy/google/json/stream/JsonWriter;->setSerializeNulls(Z)V

    return-void

    :catch_27
    move-exception v0

    :try_start_28
    new-instance v4, Lcopy/google/json/JsonIOException;

    invoke-direct {v4, v0}, Lcopy/google/json/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v0

    invoke-virtual {p2, v1}, Lcopy/google/json/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p2, v2}, Lcopy/google/json/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p2, v3}, Lcopy/google/json/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v0

    :catch_39
    move-exception v0

    :try_start_3a
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AssertionError : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v4
    :try_end_5a
    .catchall {:try_start_3a .. :try_end_5a} :catchall_2e
.end method

.method public toJson(Lcopy/google/json/JsonElement;Ljava/lang/Appendable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcopy/google/json/JsonIOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcopy/google/json/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcopy/google/json/JSON;->newJsonWriter(Ljava/io/Writer;)Lcopy/google/json/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcopy/google/json/JSON;->toJson(Lcopy/google/json/JsonElement;Lcopy/google/json/stream/JsonWriter;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    new-instance v1, Lcopy/google/json/JsonIOException;

    invoke-direct {v1, v0}, Lcopy/google/json/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcopy/google/json/JsonIOException;
        }
    .end annotation

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcopy/google/json/JSON;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    :goto_9
    return-void

    :cond_a
    sget-object v0, Lcopy/google/json/JsonNull;->INSTANCE:Lcopy/google/json/JsonNull;

    invoke-virtual {p0, v0, p2}, Lcopy/google/json/JSON;->toJson(Lcopy/google/json/JsonElement;Ljava/lang/Appendable;)V

    goto :goto_9
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcopy/google/json/stream/JsonWriter;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcopy/google/json/JsonIOException;
        }
    .end annotation

    invoke-static {p2}, Lcopy/google/json/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcopy/google/json/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcopy/google/json/JSON;->getAdapter(Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;

    move-result-object v0

    invoke-virtual {p3}, Lcopy/google/json/stream/JsonWriter;->isLenient()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcopy/google/json/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p3}, Lcopy/google/json/stream/JsonWriter;->isHtmlSafe()Z

    move-result v2

    iget-boolean v3, p0, Lcopy/google/json/JSON;->htmlSafe:Z

    invoke-virtual {p3, v3}, Lcopy/google/json/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p3}, Lcopy/google/json/stream/JsonWriter;->getSerializeNulls()Z

    move-result v3

    iget-boolean v4, p0, Lcopy/google/json/JSON;->serializeNulls:Z

    invoke-virtual {p3, v4}, Lcopy/google/json/stream/JsonWriter;->setSerializeNulls(Z)V

    :try_start_22
    invoke-virtual {v0, p3, p1}, Lcopy/google/json/TypeAdapter;->write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_2f
    .catch Ljava/lang/AssertionError; {:try_start_22 .. :try_end_25} :catch_41
    .catchall {:try_start_22 .. :try_end_25} :catchall_36

    invoke-virtual {p3, v1}, Lcopy/google/json/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p3, v2}, Lcopy/google/json/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p3, v3}, Lcopy/google/json/stream/JsonWriter;->setSerializeNulls(Z)V

    return-void

    :catch_2f
    move-exception v0

    :try_start_30
    new-instance v4, Lcopy/google/json/JsonIOException;

    invoke-direct {v4, v0}, Lcopy/google/json/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception v0

    invoke-virtual {p3, v1}, Lcopy/google/json/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p3, v2}, Lcopy/google/json/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p3, v3}, Lcopy/google/json/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v0

    :catch_41
    move-exception v0

    :try_start_42
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AssertionError : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v4
    :try_end_62
    .catchall {:try_start_42 .. :try_end_62} :catchall_36
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcopy/google/json/JsonIOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p3}, Lcopy/google/json/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcopy/google/json/JSON;->newJsonWriter(Ljava/io/Writer;)Lcopy/google/json/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcopy/google/json/JSON;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcopy/google/json/stream/JsonWriter;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    new-instance v1, Lcopy/google/json/JsonIOException;

    invoke-direct {v1, v0}, Lcopy/google/json/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toJsonTree(Ljava/lang/Object;)Lcopy/google/json/JsonElement;
    .registers 3

    if-nez p1, :cond_5

    sget-object v0, Lcopy/google/json/JsonNull;->INSTANCE:Lcopy/google/json/JsonNull;

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcopy/google/json/JSON;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcopy/google/json/JsonElement;

    move-result-object v0

    goto :goto_4
.end method

.method public toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcopy/google/json/JsonElement;
    .registers 4

    new-instance v0, Lcopy/google/json/internal/bind/JsonTreeWriter;

    invoke-direct {v0}, Lcopy/google/json/internal/bind/JsonTreeWriter;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcopy/google/json/JSON;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcopy/google/json/stream/JsonWriter;)V

    invoke-virtual {v0}, Lcopy/google/json/internal/bind/JsonTreeWriter;->get()Lcopy/google/json/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcopy/google/json/JSON;->serializeNulls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcopy/google/json/JSON;->factories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcopy/google/json/JSON;->constructorConstructor:Lcopy/google/json/internal/ConstructorConstructor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
