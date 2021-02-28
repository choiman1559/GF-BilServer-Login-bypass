.class public interface abstract Lcopy/google/json/JsonDeserializationContext;
.super Ljava/lang/Object;


# virtual methods
.method public abstract deserialize(Lcopy/google/json/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
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
            Lcopy/google/json/JsonParseException;
        }
    .end annotation
.end method
