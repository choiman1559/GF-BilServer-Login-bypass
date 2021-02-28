.class public Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityDelegate"
.end annotation


# instance fields
.field private final layout:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TextInputLayout;)V
    .registers 2
    .param p1, "layout"    # Landroid/support/design/widget/TextInputLayout;

    .prologue
    .line 2102
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    .line 2103
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;->layout:Landroid/support/design/widget/TextInputLayout;

    .line 2104
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 15
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2108
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2109
    iget-object v11, p0, Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;->layout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v11}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 2110
    .local v2, "editText":Landroid/widget/EditText;
    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    .line 2111
    .local v8, "text":Ljava/lang/CharSequence;
    :goto_11
    iget-object v11, p0, Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;->layout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v11}, Landroid/support/design/widget/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v5

    .line 2112
    .local v5, "hintText":Ljava/lang/CharSequence;
    iget-object v11, p0, Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;->layout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v11}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v3

    .line 2113
    .local v3, "errorText":Ljava/lang/CharSequence;
    iget-object v11, p0, Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;->layout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v11}, Landroid/support/design/widget/TextInputLayout;->getCounterOverflowDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2114
    .local v1, "counterDesc":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_60

    move v7, v9

    .line 2115
    .local v7, "showingText":Z
    :goto_2a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_62

    move v4, v9

    .line 2116
    .local v4, "hasHint":Z
    :goto_31
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_64

    move v6, v9

    .line 2117
    .local v6, "showingError":Z
    :goto_38
    if-nez v6, :cond_40

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_66

    :cond_40
    move v0, v9

    .line 2119
    .local v0, "contentInvalid":Z
    :goto_41
    if-eqz v7, :cond_68

    .line 2120
    invoke-virtual {p2, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 2125
    :cond_46
    :goto_46
    if-eqz v4, :cond_53

    .line 2126
    invoke-virtual {p2, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setHintText(Ljava/lang/CharSequence;)V

    .line 2127
    if-nez v7, :cond_50

    if-eqz v4, :cond_50

    move v10, v9

    :cond_50
    invoke-virtual {p2, v10}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setShowingHintText(Z)V

    .line 2130
    :cond_53
    if-eqz v0, :cond_5d

    .line 2131
    if-eqz v6, :cond_6e

    .end local v3    # "errorText":Ljava/lang/CharSequence;
    :goto_57
    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setError(Ljava/lang/CharSequence;)V

    .line 2132
    invoke-virtual {p2, v9}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentInvalid(Z)V

    .line 2134
    :cond_5d
    return-void

    .line 2110
    .end local v0    # "contentInvalid":Z
    .end local v1    # "counterDesc":Ljava/lang/CharSequence;
    .end local v4    # "hasHint":Z
    .end local v5    # "hintText":Ljava/lang/CharSequence;
    .end local v6    # "showingError":Z
    .end local v7    # "showingText":Z
    .end local v8    # "text":Ljava/lang/CharSequence;
    :cond_5e
    const/4 v8, 0x0

    goto :goto_11

    .restart local v1    # "counterDesc":Ljava/lang/CharSequence;
    .restart local v3    # "errorText":Ljava/lang/CharSequence;
    .restart local v5    # "hintText":Ljava/lang/CharSequence;
    .restart local v8    # "text":Ljava/lang/CharSequence;
    :cond_60
    move v7, v10

    .line 2114
    goto :goto_2a

    .restart local v7    # "showingText":Z
    :cond_62
    move v4, v10

    .line 2115
    goto :goto_31

    .restart local v4    # "hasHint":Z
    :cond_64
    move v6, v10

    .line 2116
    goto :goto_38

    .restart local v6    # "showingError":Z
    :cond_66
    move v0, v10

    .line 2117
    goto :goto_41

    .line 2121
    .restart local v0    # "contentInvalid":Z
    :cond_68
    if-eqz v4, :cond_46

    .line 2122
    invoke-virtual {p2, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    goto :goto_46

    :cond_6e
    move-object v3, v1

    .line 2131
    goto :goto_57
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 7
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2138
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2139
    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;->layout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 2140
    .local v0, "editText":Landroid/widget/EditText;
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 2141
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;->layout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2142
    .local v1, "eventText":Ljava/lang/CharSequence;
    :goto_1b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 2143
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2145
    :cond_28
    return-void

    .line 2140
    .end local v1    # "eventText":Ljava/lang/CharSequence;
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_29
    const/4 v2, 0x0

    goto :goto_f

    .restart local v2    # "text":Ljava/lang/CharSequence;
    :cond_2b
    move-object v1, v2

    .line 2141
    goto :goto_1b
.end method
