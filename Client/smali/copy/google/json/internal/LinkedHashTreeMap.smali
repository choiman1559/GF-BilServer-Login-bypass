.class public final Lcopy/google/json/internal/LinkedHashTreeMap;
.super Ljava/util/AbstractMap;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcopy/google/json/internal/LinkedHashTreeMap$KeySet;,
        Lcopy/google/json/internal/LinkedHashTreeMap$EntrySet;,
        Lcopy/google/json/internal/LinkedHashTreeMap$LinkedTreeMapIterator;,
        Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;,
        Lcopy/google/json/internal/LinkedHashTreeMap$AvlIterator;,
        Lcopy/google/json/internal/LinkedHashTreeMap$Node;
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

.field private entrySet:Lcopy/google/json/internal/LinkedHashTreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/internal/LinkedHashTreeMap",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field final header:Lcopy/google/json/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private keySet:Lcopy/google/json/internal/LinkedHashTreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/internal/LinkedHashTreeMap",
            "<TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field modCount:I

.field size:I

.field table:[Lcopy/google/json/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field threshold:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcopy/google/json/internal/LinkedHashTreeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcopy/google/json/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

    new-instance v0, Lcopy/google/json/internal/LinkedHashTreeMap$1;

    invoke-direct {v0}, Lcopy/google/json/internal/LinkedHashTreeMap$1;-><init>()V

    sput-object v0, Lcopy/google/json/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcopy/google/json/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcopy/google/json/internal/LinkedHashTreeMap;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->size:I

    iput v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->modCount:I

    if-eqz p1, :cond_27

    :goto_a
    iput-object p1, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    new-instance v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    invoke-direct {v0}, Lcopy/google/json/internal/LinkedHashTreeMap$Node;-><init>()V

    iput-object v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->header:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    const/16 v0, 0x10

    new-array v0, v0, [Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->table:[Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->table:[Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->table:[Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->threshold:I

    return-void

    :cond_27
    sget-object p1, Lcopy/google/json/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    goto :goto_a
.end method

.method private doubleCapacity()V
    .registers 3

    iget-object v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->table:[Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    invoke-static {v0}, Lcopy/google/json/internal/LinkedHashTreeMap;->doubleCapacity([Lcopy/google/json/internal/LinkedHashTreeMap$Node;)[Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->table:[Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->table:[Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->table:[Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->threshold:I

    return-void
.end method

.method static doubleCapacity([Lcopy/google/json/internal/LinkedHashTreeMap$Node;)[Lcopy/google/json/internal/LinkedHashTreeMap$Node;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)[",
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    array-length v5, p0

    mul-int/lit8 v0, v5, 0x2

    new-array v6, v0, [Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    new-instance v7, Lcopy/google/json/internal/LinkedHashTreeMap$AvlIterator;

    invoke-direct {v7}, Lcopy/google/json/internal/LinkedHashTreeMap$AvlIterator;-><init>()V

    new-instance v8, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;

    invoke-direct {v8}, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;-><init>()V

    new-instance v9, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;

    invoke-direct {v9}, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;-><init>()V

    move v4, v1

    :goto_17
    if-ge v4, v5, :cond_6a

    aget-object v10, p0, v4

    if-nez v10, :cond_21

    :goto_1d
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_17

    :cond_21
    invoke-virtual {v7, v10}, Lcopy/google/json/internal/LinkedHashTreeMap$AvlIterator;->reset(Lcopy/google/json/internal/LinkedHashTreeMap$Node;)V

    move v0, v1

    move v2, v1

    :goto_26
    invoke-virtual {v7}, Lcopy/google/json/internal/LinkedHashTreeMap$AvlIterator;->next()Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    move-result-object v11

    if-eqz v11, :cond_37

    iget v11, v11, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->hash:I

    and-int/2addr v11, v5

    if-nez v11, :cond_34

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_37
    invoke-virtual {v8, v2}, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->reset(I)V

    invoke-virtual {v9, v0}, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->reset(I)V

    invoke-virtual {v7, v10}, Lcopy/google/json/internal/LinkedHashTreeMap$AvlIterator;->reset(Lcopy/google/json/internal/LinkedHashTreeMap$Node;)V

    :goto_40
    invoke-virtual {v7}, Lcopy/google/json/internal/LinkedHashTreeMap$AvlIterator;->next()Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    move-result-object v10

    if-eqz v10, :cond_53

    iget v11, v10, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->hash:I

    and-int/2addr v11, v5

    if-nez v11, :cond_4f

    invoke-virtual {v8, v10}, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->add(Lcopy/google/json/internal/LinkedHashTreeMap$Node;)V

    goto :goto_40

    :cond_4f
    invoke-virtual {v9, v10}, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->add(Lcopy/google/json/internal/LinkedHashTreeMap$Node;)V

    goto :goto_40

    :cond_53
    if-lez v2, :cond_66

    invoke-virtual {v8}, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->root()Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    move-result-object v2

    :goto_59
    aput-object v2, v6, v4

    add-int v2, v4, v5

    if-lez v0, :cond_68

    invoke-virtual {v9}, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->root()Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    :goto_63
    aput-object v0, v6, v2

    goto :goto_1d

    :cond_66
    move-object v2, v3

    goto :goto_59

    :cond_68
    move-object v0, v3

    goto :goto_63

    :cond_6a
    return-object v6
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

.method private rebalance(Lcopy/google/json/internal/LinkedHashTreeMap$Node;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    :goto_3
    if-eqz p1, :cond_30

    iget-object v3, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v4, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    if-eqz v3, :cond_31

    iget v0, v3, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    move v2, v0

    :goto_e
    if-eqz v4, :cond_33

    iget v0, v4, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    :goto_12
    sub-int v5, v2, v0

    const/4 v6, -0x2

    if-ne v5, v6, :cond_4c

    iget-object v3, v4, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v0, v4, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    if-eqz v0, :cond_35

    iget v0, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    move v2, v0

    :goto_20
    if-eqz v3, :cond_37

    iget v0, v3, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    :goto_24
    sub-int/2addr v0, v2

    if-eq v0, v7, :cond_2b

    if-nez v0, :cond_39

    if-nez p2, :cond_39

    :cond_2b
    invoke-direct {p0, p1}, Lcopy/google/json/internal/LinkedHashTreeMap;->rotateLeft(Lcopy/google/json/internal/LinkedHashTreeMap$Node;)V

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
    sget-boolean v2, Lcopy/google/json/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

    if-nez v2, :cond_45

    if-eq v0, v8, :cond_45

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_45
    invoke-direct {p0, v4}, Lcopy/google/json/internal/LinkedHashTreeMap;->rotateRight(Lcopy/google/json/internal/LinkedHashTreeMap$Node;)V

    invoke-direct {p0, p1}, Lcopy/google/json/internal/LinkedHashTreeMap;->rotateLeft(Lcopy/google/json/internal/LinkedHashTreeMap$Node;)V

    goto :goto_2e

    :cond_4c
    const/4 v4, 0x2

    if-ne v5, v4, :cond_82

    iget-object v4, v3, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v0, v3, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    if-eqz v0, :cond_6b

    iget v0, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    move v2, v0

    :goto_58
    if-eqz v4, :cond_6d

    iget v0, v4, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    :goto_5c
    sub-int/2addr v0, v2

    if-eq v0, v8, :cond_63

    if-nez v0, :cond_6f

    if-nez p2, :cond_6f

    :cond_63
    invoke-direct {p0, p1}, Lcopy/google/json/internal/LinkedHashTreeMap;->rotateRight(Lcopy/google/json/internal/LinkedHashTreeMap$Node;)V

    :goto_66
    if-nez p2, :cond_30

    :cond_68
    iget-object p1, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    goto :goto_3

    :cond_6b
    move v2, v1

    goto :goto_58

    :cond_6d
    move v0, v1

    goto :goto_5c

    :cond_6f
    sget-boolean v2, Lcopy/google/json/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

    if-nez v2, :cond_7b

    if-eq v0, v7, :cond_7b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7b
    invoke-direct {p0, v3}, Lcopy/google/json/internal/LinkedHashTreeMap;->rotateLeft(Lcopy/google/json/internal/LinkedHashTreeMap$Node;)V

    invoke-direct {p0, p1}, Lcopy/google/json/internal/LinkedHashTreeMap;->rotateRight(Lcopy/google/json/internal/LinkedHashTreeMap$Node;)V

    goto :goto_66

    :cond_82
    if-nez v5, :cond_8b

    add-int/lit8 v0, v2, 0x1

    iput v0, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    if-eqz p2, :cond_68

    goto :goto_30

    :cond_8b
    sget-boolean v3, Lcopy/google/json/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

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

    iput v0, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    if-nez p2, :cond_68

    goto :goto_30
.end method

.method private replaceInParent(Lcopy/google/json/internal/LinkedHashTreeMap$Node;Lcopy/google/json/internal/LinkedHashTreeMap$Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;",
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    const/4 v1, 0x0

    iput-object v1, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    if-eqz p2, :cond_9

    iput-object v0, p2, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    :cond_9
    if-eqz v0, :cond_23

    iget-object v1, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    if-ne v1, p1, :cond_12

    iput-object p2, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    :goto_11
    return-void

    :cond_12
    sget-boolean v1, Lcopy/google/json/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

    if-nez v1, :cond_20

    iget-object v1, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    if-eq v1, p1, :cond_20

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_20
    iput-object p2, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    goto :goto_11

    :cond_23
    iget v0, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->hash:I

    iget-object v1, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->table:[Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iget-object v1, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->table:[Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    aput-object p2, v1, v0

    goto :goto_11
.end method

.method private rotateLeft(Lcopy/google/json/internal/LinkedHashTreeMap$Node;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v3, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v4, v3, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v5, v3, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v4, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    if-eqz v4, :cond_f

    iput-object p1, v4, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    :cond_f
    invoke-direct {p0, p1, v3}, Lcopy/google/json/internal/LinkedHashTreeMap;->replaceInParent(Lcopy/google/json/internal/LinkedHashTreeMap$Node;Lcopy/google/json/internal/LinkedHashTreeMap$Node;)V

    iput-object p1, v3, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v3, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    if-eqz v0, :cond_36

    iget v0, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    move v2, v0

    :goto_1b
    if-eqz v4, :cond_38

    iget v0, v4, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    :goto_1f
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    iget v0, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    if-eqz v5, :cond_2d

    iget v1, v5, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    :cond_2d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    return-void

    :cond_36
    move v2, v1

    goto :goto_1b

    :cond_38
    move v0, v1

    goto :goto_1f
.end method

.method private rotateRight(Lcopy/google/json/internal/LinkedHashTreeMap$Node;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v3, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v0, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v4, v3, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v5, v3, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v5, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    if-eqz v5, :cond_f

    iput-object p1, v5, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    :cond_f
    invoke-direct {p0, p1, v3}, Lcopy/google/json/internal/LinkedHashTreeMap;->replaceInParent(Lcopy/google/json/internal/LinkedHashTreeMap$Node;Lcopy/google/json/internal/LinkedHashTreeMap$Node;)V

    iput-object p1, v3, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v3, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    if-eqz v0, :cond_36

    iget v0, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    move v2, v0

    :goto_1b
    if-eqz v5, :cond_38

    iget v0, v5, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    :goto_1f
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    iget v0, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    if-eqz v4, :cond_2d

    iget v1, v4, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    :cond_2d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    return-void

    :cond_36
    move v2, v1

    goto :goto_1b

    :cond_38
    move v0, v1

    goto :goto_1f
.end method

.method private static secondaryHash(I)I
    .registers 3

    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr v0, p0

    ushr-int/lit8 v1, v0, 0x7

    xor-int/2addr v1, v0

    ushr-int/lit8 v0, v0, 0x4

    xor-int/2addr v0, v1

    return v0
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
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->table:[Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->size:I

    iget v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->modCount:I

    iget-object v2, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->header:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v0, v2, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->next:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    :goto_13
    if-eq v0, v2, :cond_1d

    iget-object v1, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->next:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v3, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->prev:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v3, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->next:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    move-object v0, v1

    goto :goto_13

    :cond_1d
    iput-object v2, v2, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->prev:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v2, v2, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->next:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcopy/google/json/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcopy/google/json/internal/LinkedHashTreeMap$Node;

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

    iget-object v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->entrySet:Lcopy/google/json/internal/LinkedHashTreeMap$EntrySet;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcopy/google/json/internal/LinkedHashTreeMap$EntrySet;

    invoke-direct {v0, p0}, Lcopy/google/json/internal/LinkedHashTreeMap$EntrySet;-><init>(Lcopy/google/json/internal/LinkedHashTreeMap;)V

    iput-object v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->entrySet:Lcopy/google/json/internal/LinkedHashTreeMap$EntrySet;

    goto :goto_4
.end method

.method find(Ljava/lang/Object;Z)Lcopy/google/json/internal/LinkedHashTreeMap$Node;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v7, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    iget-object v8, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->table:[Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcopy/google/json/internal/LinkedHashTreeMap;->secondaryHash(I)I

    move-result v3

    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    and-int v9, v3, v0

    aget-object v1, v8, v9

    const/4 v0, 0x0

    if-eqz v1, :cond_a1

    sget-object v0, Lcopy/google/json/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v7, v0, :cond_2a

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    :goto_1e
    if-eqz v0, :cond_2c

    iget-object v4, v1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    :goto_26
    if-nez v4, :cond_33

    move-object v2, v1

    :cond_29
    :goto_29
    return-object v2

    :cond_2a
    move-object v0, v2

    goto :goto_1e

    :cond_2c
    iget-object v4, v1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v7, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto :goto_26

    :cond_33
    if-gez v4, :cond_69

    iget-object v5, v1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    :goto_37
    if-nez v5, :cond_6c

    move v6, v4

    :goto_3a
    if-eqz p2, :cond_29

    iget-object v4, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->header:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    if-nez v1, :cond_8d

    sget-object v0, Lcopy/google/json/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v7, v0, :cond_6e

    instance-of v0, p1, Ljava/lang/Comparable;

    if-nez v0, :cond_6e

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

    :cond_69
    iget-object v5, v1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    goto :goto_37

    :cond_6c
    move-object v1, v5

    goto :goto_1e

    :cond_6e
    new-instance v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v5, v4, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->prev:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcopy/google/json/internal/LinkedHashTreeMap$Node;-><init>(Lcopy/google/json/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcopy/google/json/internal/LinkedHashTreeMap$Node;Lcopy/google/json/internal/LinkedHashTreeMap$Node;)V

    aput-object v0, v8, v9

    :goto_78
    iget v1, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->size:I

    iget v2, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->threshold:I

    if-le v1, v2, :cond_85

    invoke-direct {p0}, Lcopy/google/json/internal/LinkedHashTreeMap;->doubleCapacity()V

    :cond_85
    iget v1, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->modCount:I

    move-object v2, v0

    goto :goto_29

    :cond_8d
    new-instance v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v5, v4, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->prev:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcopy/google/json/internal/LinkedHashTreeMap$Node;-><init>(Lcopy/google/json/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcopy/google/json/internal/LinkedHashTreeMap$Node;Lcopy/google/json/internal/LinkedHashTreeMap$Node;)V

    if-gez v6, :cond_9e

    iput-object v0, v1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    :goto_99
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcopy/google/json/internal/LinkedHashTreeMap;->rebalance(Lcopy/google/json/internal/LinkedHashTreeMap$Node;Z)V

    goto :goto_78

    :cond_9e
    iput-object v0, v1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    goto :goto_99

    :cond_a1
    move v6, v0

    goto :goto_3a
.end method

.method findByEntry(Ljava/util/Map$Entry;)Lcopy/google/json/internal/LinkedHashTreeMap$Node;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcopy/google/json/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcopy/google/json/internal/LinkedHashTreeMap;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method findByObject(Ljava/lang/Object;)Lcopy/google/json/internal/LinkedHashTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcopy/google/json/internal/LinkedHashTreeMap;->find(Ljava/lang/Object;Z)Lcopy/google/json/internal/LinkedHashTreeMap$Node;
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

    invoke-virtual {p0, p1}, Lcopy/google/json/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

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

    iget-object v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->keySet:Lcopy/google/json/internal/LinkedHashTreeMap$KeySet;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcopy/google/json/internal/LinkedHashTreeMap$KeySet;

    invoke-direct {v0, p0}, Lcopy/google/json/internal/LinkedHashTreeMap$KeySet;-><init>(Lcopy/google/json/internal/LinkedHashTreeMap;)V

    iput-object v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->keySet:Lcopy/google/json/internal/LinkedHashTreeMap$KeySet;

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

    invoke-virtual {p0, p1, v0}, Lcopy/google/json/internal/LinkedHashTreeMap;->find(Ljava/lang/Object;Z)Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    iget-object v1, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    iput-object p2, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lcopy/google/json/internal/LinkedHashTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method removeInternal(Lcopy/google/json/internal/LinkedHashTreeMap$Node;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_14

    iget-object v0, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->prev:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v1, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->next:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v1, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->next:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v0, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->next:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v1, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->prev:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v1, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->prev:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v5, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->prev:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v5, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->next:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    :cond_14
    iget-object v0, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v1, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v3, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    if-eqz v0, :cond_54

    if-eqz v1, :cond_54

    iget v3, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    iget v4, v1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    if-le v3, v4, :cond_4f

    invoke-virtual {v0}, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->last()Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    :goto_28
    invoke-virtual {p0, v0, v2}, Lcopy/google/json/internal/LinkedHashTreeMap;->removeInternal(Lcopy/google/json/internal/LinkedHashTreeMap$Node;Z)V

    iget-object v3, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    if-eqz v3, :cond_77

    iget v1, v3, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    iput-object v3, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v0, v3, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v5, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    :goto_37
    iget-object v3, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    if-eqz v3, :cond_43

    iget v2, v3, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    iput-object v3, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v0, v3, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v5, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    :cond_43
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    invoke-direct {p0, p1, v0}, Lcopy/google/json/internal/LinkedHashTreeMap;->replaceInParent(Lcopy/google/json/internal/LinkedHashTreeMap$Node;Lcopy/google/json/internal/LinkedHashTreeMap$Node;)V

    :goto_4e
    return-void

    :cond_4f
    invoke-virtual {v1}, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->first()Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    goto :goto_28

    :cond_54
    if-eqz v0, :cond_6b

    invoke-direct {p0, p1, v0}, Lcopy/google/json/internal/LinkedHashTreeMap;->replaceInParent(Lcopy/google/json/internal/LinkedHashTreeMap$Node;Lcopy/google/json/internal/LinkedHashTreeMap$Node;)V

    iput-object v5, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    :goto_5b
    invoke-direct {p0, v3, v2}, Lcopy/google/json/internal/LinkedHashTreeMap;->rebalance(Lcopy/google/json/internal/LinkedHashTreeMap$Node;Z)V

    iget v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->size:I

    iget v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->modCount:I

    goto :goto_4e

    :cond_6b
    if-eqz v1, :cond_73

    invoke-direct {p0, p1, v1}, Lcopy/google/json/internal/LinkedHashTreeMap;->replaceInParent(Lcopy/google/json/internal/LinkedHashTreeMap$Node;Lcopy/google/json/internal/LinkedHashTreeMap$Node;)V

    iput-object v5, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    goto :goto_5b

    :cond_73
    invoke-direct {p0, p1, v5}, Lcopy/google/json/internal/LinkedHashTreeMap;->replaceInParent(Lcopy/google/json/internal/LinkedHashTreeMap$Node;Lcopy/google/json/internal/LinkedHashTreeMap$Node;)V

    goto :goto_5b

    :cond_77
    move v1, v2

    goto :goto_37
.end method

.method removeInternalByKey(Ljava/lang/Object;)Lcopy/google/json/internal/LinkedHashTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcopy/google/json/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcopy/google/json/internal/LinkedHashTreeMap;->removeInternal(Lcopy/google/json/internal/LinkedHashTreeMap$Node;Z)V

    :cond_a
    return-object v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap;->size:I

    return v0
.end method
