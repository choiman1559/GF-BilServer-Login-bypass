.class Landroid/support/transition/ViewGroupUtilsApi14;
.super Ljava/lang/Object;
.source "ViewGroupUtilsApi14.java"


# static fields
.field private static final LAYOUT_TRANSITION_CHANGING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ViewGroupUtilsApi14"

.field private static sCancelMethod:Ljava/lang/reflect/Method;

.field private static sCancelMethodFetched:Z

.field private static sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

.field private static sLayoutSuppressedField:Ljava/lang/reflect/Field;

.field private static sLayoutSuppressedFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method private static cancelLayoutTransition(Landroid/animation/LayoutTransition;)V
    .registers 6
    .param p0, "t"    # Landroid/animation/LayoutTransition;

    .prologue
    const/4 v4, 0x1

    .line 109
    sget-boolean v1, Landroid/support/transition/ViewGroupUtilsApi14;->sCancelMethodFetched:Z

    if-nez v1, :cond_1a

    .line 111
    :try_start_5
    const-class v1, Landroid/animation/LayoutTransition;

    const-string v2, "cancel"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    .line 112
    sget-object v1, Landroid/support/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_18} :catch_27

    .line 116
    :goto_18
    sput-boolean v4, Landroid/support/transition/ViewGroupUtilsApi14;->sCancelMethodFetched:Z

    .line 118
    :cond_1a
    sget-object v1, Landroid/support/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_26

    .line 120
    :try_start_1e
    sget-object v1, Landroid/support/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_1e .. :try_end_26} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1e .. :try_end_26} :catch_39

    .line 127
    :cond_26
    :goto_26
    return-void

    .line 113
    :catch_27
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewGroupUtilsApi14"

    const-string v2, "Failed to access cancel method by reflection"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 121
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_30
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "ViewGroupUtilsApi14"

    const-string v2, "Failed to access cancel method by reflection"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 123
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_39
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "ViewGroupUtilsApi14"

    const-string v2, "Failed to invoke cancel method by reflection"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method static suppressLayout(Landroid/view/ViewGroup;Z)V
    .registers 10
    .param p0, "group"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "suppress"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 45
    sget-object v3, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    if-nez v3, :cond_2a

    .line 46
    new-instance v3, Landroid/support/transition/ViewGroupUtilsApi14$1;

    invoke-direct {v3}, Landroid/support/transition/ViewGroupUtilsApi14$1;-><init>()V

    sput-object v3, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    .line 52
    sget-object v3, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 53
    sget-object v3, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v7, v5}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 54
    sget-object v3, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v6, v5}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 55
    sget-object v3, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 56
    sget-object v3, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 58
    :cond_2a
    if-eqz p1, :cond_4a

    .line 60
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    .line 61
    .local v2, "layoutTransition":Landroid/animation/LayoutTransition;
    if-eqz v2, :cond_44

    .line 62
    invoke-virtual {v2}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 63
    invoke-static {v2}, Landroid/support/transition/ViewGroupUtilsApi14;->cancelLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 65
    :cond_3b
    sget-object v3, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    if-eq v2, v3, :cond_44

    .line 66
    sget v3, Landroid/support/transition/R$id;->transition_layout_save:I

    invoke-virtual {p0, v3, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 70
    :cond_44
    sget-object v3, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 106
    :cond_49
    :goto_49
    return-void

    .line 73
    .end local v2    # "layoutTransition":Landroid/animation/LayoutTransition;
    :cond_4a
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 75
    sget-boolean v3, Landroid/support/transition/ViewGroupUtilsApi14;->sLayoutSuppressedFieldFetched:Z

    if-nez v3, :cond_63

    .line 77
    :try_start_51
    const-class v3, Landroid/view/ViewGroup;

    const-string v4, "mLayoutSuppressed"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroid/support/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    .line 78
    sget-object v3, Landroid/support/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_61
    .catch Ljava/lang/NoSuchFieldException; {:try_start_51 .. :try_end_61} :catch_8e

    .line 82
    :goto_61
    sput-boolean v6, Landroid/support/transition/ViewGroupUtilsApi14;->sLayoutSuppressedFieldFetched:Z

    .line 84
    :cond_63
    const/4 v1, 0x0

    .line 85
    .local v1, "layoutSuppressed":Z
    sget-object v3, Landroid/support/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_76

    .line 87
    :try_start_68
    sget-object v3, Landroid/support/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    .line 88
    if-eqz v1, :cond_76

    .line 89
    sget-object v3, Landroid/support/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_76
    .catch Ljava/lang/IllegalAccessException; {:try_start_68 .. :try_end_76} :catch_97

    .line 95
    :cond_76
    :goto_76
    if-eqz v1, :cond_7b

    .line 96
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 99
    :cond_7b
    sget v3, Landroid/support/transition/R$id;->transition_layout_save:I

    .line 100
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/LayoutTransition;

    .line 101
    .restart local v2    # "layoutTransition":Landroid/animation/LayoutTransition;
    if-eqz v2, :cond_49

    .line 102
    sget v3, Landroid/support/transition/R$id;->transition_layout_save:I

    invoke-virtual {p0, v3, v5}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 103
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_49

    .line 79
    .end local v1    # "layoutSuppressed":Z
    .end local v2    # "layoutTransition":Landroid/animation/LayoutTransition;
    :catch_8e
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "ViewGroupUtilsApi14"

    const-string v4, "Failed to access mLayoutSuppressed field by reflection"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 91
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v1    # "layoutSuppressed":Z
    :catch_97
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "ViewGroupUtilsApi14"

    const-string v4, "Failed to get mLayoutSuppressed field by reflection"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76
.end method
