.class public Lcom/sunborn/gameplatform/core/view/CustomFontTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "CustomFontTextView.java"


# instance fields
.field private mCustomFontName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/view/CustomFontTextView;->mCustomFontName:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sunborn/gameplatform/core/view/CustomFontTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/view/CustomFontTextView;->mCustomFontName:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sunborn/gameplatform/core/view/CustomFontTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/view/CustomFontTextView;->mCustomFontName:Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/sunborn/gameplatform/core/view/CustomFontTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/sunborn/gameplatform/core/view/CustomFontTextView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 47
    :goto_6
    return-void

    .line 46
    :cond_7
    invoke-direct {p0, p1}, Lcom/sunborn/gameplatform/core/view/CustomFontTextView;->setCustomFont(Landroid/content/Context;)V

    goto :goto_6
.end method

.method private setCustomFont(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    iget-object v1, p0, Lcom/sunborn/gameplatform/core/view/CustomFontTextView;->mCustomFontName:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/sunborn/gameplatform/core/view/CustomFontTextView;->mCustomFontName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 54
    iget-object v1, p0, Lcom/sunborn/gameplatform/core/view/CustomFontTextView;->mCustomFontName:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/sunborn/gameplatform/core/common/SUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 55
    .local v0, "tf":Landroid/graphics/Typeface;
    if-eqz v0, :cond_17

    .line 56
    invoke-virtual {p0, v0}, Lcom/sunborn/gameplatform/core/view/CustomFontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 59
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :cond_17
    return-void
.end method


# virtual methods
.method public setCustomFont(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 30
    iput-object p1, p0, Lcom/sunborn/gameplatform/core/view/CustomFontTextView;->mCustomFontName:Ljava/lang/String;

    .line 35
    :goto_a
    return-void

    .line 32
    :cond_b
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/view/CustomFontTextView;->mCustomFontName:Ljava/lang/String;

    goto :goto_a
.end method
