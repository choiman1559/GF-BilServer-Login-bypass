.class Landroid/support/design/chip/ChipGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "ChipGroup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/chip/ChipGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/chip/ChipGroup;


# direct methods
.method private constructor <init>(Landroid/support/design/chip/ChipGroup;)V
    .registers 2

    .prologue
    .line 395
    iput-object p1, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/chip/ChipGroup;Landroid/support/design/chip/ChipGroup$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/design/chip/ChipGroup;
    .param p2, "x1"    # Landroid/support/design/chip/ChipGroup$1;

    .prologue
    .line 395
    invoke-direct {p0, p1}, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;-><init>(Landroid/support/design/chip/ChipGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, -0x1

    .line 399
    iget-object v1, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v1}, Landroid/support/design/chip/ChipGroup;->access$300(Landroid/support/design/chip/ChipGroup;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 415
    :cond_9
    :goto_9
    return-void

    .line 403
    :cond_a
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 405
    .local v0, "id":I
    if-eqz p2, :cond_3a

    .line 406
    iget-object v1, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v1}, Landroid/support/design/chip/ChipGroup;->access$400(Landroid/support/design/chip/ChipGroup;)I

    move-result v1

    if-eq v1, v2, :cond_34

    iget-object v1, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v1}, Landroid/support/design/chip/ChipGroup;->access$400(Landroid/support/design/chip/ChipGroup;)I

    move-result v1

    if-eq v1, v0, :cond_34

    iget-object v1, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v1}, Landroid/support/design/chip/ChipGroup;->access$500(Landroid/support/design/chip/ChipGroup;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 407
    iget-object v1, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    iget-object v2, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v2}, Landroid/support/design/chip/ChipGroup;->access$400(Landroid/support/design/chip/ChipGroup;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/support/design/chip/ChipGroup;->access$600(Landroid/support/design/chip/ChipGroup;IZ)V

    .line 409
    :cond_34
    iget-object v1, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v1, v0}, Landroid/support/design/chip/ChipGroup;->access$700(Landroid/support/design/chip/ChipGroup;I)V

    goto :goto_9

    .line 411
    :cond_3a
    iget-object v1, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v1}, Landroid/support/design/chip/ChipGroup;->access$400(Landroid/support/design/chip/ChipGroup;)I

    move-result v1

    if-ne v1, v0, :cond_9

    .line 412
    iget-object v1, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v1, v2}, Landroid/support/design/chip/ChipGroup;->access$700(Landroid/support/design/chip/ChipGroup;I)V

    goto :goto_9
.end method
