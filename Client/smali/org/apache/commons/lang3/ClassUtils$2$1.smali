.class Lorg/apache/commons/lang3/ClassUtils$2$1;
.super Ljava/lang/Object;
.source "ClassUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/lang3/ClassUtils$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# instance fields
.field interfaces:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/lang3/ClassUtils$2;

.field final synthetic val$seenInterfaces:Ljava/util/Set;

.field final synthetic val$wrapped:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/ClassUtils$2;Ljava/util/Iterator;Ljava/util/Set;)V
    .registers 5
    .param p1, "this$0"    # Lorg/apache/commons/lang3/ClassUtils$2;

    .prologue
    .line 1420
    iput-object p1, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->this$0:Lorg/apache/commons/lang3/ClassUtils$2;

    iput-object p2, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->val$wrapped:Ljava/util/Iterator;

    iput-object p3, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->val$seenInterfaces:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1421
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->interfaces:Ljava/util/Iterator;

    return-void
.end method

.method private walkInterfaces(Ljava/util/Set;Ljava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1443
    .local p1, "addTo":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_1b

    aget-object v0, v2, v1

    .line 1444
    .local v0, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->val$seenInterfaces:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 1445
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1447
    :cond_15
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/ClassUtils$2$1;->walkInterfaces(Ljava/util/Set;Ljava/lang/Class;)V

    .line 1443
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1449
    .end local v0    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1b
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 1425
    iget-object v0, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->interfaces:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->val$wrapped:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public next()Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1430
    iget-object v3, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->interfaces:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1431
    iget-object v3, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->interfaces:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 1432
    .local v1, "nextInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->val$seenInterfaces:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1439
    .end local v1    # "nextInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_15
    return-object v1

    .line 1435
    :cond_16
    iget-object v3, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->val$wrapped:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 1436
    .local v2, "nextSuperclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1437
    .local v0, "currentInterfaces":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/lang3/ClassUtils$2$1;->walkInterfaces(Ljava/util/Set;Ljava/lang/Class;)V

    .line 1438
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->interfaces:Ljava/util/Iterator;

    move-object v1, v2

    .line 1439
    goto :goto_15
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1420
    invoke-virtual {p0}, Lorg/apache/commons/lang3/ClassUtils$2$1;->next()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 1453
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
