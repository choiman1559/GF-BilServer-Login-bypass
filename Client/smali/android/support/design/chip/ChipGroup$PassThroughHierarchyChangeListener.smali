.class Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "ChipGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/chip/ChipGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Landroid/support/design/chip/ChipGroup;


# direct methods
.method private constructor <init>(Landroid/support/design/chip/ChipGroup;)V
    .registers 2

    .prologue
    .line 423
    iput-object p1, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/chip/ChipGroup;Landroid/support/design/chip/ChipGroup$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/design/chip/ChipGroup;
    .param p2, "x1"    # Landroid/support/design/chip/ChipGroup$1;

    .prologue
    .line 423
    invoke-direct {p0, p1}, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;-><init>(Landroid/support/design/chip/ChipGroup;)V

    return-void
.end method

.method static synthetic access$202(Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;
    .param p1, "x1"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 423
    iput-object p1, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 428
    iget-object v1, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/support/design/chip/ChipGroup;

    if-ne p1, v1, :cond_28

    instance-of v1, p2, Landroid/support/design/chip/Chip;

    if-eqz v1, :cond_28

    .line 429
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    .line 431
    .local v0, "id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    .line 432
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_32

    .line 433
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    .line 437
    :goto_19
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    :cond_1c
    move-object v1, p2

    .line 439
    check-cast v1, Landroid/support/design/chip/Chip;

    iget-object v2, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v2}, Landroid/support/design/chip/ChipGroup;->access$800(Landroid/support/design/chip/ChipGroup;)Landroid/support/design/chip/ChipGroup$CheckedStateTracker;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/chip/Chip;->setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 442
    .end local v0    # "id":I
    :cond_28
    iget-object v1, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v1, :cond_31

    .line 443
    iget-object v1, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v1, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 445
    :cond_31
    return-void

    .line 435
    .restart local v0    # "id":I
    :cond_32
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_19
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 449
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/support/design/chip/ChipGroup;

    if-ne p1, v0, :cond_f

    instance-of v0, p2, Landroid/support/design/chip/Chip;

    if-eqz v0, :cond_f

    move-object v0, p2

    .line 450
    check-cast v0, Landroid/support/design/chip/Chip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/chip/Chip;->setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 453
    :cond_f
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_18

    .line 454
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 456
    :cond_18
    return-void
.end method
