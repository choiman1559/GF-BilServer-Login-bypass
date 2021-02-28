.class Lcopy/google/json/internal/LinkedTreeMap$EntrySet$1;
.super Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcopy/google/json/internal/LinkedTreeMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcopy/google/json/internal/LinkedTreeMap",
        "<TK;TV;>.",
        "LinkedTreeMapIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcopy/google/json/internal/LinkedTreeMap$EntrySet;


# direct methods
.method constructor <init>(Lcopy/google/json/internal/LinkedTreeMap$EntrySet;)V
    .registers 3

    iput-object p1, p0, Lcopy/google/json/internal/LinkedTreeMap$EntrySet$1;->this$1:Lcopy/google/json/internal/LinkedTreeMap$EntrySet;

    iget-object v0, p1, Lcopy/google/json/internal/LinkedTreeMap$EntrySet;->this$0:Lcopy/google/json/internal/LinkedTreeMap;

    invoke-direct {p0, v0}, Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;-><init>(Lcopy/google/json/internal/LinkedTreeMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcopy/google/json/internal/LinkedTreeMap$EntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcopy/google/json/internal/LinkedTreeMap$EntrySet$1;->nextNode()Lcopy/google/json/internal/LinkedTreeMap$Node;

    move-result-object v0

    return-object v0
.end method
