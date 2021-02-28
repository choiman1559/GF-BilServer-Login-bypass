.class public Lcom/bsgamesdk/android/widget/AlignTextView;
.super Landroid/widget/TextView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bsgamesdk/android/widget/AlignTextView$Align;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

.field private g:Z

.field private h:F

.field private i:F

.field private j:I

.field private k:I

.field private l:I

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->b:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->e:Ljava/util/List;

    sget-object v0, Lcom/bsgamesdk/android/widget/AlignTextView$Align;->ALIGN_LEFT:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->f:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->g:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->h:F

    iput v1, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->i:F

    iput v2, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->j:I

    iput v2, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->k:I

    iput v2, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->l:I

    iput-boolean v2, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->m:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_33

    invoke-virtual {p0, v2}, Lcom/bsgamesdk/android/widget/AlignTextView;->setTextIsSelectable(Z)V

    :cond_33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->b:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->e:Ljava/util/List;

    sget-object v0, Lcom/bsgamesdk/android/widget/AlignTextView$Align;->ALIGN_LEFT:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->f:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    iput-boolean v3, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->g:Z

    iput v4, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->h:F

    iput v1, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->i:F

    iput v2, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->j:I

    iput v2, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->k:I

    iput v2, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->l:I

    iput-boolean v2, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->m:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_33

    invoke-virtual {p0, v2}, Lcom/bsgamesdk/android/widget/AlignTextView;->setTextIsSelectable(Z)V

    :cond_33
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_76

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->i:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->h:F

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/AlignTextView;->getPaddingBottom()I

    move-result v1

    iput v1, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->l:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-array v0, v3, [I

    sget v1, Lcom/bsgamesdk/android/utils/f$b;->k:I

    aput v1, v0, v2

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    packed-switch v1, :pswitch_data_7e

    sget-object v1, Lcom/bsgamesdk/android/widget/AlignTextView$Align;->ALIGN_LEFT:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    iput-object v1, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->f:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    :goto_68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_6c
    sget-object v1, Lcom/bsgamesdk/android/widget/AlignTextView$Align;->ALIGN_CENTER:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    iput-object v1, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->f:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    goto :goto_68

    :pswitch_71
    sget-object v1, Lcom/bsgamesdk/android/widget/AlignTextView$Align;->ALIGN_RIGHT:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    iput-object v1, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->f:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    goto :goto_68

    :array_76
    .array-data 4
        0x1010217
        0x1010218
    .end array-data

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_71
    .end packed-switch
.end method

.method private a(Landroid/graphics/Paint;Ljava/lang/String;)V
    .registers 10

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->d:Ljava/util/List;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_e
    return-void

    :cond_f
    const-string v0, "\u4e2d"

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->c:I

    int-to-float v1, v1

    div-float v0, v1, v0

    float-to-int v3, v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v3, 0x1

    :goto_30
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_a3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    iget v5, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->c:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9b

    iget-object v2, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->d:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    if-le v1, v3, :cond_70

    add-int v1, v0, v3

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v1, v0, v3

    add-int/lit8 v1, v1, -0x1

    move v6, v1

    move-object v1, v2

    move v2, v0

    move v0, v6

    :goto_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_70
    iget-object v1, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->d:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_88

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->d:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_88
    iget-object v0, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_9b
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6d

    :cond_a3
    move-object v2, v1

    goto :goto_79
.end method

.method private a(Ljava/lang/String;FI)V
    .registers 7

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/AlignTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    iput v1, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->k:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->j:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 18

    invoke-virtual/range {p0 .. p0}, Lcom/bsgamesdk/android/widget/AlignTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/bsgamesdk/android/widget/AlignTextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/bsgamesdk/android/widget/AlignTextView;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v7, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual/range {p0 .. p0}, Lcom/bsgamesdk/android/widget/AlignTextView;->getMeasuredWidth()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/bsgamesdk/android/widget/AlignTextView;->c:I

    invoke-virtual {v7}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/bsgamesdk/android/widget/AlignTextView;->getTextSize()F

    move-result v2

    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v4, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v3, v4

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v1, v3, v1

    sub-float v1, v2, v1

    invoke-virtual/range {p0 .. p0}, Lcom/bsgamesdk/android/widget/AlignTextView;->getGravity()I

    move-result v2

    and-int/lit16 v2, v2, 0x1000

    if-nez v2, :cond_e1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bsgamesdk/android/widget/AlignTextView;->a:F

    sub-float/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    move v2, v1

    :goto_41
    invoke-virtual/range {p0 .. p0}, Lcom/bsgamesdk/android/widget/AlignTextView;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/bsgamesdk/android/widget/AlignTextView;->getPaddingLeft()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/bsgamesdk/android/widget/AlignTextView;->getPaddingRight()I

    move-result v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bsgamesdk/android/widget/AlignTextView;->c:I

    sub-int/2addr v3, v9

    sub-int v1, v3, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/bsgamesdk/android/widget/AlignTextView;->c:I

    const/4 v1, 0x0

    move v3, v1

    :goto_5a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/widget/AlignTextView;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_e0

    int-to-float v1, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bsgamesdk/android/widget/AlignTextView;->a:F

    mul-float/2addr v1, v4

    add-float v10, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bsgamesdk/android/widget/AlignTextView;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    int-to-float v5, v9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bsgamesdk/android/widget/AlignTextView;->c:I

    int-to-float v4, v4

    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float v6, v4, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float v4, v6, v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bsgamesdk/android/widget/AlignTextView;->e:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a6

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bsgamesdk/android/widget/AlignTextView;->f:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    sget-object v12, Lcom/bsgamesdk/android/widget/AlignTextView$Align;->ALIGN_CENTER:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    if-ne v11, v12, :cond_d1

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    add-float/2addr v5, v6

    :cond_a6
    :goto_a6
    const/4 v6, 0x0

    :goto_a7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v6, v11, :cond_db

    const/4 v11, 0x0

    invoke-virtual {v1, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    int-to-float v12, v6

    mul-float/2addr v12, v4

    add-float/2addr v11, v12

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v1, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-float/2addr v11, v5

    int-to-float v13, v8

    add-float/2addr v13, v10

    move-object/from16 v0, p0

    iget v14, v0, Lcom/bsgamesdk/android/widget/AlignTextView;->b:F

    int-to-float v15, v3

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v11, v13, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_a7

    :cond_d1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bsgamesdk/android/widget/AlignTextView;->f:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    sget-object v12, Lcom/bsgamesdk/android/widget/AlignTextView$Align;->ALIGN_RIGHT:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    if-ne v11, v12, :cond_a6

    add-float/2addr v5, v6

    goto :goto_a6

    :cond_db
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_5a

    :cond_e0
    return-void

    :cond_e1
    move v2, v1

    goto/16 :goto_41
.end method

.method protected onLayout(ZIIII)V
    .registers 14

    const/4 v1, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->g:Z

    if-eqz v0, :cond_8a

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/AlignTextView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->c:I

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/AlignTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/AlignTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "\\n"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_2e
    if-ge v0, v5, :cond_38

    aget-object v6, v4, v0

    invoke-direct {p0, v3, v6}, Lcom/bsgamesdk/android/widget/AlignTextView;->a(Landroid/graphics/Paint;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_38
    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/AlignTextView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/AlignTextView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/AlignTextView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0, v2, v0, v3}, Lcom/bsgamesdk/android/widget/AlignTextView;->a(Ljava/lang/String;FI)V

    iget v0, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->j:I

    int-to-float v0, v0

    mul-float/2addr v0, v7

    iget v2, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->k:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->a:F

    iget v0, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->a:F

    iget v2, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->h:F

    sub-float/2addr v2, v7

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->i:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->b:F

    iget v0, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->b:F

    iget v2, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->a:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->k:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->m:Z

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/AlignTextView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/AlignTextView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/AlignTextView;->getPaddingRight()I

    move-result v4

    iget v5, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->l:I

    add-int/2addr v0, v5

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/bsgamesdk/android/widget/AlignTextView;->setPadding(IIII)V

    iput-boolean v1, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->g:Z

    :cond_8a
    return-void
.end method

.method public setAlign(Lcom/bsgamesdk/android/widget/AlignTextView$Align;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->f:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/AlignTextView;->invalidate()V

    return-void
.end method

.method public setPadding(IIII)V
    .registers 6

    iget-boolean v0, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->m:Z

    if-nez v0, :cond_6

    iput p4, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->l:I

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->m:Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bsgamesdk/android/widget/AlignTextView;->g:Z

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
