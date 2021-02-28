.class public final Lcopy/google/json/GsonBuilder;
.super Ljava/lang/Object;


# instance fields
.field private complexMapKeySerialization:Z

.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

.field private escapeHtmlChars:Z

.field private excluder:Lcopy/google/json/internal/Excluder;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcopy/google/json/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private fieldNamingPolicy:Lcopy/google/json/FieldNamingStrategy;

.field private generateNonExecutableJson:Z

.field private final hierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcopy/google/json/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final instanceCreators:Ljava/util/Map;
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

.field private lenient:Z

.field private longSerializationPolicy:Lcopy/google/json/LongSerializationPolicy;

.field private prettyPrinting:Z

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

.field private timeStyle:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcopy/google/json/internal/Excluder;->DEFAULT:Lcopy/google/json/internal/Excluder;

    iput-object v0, p0, Lcopy/google/json/GsonBuilder;->excluder:Lcopy/google/json/internal/Excluder;

    sget-object v0, Lcopy/google/json/LongSerializationPolicy;->DEFAULT:Lcopy/google/json/LongSerializationPolicy;

    iput-object v0, p0, Lcopy/google/json/GsonBuilder;->longSerializationPolicy:Lcopy/google/json/LongSerializationPolicy;

    sget-object v0, Lcopy/google/json/FieldNamingPolicy;->IDENTITY:Lcopy/google/json/FieldNamingPolicy;

    iput-object v0, p0, Lcopy/google/json/GsonBuilder;->fieldNamingPolicy:Lcopy/google/json/FieldNamingStrategy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcopy/google/json/GsonBuilder;->instanceCreators:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcopy/google/json/GsonBuilder;->factories:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcopy/google/json/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    iput-boolean v1, p0, Lcopy/google/json/GsonBuilder;->serializeNulls:Z

    iput v2, p0, Lcopy/google/json/GsonBuilder;->dateStyle:I

    iput v2, p0, Lcopy/google/json/GsonBuilder;->timeStyle:I

    iput-boolean v1, p0, Lcopy/google/json/GsonBuilder;->complexMapKeySerialization:Z

    iput-boolean v1, p0, Lcopy/google/json/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcopy/google/json/GsonBuilder;->escapeHtmlChars:Z

    iput-boolean v1, p0, Lcopy/google/json/GsonBuilder;->prettyPrinting:Z

    iput-boolean v1, p0, Lcopy/google/json/GsonBuilder;->generateNonExecutableJson:Z

    iput-boolean v1, p0, Lcopy/google/json/GsonBuilder;->lenient:Z

    return-void
.end method

