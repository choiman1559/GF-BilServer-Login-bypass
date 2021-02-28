.class public Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/widget/CheckBox;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v5, [I

    sget v1, Lcom/bsgamesdk/android/utils/f$b;->l:I

    aput v1, v0, v4

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "com_bsgamesdk_android_widget_CheckBoxAgreeLayout_text"

    invoke-static {p1, v1}, Lcom/bsgamesdk/android/utils/s;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v0, v5, [I

    sget v2, Lcom/bsgamesdk/android/utils/f$b;->m:I

    aput v2, v0, v4

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v2, "com_bsgamesdk_android_widget_CheckBoxAgreeLayout_checkbox"

    invoke-static {p1, v2}, Lcom/bsgamesdk/android/utils/s;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/bsgamesdk/android/utils/f$e;->y:I

    invoke-virtual {v0, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bO:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;->a:Landroid/widget/CheckBox;

    const-string v0, "bsgamesdk_tv_xy"

    invoke-static {p1, v0}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;->b:Landroid/widget/TextView;

    if-nez v2, :cond_69

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;->a:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_5d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_74

    const-string v0, "\u5df2\u9605\u8bfb\u5e76\u540c\u610f"

    :goto_65
    invoke-direct {p0, p1, v0}, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_69
    iget-object v0, p0, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5d

    :cond_74
    move-object v0, v1

    goto :goto_65
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 24

    new-instance v3, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout$1;-><init>(Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;Landroid/content/Context;)V

    new-instance v4, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout$2;-><init>(Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;Landroid/content/Context;)V

    new-instance v5, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v1}, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout$3;-><init>(Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\u54d4\u54e9\u54d4\u54e9\u5f39\u5e55\u7f51\u7528\u6237\u4f7f\u7528\u534f\u8bae\u548c\u54d4\u54e9\u54d4\u54e9\u9690\u79c1\u653f\u7b56"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\u54d4\u54e9\u54d4\u54e9\u5f39\u5e55\u7f51\u7528\u6237\u4f7f\u7528\u534f\u8bae\u3001\u54d4\u54e9\u54d4\u54e9\u9690\u79c1\u653f\u7b56\u548c\u6e38\u620f\u4e2d\u5fc3\u7528\u6237\u534f\u8bae"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v9, v8, 0xd

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v12, v8, 0xd

    add-int/lit8 v13, v12, 0x1

    add-int/lit8 v14, v13, 0x8

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v16

    new-instance v17, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v18, "bsgamesdk_text_title_color"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    new-instance v18, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v19, "bsgamesdk_text_title_color"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    new-instance v19, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v20, "bsgamesdk_text_title_color"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->ai()Z

    move-result v2

    if-eqz v2, :cond_e8

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v5, 0x12

    invoke-virtual {v2, v3, v8, v9, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/16 v3, 0x12

    invoke-virtual {v2, v4, v10, v11, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/16 v3, 0x12

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v8, v9, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/16 v3, 0x12

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v10, v11, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_d5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;->b:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_e8
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v6, 0x12

    invoke-virtual {v2, v3, v8, v12, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/16 v3, 0x12

    invoke-virtual {v2, v4, v13, v14, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/16 v3, 0x12

    move/from16 v0, v16

    invoke-virtual {v2, v5, v15, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/16 v3, 0x12

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v8, v12, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/16 v3, 0x12

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v13, v14, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/16 v3, 0x12

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v2, v0, v15, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_d5
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public showAgreement(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
