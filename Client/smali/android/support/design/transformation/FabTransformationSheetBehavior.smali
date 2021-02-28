.class public Landroid/support/design/transformation/FabTransformationSheetBehavior;
.super Landroid/support/design/transformation/FabTransformationBehavior;
.source "FabTransformationSheetBehavior.java"


# instance fields
.field private importantForAccessibilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/design/transformation/FabTransformationBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/support/design/transformation/FabTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method private updateImportantForAccessibility(Landroid/view/View;Z)V
    .registers 12
    .param p1, "sheet"    # Landroid/view/View;
    .param p2, "expanded"    # Z

    .prologue
    const/16 v8, 0x10

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 78
    .local v5, "viewParent":Landroid/view/ViewParent;
    instance-of v6, v5, Landroid/support/design/widget/CoordinatorLayout;

    if-nez v6, :cond_b

    .line 120
    :cond_a
    :goto_a
    return-void

    :cond_b
    move-object v4, v5

    .line 82
    check-cast v4, Landroid/support/design/widget/CoordinatorLayout;

    .line 83
    .local v4, "parent":Landroid/support/design/widget/CoordinatorLayout;
    invoke-virtual {v4}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 84
    .local v1, "childCount":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v8, :cond_1f

    if-eqz p2, :cond_1f

    .line 85
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Landroid/support/design/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 88
    :cond_1f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    if-ge v3, v1, :cond_7a

    .line 89
    invoke-virtual {v4, v3}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v6, :cond_44

    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v6

    instance-of v6, v6, Landroid/support/design/transformation/FabTransformationScrimBehavior;

    if-eqz v6, :cond_44

    const/4 v2, 0x1

    .line 96
    .local v2, "hasScrimBehavior":Z
    :goto_3d
    if-eq v0, p1, :cond_41

    if-eqz v2, :cond_46

    .line 88
    :cond_41
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 94
    .end local v2    # "hasScrimBehavior":Z
    :cond_44
    const/4 v2, 0x0

    goto :goto_3d

    .line 100
    .restart local v2    # "hasScrimBehavior":Z
    :cond_46
    if-nez p2, :cond_64

    .line 101
    iget-object v6, p0, Landroid/support/design/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    if-eqz v6, :cond_41

    iget-object v6, p0, Landroid/support/design/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 102
    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 104
    iget-object v6, p0, Landroid/support/design/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v0, v6}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_41

    .line 108
    :cond_64
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v8, :cond_75

    .line 109
    iget-object v6, p0, Landroid/support/design/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_75
    const/4 v6, 0x4

    invoke-static {v0, v6}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_41

    .line 117
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "hasScrimBehavior":Z
    :cond_7a
    if-nez p2, :cond_a

    .line 118
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/support/design/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    goto :goto_a
.end method


# virtual methods
.method protected onCreateMotionSpec(Landroid/content/Context;Z)Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "expanded"    # Z

    .prologue
    const/4 v4, 0x0

    .line 56
    if-eqz p2, :cond_1a

    .line 57
    sget v1, Landroid/support/design/R$animator;->mtrl_fab_transformation_sheet_expand_spec:I

    .line 62
    .local v1, "specRes":I
    :goto_5
    new-instance v0, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;

    invoke-direct {v0}, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;-><init>()V

    .line 63
    .local v0, "spec":Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    invoke-static {p1, v1}, Landroid/support/design/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Landroid/support/design/animation/MotionSpec;

    move-result-object v2

    iput-object v2, v0, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    .line 64
    new-instance v2, Landroid/support/design/animation/Positioning;

    const/16 v3, 0x11

    invoke-direct {v2, v3, v4, v4}, Landroid/support/design/animation/Positioning;-><init>(IFF)V

    iput-object v2, v0, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Landroid/support/design/animation/Positioning;

    .line 65
    return-object v0

    .line 59
    .end local v0    # "spec":Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .end local v1    # "specRes":I
    :cond_1a
    sget v1, Landroid/support/design/R$animator;->mtrl_fab_transformation_sheet_collapse_spec:I

    .restart local v1    # "specRes":I
    goto :goto_5
.end method

.method protected onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z
    .registers 6
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "animated"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p2, p3}, Landroid/support/design/transformation/FabTransformationSheetBehavior;->updateImportantForAccessibility(Landroid/view/View;Z)V

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/design/transformation/FabTransformationBehavior;->onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z

    move-result v0

    return v0
.end method
