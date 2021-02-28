.class public Landroid/support/design/widget/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;,
        Landroid/support/design/widget/TextInputLayout$SavedState;,
        Landroid/support/design/widget/TextInputLayout$BoxBackgroundMode;
    }
.end annotation


# static fields
.field public static final BOX_BACKGROUND_FILLED:I = 0x1

.field public static final BOX_BACKGROUND_NONE:I = 0x0

.field public static final BOX_BACKGROUND_OUTLINE:I = 0x2

.field private static final INVALID_MAX_LENGTH:I = -0x1

.field private static final LABEL_SCALE_ANIMATION_DURATION:I = 0xa7

.field private static final LOG_TAG:Ljava/lang/String; = "TextInputLayout"


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private boxBackground:Landroid/graphics/drawable/GradientDrawable;

.field private boxBackgroundColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private boxBackgroundMode:I

.field private final boxBottomOffsetPx:I

.field private final boxCollapsedPaddingTopPx:I

.field private boxCornerRadiusBottomEnd:F

.field private boxCornerRadiusBottomStart:F

.field private boxCornerRadiusTopEnd:F

.field private boxCornerRadiusTopStart:F

.field private final boxLabelCutoutPaddingPx:I

.field private boxStrokeColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final boxStrokeWidthDefaultPx:I

.field private final boxStrokeWidthFocusedPx:I

.field private boxStrokeWidthPx:I

.field final collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

.field counterEnabled:Z

.field private counterMaxLength:I

.field private final counterOverflowTextAppearance:I

.field private counterOverflowed:Z

.field private final counterTextAppearance:I

.field private counterView:Landroid/widget/TextView;

.field private defaultHintTextColor:Landroid/content/res/ColorStateList;

.field private final defaultStrokeColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final disabledColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field editText:Landroid/widget/EditText;

.field private editTextOriginalDrawable:Landroid/graphics/drawable/Drawable;

.field private focusedStrokeColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private focusedTextColor:Landroid/content/res/ColorStateList;

.field private hasPasswordToggleTintList:Z

.field private hasPasswordToggleTintMode:Z

.field private hasReconstructedEditTextBackground:Z

.field private hint:Ljava/lang/CharSequence;

.field private hintAnimationEnabled:Z

.field private hintEnabled:Z

.field private hintExpanded:Z

.field private final hoveredStrokeColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private inDrawableStateChanged:Z

.field private final indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

.field private final inputFrame:Landroid/widget/FrameLayout;

.field private isProvidingHint:Z

.field private originalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

.field private originalHint:Ljava/lang/CharSequence;

.field private passwordToggleContentDesc:Ljava/lang/CharSequence;

.field private passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

.field private passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

.field private passwordToggleEnabled:Z

.field private passwordToggleTintList:Landroid/content/res/ColorStateList;

.field private passwordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

.field private passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

.field private passwordToggledVisible:Z

