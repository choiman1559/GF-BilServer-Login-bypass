.class Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$1;
.super Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$BoundField;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lcopy/google/json/JSON;Ljava/lang/reflect/Field;Ljava/lang/String;Lcopy/google/json/reflect/TypeToken;ZZ)Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;

.field final synthetic val$context:Lcopy/google/json/JSON;

.field final synthetic val$field:Ljava/lang/reflect/Field;

.field final synthetic val$fieldType:Lcopy/google/json/reflect/TypeToken;

.field final synthetic val$isPrimitive:Z

.field final synthetic val$jsonAdapterPresent:Z

.field final synthetic val$typeAdapter:Lcopy/google/json/TypeAdapter;


# direct methods
.method constructor <init>(Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcopy/google/json/TypeAdapter;Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;Z)V
    .registers 11

    iput-object p1, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$1;->this$0:Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;

    iput-object p5, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$1;->val$jsonAdapterPresent:Z

    iput-object p7, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$1;->val$typeAdapter:Lcopy/google/json/TypeAdapter;

    iput-object p8, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcopy/google/json/JSON;

    iput-object p9, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcopy/google/json/reflect/TypeToken;

    iput-boolean p10, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isPrimitive:Z

    invoke-direct {p0, p2, p3, p4}, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$BoundField;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method read(Lcopy/google/json/stream/JsonReader;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$1;->val$typeAdapter:Lcopy/google/json/TypeAdapter;

    invoke-virtual {v0, p1}, Lcopy/google/json/TypeAdapter;->read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    iget-boolean v1, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isPrimitive:Z

    if-nez v1, :cond_11

    :cond_c
    iget-object v1, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v0, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$1;->val$jsonAdapterPresent:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$1;->val$typeAdapter:Lcopy/google/json/TypeAdapter;

    :goto_c
    invoke-virtual {v0, p1, v1}, Lcopy/google/json/TypeAdapter;->write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V

    return-void

    :cond_10
    new-instance v0, Lcopy/google/json/internal/bind/TypeAdapterRuntimeTypeWrapper;

    iget-object v2, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcopy/google/json/JSON;

    iget-object v3, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$1;->val$typeAdapter:Lcopy/google/json/TypeAdapter;

    iget-object v4, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcopy/google/json/reflect/TypeToken;

    invoke-virtual {v4}, Lcopy/google/json/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcopy/google/json/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcopy/google/json/JSON;Lcopy/google/json/TypeAdapter;Ljava/lang/reflect/Type;)V

    goto :goto_c
.end method

.method public writeField(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$1;->serialized:Z

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method
