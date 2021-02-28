.class public abstract Landroid/support/design/transformation/ExpandableBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "ExpandableBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATE_COLLAPSED:I = 0x2

.field private static final STATE_EXPANDED:I = 0x1

.field private static final STATE_UNINITIALIZED:I


# instance fields
.field private currentState:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/transformation/ExpandableBehavior;->currentState:I

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/transformation/ExpandableBehavior;->currentState:I

    .line 65
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/transformation/ExpandableBehavior;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/design/transformation/ExpandableBehavior;

    .prologue
    .line 38
    iget v0, p0, Landroid/support/design/transformation/ExpandableBehavior;->currentState:I

    return v0
.end method

.method private didStateChange(Z)Z
    .registers 6
    .param p1, "expanded"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 139
    if-eqz p1, :cond_f

    .line 141
    iget v2, p0, Landroid/support/design/transformation/ExpandableBehavior;->currentState:I

    if-eqz v2, :cond_d

    iget v2, p0, Landroid/support/design/transformation/ExpandableBehavior;->currentState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    :cond_d
    move v0, v1

    .line 144
    :cond_e
    :goto_e
    return v0

    :cond_f
    iget v2, p0, Landroid/support/design/transformation/ExpandableBehavior;->currentState:I

    if-ne v2, v1, :cond_15

    :goto_13
    move v0, v1

    goto :goto_e

    :cond_15
    move v1, v0

    goto :goto_13
.end method

.method public static from(Landroid/view/View;Ljava/lang/Class;)Landroid/support/design/transformation/ExpandableBehavior;
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/design/transformation/ExpandableBehavior;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 157
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-nez v2, :cond_10

    .line 158
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The view is not a child of CoordinatorLayout"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_10
    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 161
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 162
    .local v0, "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;, "Landroid/support/design/widget/CoordinatorLayout$Behavior<*>;"
    instance-of v2, v0, Landroid/support/design/transformation/ExpandableBehavior;

    if-nez v2, :cond_22

    .line 163
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The view is not associated with ExpandableBehavior"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    :cond_22
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/transformation/ExpandableBehavior;

    return-object v2
.end method


# virtual methods
.method protected findExpandableWidget(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/support/design/expandable/ExpandableWidget;
    .registers 8
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 129
    .local v0, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_9
    if-ge v2, v3, :cond_1d

    .line 130
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 131
    .local v1, "dependency":Landroid/view/View;
    invoke-virtual {p0, p1, p2, v1}, Landroid/support/design/transformation/ExpandableBehavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 132
    check-cast v1, Landroid/support/design/expandable/ExpandableWidget;

    .line 135
    .end local v1    # "dependency":Landroid/view/View;
    :goto_19
    return-object v1

    .line 129
    .restart local v1    # "dependency":Landroid/view/View;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 135
    .end local v1    # "dependency":Landroid/view/View;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public abstract layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 9
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 116
    move-object v0, p3

    check-cast v0, Landroid/support/design/expandable/ExpandableWidget;

    .line 117
    .local v0, "dep":Landroid/support/design/expandable/ExpandableWidget;
    invoke-interface {v0}, Landroid/support/design/expandable/ExpandableWidget;->isExpanded()Z

    move-result v1

    .line 118
    .local v1, "expanded":Z
    invoke-direct {p0, v1}, Landroid/support/design/transformation/ExpandableBehavior;->didStateChange(Z)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 119
    invoke-interface {v0}, Landroid/support/design/expandable/ExpandableWidget;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_23

    move v2, v3

    :goto_15
    iput v2, p0, Landroid/support/design/transformation/ExpandableBehavior;->currentState:I

    move-object v2, v0

    .line 120
    check-cast v2, Landroid/view/View;

    invoke-interface {v0}, Landroid/support/design/expandable/ExpandableWidget;->isExpanded()Z

    move-result v4

    invoke-virtual {p0, v2, p2, v4, v3}, Landroid/support/design/transformation/ExpandableBehavior;->onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z

    move-result v2

    .line 123
    :goto_22
    return v2

    .line 119
    :cond_23
    const/4 v2, 0x2

    goto :goto_15

    .line 123
    :cond_25
    const/4 v2, 0x0

    goto :goto_22
.end method

.method protected abstract onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 8
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "layoutDirection"    # I
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 88
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 89
    invoke-virtual {p0, p1, p2}, Landroid/support/design/transformation/ExpandableBehavior;->findExpandableWidget(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/support/design/expandable/ExpandableWidget;

    move-result-object v0

    .line 90
    .local v0, "dep":Landroid/support/design/expandable/ExpandableWidget;
    if-eqz v0, :cond_2d

    invoke-interface {v0}, Landroid/support/design/expandable/ExpandableWidget;->isExpanded()Z

    move-result v2

    invoke-direct {p0, v2}, Landroid/support/design/transformation/ExpandableBehavior;->didStateChange(Z)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 91
    invoke-interface {v0}, Landroid/support/design/expandable/ExpandableWidget;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v2, 0x1

    :goto_1d
    iput v2, p0, Landroid/support/design/transformation/ExpandableBehavior;->currentState:I

    .line 92
    iget v1, p0, Landroid/support/design/transformation/ExpandableBehavior;->currentState:I

    .line 94
    .local v1, "expectedState":I
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Landroid/support/design/transformation/ExpandableBehavior$1;

    invoke-direct {v3, p0, p2, v1, v0}, Landroid/support/design/transformation/ExpandableBehavior$1;-><init>(Landroid/support/design/transformation/ExpandableBehavior;Landroid/view/View;ILandroid/support/design/expandable/ExpandableWidget;)V

    .line 95
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 110
    .end local v0    # "dep":Landroid/support/design/expandable/ExpandableWidget;
    .end local v1    # "expectedState":I
    :cond_2d
    const/4 v2, 0x0

    return v2

    .line 91
    .restart local v0    # "dep":Landroid/support/design/expandable/ExpandableWidget;
    :cond_2f
    const/4 v2, 0x2

    goto :goto_1d
.end method
