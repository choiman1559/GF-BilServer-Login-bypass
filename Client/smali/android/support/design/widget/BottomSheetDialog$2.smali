.class Landroid/support/design/widget/BottomSheetDialog$2;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "BottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BottomSheetDialog;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BottomSheetDialog;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/design/widget/BottomSheetDialog;

    .prologue
    .line 156
    iput-object p1, p0, Landroid/support/design/widget/BottomSheetDialog$2;->this$0:Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 160
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 161
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetDialog$2;->this$0:Landroid/support/design/widget/BottomSheetDialog;

    iget-boolean v0, v0, Landroid/support/design/widget/BottomSheetDialog;->cancelable:Z

    if-eqz v0, :cond_13

    .line 162
    const/high16 v0, 0x100000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 163
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setDismissable(Z)V

    .line 167
    :goto_12
    return-void

    .line 165
    :cond_13
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setDismissable(Z)V

    goto :goto_12
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 171
    const/high16 v0, 0x100000

    if-ne p2, v0, :cond_11

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetDialog$2;->this$0:Landroid/support/design/widget/BottomSheetDialog;

    iget-boolean v0, v0, Landroid/support/design/widget/BottomSheetDialog;->cancelable:Z

    if-eqz v0, :cond_11

    .line 172
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetDialog$2;->this$0:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 173
    const/4 v0, 0x1

    .line 175
    :goto_10
    return v0

    :cond_11
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_10
.end method
