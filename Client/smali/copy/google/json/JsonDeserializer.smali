.class public interface abstract Lcopy/google/json/JsonDeserializer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract deserialize(Lcopy/google/json/JsonElement;Ljava/lang/reflect/Type;Lcopy/google/json/JsonDeserializationContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/JsonElement;",
            "Ljava/lang/reflect/Type;",
            "Lcopy/google/json/JsonDeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcopy/google/json/JsonParseException;
        }
    .end annotation
.end method
