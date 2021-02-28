.class abstract Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcopy/google/json/internal/LinkedTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LinkedTreeMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field lastReturned:Lcopy/google/json/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Lcopy/google/json/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcopy/google/json/internal/LinkedTreeMap;


# direct methods
.method constructor <init>(Lcopy/google/json/internal/LinkedTreeMap;)V
    .registers 3

    iput-object p1, p0, Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcopy/google/json/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcopy/google/json/internal/LinkedTreeMap;

    iget-object v0, v0, Lcopy/google/json/internal/LinkedTreeMap;->header:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iget-object v0, v0, Lcopy/google/json/internal/LinkedTreeMap$Node;->next:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iput-object v0, p0, Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lcopy/google/json/internal/LinkedTreeMap$Node;

    const/4 v0, 0x0

    iput-object v0, p0, Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iget-object v0, p0, Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcopy/google/json/internal/LinkedTreeMap;

    iget v0, v0, Lcopy/google/json/internal/LinkedTreeMap;->modCount:I

    iput v0, p0, Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    iget-object v0, p0, Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iget-object v1, p0, Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcopy/google/json/internal/LinkedTreeMap;

    iget-object v1, v1, Lcopy/google/json/internal/LinkedTreeMap;->header:Lcopy/google/json/internal/LinkedTreeMap$Node;

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method final nextNode()Lcopy/google/json/internal/LinkedTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcopy/google/json/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iget-object v1, p0, Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcopy/google/json/internal/LinkedTreeMap;

    iget-object v1, v1, Lcopy/google/json/internal/LinkedTreeMap;->header:Lcopy/google/json/internal/LinkedTreeMap$Node;

    if-ne v0, v1, :cond_e

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_e
    iget-object v1, p0, Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcopy/google/json/internal/LinkedTreeMap;

    iget v1, v1, Lcopy/google/json/internal/LinkedTreeMap;->modCount:I

    iget v2, p0, Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    if-eq v1, v2, :cond_1c

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1c
    iget-object v1, v0, Lcopy/google/json/internal/LinkedTreeMap$Node;->next:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iput-object v1, p0, Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iput-object v0, p0, Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lcopy/google/json/internal/LinkedTreeMap$Node;

    return-object v0
.end method

.method public final remove()V
    .registers 4

    iget-object v0, p0, Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lcopy/google/json/internal/LinkedTreeMap$Node;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcopy/google/json/internal/LinkedTreeMap;

    iget-object v1, p0, Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lcopy/google/json/internal/LinkedTreeMap$Node;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcopy/google/json/internal/LinkedTreeMap;->removeInternal(Lcopy/google/json/internal/LinkedTreeMap$Node;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iget-object v0, p0, Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcopy/google/json/internal/LinkedTreeMap;

    iget v0, v0, Lcopy/google/json/internal/LinkedTreeMap;->modCount:I

    iput v0, p0, Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    return-void
.end method
