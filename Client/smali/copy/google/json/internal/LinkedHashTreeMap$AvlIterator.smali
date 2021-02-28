.class Lcopy/google/json/internal/LinkedHashTreeMap$AvlIterator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcopy/google/json/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AvlIterator"
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
.field private stackTop:Lcopy/google/json/internal/LinkedHashTreeMap$Node;
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
.method public next()Lcopy/google/json/internal/LinkedHashTreeMap$Node;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlIterator;->stackTop:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v2, v1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iput-object v0, v1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v0, v1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->right:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    :goto_c
    if-eqz v0, :cond_16

    iput-object v2, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v2, v0, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_c

    :cond_16
    iput-object v2, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlIterator;->stackTop:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    move-object v0, v1

    goto :goto_5
.end method

.method reset(Lcopy/google/json/internal/LinkedHashTreeMap$Node;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_b

    iput-object v0, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->parent:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    iget-object v0, p1, Lcopy/google/json/internal/LinkedHashTreeMap$Node;->left:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_1

    :cond_b
    iput-object v0, p0, Lcopy/google/json/internal/LinkedHashTreeMap$AvlIterator;->stackTop:Lcopy/google/json/internal/LinkedHashTreeMap$Node;

    return-void
.end method