.method constructor <init>(Lcopy/google/json/JSON;)V
    .registers 5

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcopy/google/json/internal/Excluder;->DEFAULT:Lcopy/google/json/internal/Excluder;

    iput-object v0, p0, Lcopy/google/json/GsonBuilder;->excluder:Lcopy/google/json/internal/Excluder;

    sget-object v0, Lcopy/google/json/LongSerializationPolicy;->DEFAULT:Lcopy/google/json/LongSerializationPolicy;

    iput-object v0, p0, Lcopy/google/json/GsonBuilder;->longSerializationPolicy:Lcopy/google/json/LongSerializationPolicy;

    sget-object v0, Lcopy/google/json/FieldNamingPolicy;->IDENTITY:Lcopy/google/json/FieldNamingPolicy;

    iput-object v0, p0, Lcopy/google/json/GsonBuilder;->fieldNamingPolicy:Lcopy/google/json/FieldNamingStrategy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcopy/google/json/GsonBuilder;->instanceCreators:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcopy/google/json/GsonBuilder;->factories:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcopy/google/json/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    iput-boolean v1, p0, Lcopy/google/json/GsonBuilder;->serializeNulls:Z

    iput v2, p0, Lcopy/google/json/GsonBuilder;->dateStyle:I

    iput v2, p0, Lcopy/google/json/GsonBuilder;->timeStyle:I

    iput-boolean v1, p0, Lcopy/google/json/GsonBuilder;->complexMapKeySerialization:Z

    iput-boolean v1, p0, Lcopy/google/json/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcopy/google/json/GsonBuilder;->escapeHtmlChars:Z

    iput-boolean v1, p0, Lcopy/google/json/GsonBuilder;->prettyPrinting:Z

    iput-boolean v1, p0, Lcopy/google/json/GsonBuilder;->generateNonExecutableJson:Z

    iput-boolean v1, p0, Lcopy/google/json/GsonBuilder;->lenient:Z

    iget-object v0, p1, Lcopy/google/json/JSON;->excluder:Lcopy/google/json/internal/Excluder;

    iput-object v0, p0, Lcopy/google/json/GsonBuilder;->excluder:Lcopy/google/json/internal/Excluder;

    iget-object v0, p1, Lcopy/google/json/JSON;->fieldNamingStrategy:Lcopy/google/json/FieldNamingStrategy;

    iput-object v0, p0, Lcopy/google/json/GsonBuilder;->fieldNamingPolicy:Lcopy/google/json/FieldNamingStrategy;

    iget-object v0, p0, Lcopy/google/json/GsonBuilder;->instanceCreators:Ljava/util/Map;

    iget-object v1, p1, Lcopy/google/json/JSON;->instanceCreators:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p1, Lcopy/google/json/JSON;->serializeNulls:Z

    iput-boolean v0, p0, Lcopy/google/json/GsonBuilder;->serializeNulls:Z

    iget-boolean v0, p1, Lcopy/google/json/JSON;->complexMapKeySerialization:Z

    iput-boolean v0, p0, Lcopy/google/json/GsonBuilder;->complexMapKeySerialization:Z

    iget-boolean v0, p1, Lcopy/google/json/JSON;->generateNonExecutableJson:Z

    iput-boolean v0, p0, Lcopy/google/json/GsonBuilder;->generateNonExecutableJson:Z

    iget-boolean v0, p1, Lcopy/google/json/JSON;->htmlSafe:Z

    iput-boolean v0, p0, Lcopy/google/json/GsonBuilder;->escapeHtmlChars:Z

    iget-boolean v0, p1, Lcopy/google/json/JSON;->prettyPrinting:Z

    iput-boolean v0, p0, Lcopy/google/json/GsonBuilder;->prettyPrinting:Z

    iget-boolean v0, p1, Lcopy/google/json/JSON;->lenient:Z

    iput-boolean v0, p0, Lcopy/google/json/GsonBuilder;->lenient:Z

    iget-boolean v0, p1, Lcopy/google/json/JSON;->serializeSpecialFloatingPointValues:Z

    iput-boolean v0, p0, Lcopy/google/json/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    iget-object v0, p1, Lcopy/google/json/JSON;->longSerializationPolicy:Lcopy/google/json/LongSerializationPolicy;

    iput-object v0, p0, Lcopy/google/json/GsonBuilder;->longSerializationPolicy:Lcopy/google/json/LongSerializationPolicy;

    iget-object v0, p1, Lcopy/google/json/JSON;->datePattern:Ljava/lang/String;

    iput-object v0, p0, Lcopy/google/json/GsonBuilder;->datePattern:Ljava/lang/String;

    iget v0, p1, Lcopy/google/json/JSON;->dateStyle:I

    iput v0, p0, Lcopy/google/json/GsonBuilder;->dateStyle:I

    iget v0, p1, Lcopy/google/json/JSON;->timeStyle:I

    iput v0, p0, Lcopy/google/json/GsonBuilder;->timeStyle:I

    iget-object v0, p0, Lcopy/google/json/GsonBuilder;->factories:Ljava/util/List;

    iget-object v1, p1, Lcopy/google/json/JSON;->builderFactories:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcopy/google/json/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    iget-object v1, p1, Lcopy/google/json/JSON;->builderHierarchyFactories:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcopy/google/json/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x2

    if-eqz p1, :cond_40

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    new-instance v2, Lcopy/google/json/DefaultDateTypeAdapter;

    const-class v0, Ljava/util/Date;

    invoke-direct {v2, v0, p1}, Lcopy/google/json/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v1, Lcopy/google/json/DefaultDateTypeAdapter;

    const-class v0, Ljava/sql/Timestamp;

    invoke-direct {v1, v0, p1}, Lcopy/google/json/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v0, Lcopy/google/json/DefaultDateTypeAdapter;

    const-class v3, Ljava/sql/Date;

    invoke-direct {v0, v3, p1}, Lcopy/google/json/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_24
    const-class v3, Ljava/util/Date;

    invoke-static {v3, v2}, Lcopy/google/json/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcopy/google/json/TypeAdapter;)Lcopy/google/json/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v2, Ljava/sql/Timestamp;

    invoke-static {v2, v1}, Lcopy/google/json/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcopy/google/json/TypeAdapter;)Lcopy/google/json/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Date;

    invoke-static {v1, v0}, Lcopy/google/json/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcopy/google/json/TypeAdapter;)Lcopy/google/json/TypeAdapterFactory;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3f
    return-void

    :cond_40
    if-eq p2, v2, :cond_3f

    if-eq p3, v2, :cond_3f

    new-instance v2, Lcopy/google/json/DefaultDateTypeAdapter;

    const-class v0, Ljava/util/Date;

    invoke-direct {v2, v0, p2, p3}, Lcopy/google/json/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    new-instance v1, Lcopy/google/json/DefaultDateTypeAdapter;

    const-class v0, Ljava/sql/Timestamp;

    invoke-direct {v1, v0, p2, p3}, Lcopy/google/json/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    new-instance v0, Lcopy/google/json/DefaultDateTypeAdapter;

    const-class v3, Ljava/sql/Date;

    invoke-direct {v0, v3, p2, p3}, Lcopy/google/json/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    goto :goto_24
