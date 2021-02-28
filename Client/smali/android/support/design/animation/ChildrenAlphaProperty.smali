.class public Landroid/support/design/animation/ChildrenAlphaProperty;
.super Landroid/util/Property;
.source "ChildrenAlphaProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/view/ViewGroup;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHILDREN_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37
    new-instance v0, Landroid/support/design/animation/ChildrenAlphaProperty;

    const-string v1, "childrenAlpha"

    invoke-direct {v0, v1}, Landroid/support/design/animation/ChildrenAlphaProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/design/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Ljava/lang/Float;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public get(Landroid/view/ViewGroup;)Ljava/lang/Float;
    .registers 4
    .param p1, "object"    # Landroid/view/ViewGroup;

    .prologue
    .line 46
    sget v1, Landroid/support/design/R$id;->mtrl_internal_children_alpha_tag:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 47
    .local v0, "alpha":Ljava/lang/Float;
    if-eqz v0, :cond_b

    .line 50
    .end local v0    # "alpha":Ljava/lang/Float;
    :goto_a
    return-object v0

    .restart local v0    # "alpha":Ljava/lang/Float;
    :cond_b
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_a
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 32
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/support/design/animation/ChildrenAlphaProperty;->get(Landroid/view/ViewGroup;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/view/ViewGroup;Ljava/lang/Float;)V
    .registers 9
    .param p1, "object"    # Landroid/view/ViewGroup;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    .line 56
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 58
    .local v0, "alpha":F
    sget v4, Landroid/support/design/R$id;->mtrl_internal_children_alpha_tag:I

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 60
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .local v2, "count":I
    :goto_12
    if-ge v3, v2, :cond_1e

    .line 61
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 64
    .end local v1    # "child":Landroid/view/View;
    :cond_1e
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 32
    check-cast p1, Landroid/view/ViewGroup;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/animation/ChildrenAlphaProperty;->set(Landroid/view/ViewGroup;Ljava/lang/Float;)V

    return-void
.end method
