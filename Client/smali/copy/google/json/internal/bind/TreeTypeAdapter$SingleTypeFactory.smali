.class final Lcopy/google/json/internal/bind/TreeTypeAdapter$SingleTypeFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcopy/google/json/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcopy/google/json/internal/bind/TreeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleTypeFactory"
.end annotation


# instance fields
.field private final deserializer:Lcopy/google/json/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end field

.field private final exactType:Lcopy/google/json/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/reflect/TypeToken",
            "<*>;"
        }
    .end annotation
.end field

.field private final hierarchyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final matchRawType:Z

.field private final serializer:Lcopy/google/json/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/JsonSerializer",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcopy/google/json/reflect/TypeToken;ZLjava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcopy/google/json/reflect/TypeToken",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcopy/google/json/JsonSerializer;

    if-eqz v0, :cond_28

    move-object v0, p1

    check-cast v0, Lcopy/google/json/JsonSerializer;

    :goto_b
    iput-object v0, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcopy/google/json/JsonSerializer;

    instance-of v0, p1, Lcopy/google/json/JsonDeserializer;

    if-eqz v0, :cond_2a

    check-cast p1, Lcopy/google/json/JsonDeserializer;

    :goto_13
    iput-object p1, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcopy/google/json/JsonDeserializer;

    iget-object v0, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcopy/google/json/JsonSerializer;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcopy/google/json/JsonDeserializer;

    if-eqz v0, :cond_2c

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    invoke-static {v0}, Lcopy/google/json/internal/$Gson$Preconditions;->checkArgument(Z)V

    iput-object p2, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcopy/google/json/reflect/TypeToken;

    iput-boolean p3, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    iput-object p4, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    return-void

    :cond_28
    move-object v0, v1

    goto :goto_b

    :cond_2a
    move-object p1, v1

    goto :goto_13

    :cond_2c
    const/4 v0, 0x0

    goto :goto_1e
.end method


# virtual methods
.method public create(Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcopy/google/json/JSON;",
            "Lcopy/google/json/reflect/TypeToken",
            "<TT;>;)",
            "Lcopy/google/json/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcopy/google/json/reflect/TypeToken;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcopy/google/json/reflect/TypeToken;

    invoke-virtual {v0, p2}, Lcopy/google/json/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcopy/google/json/reflect/TypeToken;

    invoke-virtual {v0}, Lcopy/google/json/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcopy/google/json/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2c

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    if-eqz v0, :cond_39

    new-instance v0, Lcopy/google/json/internal/bind/TreeTypeAdapter;

    iget-object v1, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcopy/google/json/JsonSerializer;

    iget-object v2, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcopy/google/json/JsonDeserializer;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcopy/google/json/internal/bind/TreeTypeAdapter;-><init>(Lcopy/google/json/JsonSerializer;Lcopy/google/json/JsonDeserializer;Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;Lcopy/google/json/TypeAdapterFactory;)V

    :goto_2b
    return-object v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_1d

    :cond_2e
    iget-object v0, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    invoke-virtual {p2}, Lcopy/google/json/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_1d

    :cond_39
    const/4 v0, 0x0

    goto :goto_2b
.end method
