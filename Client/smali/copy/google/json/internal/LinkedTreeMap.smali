.class public final Lcopy/google/json/internal/LinkedTreeMap;
.super Ljava/util/AbstractMap;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcopy/google/json/internal/LinkedTreeMap$KeySet;,
        Lcopy/google/json/internal/LinkedTreeMap$EntrySet;,
        Lcopy/google/json/internal/LinkedTreeMap$LinkedTreeMapIterator;,
        Lcopy/google/json/internal/LinkedTreeMap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private entrySet:Lcopy/google/json/internal/LinkedTreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/internal/LinkedTreeMap",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field final header:Lcopy/google/json/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private keySet:Lcopy/google/json/internal/LinkedTreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/internal/LinkedTreeMap",
            "<TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field modCount:I

.field root:Lcopy/google/json/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcopy/google/json/internal/LinkedTreeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcopy/google/json/internal/LinkedTreeMap;->$assertionsDisabled:Z

    new-instance v0, Lcopy/google/json/internal/LinkedTreeMap$1;

    invoke-direct {v0}, Lcopy/google/json/internal/LinkedTreeMap$1;-><init>()V

    sput-object v0, Lcopy/google/json/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcopy/google/json/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcopy/google/json/internal/LinkedTreeMap;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput v0, p0, Lcopy/google/json/internal/LinkedTreeMap;->size:I

    iput v0, p0, Lcopy/google/json/internal/LinkedTreeMap;->modCount:I

    new-instance v0, Lcopy/google/json/internal/LinkedTreeMap$Node;

    invoke-direct {v0}, Lcopy/google/json/internal/LinkedTreeMap$Node;-><init>()V

    iput-object v0, p0, Lcopy/google/json/internal/LinkedTreeMap;->header:Lcopy/google/json/internal/LinkedTreeMap$Node;

    if-eqz p1, :cond_14

    :goto_11
    iput-object p1, p0, Lcopy/google/json/internal/LinkedTreeMap;->comparator:Ljava/util/Comparator;

    return-void

    :cond_14
    sget-object p1, Lcopy/google/json/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    goto :goto_11
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    if-eq p1, p2, :cond_a

    if-eqz p1, :cond_c

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private rebalance(Lcopy/google/json/internal/LinkedTreeMap$Node;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/internal/LinkedTreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    :goto_3
    if-eqz p1, :cond_30

    iget-object v3, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->left:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iget-object v4, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->right:Lcopy/google/json/internal/LinkedTreeMap$Node;

    if-eqz v3, :cond_31

    iget v0, v3, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    move v2, v0

    :goto_e
    if-eqz v4, :cond_33

    iget v0, v4, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    :goto_12
    sub-int v5, v2, v0

    const/4 v6, -0x2

    if-ne v5, v6, :cond_4c

    iget-object v3, v4, Lcopy/google/json/internal/LinkedTreeMap$Node;->left:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iget-object v0, v4, Lcopy/google/json/internal/LinkedTreeMap$Node;->right:Lcopy/google/json/internal/LinkedTreeMap$Node;

    if-eqz v0, :cond_35

    iget v0, v0, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    move v2, v0

    :goto_20
    if-eqz v3, :cond_37

    iget v0, v3, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    :goto_24
    sub-int/2addr v0, v2

    if-eq v0, v7, :cond_2b

    if-nez v0, :cond_39

    if-nez p2, :cond_39

    :cond_2b
    invoke-direct {p0, p1}, Lcopy/google/json/internal/LinkedTreeMap;->rotateLeft(Lcopy/google/json/internal/LinkedTreeMap$Node;)V

    :goto_2e
    if-eqz p2, :cond_68

    :cond_30
    :goto_30
    return-void

    :cond_31
    move v2, v1

    goto :goto_e

    :cond_33
    move v0, v1

    goto :goto_12

    :cond_35
    move v2, v1

    goto :goto_20

    :cond_37
    move v0, v1

    goto :goto_24

    :cond_39
    sget-boolean v2, Lcopy/google/json/internal/LinkedTreeMap;->$assertionsDisabled:Z

    if-nez v2, :cond_45

    if-eq v0, v8, :cond_45

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_45
    invoke-direct {p0, v4}, Lcopy/google/json/internal/LinkedTreeMap;->rotateRight(Lcopy/google/json/internal/LinkedTreeMap$Node;)V

    invoke-direct {p0, p1}, Lcopy/google/json/internal/LinkedTreeMap;->rotateLeft(Lcopy/google/json/internal/LinkedTreeMap$Node;)V

    goto :goto_2e

    :cond_4c
    const/4 v4, 0x2

    if-ne v5, v4, :cond_82

    iget-object v4, v3, Lcopy/google/json/internal/LinkedTreeMap$Node;->left:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iget-object v0, v3, Lcopy/google/json/internal/LinkedTreeMap$Node;->right:Lcopy/google/json/internal/LinkedTreeMap$Node;

    if-eqz v0, :cond_6b

    iget v0, v0, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    move v2, v0

    :goto_58
    if-eqz v4, :cond_6d

    iget v0, v4, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    :goto_5c
    sub-int/2addr v0, v2

    if-eq v0, v8, :cond_63

    if-nez v0, :cond_6f

    if-nez p2, :cond_6f

    :cond_63
    invoke-direct {p0, p1}, Lcopy/google/json/internal/LinkedTreeMap;->rotateRight(Lcopy/google/json/internal/LinkedTreeMap$Node;)V

    :goto_66
    if-nez p2, :cond_30

    :cond_68
    iget-object p1, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedTreeMap$Node;

    goto :goto_3

    :cond_6b
    move v2, v1

    goto :goto_58

    :cond_6d
    move v0, v1

    goto :goto_5c

    :cond_6f
    sget-boolean v2, Lcopy/google/json/internal/LinkedTreeMap;->$assertionsDisabled:Z

    if-nez v2, :cond_7b

    if-eq v0, v7, :cond_7b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7b
    invoke-direct {p0, v3}, Lcopy/google/json/internal/LinkedTreeMap;->rotateLeft(Lcopy/google/json/internal/LinkedTreeMap$Node;)V

    invoke-direct {p0, p1}, Lcopy/google/json/internal/LinkedTreeMap;->rotateRight(Lcopy/google/json/internal/LinkedTreeMap$Node;)V

    goto :goto_66

    :cond_82
    if-nez v5, :cond_8b

    add-int/lit8 v0, v2, 0x1

    iput v0, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    if-eqz p2, :cond_68

    goto :goto_30

    :cond_8b
    sget-boolean v3, Lcopy/google/json/internal/LinkedTreeMap;->$assertionsDisabled:Z

    if-nez v3, :cond_99

    if-eq v5, v7, :cond_99

    if-eq v5, v8, :cond_99

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_99
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    if-nez p2, :cond_68

    goto :goto_30
.end method

.method private replaceInParent(Lcopy/google/json/internal/LinkedTreeMap$Node;Lcopy/google/json/internal/LinkedTreeMap$Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/internal/LinkedTreeMap$Node",
            "<TK;TV;>;",
            "Lcopy/google/json/internal/LinkedTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedTreeMap$Node;

    const/4 v1, 0x0

    iput-object v1, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedTreeMap$Node;

    if-eqz p2, :cond_9

    iput-object v0, p2, Lcopy/google/json/internal/LinkedTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedTreeMap$Node;

    :cond_9
    if-eqz v0, :cond_23

    iget-object v1, v0, Lcopy/google/json/internal/LinkedTreeMap$Node;->left:Lcopy/google/json/internal/LinkedTreeMap$Node;

    if-ne v1, p1, :cond_12

    iput-object p2, v0, Lcopy/google/json/internal/LinkedTreeMap$Node;->left:Lcopy/google/json/internal/LinkedTreeMap$Node;

    :goto_11
    return-void

    :cond_12
    sget-boolean v1, Lcopy/google/json/internal/LinkedTreeMap;->$assertionsDisabled:Z

    if-nez v1, :cond_20

    iget-object v1, v0, Lcopy/google/json/internal/LinkedTreeMap$Node;->right:Lcopy/google/json/internal/LinkedTreeMap$Node;

    if-eq v1, p1, :cond_20

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_20
    iput-object p2, v0, Lcopy/google/json/internal/LinkedTreeMap$Node;->right:Lcopy/google/json/internal/LinkedTreeMap$Node;

    goto :goto_11

    :cond_23
    iput-object p2, p0, Lcopy/google/json/internal/LinkedTreeMap;->root:Lcopy/google/json/internal/LinkedTreeMap$Node;

    goto :goto_11
.end method

.method private rotateLeft(Lcopy/google/json/internal/LinkedTreeMap$Node;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/internal/LinkedTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->left:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iget-object v3, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->right:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iget-object v4, v3, Lcopy/google/json/internal/LinkedTreeMap$Node;->left:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iget-object v5, v3, Lcopy/google/json/internal/LinkedTreeMap$Node;->right:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iput-object v4, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->right:Lcopy/google/json/internal/LinkedTreeMap$Node;

    if-eqz v4, :cond_f

    iput-object p1, v4, Lcopy/google/json/internal/LinkedTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedTreeMap$Node;

    :cond_f
    invoke-direct {p0, p1, v3}, Lcopy/google/json/internal/LinkedTreeMap;->replaceInParent(Lcopy/google/json/internal/LinkedTreeMap$Node;Lcopy/google/json/internal/LinkedTreeMap$Node;)V

    iput-object p1, v3, Lcopy/google/json/internal/LinkedTreeMap$Node;->left:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iput-object v3, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedTreeMap$Node;

    if-eqz v0, :cond_36

    iget v0, v0, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    move v2, v0

    :goto_1b
    if-eqz v4, :cond_38

    iget v0, v4, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    :goto_1f
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    iget v0, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    if-eqz v5, :cond_2d

    iget v1, v5, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    :cond_2d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    return-void

    :cond_36
    move v2, v1

    goto :goto_1b

    :cond_38
    move v0, v1

    goto :goto_1f
.end method

.method private rotateRight(Lcopy/google/json/internal/LinkedTreeMap$Node;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/internal/LinkedTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v3, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->left:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iget-object v0, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->right:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iget-object v4, v3, Lcopy/google/json/internal/LinkedTreeMap$Node;->left:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iget-object v5, v3, Lcopy/google/json/internal/LinkedTreeMap$Node;->right:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iput-object v5, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->left:Lcopy/google/json/internal/LinkedTreeMap$Node;

    if-eqz v5, :cond_f

    iput-object p1, v5, Lcopy/google/json/internal/LinkedTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedTreeMap$Node;

    :cond_f
    invoke-direct {p0, p1, v3}, Lcopy/google/json/internal/LinkedTreeMap;->replaceInParent(Lcopy/google/json/internal/LinkedTreeMap$Node;Lcopy/google/json/internal/LinkedTreeMap$Node;)V

    iput-object p1, v3, Lcopy/google/json/internal/LinkedTreeMap$Node;->right:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iput-object v3, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedTreeMap$Node;

    if-eqz v0, :cond_36

    iget v0, v0, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    move v2, v0

    :goto_1b
    if-eqz v5, :cond_38

    iget v0, v5, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    :goto_1f
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    iget v0, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    if-eqz v4, :cond_2d

    iget v1, v4, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    :cond_2d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    return-void

    :cond_36
    move v2, v1

    goto :goto_1b

    :cond_38
    move v0, v1

    goto :goto_1f
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcopy/google/json/internal/LinkedTreeMap;->root:Lcopy/google/json/internal/LinkedTreeMap$Node;

    const/4 v0, 0x0

    iput v0, p0, Lcopy/google/json/internal/LinkedTreeMap;->size:I

    iget v0, p0, Lcopy/google/json/internal/LinkedTreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcopy/google/json/internal/LinkedTreeMap;->modCount:I

    iget-object v0, p0, Lcopy/google/json/internal/LinkedTreeMap;->header:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iput-object v0, v0, Lcopy/google/json/internal/LinkedTreeMap$Node;->prev:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iput-object v0, v0, Lcopy/google/json/internal/LinkedTreeMap$Node;->next:Lcopy/google/json/internal/LinkedTreeMap$Node;

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcopy/google/json/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lcopy/google/json/internal/LinkedTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/internal/LinkedTreeMap;->entrySet:Lcopy/google/json/internal/LinkedTreeMap$EntrySet;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcopy/google/json/internal/LinkedTreeMap$EntrySet;

    invoke-direct {v0, p0}, Lcopy/google/json/internal/LinkedTreeMap$EntrySet;-><init>(Lcopy/google/json/internal/LinkedTreeMap;)V

    iput-object v0, p0, Lcopy/google/json/internal/LinkedTreeMap;->entrySet:Lcopy/google/json/internal/LinkedTreeMap$EntrySet;

    goto :goto_4
.end method

.method find(Ljava/lang/Object;Z)Lcopy/google/json/internal/LinkedTreeMap$Node;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcopy/google/json/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v5, p0, Lcopy/google/json/internal/LinkedTreeMap;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lcopy/google/json/internal/LinkedTreeMap;->root:Lcopy/google/json/internal/LinkedTreeMap$Node;

    const/4 v0, 0x0

    if-eqz v2, :cond_8b

    sget-object v0, Lcopy/google/json/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v5, v0, :cond_1b

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    :goto_f
    if-eqz v0, :cond_1d

    iget-object v3, v2, Lcopy/google/json/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    :goto_17
    if-nez v3, :cond_24

    move-object v1, v2

    :cond_1a
    :goto_1a
    return-object v1

    :cond_1b
    move-object v0, v1

    goto :goto_f

    :cond_1d
    iget-object v3, v2, Lcopy/google/json/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v5, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto :goto_17

    :cond_24
    if-gez v3, :cond_5c

    iget-object v4, v2, Lcopy/google/json/internal/LinkedTreeMap$Node;->left:Lcopy/google/json/internal/LinkedTreeMap$Node;

    :goto_28
    if-nez v4, :cond_5f

    move v6, v3

    move-object v3, v2

    move v2, v6

    :goto_2d
    if-eqz p2, :cond_1a

    iget-object v1, p0, Lcopy/google/json/internal/LinkedTreeMap;->header:Lcopy/google/json/internal/LinkedTreeMap$Node;

    if-nez v3, :cond_78

    sget-object v0, Lcopy/google/json/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v5, v0, :cond_61

    instance-of v0, p1, Ljava/lang/Comparable;

    if-nez v0, :cond_61

    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not Comparable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    iget-object v4, v2, Lcopy/google/json/internal/LinkedTreeMap$Node;->right:Lcopy/google/json/internal/LinkedTreeMap$Node;

    goto :goto_28

    :cond_5f
    move-object v2, v4

    goto :goto_f

    :cond_61
    new-instance v0, Lcopy/google/json/internal/LinkedTreeMap$Node;

    iget-object v2, v1, Lcopy/google/json/internal/LinkedTreeMap$Node;->prev:Lcopy/google/json/internal/LinkedTreeMap$Node;

    invoke-direct {v0, v3, p1, v1, v2}, Lcopy/google/json/internal/LinkedTreeMap$Node;-><init>(Lcopy/google/json/internal/LinkedTreeMap$Node;Ljava/lang/Object;Lcopy/google/json/internal/LinkedTreeMap$Node;Lcopy/google/json/internal/LinkedTreeMap$Node;)V

    iput-object v0, p0, Lcopy/google/json/internal/LinkedTreeMap;->root:Lcopy/google/json/internal/LinkedTreeMap$Node;

    :goto_6a
    iget v1, p0, Lcopy/google/json/internal/LinkedTreeMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcopy/google/json/internal/LinkedTreeMap;->size:I

    iget v1, p0, Lcopy/google/json/internal/LinkedTreeMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcopy/google/json/internal/LinkedTreeMap;->modCount:I

    move-object v1, v0

    goto :goto_1a

    :cond_78
    new-instance v0, Lcopy/google/json/internal/LinkedTreeMap$Node;

    iget-object v4, v1, Lcopy/google/json/internal/LinkedTreeMap$Node;->prev:Lcopy/google/json/internal/LinkedTreeMap$Node;

    invoke-direct {v0, v3, p1, v1, v4}, Lcopy/google/json/internal/LinkedTreeMap$Node;-><init>(Lcopy/google/json/internal/LinkedTreeMap$Node;Ljava/lang/Object;Lcopy/google/json/internal/LinkedTreeMap$Node;Lcopy/google/json/internal/LinkedTreeMap$Node;)V

    if-gez v2, :cond_88

    iput-object v0, v3, Lcopy/google/json/internal/LinkedTreeMap$Node;->left:Lcopy/google/json/internal/LinkedTreeMap$Node;

    :goto_83
    const/4 v1, 0x1

    invoke-direct {p0, v3, v1}, Lcopy/google/json/internal/LinkedTreeMap;->rebalance(Lcopy/google/json/internal/LinkedTreeMap$Node;Z)V

    goto :goto_6a

    :cond_88
    iput-object v0, v3, Lcopy/google/json/internal/LinkedTreeMap$Node;->right:Lcopy/google/json/internal/LinkedTreeMap$Node;

    goto :goto_83

    :cond_8b
    move-object v3, v2

    move v2, v0

    goto :goto_2d
.end method

.method findByEntry(Ljava/util/Map$Entry;)Lcopy/google/json/internal/LinkedTreeMap$Node;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lcopy/google/json/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcopy/google/json/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lcopy/google/json/internal/LinkedTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, v0, Lcopy/google/json/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcopy/google/json/internal/LinkedTreeMap;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    :goto_17
    if-eqz v1, :cond_1c

    :goto_19
    return-object v0

    :cond_1a
    const/4 v1, 0x0

    goto :goto_17

    :cond_1c
    const/4 v0, 0x0

    goto :goto_19
.end method

.method findByObject(Ljava/lang/Object;)Lcopy/google/json/internal/LinkedTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcopy/google/json/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcopy/google/json/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lcopy/google/json/internal/LinkedTreeMap$Node;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    :cond_8
    :goto_8
    return-object v0

    :catch_9
    move-exception v1

    goto :goto_8
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcopy/google/json/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lcopy/google/json/internal/LinkedTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcopy/google/json/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/internal/LinkedTreeMap;->keySet:Lcopy/google/json/internal/LinkedTreeMap$KeySet;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcopy/google/json/internal/LinkedTreeMap$KeySet;

    invoke-direct {v0, p0}, Lcopy/google/json/internal/LinkedTreeMap$KeySet;-><init>(Lcopy/google/json/internal/LinkedTreeMap;)V

    iput-object v0, p0, Lcopy/google/json/internal/LinkedTreeMap;->keySet:Lcopy/google/json/internal/LinkedTreeMap$KeySet;

    goto :goto_4
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcopy/google/json/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lcopy/google/json/internal/LinkedTreeMap$Node;

    move-result-object v0

    iget-object v1, v0, Lcopy/google/json/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    iput-object p2, v0, Lcopy/google/json/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcopy/google/json/internal/LinkedTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lcopy/google/json/internal/LinkedTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcopy/google/json/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method removeInternal(Lcopy/google/json/internal/LinkedTreeMap$Node;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/internal/LinkedTreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_10

    iget-object v0, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->prev:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iget-object v1, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->next:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iput-object v1, v0, Lcopy/google/json/internal/LinkedTreeMap$Node;->next:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iget-object v0, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->next:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iget-object v1, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->prev:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iput-object v1, v0, Lcopy/google/json/internal/LinkedTreeMap$Node;->prev:Lcopy/google/json/internal/LinkedTreeMap$Node;

    :cond_10
    iget-object v0, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->left:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iget-object v1, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->right:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iget-object v3, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedTreeMap$Node;

    if-eqz v0, :cond_50

    if-eqz v1, :cond_50

    iget v3, v0, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    iget v4, v1, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    if-le v3, v4, :cond_4b

    invoke-virtual {v0}, Lcopy/google/json/internal/LinkedTreeMap$Node;->last()Lcopy/google/json/internal/LinkedTreeMap$Node;

    move-result-object v0

    :goto_24
    invoke-virtual {p0, v0, v2}, Lcopy/google/json/internal/LinkedTreeMap;->removeInternal(Lcopy/google/json/internal/LinkedTreeMap$Node;Z)V

    iget-object v3, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->left:Lcopy/google/json/internal/LinkedTreeMap$Node;

    if-eqz v3, :cond_73

    iget v1, v3, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    iput-object v3, v0, Lcopy/google/json/internal/LinkedTreeMap$Node;->left:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iput-object v0, v3, Lcopy/google/json/internal/LinkedTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iput-object v5, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->left:Lcopy/google/json/internal/LinkedTreeMap$Node;

    :goto_33
    iget-object v3, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->right:Lcopy/google/json/internal/LinkedTreeMap$Node;

    if-eqz v3, :cond_3f

    iget v2, v3, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    iput-object v3, v0, Lcopy/google/json/internal/LinkedTreeMap$Node;->right:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iput-object v0, v3, Lcopy/google/json/internal/LinkedTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedTreeMap$Node;

    iput-object v5, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->right:Lcopy/google/json/internal/LinkedTreeMap$Node;

    :cond_3f
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcopy/google/json/internal/LinkedTreeMap$Node;->height:I

    invoke-direct {p0, p1, v0}, Lcopy/google/json/internal/LinkedTreeMap;->replaceInParent(Lcopy/google/json/internal/LinkedTreeMap$Node;Lcopy/google/json/internal/LinkedTreeMap$Node;)V

    :goto_4a
    return-void

    :cond_4b
    invoke-virtual {v1}, Lcopy/google/json/internal/LinkedTreeMap$Node;->first()Lcopy/google/json/internal/LinkedTreeMap$Node;

    move-result-object v0

    goto :goto_24

    :cond_50
    if-eqz v0, :cond_67

    invoke-direct {p0, p1, v0}, Lcopy/google/json/internal/LinkedTreeMap;->replaceInParent(Lcopy/google/json/internal/LinkedTreeMap$Node;Lcopy/google/json/internal/LinkedTreeMap$Node;)V

    iput-object v5, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->left:Lcopy/google/json/internal/LinkedTreeMap$Node;

    :goto_57
    invoke-direct {p0, v3, v2}, Lcopy/google/json/internal/LinkedTreeMap;->rebalance(Lcopy/google/json/internal/LinkedTreeMap$Node;Z)V

    iget v0, p0, Lcopy/google/json/internal/LinkedTreeMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcopy/google/json/internal/LinkedTreeMap;->size:I

    iget v0, p0, Lcopy/google/json/internal/LinkedTreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcopy/google/json/internal/LinkedTreeMap;->modCount:I

    goto :goto_4a

    :cond_67
    if-eqz v1, :cond_6f

    invoke-direct {p0, p1, v1}, Lcopy/google/json/internal/LinkedTreeMap;->replaceInParent(Lcopy/google/json/internal/LinkedTreeMap$Node;Lcopy/google/json/internal/LinkedTreeMap$Node;)V

    iput-object v5, p1, Lcopy/google/json/internal/LinkedTreeMap$Node;->right:Lcopy/google/json/internal/LinkedTreeMap$Node;

    goto :goto_57

    :cond_6f
    invoke-direct {p0, p1, v5}, Lcopy/google/json/internal/LinkedTreeMap;->replaceInParent(Lcopy/google/json/internal/LinkedTreeMap$Node;Lcopy/google/json/internal/LinkedTreeMap$Node;)V

    goto :goto_57

    :cond_73
    move v1, v2

    goto :goto_33
.end method

.method removeInternalByKey(Ljava/lang/Object;)Lcopy/google/json/internal/LinkedTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcopy/google/json/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcopy/google/json/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lcopy/google/json/internal/LinkedTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcopy/google/json/internal/LinkedTreeMap;->removeInternal(Lcopy/google/json/internal/LinkedTreeMap$Node;Z)V

    :cond_a
    return-object v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcopy/google/json/internal/LinkedTreeMap;->size:I

    return v0
.end method
