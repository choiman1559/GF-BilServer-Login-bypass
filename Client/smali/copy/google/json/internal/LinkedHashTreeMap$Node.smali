.class final Lcopy/google/json/internal/LinkedHashTreeMap$Node;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcopy/google/json/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field height:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Lcopy/google/json/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field prev:Lcopy/google/json/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->hash:I

    iput-object p0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->prev:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object p0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->next:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    return-void
.end method

.method constructor <init>(Lcopy/google/json/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcopy/google/json/internal/LinkedHashTreeMap$Node;Lcopy/google/json/internal/LinkedHashTreeMap$Node;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;TK;I",
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;",
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object p2, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    iput p3, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->hash:I

    const/4 v0, 0x1

    iput v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    iput-object p4, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->next:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object p5, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->prev:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object p0, p5, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->next:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object p0, p4, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->prev:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_1c

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    if-nez v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1c

    :goto_11
    iget-object v1, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    if-nez v1, :cond_2a

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1c

    :goto_1b
    const/4 v0, 0x1

    :cond_1c
    return v0

    :cond_1d
    iget-object v1, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_11

    :cond_2a
    iget-object v1, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1b
.end method

.method public first()Lcopy/google/json/internal/LinkedHashTreeMap$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    :goto_2
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    move-object p0, v0

    move-object v0, v1

    goto :goto_2

    :cond_9
    return-object p0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    if-nez v0, :cond_c

    move v0, v1

    :goto_6
    iget-object v2, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    if-nez v2, :cond_13

    :goto_a
    xor-int/2addr v0, v1

    return v0

    :cond_c
    iget-object v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_13
    iget-object v1, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_a
.end method

.method public last()Lcopy/google/json/internal/LinkedHashTreeMap$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    :goto_2
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    move-object p0, v0

    move-object v0, v1

    goto :goto_2

    :cond_9
    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    iput-object p1, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
