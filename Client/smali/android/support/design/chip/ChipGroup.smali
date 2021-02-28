.class public Landroid/support/design/chip/ChipGroup;
.super Landroid/support/design/internal/FlowLayout;
.source "ChipGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;,
        Landroid/support/design/chip/ChipGroup$CheckedStateTracker;,
        Landroid/support/design/chip/ChipGroup$LayoutParams;,
        Landroid/support/design/chip/ChipGroup$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private checkedId:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private final checkedStateTracker:Landroid/support/design/chip/ChipGroup$CheckedStateTracker;

.field private chipSpacingHorizontal:I
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation
.end field

.field private chipSpacingVertical:I
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation
.end field

.field private onCheckedChangeListener:Landroid/support/design/chip/ChipGroup$OnCheckedChangeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private passThroughListener:Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;

.field private protectFromCheckedChange:Z

.field private singleSelection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 106
    sget v0, Landroid/support/design/R$attr;->chipGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    new-instance v0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;

    invoke-direct {v0, p0, v1}, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;-><init>(Landroid/support/design/chip/ChipGroup;Landroid/support/design/chip/ChipGroup$1;)V

    iput-object v0, p0, Landroid/support/design/chip/ChipGroup;->checkedStateTracker:Landroid/support/design/chip/ChipGroup$CheckedStateTracker;

    .line 95
    new-instance v0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;-><init>(Landroid/support/design/chip/ChipGroup;Landroid/support/design/chip/ChipGroup$1;)V

    iput-object v0, p0, Landroid/support/design/chip/ChipGroup;->passThroughListener:Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;

    .line 98
    iput v10, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    .line 99
    iput-boolean v9, p0, Landroid/support/design/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 112
    sget-object v2, Landroid/support/design/R$styleable;->ChipGroup:[I

    sget v4, Landroid/support/design/R$style;->Widget_MaterialComponents_ChipGroup:I

    new-array v5, v9, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 113
    invoke-static/range {v0 .. v5}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 120
    .local v6, "a":Landroid/content/res/TypedArray;
    sget v0, Landroid/support/design/R$styleable;->ChipGroup_chipSpacing:I

    invoke-virtual {v6, v0, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    .line 121
    .local v8, "chipSpacing":I
    sget v0, Landroid/support/design/R$styleable;->ChipGroup_chipSpacingHorizontal:I

    .line 122
    invoke-virtual {v6, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 121
    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 123
    sget v0, Landroid/support/design/R$styleable;->ChipGroup_chipSpacingVertical:I

    .line 124
    invoke-virtual {v6, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 123
    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 125
    sget v0, Landroid/support/design/R$styleable;->ChipGroup_singleLine:I

    invoke-virtual {v6, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipGroup;->setSingleLine(Z)V

    .line 126
    sget v0, Landroid/support/design/R$styleable;->ChipGroup_singleSelection:I

    invoke-virtual {v6, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipGroup;->setSingleSelection(Z)V

    .line 127
    sget v0, Landroid/support/design/R$styleable;->ChipGroup_checkedChip:I

    invoke-virtual {v6, v0, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 128
    .local v7, "checkedChip":I
    if-eq v7, v10, :cond_59

    .line 129
    iput v7, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    .line 132
    :cond_59
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup;->passThroughListener:Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/support/design/internal/FlowLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 134
    return-void
.end method

.method static synthetic access$300(Landroid/support/design/chip/ChipGroup;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/design/chip/ChipGroup;

    .prologue
    .line 50
    iget-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->protectFromCheckedChange:Z

    return v0
.end method

.method static synthetic access$400(Landroid/support/design/chip/ChipGroup;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/design/chip/ChipGroup;

    .prologue
    .line 50
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    return v0
.end method

.method static synthetic access$500(Landroid/support/design/chip/ChipGroup;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/design/chip/ChipGroup;

    .prologue
    .line 50
    iget-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->singleSelection:Z

    return v0
.end method

.method static synthetic access$600(Landroid/support/design/chip/ChipGroup;IZ)V
    .registers 3
    .param p0, "x0"    # Landroid/support/design/chip/ChipGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/support/design/chip/ChipGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static synthetic access$700(Landroid/support/design/chip/ChipGroup;I)V
    .registers 2
    .param p0, "x0"    # Landroid/support/design/chip/ChipGroup;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/support/design/chip/ChipGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/design/chip/ChipGroup;)Landroid/support/design/chip/ChipGroup$CheckedStateTracker;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/chip/ChipGroup;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup;->checkedStateTracker:Landroid/support/design/chip/ChipGroup$CheckedStateTracker;

    return-object v0
.end method

.method private setCheckedId(I)V
    .registers 3
    .param p1, "checkedId"    # I

    .prologue
    .line 296
    iput p1, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    .line 298
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup;->onCheckedChangeListener:Landroid/support/design/chip/ChipGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->singleSelection:Z

    if-eqz v0, :cond_f

    .line 299
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup;->onCheckedChangeListener:Landroid/support/design/chip/ChipGroup$OnCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/support/design/chip/ChipGroup$OnCheckedChangeListener;->onCheckedChanged(Landroid/support/design/chip/ChipGroup;I)V

    .line 301
    :cond_f
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .registers 5
    .param p1, "viewId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "checked"    # Z

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 305
    .local v0, "checkedView":Landroid/view/View;
    instance-of v1, v0, Landroid/support/design/chip/Chip;

    if-eqz v1, :cond_13

    .line 306
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/design/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 307
    check-cast v0, Landroid/support/design/chip/Chip;

    .end local v0    # "checkedView":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/support/design/chip/Chip;->setChecked(Z)V

    .line 308
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 310
    :cond_13
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 175
    instance-of v1, p1, Landroid/support/design/chip/Chip;

    if-eqz v1, :cond_23

    move-object v0, p1

    .line 176
    check-cast v0, Landroid/support/design/chip/Chip;

    .line 177
    .local v0, "chip":Landroid/support/design/chip/Chip;
    invoke-virtual {v0}, Landroid/support/design/chip/Chip;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 178
    iget v1, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1c

    iget-boolean v1, p0, Landroid/support/design/chip/ChipGroup;->singleSelection:Z

    if-eqz v1, :cond_1c

    .line 179
    iget v1, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/support/design/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 181
    :cond_1c
    invoke-virtual {v0}, Landroid/support/design/chip/Chip;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/design/chip/ChipGroup;->setCheckedId(I)V

    .line 185
    .end local v0    # "chip":Landroid/support/design/chip/Chip;
    :cond_23
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/internal/FlowLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 186
    return-void
.end method

.method public check(I)V
    .registers 5
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x1

    .line 236
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    if-ne p1, v0, :cond_6

    .line 249
    :goto_5
    return-void

    .line 240
    :cond_6
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    if-eq v0, v2, :cond_14

    iget-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->singleSelection:Z

    if-eqz v0, :cond_14

    .line 241
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/design/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 244
    :cond_14
    if-eq p1, v2, :cond_1a

    .line 245
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 248
    :cond_1a
    invoke-direct {p0, p1}, Landroid/support/design/chip/ChipGroup;->setCheckedId(I)V

    goto :goto_5
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/support/design/internal/FlowLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_c

    instance-of v0, p1, Landroid/support/design/chip/ChipGroup$LayoutParams;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public clearCheck()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 273
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/design/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 274
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 275
    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 276
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Landroid/support/design/chip/Chip;

    if-eqz v2, :cond_18

    .line 277
    check-cast v0, Landroid/support/design/chip/Chip;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/support/design/chip/Chip;->setChecked(Z)V

    .line 274
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 280
    :cond_1b
    iput-boolean v3, p0, Landroid/support/design/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 282
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Landroid/support/design/chip/ChipGroup;->setCheckedId(I)V

    .line 283
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 148
    new-instance v0, Landroid/support/design/chip/ChipGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/design/chip/ChipGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 138
    new-instance v0, Landroid/support/design/chip/ChipGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/chip/ChipGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 143
    new-instance v0, Landroid/support/design/chip/ChipGroup$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/chip/ChipGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCheckedChipId()I
    .registers 2
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation

    .prologue
    .line 262
    iget-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->singleSelection:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    :goto_6
    return v0

    :cond_7
    const/4 v0, -0x1

    goto :goto_6
.end method

.method public getChipSpacingHorizontal()I
    .registers 2
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .prologue
    .line 326
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->chipSpacingHorizontal:I

    return v0
.end method

.method public getChipSpacingVertical()I
    .registers 2
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .prologue
    .line 346
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->chipSpacingVertical:I

    return v0
.end method

.method public isSingleSelection()Z
    .registers 2

    .prologue
    .line 370
    iget-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->singleSelection:Z

    return v0
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 164
    invoke-super {p0}, Landroid/support/design/internal/FlowLayout;->onFinishInflate()V

    .line 167
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 168
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/design/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 169
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->checkedId:I

    invoke-direct {p0, v0}, Landroid/support/design/chip/ChipGroup;->setCheckedId(I)V

    .line 171
    :cond_13
    return-void
.end method

.method public setChipSpacing(I)V
    .registers 2
    .param p1, "chipSpacing"    # I
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 315
    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 316
    return-void
.end method

.method public setChipSpacingHorizontal(I)V
    .registers 3
    .param p1, "chipSpacingHorizontal"    # I
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 331
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->chipSpacingHorizontal:I

    if-eq v0, p1, :cond_c

    .line 332
    iput p1, p0, Landroid/support/design/chip/ChipGroup;->chipSpacingHorizontal:I

    .line 333
    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setItemSpacing(I)V

    .line 334
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->requestLayout()V

    .line 336
    :cond_c
    return-void
.end method

.method public setChipSpacingHorizontalResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 340
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 341
    return-void
.end method

.method public setChipSpacingResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 320
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipGroup;->setChipSpacing(I)V

    .line 321
    return-void
.end method

.method public setChipSpacingVertical(I)V
    .registers 3
    .param p1, "chipSpacingVertical"    # I
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 351
    iget v0, p0, Landroid/support/design/chip/ChipGroup;->chipSpacingVertical:I

    if-eq v0, p1, :cond_c

    .line 352
    iput p1, p0, Landroid/support/design/chip/ChipGroup;->chipSpacingVertical:I

    .line 353
    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipGroup;->setLineSpacing(I)V

    .line 354
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->requestLayout()V

    .line 356
    :cond_c
    return-void
.end method

.method public setChipSpacingVerticalResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 360
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 361
    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 199
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFlexWrap(I)V
    .registers 4
    .param p1, "flexWrap"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnCheckedChangeListener(Landroid/support/design/chip/ChipGroup$OnCheckedChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/design/chip/ChipGroup$OnCheckedChangeListener;

    .prologue
    .line 292
    iput-object p1, p0, Landroid/support/design/chip/ChipGroup;->onCheckedChangeListener:Landroid/support/design/chip/ChipGroup$OnCheckedChangeListener;

    .line 293
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup;->passThroughListener:Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-static {v0, p1}, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->access$202(Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 160
    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .registers 4
    .param p1, "dividerMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 207
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShowDividerVertical(I)V
    .registers 4
    .param p1, "dividerMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 214
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSingleLine(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .prologue
    .line 365
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipGroup;->setSingleLine(Z)V

    .line 366
    return-void
.end method

.method public setSingleSelection(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .prologue
    .line 392
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipGroup;->setSingleSelection(Z)V

    .line 393
    return-void
.end method

.method public setSingleSelection(Z)V
    .registers 3
    .param p1, "singleSelection"    # Z

    .prologue
    .line 379
    iget-boolean v0, p0, Landroid/support/design/chip/ChipGroup;->singleSelection:Z

    if-eq v0, p1, :cond_9

    .line 380
    iput-boolean p1, p0, Landroid/support/design/chip/ChipGroup;->singleSelection:Z

    .line 382
    invoke-virtual {p0}, Landroid/support/design/chip/ChipGroup;->clearCheck()V

    .line 384
    :cond_9
    return-void
.end method
