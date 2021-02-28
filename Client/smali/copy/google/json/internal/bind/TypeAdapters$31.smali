.class final Lcopy/google/json/internal/bind/TypeAdapters$31;
.super Ljava/lang/Object;

# interfaces
.implements Lcopy/google/json/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcopy/google/json/internal/bind/TypeAdapters;->newFactory(Lcopy/google/json/reflect/TypeToken;Lcopy/google/json/TypeAdapter;)Lcopy/google/json/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$type:Lcopy/google/json/reflect/TypeToken;

.field final synthetic val$typeAdapter:Lcopy/google/json/TypeAdapter;


# direct methods
.method constructor <init>(Lcopy/google/json/reflect/TypeToken;Lcopy/google/json/TypeAdapter;)V
    .registers 3

    iput-object p1, p0, Lcopy/google/json/internal/bind/TypeAdapters$31;->val$type:Lcopy/google/json/reflect/TypeToken;

    iput-object p2, p0, Lcopy/google/json/internal/bind/TypeAdapters$31;->val$typeAdapter:Lcopy/google/json/TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;
    .registers 4
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

    iget-object v0, p0, Lcopy/google/json/internal/bind/TypeAdapters$31;->val$type:Lcopy/google/json/reflect/TypeToken;

    invoke-virtual {p2, v0}, Lcopy/google/json/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcopy/google/json/internal/bind/TypeAdapters$31;->val$typeAdapter:Lcopy/google/json/TypeAdapter;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
