.class public Landroid/support/design/internal/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private itemSpacing:I

.field private lineSpacing:I

.field private singleLine:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/internal/FlowLayout;->singleLine:Z

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/support/design/internal/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/internal/FlowLayout;->singleLine:Z

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/support/design/internal/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method private static getMeasuredDimension(III)I
    .registers 3
    .param p0, "size"    # I
    .param p1, "mode"    # I
    .param p2, "childrenEdge"    # I

    .prologue
    .line 159
    sparse-switch p1, :sswitch_data_a

    move p0, p2

    .line 165
    .end local p0    # "size":I
    :goto_4
    :sswitch_4
    return p0

    .line 163
    .restart local p0    # "size":I
    :sswitch_5
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_4

    .line 159
    :sswitch_data_a
    .sparse-switch
        -0x80000000 -> :sswitch_5
        0x40000000 -> :sswitch_4
    .end sparse-switch
.end method

.method private loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Landroid/support/design/R$styleable;->FlowLayout:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, "array":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/design/R$styleable;->FlowLayout_lineSpacing:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/FlowLayout;->lineSpacing:I

    .line 71
    sget v1, Landroid/support/design/R$styleable;->FlowLayout_itemSpacing:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/FlowLayout;->itemSpacing:I

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    return-void
.end method


# virtual methods
.method protected getItemSpacing()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Landroid/support/design/internal/FlowLayout;->itemSpacing:I

    return v0
.end method

.method protected getLineSpacing()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Landroid/support/design/internal/FlowLayout;->lineSpacing:I

    return v0
.end method

