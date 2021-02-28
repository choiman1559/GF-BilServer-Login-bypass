.class final Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcopy/google/json/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AvlBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private leavesSkipped:I

.field private leavesToSkip:I

.field private size:I

.field private stack:Lcopy/google/json/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method add(Lcopy/google/json/internal/LinkedHashTreeMap$Node;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    iput-object v0, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput v6, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    iget v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    if-lez v0, :cond_27

    iget v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_27

    iget v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    iget v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    iget v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    :cond_27
    iget-object v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object p1, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    iget v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    if-lez v0, :cond_4f

    iget v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4f

    iget v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    iget v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    iget v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    :cond_4f
    const/4 v0, 0x4

    :goto_50
    iget v1, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_99

    iget v1, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    if-nez v1, :cond_7a

    iget-object v1, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v2, v1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v3, v2, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v4, v3, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v4, v2, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v2, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v3, v2, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v1, v2, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget v4, v1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    iput-object v2, v3, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v2, v1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    :cond_77
    :goto_77
    mul-int/lit8 v0, v0, 0x2

    goto :goto_50

    :cond_7a
    iget v1, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    if-ne v1, v6, :cond_91

    iget-object v1, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v2, v1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v2, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v1, v2, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget v3, v1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->height:I

    iput-object v2, v1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput v5, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    goto :goto_77

    :cond_91
    iget v1, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_77

    iput v5, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    goto :goto_77

    :cond_99
    return-void
.end method

.method reset(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    iput v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    iput v1, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    iput v1, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    return-void
.end method

.method root()Lcopy/google/json/internal/LinkedHashTreeMap$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v1, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    if-eqz v1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    return-object v0
.end method
