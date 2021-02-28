.class public final Landroid/support/design/internal/ThemeEnforcement;
.super Ljava/lang/Object;
.source "ThemeEnforcement.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final APPCOMPAT_CHECK_ATTRS:[I

.field private static final APPCOMPAT_THEME_NAME:Ljava/lang/String; = "Theme.AppCompat"

.field private static final MATERIAL_CHECK_ATTRS:[I

.field private static final MATERIAL_THEME_NAME:Ljava/lang/String; = "Theme.MaterialComponents"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-array v0, v3, [I

    sget v1, Landroid/support/design/R$attr;->colorPrimary:I

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/internal/ThemeEnforcement;->APPCOMPAT_CHECK_ATTRS:[I

    .line 43
    new-array v0, v3, [I

    sget v1, Landroid/support/design/R$attr;->colorSecondary:I

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/internal/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAppCompatTheme(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    sget-object v0, Landroid/support/design/internal/ThemeEnforcement;->APPCOMPAT_CHECK_ATTRS:[I

    const-string v1, "Theme.AppCompat"

    invoke-static {p0, v0, v1}, Landroid/support/design/internal/ThemeEnforcement;->checkTheme(Landroid/content/Context;[ILjava/lang/String;)V

    .line 197
    return-void
.end method

.method private static checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p3, "defStyleRes"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 121
    sget-object v2, Landroid/support/design/R$styleable;->ThemeEnforcement:[I

    .line 122
    invoke-virtual {p0, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 124
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/design/R$styleable;->ThemeEnforcement_enforceMaterialTheme:I

    const/4 v3, 0x0

    .line 125
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 126
    .local v1, "enforceMaterialTheme":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    if-eqz v1, :cond_15

    .line 129
    invoke-static {p0}, Landroid/support/design/internal/ThemeEnforcement;->checkMaterialTheme(Landroid/content/Context;)V

    .line 131
    :cond_15
    invoke-static {p0}, Landroid/support/design/internal/ThemeEnforcement;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 132
    return-void
.end method

.method public static checkMaterialTheme(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    sget-object v0, Landroid/support/design/internal/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    const-string v1, "Theme.MaterialComponents"

    invoke-static {p0, v0, v1}, Landroid/support/design/internal/ThemeEnforcement;->checkTheme(Landroid/content/Context;[ILjava/lang/String;)V

    .line 201
    return-void
.end method

.method private static varargs checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p4, "defStyleRes"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .param p5, "textAppearanceResIndices"    # [I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 141
    sget-object v3, Landroid/support/design/R$styleable;->ThemeEnforcement:[I

    .line 142
    invoke-virtual {p0, p1, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 144
    .local v1, "themeEnforcementAttrs":Landroid/content/res/TypedArray;
    sget v3, Landroid/support/design/R$styleable;->ThemeEnforcement_enforceTextAppearance:I

    .line 145
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 147
    .local v0, "enforceTextAppearance":Z
    if-nez v0, :cond_14

    .line 148
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    :cond_13
    return-void

    .line 154
    :cond_14
    if-eqz p5, :cond_19

    array-length v3, p5

    if-nez v3, :cond_2f

    .line 156
    :cond_19
    sget v3, Landroid/support/design/R$styleable;->ThemeEnforcement_android_textAppearance:I

    .line 157
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eq v3, v4, :cond_22

    const/4 v2, 0x1

    .line 167
    .local v2, "validTextAppearance":Z
    :cond_22
    :goto_22
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 169
    if-nez v2, :cond_13

    .line 170
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant)."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 163
    .end local v2    # "validTextAppearance":Z
    :cond_2f
    invoke-static/range {p0 .. p5}, Landroid/support/design/internal/ThemeEnforcement;->isCustomTextAppearanceValid(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Z

    move-result v2

    .restart local v2    # "validTextAppearance":Z
    goto :goto_22
.end method

.method private static checkTheme(Landroid/content/Context;[ILjava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeAttributes"    # [I
    .param p2, "themeName"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-static {p0, p1}, Landroid/support/design/internal/ThemeEnforcement;->isTheme(Landroid/content/Context;[I)Z

    move-result v0

    if-nez v0, :cond_25

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The style on this component requires your app theme to be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (or a descendant)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_25
    return-void
.end method

.method public static isAppCompatTheme(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    sget-object v0, Landroid/support/design/internal/ThemeEnforcement;->APPCOMPAT_CHECK_ATTRS:[I

    invoke-static {p0, v0}, Landroid/support/design/internal/ThemeEnforcement;->isTheme(Landroid/content/Context;[I)Z

    move-result v0

    return v0
.end method

.method private static varargs isCustomTextAppearanceValid(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p4, "defStyleRes"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .param p5, "textAppearanceResIndices"    # [I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 183
    .line 184
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 185
    .local v0, "componentAttrs":Landroid/content/res/TypedArray;
    array-length v4, p5

    move v3, v2

    :goto_8
    if-ge v3, v4, :cond_19

    aget v1, p5, v3

    .line 186
    .local v1, "customTextAppearanceIndex":I
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-ne v5, v6, :cond_16

    .line 187
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 192
    .end local v1    # "customTextAppearanceIndex":I
    :goto_15
    return v2

    .line 185
    .restart local v1    # "customTextAppearanceIndex":I
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 191
    .end local v1    # "customTextAppearanceIndex":I
    :cond_19
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 192
    const/4 v2, 0x1

    goto :goto_15
.end method

.method public static isMaterialTheme(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    sget-object v0, Landroid/support/design/internal/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    invoke-static {p0, v0}, Landroid/support/design/internal/ThemeEnforcement;->isTheme(Landroid/content/Context;[I)Z

    move-result v0

    return v0
.end method

.method private static isTheme(Landroid/content/Context;[I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeAttributes"    # [I

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 213
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    .line 214
    .local v1, "success":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 216
    return v1
.end method

.method public static varargs obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p4, "defStyleRes"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .param p5, "textAppearanceResIndices"    # [I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param

    .prologue
    .line 72
    invoke-static {p0, p1, p3, p4}, Landroid/support/design/internal/ThemeEnforcement;->checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    invoke-static/range {p0 .. p5}, Landroid/support/design/internal/ThemeEnforcement;->checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 78
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public static varargs obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/support/v7/widget/TintTypedArray;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p4, "defStyleRes"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .param p5, "textAppearanceResIndices"    # [I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param

    .prologue
    .line 110
    invoke-static {p0, p1, p3, p4}, Landroid/support/design/internal/ThemeEnforcement;->checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 113
    invoke-static/range {p0 .. p5}, Landroid/support/design/internal/ThemeEnforcement;->checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 116
    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    return-object v0
.end method