.end method


# virtual methods
.method public addDeserializationExclusionStrategy(Lcopy/google/json/ExclusionStrategy;)Lcopy/google/json/GsonBuilder;
    .registers 5

    iget-object v0, p0, Lcopy/google/json/GsonBuilder;->excluder:Lcopy/google/json/internal/Excluder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcopy/google/json/internal/Excluder;->withExclusionStrategy(Lcopy/google/json/ExclusionStrategy;ZZ)Lcopy/google/json/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/GsonBuilder;->excluder:Lcopy/google/json/internal/Excluder;

    return-object p0
.end method

.method public addSerializationExclusionStrategy(Lcopy/google/json/ExclusionStrategy;)Lcopy/google/json/GsonBuilder;
    .registers 5

    iget-object v0, p0, Lcopy/google/json/GsonBuilder;->excluder:Lcopy/google/json/internal/Excluder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcopy/google/json/internal/Excluder;->withExclusionStrategy(Lcopy/google/json/ExclusionStrategy;ZZ)Lcopy/google/json/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/GsonBuilder;->excluder:Lcopy/google/json/internal/Excluder;

    return-object p0
.end method

.method public create()Lcopy/google/json/JSON;
    .registers 21

    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcopy/google/json/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcopy/google/json/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcopy/google/json/GsonBuilder;->factories:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcopy/google/json/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcopy/google/json/GsonBuilder;->datePattern:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcopy/google/json/GsonBuilder;->dateStyle:I

    move-object/from16 v0, p0

    iget v4, v0, Lcopy/google/json/GsonBuilder;->timeStyle:I

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v2, v3, v4, v1}, Lcopy/google/json/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V

    new-instance v2, Lcopy/google/json/JSON;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcopy/google/json/GsonBuilder;->excluder:Lcopy/google/json/internal/Excluder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcopy/google/json/GsonBuilder;->fieldNamingPolicy:Lcopy/google/json/FieldNamingStrategy;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcopy/google/json/GsonBuilder;->instanceCreators:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcopy/google/json/GsonBuilder;->serializeNulls:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcopy/google/json/GsonBuilder;->complexMapKeySerialization:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcopy/google/json/GsonBuilder;->generateNonExecutableJson:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcopy/google/json/GsonBuilder;->escapeHtmlChars:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcopy/google/json/GsonBuilder;->prettyPrinting:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcopy/google/json/GsonBuilder;->lenient:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcopy/google/json/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcopy/google/json/GsonBuilder;->longSerializationPolicy:Lcopy/google/json/LongSerializationPolicy;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcopy/google/json/GsonBuilder;->datePattern:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcopy/google/json/GsonBuilder;->dateStyle:I

    move-object/from16 v0, p0

    iget v0, v0, Lcopy/google/json/GsonBuilder;->timeStyle:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcopy/google/json/GsonBuilder;->factories:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcopy/google/json/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-direct/range {v2 .. v19}, Lcopy/google/json/JSON;-><init>(Lcopy/google/json/internal/Excluder;Lcopy/google/json/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcopy/google/json/LongSerializationPolicy;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method public disableHtmlEscaping()Lcopy/google/json/GsonBuilder;
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcopy/google/json/GsonBuilder;->escapeHtmlChars:Z

    return-object p0
.end method

.method public disableInnerClassSerialization()Lcopy/google/json/GsonBuilder;
    .registers 2

    iget-object v0, p0, Lcopy/google/json/GsonBuilder;->excluder:Lcopy/google/json/internal/Excluder;

    invoke-virtual {v0}, Lcopy/google/json/internal/Excluder;->disableInnerClassSerialization()Lcopy/google/json/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/GsonBuilder;->excluder:Lcopy/google/json/internal/Excluder;

    return-object p0
.end method

.method public enableComplexMapKeySerialization()Lcopy/google/json/GsonBuilder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcopy/google/json/GsonBuilder;->complexMapKeySerialization:Z

    return-object p0
.end method

.method public varargs excludeFieldsWithModifiers([I)Lcopy/google/json/GsonBuilder;
    .registers 3

    iget-object v0, p0, Lcopy/google/json/GsonBuilder;->excluder:Lcopy/google/json/internal/Excluder;

    invoke-virtual {v0, p1}, Lcopy/google/json/internal/Excluder;->withModifiers([I)Lcopy/google/json/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/GsonBuilder;->excluder:Lcopy/google/json/internal/Excluder;

    return-object p0
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcopy/google/json/GsonBuilder;
    .registers 2

    iget-object v0, p0, Lcopy/google/json/GsonBuilder;->excluder:Lcopy/google/json/internal/Excluder;

    invoke-virtual {v0}, Lcopy/google/json/internal/Excluder;->excludeFieldsWithoutExposeAnnotation()Lcopy/google/json/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/GsonBuilder;->excluder:Lcopy/google/json/internal/Excluder;

    return-object p0
.end method

.method public generateNonExecutableJson()Lcopy/google/json/GsonBuilder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcopy/google/json/GsonBuilder;->generateNonExecutableJson:Z

    return-object p0
.end method

.method public registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcopy/google/json/GsonBuilder;
    .registers 5

    instance-of v0, p2, Lcopy/google/json/JsonSerializer;

    if-nez v0, :cond_10

    instance-of v0, p2, Lcopy/google/json/JsonDeserializer;

    if-nez v0, :cond_10

    instance-of v0, p2, Lcopy/google/json/InstanceCreator;

    if-nez v0, :cond_10

    instance-of v0, p2, Lcopy/google/json/TypeAdapter;

    if-eqz v0, :cond_49

    :cond_10
    const/4 v0, 0x1

    :goto_11
    invoke-static {v0}, Lcopy/google/json/internal/$Gson$Preconditions;->checkArgument(Z)V

    instance-of v0, p2, Lcopy/google/json/InstanceCreator;

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcopy/google/json/GsonBuilder;->instanceCreators:Ljava/util/Map;

    move-object v0, p2

    check-cast v0, Lcopy/google/json/InstanceCreator;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    instance-of v0, p2, Lcopy/google/json/JsonSerializer;

    if-nez v0, :cond_28

    instance-of v0, p2, Lcopy/google/json/JsonDeserializer;

    if-eqz v0, :cond_35

    :cond_28
    invoke-static {p1}, Lcopy/google/json/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcopy/google/json/reflect/TypeToken;

    move-result-object v0

    iget-object v1, p0, Lcopy/google/json/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {v0, p2}, Lcopy/google/json/internal/bind/TreeTypeAdapter;->newFactoryWithMatchRawType(Lcopy/google/json/reflect/TypeToken;Ljava/lang/Object;)Lcopy/google/json/TypeAdapterFactory;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_35
    instance-of v0, p2, Lcopy/google/json/TypeAdapter;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcopy/google/json/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {p1}, Lcopy/google/json/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcopy/google/json/reflect/TypeToken;

    move-result-object v1

    check-cast p2, Lcopy/google/json/TypeAdapter;

    invoke-static {v1, p2}, Lcopy/google/json/internal/bind/TypeAdapters;->newFactory(Lcopy/google/json/reflect/TypeToken;Lcopy/google/json/TypeAdapter;)Lcopy/google/json/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_48
    return-object p0

    :cond_49
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public registerTypeAdapterFactory(Lcopy/google/json/TypeAdapterFactory;)Lcopy/google/json/GsonBuilder;
    .registers 3

    iget-object v0, p0, Lcopy/google/json/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcopy/google/json/GsonBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcopy/google/json/GsonBuilder;"
        }
    .end annotation

    instance-of v0, p2, Lcopy/google/json/JsonSerializer;

    if-nez v0, :cond_c

    instance-of v0, p2, Lcopy/google/json/JsonDeserializer;

    if-nez v0, :cond_c

    instance-of v0, p2, Lcopy/google/json/TypeAdapter;

    if-eqz v0, :cond_31

    :cond_c
    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Lcopy/google/json/internal/$Gson$Preconditions;->checkArgument(Z)V

    instance-of v0, p2, Lcopy/google/json/JsonDeserializer;

    if-nez v0, :cond_18

    instance-of v0, p2, Lcopy/google/json/JsonSerializer;

    if-eqz v0, :cond_21

    :cond_18
    iget-object v0, p0, Lcopy/google/json/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-static {p1, p2}, Lcopy/google/json/internal/bind/TreeTypeAdapter;->newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcopy/google/json/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    instance-of v0, p2, Lcopy/google/json/TypeAdapter;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcopy/google/json/GsonBuilder;->factories:Ljava/util/List;

    check-cast p2, Lcopy/google/json/TypeAdapter;

    invoke-static {p1, p2}, Lcopy/google/json/internal/bind/TypeAdapters;->newTypeHierarchyFactory(Ljava/lang/Class;Lcopy/google/json/TypeAdapter;)Lcopy/google/json/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    return-object p0

    :cond_31
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public serializeNulls()Lcopy/google/json/GsonBuilder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcopy/google/json/GsonBuilder;->serializeNulls:Z

    return-object p0
.end method

.method public serializeSpecialFloatingPointValues()Lcopy/google/json/GsonBuilder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcopy/google/json/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    return-object p0
.end method

.method public setDateFormat(I)Lcopy/google/json/GsonBuilder;
    .registers 3

    iput p1, p0, Lcopy/google/json/GsonBuilder;->dateStyle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcopy/google/json/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public setDateFormat(II)Lcopy/google/json/GsonBuilder;
    .registers 4

    iput p1, p0, Lcopy/google/json/GsonBuilder;->dateStyle:I

    iput p2, p0, Lcopy/google/json/GsonBuilder;->timeStyle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcopy/google/json/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public setDateFormat(Ljava/lang/String;)Lcopy/google/json/GsonBuilder;
    .registers 2

    iput-object p1, p0, Lcopy/google/json/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setExclusionStrategies([Lcopy/google/json/ExclusionStrategy;)Lcopy/google/json/GsonBuilder;
    .registers 7

    const/4 v4, 0x1

    array-length v1, p1

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_12

    aget-object v2, p1, v0

    iget-object v3, p0, Lcopy/google/json/GsonBuilder;->excluder:Lcopy/google/json/internal/Excluder;

    invoke-virtual {v3, v2, v4, v4}, Lcopy/google/json/internal/Excluder;->withExclusionStrategy(Lcopy/google/json/ExclusionStrategy;ZZ)Lcopy/google/json/internal/Excluder;

    move-result-object v2

    iput-object v2, p0, Lcopy/google/json/GsonBuilder;->excluder:Lcopy/google/json/internal/Excluder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_12
    return-object p0
.end method

.method public setFieldNamingPolicy(Lcopy/google/json/FieldNamingPolicy;)Lcopy/google/json/GsonBuilder;
    .registers 2

    iput-object p1, p0, Lcopy/google/json/GsonBuilder;->fieldNamingPolicy:Lcopy/google/json/FieldNamingStrategy;

    return-object p0
.end method

.method public setFieldNamingStrategy(Lcopy/google/json/FieldNamingStrategy;)Lcopy/google/json/GsonBuilder;
    .registers 2

    iput-object p1, p0, Lcopy/google/json/GsonBuilder;->fieldNamingPolicy:Lcopy/google/json/FieldNamingStrategy;

    return-object p0
.end method

.method public setLenient()Lcopy/google/json/GsonBuilder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcopy/google/json/GsonBuilder;->lenient:Z

    return-object p0
.end method

.method public setLongSerializationPolicy(Lcopy/google/json/LongSerializationPolicy;)Lcopy/google/json/GsonBuilder;
    .registers 2

    iput-object p1, p0, Lcopy/google/json/GsonBuilder;->longSerializationPolicy:Lcopy/google/json/LongSerializationPolicy;

    return-object p0
.end method

.method public setPrettyPrinting()Lcopy/google/json/GsonBuilder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcopy/google/json/GsonBuilder;->prettyPrinting:Z

    return-object p0
.end method

.method public setVersion(D)Lcopy/google/json/GsonBuilder;
    .registers 4

    iget-object v0, p0, Lcopy/google/json/GsonBuilder;->excluder:Lcopy/google/json/internal/Excluder;

    invoke-virtual {v0, p1, p2}, Lcopy/google/json/internal/Excluder;->withVersion(D)Lcopy/google/json/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/GsonBuilder;->excluder:Lcopy/google/json/internal/Excluder;

    return-object p0
.end method
