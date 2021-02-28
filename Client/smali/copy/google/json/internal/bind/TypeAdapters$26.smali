.class final Lcopy/google/json/internal/bind/TypeAdapters$26;
.super Ljava/lang/Object;

# interfaces
.implements Lcopy/google/json/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcopy/google/json/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;
    .registers 5
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

    invoke-virtual {p2}, Lcopy/google/json/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcopy/google/json/JSON;->getAdapter(Ljava/lang/Class;)Lcopy/google/json/TypeAdapter;

    move-result-object v1

    new-instance v0, Lcopy/google/json/internal/bind/TypeAdapters$26$1;

    invoke-direct {v0, p0, v1}, Lcopy/google/json/internal/bind/TypeAdapters$26$1;-><init>(Lcopy/google/json/internal/bind/TypeAdapters$26;Lcopy/google/json/TypeAdapter;)V

    goto :goto_9
.end method
