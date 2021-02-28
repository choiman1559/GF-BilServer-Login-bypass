.class final Lcopy/google/json/internal/bind/TypeAdapters$35;
.super Ljava/lang/Object;

# interfaces
.implements Lcopy/google/json/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcopy/google/json/internal/bind/TypeAdapters;->newTypeHierarchyFactory(Ljava/lang/Class;Lcopy/google/json/TypeAdapter;)Lcopy/google/json/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$typeAdapter:Lcopy/google/json/TypeAdapter;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcopy/google/json/TypeAdapter;)V
    .registers 3

    iput-object p1, p0, Lcopy/google/json/internal/bind/TypeAdapters$35;->val$clazz:Ljava/lang/Class;

    iput-object p2, p0, Lcopy/google/json/internal/bind/TypeAdapters$35;->val$typeAdapter:Lcopy/google/json/TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcopy/google/json/JSON;",
            "Lcopy/google/json/reflect/TypeToken",
            "<TT2;>;)",
            "Lcopy/google/json/TypeAdapter",
            "<TT2;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcopy/google/json/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lcopy/google/json/internal/bind/TypeAdapters$35;->val$clazz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lcopy/google/json/internal/bind/TypeAdapters$35$1;

    invoke-direct {v0, p0, v1}, Lcopy/google/json/internal/bind/TypeAdapters$35$1;-><init>(Lcopy/google/json/internal/bind/TypeAdapters$35;Ljava/lang/Class;)V

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Factory[typeHierarchy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcopy/google/json/internal/bind/TypeAdapters$35;->val$clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcopy/google/json/internal/bind/TypeAdapters$35;->val$typeAdapter:Lcopy/google/json/TypeAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