.field private restoringSavedState:Z

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF:Landroid/graphics/RectF;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 247
    sget v0, Landroid/support/design/R$attr;->textInputStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 248
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 251
    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    new-instance v1, Landroid/support/design/widget/IndicatorViewController;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/support/design/widget/IndicatorViewController;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    .line 203
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/design/widget/TextInputLayout;->tmpRect:Landroid/graphics/Rect;

    .line 204
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/design/widget/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    .line 232
    new-instance v1, Landroid/support/design/widget/CollapsingTextHelper;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/support/design/widget/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    .line 253
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setOrientation(I)V

    .line 254
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setWillNotDraw(Z)V

    .line 255
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setAddStatesFromChildren(Z)V

    .line 257
    new-instance v1, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    .line 258
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAddStatesFromChildren(Z)V

    .line 259
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->addView(Landroid/view/View;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget-object v2, Landroid/support/design/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget-object v2, Landroid/support/design/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->setPositionInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    const v2, 0x800033

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 265
    sget-object v3, Landroid/support/design/R$styleable;->TextInputLayout:[I

    sget v5, Landroid/support/design/R$style;->Widget_Design_TextInputLayout:I

    const/4 v1, 0x0

    new-array v6, v1, [I

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    .line 266
    invoke-static/range {v1 .. v6}, Landroid/support/design/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v7

    .line 273
    .local v7, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_hintEnabled:I

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    .line 274
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_android_hint:I

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 275
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_hintAnimationEnabled:I

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/design/widget/TextInputLayout;->hintAnimationEnabled:Z

    .line 278
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/design/R$dimen;->mtrl_textinput_box_bottom_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/design/widget/TextInputLayout;->boxBottomOffsetPx:I

    .line 281
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/design/R$dimen;->mtrl_textinput_box_label_cutout_padding:I

    .line 282
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/design/widget/TextInputLayout;->boxLabelCutoutPaddingPx:I

    .line 284
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_boxCollapsedPaddingTop:I

    const/4 v2, 0x0

    .line 285
    invoke-virtual {v7, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/design/widget/TextInputLayout;->boxCollapsedPaddingTopPx:I

    .line 286
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_boxCornerRadiusTopStart:I

    const/4 v2, 0x0

    .line 287
    invoke-virtual {v7, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimension(IF)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopStart:F

    .line 288
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_boxCornerRadiusTopEnd:I

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimension(IF)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopEnd:F

    .line 289
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_boxCornerRadiusBottomEnd:I

    const/4 v2, 0x0

    .line 290
    invoke-virtual {v7, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimension(IF)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomEnd:F

    .line 291
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_boxCornerRadiusBottomStart:I

    const/4 v2, 0x0

    .line 292
    invoke-virtual {v7, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimension(IF)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomStart:F

    .line 294
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_boxBackgroundColor:I

    const/4 v2, 0x0

    .line 295
    invoke-virtual {v7, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundColor:I

    .line 297
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_boxStrokeColor:I

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    .line 300
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/design/R$dimen;->mtrl_textinput_box_stroke_width_default:I

    .line 301
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthDefaultPx:I

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/design/R$dimen;->mtrl_textinput_box_stroke_width_focused:I

    .line 305
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthFocusedPx:I

    .line 306
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthDefaultPx:I

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthPx:I

    .line 309
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_boxBackgroundMode:I

    const/4 v2, 0x0

    .line 310
    invoke-virtual {v7, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v8

    .line 311
    .local v8, "boxBackgroundMode":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/design/widget/TextInputLayout;->setBoxBackgroundMode(I)V

    .line 312
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_156

    .line 313
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_android_textColorHint:I

    .line 314
    invoke-virtual {v7, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/design/widget/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 316
    :cond_156
    sget v1, Landroid/support/design/R$color;->mtrl_textinput_default_box_stroke_color:I

    .line 317
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/design/widget/TextInputLayout;->defaultStrokeColor:I

    .line 318
    sget v1, Landroid/support/design/R$color;->mtrl_textinput_disabled_color:I

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/design/widget/TextInputLayout;->disabledColor:I

    .line 319
    sget v1, Landroid/support/design/R$color;->mtrl_textinput_hovered_box_stroke_color:I

    .line 320
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/design/widget/TextInputLayout;->hoveredStrokeColor:I

    .line 322
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_hintTextAppearance:I

    const/4 v2, -0x1

    invoke-virtual {v7, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v15

    .line 323
    .local v15, "hintAppearance":I
    const/4 v1, -0x1

    if-eq v15, v1, :cond_190

    .line 324
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_hintTextAppearance:I

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setHintTextAppearance(I)V

    .line 327
    :cond_190
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_errorTextAppearance:I

    const/4 v2, 0x0

    .line 328
    invoke-virtual {v7, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v11

    .line 329
    .local v11, "errorTextAppearance":I
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_errorEnabled:I

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 331
    .local v10, "errorEnabled":Z
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_helperTextTextAppearance:I

    const/4 v2, 0x0

    .line 332
    invoke-virtual {v7, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v14

    .line 333
    .local v14, "helperTextTextAppearance":I
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_helperTextEnabled:I

    const/4 v2, 0x0

    .line 334
    invoke-virtual {v7, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 335
    .local v13, "helperTextEnabled":Z
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_helperText:I

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 337
    .local v12, "helperText":Ljava/lang/CharSequence;
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_counterEnabled:I

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 338
    .local v9, "counterEnabled":Z
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_counterMaxLength:I

    const/4 v2, -0x1

    invoke-virtual {v7, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setCounterMaxLength(I)V

    .line 339
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_counterTextAppearance:I

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/design/widget/TextInputLayout;->counterTextAppearance:I

    .line 340
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_counterOverflowTextAppearance:I

    const/4 v2, 0x0

    .line 341
    invoke-virtual {v7, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/design/widget/TextInputLayout;->counterOverflowTextAppearance:I

    .line 343
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleEnabled:I

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/design/widget/TextInputLayout;->passwordToggleEnabled:Z

    .line 344
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleDrawable:I

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 345
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleContentDescription:I

    .line 346
    invoke-virtual {v7, v1}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/design/widget/TextInputLayout;->passwordToggleContentDesc:Ljava/lang/CharSequence;

    .line 347
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleTint:I

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_211

    .line 348
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintList:Z

    .line 349
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleTint:I

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/design/widget/TextInputLayout;->passwordToggleTintList:Landroid/content/res/ColorStateList;

    .line 351
    :cond_211
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleTintMode:I

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_22e

    .line 352
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintMode:Z

    .line 353
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleTintMode:I

    const/4 v2, -0x1

    .line 355
    invoke-virtual {v7, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v1

    const/4 v2, 0x0

    .line 354
    invoke-static {v1, v2}, Landroid/support/design/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/design/widget/TextInputLayout;->passwordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 358
    :cond_22e
    invoke-virtual {v7}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 360
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/design/widget/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 361
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/design/widget/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 362
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/design/widget/TextInputLayout;->setHelperTextTextAppearance(I)V

    .line 363
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 364
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/design/widget/TextInputLayout;->setErrorTextAppearance(I)V

    .line 365
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/design/widget/TextInputLayout;->setCounterEnabled(Z)V

    .line 367
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/TextInputLayout;->applyPasswordToggleTint()V

    .line 371
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 372
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/TextInputLayout;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/TextInputLayout;

    .prologue
    .line 143
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->restoringSavedState:Z

    return v0
.end method

.method private applyBoxAttributes()V
    .registers 4

    .prologue
    .line 1342
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_5

    .line 1370
    :goto_4
    return-void

    .line 1346
    :cond_5
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->setBoxAttributes()V

    .line 1348
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_27

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    .line 1350
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1351
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editTextOriginalDrawable:Landroid/graphics/drawable/Drawable;

    .line 1353
    :cond_21
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1356
    :cond_27
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_3b

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3b

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editTextOriginalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    .line 1360
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editTextOriginalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1363
    :cond_3b
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthPx:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_4d

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    if-eqz v0, :cond_4d

    .line 1364
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthPx:I

    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1367
    :cond_4d
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->getCornerRadiiAsArray()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 1368
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1369
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->invalidate()V

    goto :goto_4
.end method

.method private applyCutoutPadding(Landroid/graphics/RectF;)V
    .registers 4
    .param p1, "cutoutBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 1954
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 1955
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 1956
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 1957
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 1958
    return-void
.end method

.method private applyPasswordToggleTint()V
    .registers 3

    .prologue
    .line 1865
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintList:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintMode:Z

    if-eqz v0, :cond_43

    .line 1867
    :cond_c
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 1869
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintList:Z

    if-eqz v0, :cond_23

    .line 1870
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1872
    :cond_23
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintMode:Z

    if-eqz v0, :cond_2e

    .line 1873
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 1876
    :cond_2e
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v0, :cond_43

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    .line 1877
    invoke-virtual {v0}, Landroid/support/design/widget/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_43

    .line 1878
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1881
    :cond_43
    return-void
.end method

.method private assignBoxBackgroundByMode()V
    .registers 3

    .prologue
    .line 425
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    if-nez v0, :cond_8

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 437
    :cond_7
    :goto_7
    return-void

    .line 427
    :cond_8
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Landroid/support/design/widget/CutoutDrawable;

    if-nez v0, :cond_1f

    .line 432
    new-instance v0, Landroid/support/design/widget/CutoutDrawable;

    invoke-direct {v0}, Landroid/support/design/widget/CutoutDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_7

    .line 433
    :cond_1f
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_7

    .line 435
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_7
.end method

.method private calculateBoxBackgroundTop()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1254
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v1, :cond_6

    .line 1264
    :goto_5
    return v0

    .line 1258
    :cond_6
    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    packed-switch v1, :pswitch_data_20

    goto :goto_5

    .line 1260
    :pswitch_c
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTop()I

    move-result v0

    goto :goto_5

    .line 1262
    :pswitch_13
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTop()I

    move-result v0

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->calculateLabelMarginTop()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_5

    .line 1258
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_c
        :pswitch_13
    .end packed-switch
.end method

.method private calculateCollapsedTextTopBounds()I
    .registers 3

    .prologue
    .line 1285
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    packed-switch v0, :pswitch_data_28

    .line 1291
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getPaddingTop()I

    move-result v0

    :goto_9
    return v0

    .line 1287
    :pswitch_a
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->calculateLabelMarginTop()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_9

    .line 1289
    :pswitch_1a
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxCollapsedPaddingTopPx:I

    add-int/2addr v0, v1

    goto :goto_9

    .line 1285
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_a
    .end packed-switch
.end method

.method private calculateLabelMarginTop()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1269
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-nez v1, :cond_6

    .line 1280
    :goto_5
    return v0

    .line 1273
    :cond_6
    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    packed-switch v1, :pswitch_data_20

    goto :goto_5

    .line 1278
    :pswitch_c
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v0

    float-to-int v0, v0

    goto :goto_5

    .line 1275
    :pswitch_14
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_5

    .line 1273
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_14
    .end packed-switch
.end method

.method private closeCutout()V
    .registers 2

    .prologue
    .line 1948
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1949
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v0, Landroid/support/design/widget/CutoutDrawable;

    invoke-virtual {v0}, Landroid/support/design/widget/CutoutDrawable;->removeCutout()V

    .line 1951
    :cond_d
    return-void
.end method

.method private collapseHint(Z)V
    .registers 4
    .param p1, "animate"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1919
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1920
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1922
    :cond_13
    if-eqz p1, :cond_29

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintAnimationEnabled:Z

    if-eqz v0, :cond_29

    .line 1923
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->animateToExpansionFraction(F)V

    .line 1927
    :goto_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    .line 1928
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1929
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->openCutout()V

    .line 1931
    :cond_28
    return-void

    .line 1925
    :cond_29
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    goto :goto_1c
.end method

.method private cutoutEnabled()Z
    .registers 2

    .prologue
    .line 1934
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Landroid/support/design/widget/CutoutDrawable;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private ensureBackgroundDrawableStateWorkaround()V
    .registers 5

    .prologue
    .line 1407
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1408
    .local v2, "sdk":I
    const/16 v3, 0x15

    if-eq v2, v3, :cond_b

    const/16 v3, 0x16

    if-eq v2, v3, :cond_b

    .line 1443
    :cond_a
    :goto_a
    return-void

    .line 1412
    :cond_b
    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1413
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_a

    .line 1417
    iget-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->hasReconstructedEditTextBackground:Z

    if-nez v3, :cond_a

    .line 1422
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1424
    .local v1, "newBg":Landroid/graphics/drawable/Drawable;
    instance-of v3, v0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v3, :cond_2f

    .line 1427
    check-cast v0, Landroid/graphics/drawable/DrawableContainer;

    .line 1429
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    .line 1428
    invoke-static {v0, v3}, Landroid/support/design/widget/DrawableUtils;->setContainerConstantState(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->hasReconstructedEditTextBackground:Z

    .line 1432
    :cond_2f
    iget-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->hasReconstructedEditTextBackground:Z

    if-nez v3, :cond_a

    .line 1437
    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v3, v1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1438
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->hasReconstructedEditTextBackground:Z

    .line 1440
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->onApplyBoxBackgroundMode()V

    goto :goto_a
.end method

.method private expandHint(Z)V
    .registers 4
    .param p1, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2033
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2034
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2036
    :cond_12
    if-eqz p1, :cond_32

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintAnimationEnabled:Z

    if-eqz v0, :cond_32

    .line 2037
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->animateToExpansionFraction(F)V

    .line 2041
    :goto_1b
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v0, Landroid/support/design/widget/CutoutDrawable;

    invoke-virtual {v0}, Landroid/support/design/widget/CutoutDrawable;->hasCutout()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2042
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->closeCutout()V

    .line 2044
    :cond_2e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    .line 2045
    return-void

    .line 2039
    :cond_32
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    goto :goto_1b
.end method

.method private getBoxBackground()Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 397
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 398
    :cond_a
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object v0

    .line 400
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private getCornerRadiiAsArray()[F
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 587
    invoke-static {p0}, Landroid/support/design/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 588
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopStart:F

    aput v1, v0, v2

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopStart:F

    aput v1, v0, v3

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopEnd:F

    aput v1, v0, v4

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopEnd:F

    aput v1, v0, v5

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomEnd:F

    aput v1, v0, v6

    const/4 v1, 0x5

    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomEnd:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomStart:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomStart:F

    aput v2, v0, v1

    .line 599
    :goto_32
    return-object v0

    :cond_33
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopEnd:F

    aput v1, v0, v2

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopEnd:F

    aput v1, v0, v3

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopStart:F

    aput v1, v0, v4

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopStart:F

    aput v1, v0, v5

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomStart:F

    aput v1, v0, v6

    const/4 v1, 0x5

    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomStart:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomEnd:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomEnd:F

    aput v2, v0, v1

    goto :goto_32
.end method

.method private hasPasswordTransformation()Z
    .registers 2

    .prologue
    .line 1856
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1857
    invoke-virtual {v0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    .line 1856
    :goto_f
    return v0

    .line 1857
    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private onApplyBoxBackgroundMode()V
    .registers 2

    .prologue
    .line 417
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->assignBoxBackgroundByMode()V

    .line 418
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    if-eqz v0, :cond_a

    .line 419
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateInputLayoutMargins()V

    .line 421
    :cond_a
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateTextInputBoxBounds()V

    .line 422
    return-void
.end method

.method private openCutout()V
    .registers 3

    .prologue
    .line 1938
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cutoutEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1945
    :goto_6
    return-void

    .line 1941
    :cond_7
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    .line 1942
    .local v0, "cutoutBounds":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextActualBounds(Landroid/graphics/RectF;)V

    .line 1943
    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->applyCutoutPadding(Landroid/graphics/RectF;)V

    .line 1944
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v1, Landroid/support/design/widget/CutoutDrawable;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/CutoutDrawable;->setCutout(Landroid/graphics/RectF;)V

    goto :goto_6
.end method

.method private static recursiveSetEnabled(Landroid/view/ViewGroup;Z)V
    .registers 6
    .param p0, "vg"    # Landroid/view/ViewGroup;
    .param p1, "enabled"    # Z

    .prologue
    .line 1133
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_5
    if-ge v2, v1, :cond_1a

    .line 1134
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1135
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1136
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_17

    .line 1137
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-static {v0, p1}, Landroid/support/design/widget/TextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    .line 1133
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1140
    :cond_1a
    return-void
.end method

.method private setBoxAttributes()V
    .registers 4

    .prologue
    .line 1324
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    packed-switch v0, :pswitch_data_22

    .line 1339
    :cond_5
    :goto_5
    return-void

    .line 1326
    :pswitch_6
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthPx:I

    goto :goto_5

    .line 1330
    :pswitch_a
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    if-nez v0, :cond_5

    .line 1331
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    .line 1333
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 1332
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    goto :goto_5

    .line 1324
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .registers 7
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    const/4 v4, 0x1

    .line 663
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v2, :cond_d

    .line 664
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "We already have an EditText, can only have one"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 667
    :cond_d
    instance-of v2, p1, Landroid/support/design/widget/TextInputEditText;

    if-nez v2, :cond_18

    .line 668
    const-string v2, "TextInputLayout"

    const-string v3, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_18
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 675
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->onApplyBoxBackgroundMode()V

    .line 676
    new-instance v2, Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;

    invoke-direct {v2, p0}, Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->setTextInputAccessibilityDelegate(Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;)V

    .line 678
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->hasPasswordTransformation()Z

    move-result v1

    .line 681
    .local v1, "hasPasswordTransformation":Z
    if-nez v1, :cond_36

    .line 683
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 685
    :cond_36
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextSize(F)V

    .line 687
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    .line 688
    .local v0, "editTextGravity":I
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    and-int/lit8 v3, v0, -0x71

    or-int/lit8 v3, v3, 0x30

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 690
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 693
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    new-instance v3, Landroid/support/design/widget/TextInputLayout$1;

    invoke-direct {v3, p0}, Landroid/support/design/widget/TextInputLayout$1;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 711
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_6b

    .line 712
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 716
    :cond_6b
    iget-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v2, :cond_8c

    .line 717
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 719
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    .line 720
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 722
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 724
    :cond_8a
    iput-boolean v4, p0, Landroid/support/design/widget/TextInputLayout;->isProvidingHint:Z

    .line 727
    :cond_8c
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v2, :cond_9d

    .line 728
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    .line 731
    :cond_9d
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v2}, Landroid/support/design/widget/IndicatorViewController;->adjustIndicatorPadding()V

    .line 733
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updatePasswordToggleView()V

    .line 736
    const/4 v2, 0x0

    invoke-direct {p0, v2, v4}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(ZZ)V

    .line 737
    return-void
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 812
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 813
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    .line 814
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 816
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    if-nez v0, :cond_16

    .line 817
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->openCutout()V

    .line 820
    :cond_16
    return-void
.end method

.method private shouldShowPasswordIcon()Z
    .registers 2

    .prologue
    .line 1861
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleEnabled:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->hasPasswordTransformation()Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private updateEditTextBackgroundBounds()V
    .registers 9

    .prologue
    .line 1296
    iget-object v6, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v6, :cond_5

    .line 1321
    :cond_4
    :goto_4
    return-void

    .line 1299
    :cond_5
    iget-object v6, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1300
    .local v0, "editTextBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 1304
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1305
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1308
    :cond_17
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1309
    .local v3, "editTextBounds":Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {p0, v6, v3}, Landroid/support/design/widget/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1311
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1312
    .local v1, "editTextBackgroundBounds":Landroid/graphics/Rect;
    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    if-eq v6, v7, :cond_4

    .line 1314
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1315
    .local v2, "editTextBackgroundPadding":Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1317
    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int v4, v6, v7

    .line 1318
    .local v4, "left":I
    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 1319
    .local v5, "right":I
    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getBottom()I

    move-result v7

    invoke-virtual {v0, v4, v6, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_4
.end method

.method private updateInputLayoutMargins()V
    .registers 4

    .prologue
    .line 742
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 743
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->calculateLabelMarginTop()I

    move-result v1

    .line 745
    .local v1, "newTopMargin":I
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v1, v2, :cond_17

    .line 746
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 747
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 749
    :cond_17
    return-void
.end method

.method private updateLabelState(ZZ)V
    .registers 10
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 756
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v3

    .line 757
    .local v3, "isEnabled":Z
    iget-object v6, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v6, :cond_6a

    iget-object v6, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6a

    move v2, v4

    .line 758
    .local v2, "hasText":Z
    :goto_17
    iget-object v6, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v6, :cond_6c

    iget-object v6, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_6c

    move v1, v4

    .line 759
    .local v1, "hasFocus":Z
    :goto_24
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v4}, Landroid/support/design/widget/IndicatorViewController;->errorShouldBeShown()Z

    move-result v0

    .line 762
    .local v0, "errorShouldBeShown":Z
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_3c

    .line 763
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 764
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    .line 768
    :cond_3c
    if-nez v3, :cond_6e

    .line 769
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget v5, p0, Landroid/support/design/widget/TextInputLayout;->disabledColor:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 770
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget v5, p0, Landroid/support/design/widget/TextInputLayout;->disabledColor:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    .line 779
    :cond_54
    :goto_54
    if-nez v2, :cond_60

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_9e

    if-nez v1, :cond_60

    if-eqz v0, :cond_9e

    .line 781
    :cond_60
    if-nez p2, :cond_66

    iget-boolean v4, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    if-eqz v4, :cond_69

    .line 782
    :cond_66
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->collapseHint(Z)V

    .line 790
    :cond_69
    :goto_69
    return-void

    .end local v0    # "errorShouldBeShown":Z
    .end local v1    # "hasFocus":Z
    .end local v2    # "hasText":Z
    :cond_6a
    move v2, v5

    .line 757
    goto :goto_17

    .restart local v2    # "hasText":Z
    :cond_6c
    move v1, v5

    .line 758
    goto :goto_24

    .line 771
    .restart local v0    # "errorShouldBeShown":Z
    .restart local v1    # "hasFocus":Z
    :cond_6e
    if-eqz v0, :cond_7c

    .line 772
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v5}, Landroid/support/design/widget/IndicatorViewController;->getErrorViewTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_54

    .line 773
    :cond_7c
    iget-boolean v4, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eqz v4, :cond_90

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v4, :cond_90

    .line 774
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_54

    .line 775
    :cond_90
    if-eqz v1, :cond_54

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_54

    .line 776
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_54

    .line 786
    :cond_9e
    if-nez p2, :cond_a4

    iget-boolean v4, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    if-nez v4, :cond_69

    .line 787
    :cond_a4
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->expandHint(Z)V

    goto :goto_69
.end method

.method private updatePasswordToggleView()V
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1590
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v1, :cond_9

    .line 1661
    :cond_8
    :goto_8
    return-void

    .line 1595
    :cond_9
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->shouldShowPasswordIcon()Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 1596
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-nez v1, :cond_46

    .line 1599
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroid/support/design/R$layout;->design_text_input_password_icon:I

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    .line 1600
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CheckableImageButton;

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    .line 1601
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1602
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleContentDesc:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1603
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1605
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    new-instance v2, Landroid/support/design/widget/TextInputLayout$2;

    invoke-direct {v2, p0}, Landroid/support/design/widget/TextInputLayout$2;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1614
    :cond_46
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_5d

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    if-gtz v1, :cond_5d

    .line 1618
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMinimumHeight(I)V

    .line 1621
    :cond_5d
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v1, v4}, Landroid/support/design/widget/CheckableImageButton;->setVisibility(I)V

    .line 1622
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CheckableImageButton;->setChecked(Z)V

    .line 1626
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_74

    .line 1627
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    .line 1629
    :cond_74
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v2}, Landroid/support/design/widget/CheckableImageButton;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v4, v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1631
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v1}, Landroid/support/v4/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1633
    .local v0, "compounds":[Landroid/graphics/drawable/Drawable;
    aget-object v1, v0, v6

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v1, v2, :cond_8f

    .line 1634
    aget-object v1, v0, v6

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->originalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    .line 1636
    :cond_8f
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    aget-object v2, v0, v4

    aget-object v3, v0, v5

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v5, v0, v7

    invoke-static {v1, v2, v3, v4, v5}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1640
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1641
    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1642
    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1643
    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1644
    invoke-virtual {v5}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v5

    .line 1640
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/design/widget/CheckableImageButton;->setPadding(IIII)V

    goto/16 :goto_8

    .line 1646
    .end local v0    # "compounds":[Landroid/graphics/drawable/Drawable;
    :cond_bb
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v1, :cond_ce

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v1}, Landroid/support/design/widget/CheckableImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_ce

    .line 1647
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CheckableImageButton;->setVisibility(I)V

    .line 1650
    :cond_ce
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    .line 1653
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v1}, Landroid/support/v4/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1654
    .restart local v0    # "compounds":[Landroid/graphics/drawable/Drawable;
    aget-object v1, v0, v6

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v1, v2, :cond_8

    .line 1655
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    aget-object v2, v0, v4

    aget-object v3, v0, v5

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->originalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v5, v0, v7

    invoke-static {v1, v2, v3, v4, v5}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1657
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_8
.end method

.method private updateTextInputBoxBounds()V
    .registers 7

    .prologue
    .line 1227
    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    if-eqz v4, :cond_12

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_12

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v4, :cond_12

    .line 1230
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getRight()I

    move-result v4

    if-nez v4, :cond_13

    .line 1251
    :cond_12
    :goto_12
    return-void

    .line 1234
    :cond_13
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getLeft()I

    move-result v1

    .line 1235
    .local v1, "left":I
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->calculateBoxBackgroundTop()I

    move-result v3

    .line 1236
    .local v3, "top":I
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getRight()I

    move-result v2

    .line 1237
    .local v2, "right":I
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBottom()I

    move-result v4

    iget v5, p0, Landroid/support/design/widget/TextInputLayout;->boxBottomOffsetPx:I

    add-int v0, v4, v5

    .line 1241
    .local v0, "bottom":I
    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_46

    .line 1242
    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthFocusedPx:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    .line 1243
    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthFocusedPx:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 1244
    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthFocusedPx:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    .line 1245
    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthFocusedPx:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 1248
    :cond_46
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 1249
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyBoxAttributes()V

    .line 1250
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackgroundBounds()V

    goto :goto_12
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 376
    instance-of v1, p1, Landroid/widget/EditText;

    if-eqz v1, :cond_24

    .line 379
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    .local v0, "flp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 381
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateInputLayoutMargins()V

    .line 388
    check-cast p1, Landroid/widget/EditText;

    .end local p1    # "child":Landroid/view/View;
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    .line 393
    .end local v0    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_23
    return-void

    .line 391
    .restart local p1    # "child":Landroid/view/View;
    :cond_24
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_23
.end method

.method animateToExpansionFraction(F)V
    .registers 6
    .param p1, "target"    # F
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 2049
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_b

    .line 2066
    :goto_a
    return-void

    .line 2052
    :cond_b
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2e

    .line 2053
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    .line 2054
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    sget-object v1, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2055
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xa7

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2056
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/design/widget/TextInputLayout$3;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TextInputLayout$3;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2064
    :cond_2e
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v3}, Landroid/support/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2065
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_a
.end method

.method cutoutIsOpen()Z
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1962
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v0, Landroid/support/design/widget/CutoutDrawable;

    invoke-virtual {v0}, Landroid/support/design/widget/CutoutDrawable;->hasCutout()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .registers 7
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "flags"    # I

    .prologue
    .line 641
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v2, :cond_c

    .line 642
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 659
    :goto_b
    return-void

    .line 648
    :cond_c
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->isProvidingHint:Z

    .line 650
    .local v1, "wasProvidingHint":Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->isProvidingHint:Z

    .line 651
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 652
    .local v0, "hint":Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 654
    :try_start_1e
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_29

    .line 656
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 657
    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->isProvidingHint:Z

    goto :goto_b

    .line 656
    :catchall_29
    move-exception v2

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 657
    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->isProvidingHint:Z

    throw v2
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1522
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->restoringSavedState:Z

    .line 1523
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 1524
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->restoringSavedState:Z

    .line 1525
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1574
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_9

    .line 1575
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1577
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1578
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_15

    .line 1579
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 1581
    :cond_15
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1967
    iget-boolean v4, p0, Landroid/support/design/widget/TextInputLayout;->inDrawableStateChanged:Z

    if-eqz v4, :cond_7

    .line 1997
    :goto_6
    return-void

    .line 1974
    :cond_7
    iput-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->inDrawableStateChanged:Z

    .line 1976
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 1978
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getDrawableState()[I

    move-result-object v1

    .line 1979
    .local v1, "state":[I
    const/4 v0, 0x0

    .line 1982
    .local v0, "changed":Z
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3c

    :goto_1d
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 1984
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    .line 1985
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateTextInputBoxBounds()V

    .line 1986
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->updateTextInputBoxState()V

    .line 1988
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    if-eqz v2, :cond_34

    .line 1989
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setState([I)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1992
    :cond_34
    if-eqz v0, :cond_39

    .line 1993
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->invalidate()V

    .line 1996
    :cond_39
    iput-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->inDrawableStateChanged:Z

    goto :goto_6

    :cond_3c
    move v2, v3

    .line 1982
    goto :goto_1d
.end method

.method public getBoxBackgroundColor()I
    .registers 2

    .prologue
    .line 493
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundColor:I

    return v0
.end method

.method public getBoxCornerRadiusBottomEnd()F
    .registers 2

    .prologue
    .line 573
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomEnd:F

    return v0
.end method

.method public getBoxCornerRadiusBottomStart()F
    .registers 2

    .prologue
    .line 583
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomStart:F

    return v0
.end method

.method public getBoxCornerRadiusTopEnd()F
    .registers 2

    .prologue
    .line 563
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopEnd:F

    return v0
.end method

.method public getBoxCornerRadiusTopStart()F
    .registers 2

    .prologue
    .line 553
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopStart:F

    return v0
.end method

.method public getBoxStrokeColor()I
    .registers 2

    .prologue
    .line 461
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    return v0
.end method

.method public getCounterMaxLength()I
    .registers 2

    .prologue
    .line 1148
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    return v0
.end method

.method getCounterOverflowDescription()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1157
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->counterEnabled:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 1158
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1160
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getDefaultHintTextColor()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 927
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 795
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1535
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->getErrorText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getErrorCurrentTextColors()I
    .registers 2
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 958
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v0

    return v0
.end method

.method final getErrorTextCurrentColor()I
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 2090
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public getHelperText()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1547
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->isHelperTextEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    .line 1548
    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->getHelperText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1547
    :goto_e
    return-object v0

    .line 1548
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getHelperTextCurrentTextColor()I
    .registers 2
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 1035
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->getHelperTextViewCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 830
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method final getHintCollapsedTextHeight()F
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 2085
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v0

    return v0
.end method

.method final getHintCurrentCollapsedTextColor()I
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 2080
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v0

    return v0
.end method

.method public getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1742
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1731
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 636
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isCounterEnabled()Z
    .registers 2

    .prologue
    .line 1101
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->counterEnabled:Z

    return v0
.end method

.method public isErrorEnabled()Z
    .registers 2

    .prologue
    .line 977
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method final isHelperTextDisplayed()Z
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 2075
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->helperTextIsDisplayed()Z

    move-result v0

    return v0
.end method

.method public isHelperTextEnabled()Z
    .registers 2

    .prologue
    .line 1024
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->isHelperTextEnabled()Z

    move-result v0

    return v0
.end method

.method public isHintAnimationEnabled()Z
    .registers 2

    .prologue
    .line 1559
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintAnimationEnabled:Z

    return v0
.end method

.method public isHintEnabled()Z
    .registers 2

    .prologue
    .line 883
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    return v0
.end method

.method final isHintExpanded()Z
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 2070
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    return v0
.end method

.method public isPasswordVisibilityToggleEnabled()Z
    .registers 2

    .prologue
    .line 1751
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleEnabled:Z

    return v0
.end method

.method isProvidingHint()Z
    .registers 2

    .prologue
    .line 892
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->isProvidingHint:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1885
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1887
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_a

    .line 1888
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateTextInputBoxBounds()V

    .line 1891
    :cond_a
    iget-boolean v4, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v4, :cond_66

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v4, :cond_66

    .line 1892
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->tmpRect:Landroid/graphics/Rect;

    .line 1893
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {p0, v4, v2}, Landroid/support/design/widget/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1895
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v5

    add-int v0, v4, v5

    .line 1896
    .local v0, "l":I
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v5

    sub-int v1, v4, v5

    .line 1897
    .local v1, "r":I
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->calculateCollapsedTextTopBounds()I

    move-result v3

    .line 1899
    .local v3, "t":I
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1901
    invoke-virtual {v6}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1903
    invoke-virtual {v7}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1899
    invoke-virtual {v4, v0, v5, v1, v6}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 1907
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sub-int v5, p5, p3

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v0, v3, v1, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 1908
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v4}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 1912
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cutoutEnabled()Z

    move-result v4

    if-eqz v4, :cond_66

    iget-boolean v4, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    if-nez v4, :cond_66

    .line 1913
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->openCutout()V

    .line 1916
    .end local v0    # "l":I
    .end local v1    # "r":I
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "t":I
    :cond_66
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1585
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updatePasswordToggleView()V

    .line 1586
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1587
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1507
    instance-of v1, p1, Landroid/support/design/widget/TextInputLayout$SavedState;

    if-nez v1, :cond_8

    .line 1508
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1518
    :goto_7
    return-void

    :cond_8
    move-object v0, p1

    .line 1511
    check-cast v0, Landroid/support/design/widget/TextInputLayout$SavedState;

    .line 1512
    .local v0, "ss":Landroid/support/design/widget/TextInputLayout$SavedState;
    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1513
    iget-object v1, v0, Landroid/support/design/widget/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 1514
    iget-boolean v1, v0, Landroid/support/design/widget/TextInputLayout$SavedState;->isPasswordToggledVisible:Z

    if-eqz v1, :cond_1f

    .line 1515
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->passwordVisibilityToggleRequested(Z)V

    .line 1517
    :cond_1f
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->requestLayout()V

    goto :goto_7
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 1496
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1497
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/design/widget/TextInputLayout$SavedState;

    invoke-direct {v0, v1}, Landroid/support/design/widget/TextInputLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1498
    .local v0, "ss":Landroid/support/design/widget/TextInputLayout$SavedState;
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v2}, Landroid/support/design/widget/IndicatorViewController;->errorShouldBeShown()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1499
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroid/support/design/widget/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    .line 1501
    :cond_17
    iget-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    iput-boolean v2, v0, Landroid/support/design/widget/TextInputLayout$SavedState;->isPasswordToggledVisible:Z

    .line 1502
    return-object v0
.end method

.method public passwordVisibilityToggleRequested(Z)V
    .registers 5
    .param p1, "shouldSkipAnimations"    # Z

    .prologue
    .line 1820
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleEnabled:Z

    if-eqz v1, :cond_2c

    .line 1822
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 1824
    .local v0, "selection":I
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->hasPasswordTransformation()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1825
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1826
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    .line 1832
    :goto_19
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CheckableImageButton;->setChecked(Z)V

    .line 1833
    if-eqz p1, :cond_27

    .line 1834
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v1}, Landroid/support/design/widget/CheckableImageButton;->jumpDrawablesToCurrentState()V

    .line 1838
    :cond_27
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1840
    .end local v0    # "selection":I
    :cond_2c
    return-void

    .line 1828
    .restart local v0    # "selection":I
    :cond_2d
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1829
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    goto :goto_19
.end method

.method public setBoxBackgroundColor(I)V
    .registers 3
    .param p1, "boxBackgroundColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 480
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundColor:I

    if-eq v0, p1, :cond_9

    .line 481
    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundColor:I

    .line 482
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyBoxAttributes()V

    .line 484
    :cond_9
    return-void
.end method

.method public setBoxBackgroundColorResource(I)V
    .registers 3
    .param p1, "boxBackgroundColorId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 470
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setBoxBackgroundColor(I)V

    .line 471
    return-void
.end method

.method public setBoxBackgroundMode(I)V
    .registers 3
    .param p1, "boxBackgroundMode"    # I

    .prologue
    .line 409
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    if-ne p1, v0, :cond_5

    .line 414
    :goto_4
    return-void

    .line 412
    :cond_5
    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    .line 413
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->onApplyBoxBackgroundMode()V

    goto :goto_4
.end method

.method public setBoxCornerRadii(FFFF)V
    .registers 6
    .param p1, "boxCornerRadiusTopStart"    # F
    .param p2, "boxCornerRadiusTopEnd"    # F
    .param p3, "boxCornerRadiusBottomStart"    # F
    .param p4, "boxCornerRadiusBottomEnd"    # F

    .prologue
    .line 534
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopStart:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_18

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopEnd:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_18

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomEnd:F

    cmpl-float v0, v0, p4

    if-nez v0, :cond_18

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomStart:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_23

    .line 538
    :cond_18
    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopStart:F

    .line 539
    iput p2, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopEnd:F

    .line 540
    iput p4, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomEnd:F

    .line 541
    iput p3, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomStart:F

    .line 542
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyBoxAttributes()V

    .line 544
    :cond_23
    return-void
.end method

.method public setBoxCornerRadiiResources(IIII)V
    .registers 9
    .param p1, "boxCornerRadiusTopStartId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p2, "boxCornerRadiusTopEndId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p3, "boxCornerRadiusBottomEndId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p4, "boxCornerRadiusBottomStartId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 510
    .line 511
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 512
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 513
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 514
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 510
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/design/widget/TextInputLayout;->setBoxCornerRadii(FFFF)V

    .line 515
    return-void
.end method

.method public setBoxStrokeColor(I)V
    .registers 3
    .param p1, "boxStrokeColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 448
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    if-eq v0, p1, :cond_9

    .line 449
    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    .line 450
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->updateTextInputBoxState()V

    .line 452
    :cond_9
    return-void
.end method

.method public setCounterEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x2

    .line 1071
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->counterEnabled:Z

    if-eq v0, p1, :cond_42

    .line 1072
    if-eqz p1, :cond_51

    .line 1073
    new-instance v0, Landroid/support/v7/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 1074
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    sget v1, Landroid/support/design/R$id;->textinput_counter:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1075
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_24

    .line 1076
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1078
    :cond_24
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1079
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->counterTextAppearance:I

    invoke-virtual {p0, v0, v1}, Landroid/support/design/widget/TextInputLayout;->setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V

    .line 1080
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/IndicatorViewController;->addIndicator(Landroid/widget/TextView;I)V

    .line 1081
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_43

    .line 1082
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    .line 1090
    :goto_40
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->counterEnabled:Z

    .line 1092
    :cond_42
    return-void

    .line 1084
    :cond_43
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    goto :goto_40

    .line 1087
    :cond_51
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/IndicatorViewController;->removeIndicator(Landroid/widget/TextView;I)V

    .line 1088
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    goto :goto_40
.end method

.method public setCounterMaxLength(I)V
    .registers 3
    .param p1, "maxLength"    # I

    .prologue
    .line 1111
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    if-eq v0, p1, :cond_14

    .line 1112
    if-lez p1, :cond_15

    .line 1113
    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    .line 1117
    :goto_8
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->counterEnabled:Z

    if-eqz v0, :cond_14

    .line 1118
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_19

    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    .line 1121
    :cond_14
    return-void

    .line 1115
    :cond_15
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    goto :goto_8

    .line 1118
    :cond_19
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_11
.end method

.method public setDefaultHintTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 913
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 914
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    .line 916
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_c

    .line 917
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 919
    :cond_c
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1128
    invoke-static {p0, p1}, Landroid/support/design/widget/TextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    .line 1129
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1130
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "errorText"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1049
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->isErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1050
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1063
    :goto_e
    return-void

    .line 1055
    :cond_f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 1058
    :cond_13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1059
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->showError(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 1061
    :cond_1f
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->hideError()V

    goto :goto_e
.end method

.method public setErrorEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 938
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->setErrorEnabled(Z)V

    .line 939
    return-void
.end method

.method public setErrorTextAppearance(I)V
    .registers 3
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 947
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->setErrorTextAppearance(I)V

    .line 948
    return-void
.end method

.method public setErrorTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "textColors"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 952
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->setErrorViewTextColor(Landroid/content/res/ColorStateList;)V

    .line 953
    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "helperText"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1005
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1006
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isHelperTextEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1007
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 1015
    :cond_10
    :goto_10
    return-void

    .line 1010
    :cond_11
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isHelperTextEnabled()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1011
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 1013
    :cond_1b
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->showHelper(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method

.method public setHelperTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "textColors"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1029
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->setHelperTextViewTextColor(Landroid/content/res/ColorStateList;)V

    .line 1030
    return-void
.end method

.method public setHelperTextEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 988
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->setHelperTextEnabled(Z)V

    .line 989
    return-void
.end method

.method public setHelperTextTextAppearance(I)V
    .registers 3
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 967
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->setHelperTextAppearance(I)V

    .line 968
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "hint"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 805
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_c

    .line 806
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    .line 807
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->sendAccessibilityEvent(I)V

    .line 809
    :cond_c
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1569
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->hintAnimationEnabled:Z

    .line 1570
    return-void
.end method

.method public setHintEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 845
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eq p1, v1, :cond_33

    .line 846
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    .line 847
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-nez v1, :cond_34

    .line 849
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->isProvidingHint:Z

    .line 850
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 852
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 855
    :cond_29
    invoke-direct {p0, v3}, Landroid/support/design/widget/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    .line 870
    :goto_2c
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_33

    .line 871
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateInputLayoutMargins()V

    .line 874
    :cond_33
    return-void

    .line 857
    :cond_34
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 858
    .local v0, "editTextHint":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 861
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 862
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 864
    :cond_4b
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 866
    :cond_50
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->isProvidingHint:Z

    goto :goto_2c
.end method

.method public setHintTextAppearance(I)V
    .registers 3
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 901
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 902
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    .line 904
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_18

    .line 905
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 907
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateInputLayoutMargins()V

    .line 909
    :cond_18
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
    .registers 3
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 1703
    if-eqz p1, :cond_e

    .line 1704
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1703
    :goto_a
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V

    .line 1705
    return-void

    .line 1704
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1717
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleContentDesc:Ljava/lang/CharSequence;

    .line 1718
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v0, :cond_b

    .line 1719
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1721
    :cond_b
    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
    .registers 3
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 1673
    if-eqz p1, :cond_e

    .line 1674
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1673
    :goto_a
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1675
    return-void

    .line 1674
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1687
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 1688
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v0, :cond_b

    .line 1689
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1691
    :cond_b
    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 1764
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleEnabled:Z

    if-eq v0, p1, :cond_1f

    .line 1765
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleEnabled:Z

    .line 1767
    if-nez p1, :cond_19

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_19

    .line 1770
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1774
    :cond_19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    .line 1776
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updatePasswordToggleView()V

    .line 1778
    :cond_1f
    return-void
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1792
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleTintList:Landroid/content/res/ColorStateList;

    .line 1793
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintList:Z

    .line 1794
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyPasswordToggleTint()V

    .line 1795
    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1806
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1807
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintMode:Z

    .line 1808
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyPasswordToggleTint()V

    .line 1809
    return-void
.end method

.method setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V
    .registers 7
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "textAppearance"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 1202
    const/4 v1, 0x0

    .line 1204
    .local v1, "useDefaultColor":Z
    :try_start_1
    invoke-static {p1, p2}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 1206
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_18

    .line 1207
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_2d

    move-result v2

    const v3, -0xff01

    if-ne v2, v3, :cond_18

    .line 1211
    const/4 v1, 0x1

    .line 1218
    :cond_18
    :goto_18
    if-eqz v1, :cond_2c

    .line 1221
    sget v2, Landroid/support/design/R$style;->TextAppearance_AppCompat_Caption:I

    invoke-static {p1, v2}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 1222
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Landroid/support/design/R$color;->design_error:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1224
    :cond_2c
    return-void

    .line 1213
    :catch_2d
    move-exception v0

    .line 1216
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_18
.end method

.method public setTextInputAccessibilityDelegate(Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;)V
    .registers 3
    .param p1, "delegate"    # Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;

    .prologue
    .line 1850
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_9

    .line 1851
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 1853
    :cond_9
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "typeface"    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 619
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_19

    .line 620
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    .line 622
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 623
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 625
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v0, :cond_19

    .line 626
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 629
    :cond_19
    return-void
.end method

.method updateCounter(I)V
    .registers 11
    .param p1, "length"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1164
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    .line 1165
    .local v0, "wasCounterOverflowed":Z
    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2d

    .line 1166
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1168
    iput-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    .line 1194
    :goto_1b
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_2c

    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eq v0, v1, :cond_2c

    .line 1195
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 1196
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->updateTextInputBoxState()V

    .line 1197
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    .line 1199
    :cond_2c
    return-void

    .line 1172
    :cond_2d
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getAccessibilityLiveRegion(Landroid/view/View;)I

    move-result v1

    if-ne v1, v2, :cond_3a

    .line 1174
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 1177
    :cond_3a
    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    if-le p1, v1, :cond_98

    move v1, v2

    :goto_3f
    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    .line 1178
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eq v0, v1, :cond_59

    .line 1179
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eqz v1, :cond_9a

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowTextAppearance:I

    :goto_4d
    invoke-virtual {p0, v4, v1}, Landroid/support/design/widget/TextInputLayout;->setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V

    .line 1183
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eqz v1, :cond_59

    .line 1184
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 1188
    :cond_59
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 1189
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/design/R$string;->character_counter_pattern:I

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget v7, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1188
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1190
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 1191
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/design/R$string;->character_counter_content_description:I

    new-array v6, v8, [Ljava/lang/Object;

    .line 1192
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget v7, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1190
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1b

    :cond_98
    move v1, v3

    .line 1177
    goto :goto_3f

    .line 1179
    :cond_9a
    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->counterTextAppearance:I

    goto :goto_4d
.end method

.method updateEditTextBackground()V
    .registers 4

    .prologue
    .line 1373
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v1, :cond_5

    .line 1404
    :cond_4
    :goto_4
    return-void

    .line 1377
    :cond_5
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1378
    .local v0, "editTextBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 1382
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->ensureBackgroundDrawableStateWorkaround()V

    .line 1384
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1385
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1388
    :cond_1a
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v1}, Landroid/support/design/widget/IndicatorViewController;->errorShouldBeShown()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1390
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    .line 1392
    invoke-virtual {v1}, Landroid/support/design/widget/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1391
    invoke-static {v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 1390
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_4

    .line 1393
    :cond_32
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eqz v1, :cond_4a

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v1, :cond_4a

    .line 1395
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 1397
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1396
    invoke-static {v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 1395
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_4

    .line 1401
    :cond_4a
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    .line 1402
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->refreshDrawableState()V

    goto :goto_4
.end method

.method updateLabelState(Z)V
    .registers 3
    .param p1, "animate"    # Z

    .prologue
    .line 752
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(ZZ)V

    .line 753
    return-void
.end method

.method updateTextInputBoxState()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2000
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_a

    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    if-nez v4, :cond_b

    .line 2030
    :cond_a
    :goto_a
    return-void

    .line 2004
    :cond_b
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v4, :cond_46

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_46

    move v0, v2

    .line 2005
    .local v0, "hasFocus":Z
    :goto_18
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v4, :cond_48

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->isHovered()Z

    move-result v4

    if-eqz v4, :cond_48

    move v1, v2

    .line 2008
    .local v1, "isHovered":Z
    :goto_25
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 2009
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 2010
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->disabledColor:I

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    .line 2023
    :goto_34
    if-nez v1, :cond_38

    if-eqz v0, :cond_7f

    :cond_38
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 2024
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthFocusedPx:I

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthPx:I

    .line 2028
    :goto_42
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyBoxAttributes()V

    goto :goto_a

    .end local v0    # "hasFocus":Z
    .end local v1    # "isHovered":Z
    :cond_46
    move v0, v3

    .line 2004
    goto :goto_18

    .restart local v0    # "hasFocus":Z
    :cond_48
    move v1, v3

    .line 2005
    goto :goto_25

    .line 2011
    .restart local v1    # "isHovered":Z
    :cond_4a
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v2}, Landroid/support/design/widget/IndicatorViewController;->errorShouldBeShown()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 2012
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v2}, Landroid/support/design/widget/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    goto :goto_34

    .line 2013
    :cond_5b
    iget-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eqz v2, :cond_6c

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v2, :cond_6c

    .line 2014
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    goto :goto_34

    .line 2015
    :cond_6c
    if-eqz v0, :cond_73

    .line 2016
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    goto :goto_34

    .line 2017
    :cond_73
    if-eqz v1, :cond_7a

    .line 2018
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->hoveredStrokeColor:I

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    goto :goto_34

    .line 2020
    :cond_7a
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->defaultStrokeColor:I

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    goto :goto_34

    .line 2026
    :cond_7f
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthDefaultPx:I

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthPx:I

    goto :goto_42
.end method
