.class Lcopy/google/json/internal/LinkedTreeMap$EntrySet;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcopy/google/json/internal/LinkedTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcopy/google/json/internal/LinkedTreeMap;


# direct methods
.method constructor <init>(Lcopy/google/json/internal/LinkedTreeMap;)V
    .registers 2

    iput-object p1, p0, Lcopy/google/json/internal/LinkedTreeMap$EntrySet;->this$0:Lcopy/google/json/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcopy/google/json/internal/LinkedTreeMap$EntrySet;->this$0:Lcopy/google/json/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcopy/google/json/internal/LinkedTreeMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcopy/google/json/internal/LinkedTreeMap$EntrySet;->this$0:Lcopy/google/json/internal/LinkedTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcopy/google/json/internal/LinkedTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lcopy/google/json/internal/LinkedTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcopy/google/json/internal/LinkedTreeMap$EntrySet$1;

    invoke-direct {v0, p0}, Lcopy/google/json/internal/LinkedTreeMap$EntrySet$1;-><init>(Lcopy/google/json/internal/LinkedTreeMap$EntrySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    iget-object v2, p0, Lcopy/google/json/internal/LinkedTreeMap$EntrySet;->this$0:Lcopy/google/json/internal/LinkedTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v2, p1}, Lcopy/google/json/internal/LinkedTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lcopy/google/json/internal/LinkedTreeMap$Node;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcopy/google/json/internal/LinkedTreeMap$EntrySet;->this$0:Lcopy/google/json/internal/LinkedTreeMap;

    invoke-virtual {v0, v2, v1}, Lcopy/google/json/internal/LinkedTreeMap;->removeInternal(Lcopy/google/json/internal/LinkedTreeMap$Node;Z)V

    move v0, v1

    goto :goto_6
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcopy/google/json/internal/LinkedTreeMap$EntrySet;->this$0:Lcopy/google/json/internal/LinkedTreeMap;

    iget v0, v0, Lcopy/google/json/internal/LinkedTreeMap;->size:I

    return v0
.end method
