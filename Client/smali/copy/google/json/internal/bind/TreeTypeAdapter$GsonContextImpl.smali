.class final Lcopy/google/json/internal/bind/TreeTypeAdapter$GsonContextImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcopy/google/json/JsonDeserializationContext;
.implements Lcopy/google/json/JsonSerializationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcopy/google/json/internal/bind/TreeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GsonContextImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcopy/google/json/internal/bind/TreeTypeAdapter;


# direct methods
.method private constructor <init>(Lcopy/google/json/internal/bind/TreeTypeAdapter;)V
    .registers 2

    iput-object p1, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lcopy/google/json/internal/bind/TreeTypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcopy/google/json/internal/bind/TreeTypeAdapter;Lcopy/google/json/internal/bind/TreeTypeAdapter$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcopy/google/json/internal/bind/TreeTypeAdapter$GsonContextImpl;-><init>(Lcopy/google/json/internal/bind/TreeTypeAdapter;)V

    return-void
.end method


# virtual methods
.method public deserialize(Lcopy/google/json/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcopy/google/json/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcopy/google/json/JsonParseException;
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lcopy/google/json/internal/bind/TreeTypeAdapter;

    iget-object v0, v0, Lcopy/google/json/internal/bind/TreeTypeAdapter;->gson:Lcopy/google/json/JSON;

    invoke-virtual {v0, p1, p2}, Lcopy/google/json/JSON;->fromJson(Lcopy/google/json/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;)Lcopy/google/json/JsonElement;
    .registers 3

    iget-object v0, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lcopy/google/json/internal/bind/TreeTypeAdapter;

    iget-object v0, v0, Lcopy/google/json/internal/bind/TreeTypeAdapter;->gson:Lcopy/google/json/JSON;

    invoke-virtual {v0, p1}, Lcopy/google/json/JSON;->toJsonTree(Ljava/lang/Object;)Lcopy/google/json/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcopy/google/json/JsonElement;
    .registers 4

    iget-object v0, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lcopy/google/json/internal/bind/TreeTypeAdapter;

    iget-object v0, v0, Lcopy/google/json/internal/bind/TreeTypeAdapter;->gson:Lcopy/google/json/JSON;

    invoke-virtual {v0, p1, p2}, Lcopy/google/json/JSON;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcopy/google/json/JsonElement;

    move-result-object v0

    return-object v0
.end method