.method protected isSingleLine()Z
    .registers 2

    .prologue
    .line 92
    iget-boolean v0, p0, Landroid/support/design/internal/FlowLayout;->singleLine:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 23
    .param p1, "sizeChanged"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 171
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->getChildCount()I

    move-result v15

    if-nez v15, :cond_7

    .line 221
    :cond_6
    return-void

    .line 176
    :cond_7
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_42

    const/4 v8, 0x1

    .line 177
    .local v8, "isRtl":Z
    :goto_12
    if-eqz v8, :cond_44

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->getPaddingRight()I

    move-result v13

    .line 178
    .local v13, "paddingStart":I
    :goto_18
    if-eqz v8, :cond_49

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->getPaddingLeft()I

    move-result v12

    .line 179
    .local v12, "paddingEnd":I
    :goto_1e
    move v4, v13

    .line 180
    .local v4, "childStart":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->getPaddingTop()I

    move-result v5

    .line 181
    .local v5, "childTop":I
    move v2, v5

    .line 184
    .local v2, "childBottom":I
    sub-int v15, p4, p2

    sub-int v11, v15, v12

    .line 186
    .local v11, "maxChildEnd":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_29
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->getChildCount()I

    move-result v15

    if-ge v7, v15, :cond_6

    .line 187
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/design/internal/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 189
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_4e

    .line 186
    :goto_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    .line 176
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childBottom":I
    .end local v4    # "childStart":I
    .end local v5    # "childTop":I
    .end local v7    # "i":I
    .end local v8    # "isRtl":Z
    .end local v11    # "maxChildEnd":I
    .end local v12    # "paddingEnd":I
    .end local v13    # "paddingStart":I
    :cond_42
    const/4 v8, 0x0

    goto :goto_12

    .line 177
    .restart local v8    # "isRtl":Z
    :cond_44
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->getPaddingLeft()I

    move-result v13

    goto :goto_18

    .line 178
    .restart local v13    # "paddingStart":I
    :cond_49
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->getPaddingRight()I

    move-result v12

    goto :goto_1e

    .line 193
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "childBottom":I
    .restart local v4    # "childStart":I
    .restart local v5    # "childTop":I
    .restart local v7    # "i":I
    .restart local v11    # "maxChildEnd":I
    .restart local v12    # "paddingEnd":I
    :cond_4e
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 194
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v14, 0x0

    .line 195
    .local v14, "startMargin":I
    const/4 v6, 0x0

    .line 196
    .local v6, "endMargin":I
    instance-of v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v15, :cond_63

    move-object v10, v9

    .line 197
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 198
    .local v10, "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v10}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v14

    .line 199
    invoke-static {v10}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v6

    .line 202
    .end local v10    # "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_63
    add-int v15, v4, v14

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v3, v15, v16

    .line 204
    .local v3, "childEnd":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/support/design/internal/FlowLayout;->singleLine:Z

    if-nez v15, :cond_7a

    if-le v3, v11, :cond_7a

    .line 205
    move v4, v13

    .line 206
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/design/internal/FlowLayout;->lineSpacing:I

    add-int v5, v2, v15

    .line 209
    :cond_7a
    add-int v15, v4, v14

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v3, v15, v16

    .line 210
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int v2, v5, v15

    .line 212
    if-eqz v8, :cond_a7

    .line 213
    sub-int v15, v11, v3

    sub-int v16, v11, v4

    sub-int v16, v16, v14

    move/from16 v0, v16

    invoke-virtual {v1, v15, v5, v0, v2}, Landroid/view/View;->layout(IIII)V

    .line 219
    :goto_95
    add-int v15, v14, v6

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/FlowLayout;->itemSpacing:I

    move/from16 v16, v0

    add-int v15, v15, v16

    add-int/2addr v4, v15

    goto :goto_3f

    .line 216
    :cond_a7
    add-int v15, v4, v14

    invoke-virtual {v1, v15, v5, v3, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_95
.end method

.method protected onMeasure(II)V
    .registers 27
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 102
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v20

    .line 103
    .local v20, "width":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    .line 105
    .local v21, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 106
    .local v10, "height":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 108
    .local v11, "heightMode":I
    const/high16 v22, -0x80000000

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_20

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_52

    :cond_20
    move/from16 v18, v20

    .line 113
    .local v18, "maxWidth":I
    :goto_22
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->getPaddingLeft()I

    move-result v5

    .line 114
    .local v5, "childLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->getPaddingTop()I

    move-result v7

    .line 115
    .local v7, "childTop":I
    move v4, v7

    .line 116
    .local v4, "childBottom":I
    move v6, v5

    .line 117
    .local v6, "childRight":I
    const/16 v16, 0x0

    .line 118
    .local v16, "maxChildRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->getPaddingRight()I

    move-result v22

    sub-int v17, v18, v22

    .line 119
    .local v17, "maxRight":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_35
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->getChildCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_c0

    .line 120
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/design/internal/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 122
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_56

    .line 119
    :goto_4f
    add-int/lit8 v12, v12, 0x1

    goto :goto_35

    .line 108
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childBottom":I
    .end local v5    # "childLeft":I
    .end local v6    # "childRight":I
    .end local v7    # "childTop":I
    .end local v12    # "i":I
    .end local v16    # "maxChildRight":I
    .end local v17    # "maxRight":I
    .end local v18    # "maxWidth":I
    :cond_52
    const v18, 0x7fffffff

    goto :goto_22

    .line 125
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "childBottom":I
    .restart local v5    # "childLeft":I
    .restart local v6    # "childRight":I
    .restart local v7    # "childTop":I
    .restart local v12    # "i":I
    .restart local v16    # "maxChildRight":I
    .restart local v17    # "maxRight":I
    .restart local v18    # "maxWidth":I
    :cond_56
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/design/internal/FlowLayout;->measureChild(Landroid/view/View;II)V

    .line 127
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 128
    .local v14, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v13, 0x0

    .line 129
    .local v13, "leftMargin":I
    const/16 v19, 0x0

    .line 130
    .local v19, "rightMargin":I
    instance-of v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;

    move/from16 v22, v0

    if-eqz v22, :cond_7b

    move-object v15, v14

    .line 131
    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 132
    .local v15, "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v22, v0

    add-int v13, v13, v22

    .line 133
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v22, v0

    add-int v19, v19, v22

    .line 136
    .end local v15    # "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_7b
    add-int v22, v5, v13

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v6, v22, v23

    .line 138
    move/from16 v0, v17

    if-le v6, v0, :cond_99

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->isSingleLine()Z

    move-result v22

    if-nez v22, :cond_99

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->getPaddingLeft()I

    move-result v5

    .line 140
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/FlowLayout;->lineSpacing:I

    move/from16 v22, v0

    add-int v7, v4, v22

    .line 143
    :cond_99
    add-int v22, v5, v13

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v6, v22, v23

    .line 144
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v4, v7, v22

    .line 146
    move/from16 v0, v16

    if-le v6, v0, :cond_ad

    .line 147
    move/from16 v16, v6

    .line 150
    :cond_ad
    add-int v22, v13, v19

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/FlowLayout;->itemSpacing:I

    move/from16 v23, v0

    add-int v22, v22, v23

    add-int v5, v5, v22

    goto :goto_4f

    .line 153
    .end local v3    # "child":Landroid/view/View;
    .end local v13    # "leftMargin":I
    .end local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v19    # "rightMargin":I
    :cond_c0
    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/support/design/internal/FlowLayout;->getMeasuredDimension(III)I

    move-result v9

    .line 154
    .local v9, "finalWidth":I
    invoke-static {v10, v11, v4}, Landroid/support/design/internal/FlowLayout;->getMeasuredDimension(III)I

    move-result v8

    .line 155
    .local v8, "finalHeight":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8}, Landroid/support/design/internal/FlowLayout;->setMeasuredDimension(II)V

    .line 156
    return-void
.end method

.method protected setItemSpacing(I)V
    .registers 2
    .param p1, "itemSpacing"    # I

    .prologue
    .line 88
    iput p1, p0, Landroid/support/design/internal/FlowLayout;->itemSpacing:I

    .line 89
    return-void
.end method

.method protected setLineSpacing(I)V
    .registers 2
    .param p1, "lineSpacing"    # I

    .prologue
    .line 80
    iput p1, p0, Landroid/support/design/internal/FlowLayout;->lineSpacing:I

    .line 81
    return-void
.end method

.method public setSingleLine(Z)V
    .registers 2
    .param p1, "singleLine"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Landroid/support/design/internal/FlowLayout;->singleLine:Z

    .line 98
    return-void
.end method
