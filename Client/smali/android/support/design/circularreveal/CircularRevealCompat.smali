.class public final Landroid/support/design/circularreveal/CircularRevealCompat;
.super Ljava/lang/Object;
.source "CircularRevealCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCircularReveal(Landroid/support/design/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;
    .registers 15
    .param p0, "view"    # Landroid/support/design/circularreveal/CircularRevealWidget;
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "endRadius"    # F

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 55
    sget-object v5, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealProperty;->CIRCULAR_REVEAL:Landroid/util/Property;

    sget-object v6, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->CIRCULAR_REVEAL:Landroid/animation/TypeEvaluator;

    new-array v7, v10, [Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    new-instance v8, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v8, p1, p2, p3}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    aput-object v8, v7, v9

    .line 56
    invoke-static {p0, v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 61
    .local v2, "revealInfoAnimator":Landroid/animation/Animator;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_41

    .line 64
    invoke-interface {p0}, Landroid/support/design/circularreveal/CircularRevealWidget;->getRevealInfo()Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v1

    .line 65
    .local v1, "revealInfo":Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
    if-nez v1, :cond_27

    .line 66
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Caller must set a non-null RevealInfo before calling this."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 69
    :cond_27
    iget v4, v1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 70
    .local v4, "startRadius":F
    check-cast p0, Landroid/view/View;

    .end local p0    # "view":Landroid/support/design/circularreveal/CircularRevealWidget;
    float-to-int v5, p1

    float-to-int v6, p2

    .line 71
    invoke-static {p0, v5, v6, v4, p3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 73
    .local v0, "circularRevealAnimator":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 74
    .local v3, "set":Landroid/animation/AnimatorSet;
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v2, v5, v9

    aput-object v0, v5, v10

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 77
    .end local v0    # "circularRevealAnimator":Landroid/animation/Animator;
    .end local v1    # "revealInfo":Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    .end local v4    # "startRadius":F
    :goto_40
    return-object v3

    .restart local p0    # "view":Landroid/support/design/circularreveal/CircularRevealWidget;
    :cond_41
    move-object v3, v2

    goto :goto_40
.end method

.method public static createCircularReveal(Landroid/support/design/circularreveal/CircularRevealWidget;FFFF)Landroid/animation/Animator;
    .registers 15
    .param p0, "view"    # Landroid/support/design/circularreveal/CircularRevealWidget;
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 94
    sget-object v3, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealProperty;->CIRCULAR_REVEAL:Landroid/util/Property;

    sget-object v4, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->CIRCULAR_REVEAL:Landroid/animation/TypeEvaluator;

    new-array v5, v9, [Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    new-instance v6, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v6, p1, p2, p3}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    aput-object v6, v5, v7

    new-instance v6, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v6, p1, p2, p4}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    aput-object v6, v5, v8

    .line 95
    invoke-static {p0, v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 101
    .local v1, "revealInfoAnimator":Landroid/animation/Animator;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_38

    .line 102
    check-cast p0, Landroid/view/View;

    .end local p0    # "view":Landroid/support/design/circularreveal/CircularRevealWidget;
    float-to-int v3, p1

    float-to-int v4, p2

    .line 103
    invoke-static {p0, v3, v4, p3, p4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 105
    .local v0, "circularRevealAnimator":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 106
    .local v2, "set":Landroid/animation/AnimatorSet;
    new-array v3, v9, [Landroid/animation/Animator;

    aput-object v1, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 109
    .end local v0    # "circularRevealAnimator":Landroid/animation/Animator;
    .end local v2    # "set":Landroid/animation/AnimatorSet;
    :goto_37
    return-object v2

    .restart local p0    # "view":Landroid/support/design/circularreveal/CircularRevealWidget;
    :cond_38
    move-object v2, v1

    goto :goto_37
.end method

.method public static createCircularRevealListener(Landroid/support/design/circularreveal/CircularRevealWidget;)Landroid/animation/Animator$AnimatorListener;
    .registers 2
    .param p0, "view"    # Landroid/support/design/circularreveal/CircularRevealWidget;

    .prologue
    .line 118
    new-instance v0, Landroid/support/design/circularreveal/CircularRevealCompat$1;

    invoke-direct {v0, p0}, Landroid/support/design/circularreveal/CircularRevealCompat$1;-><init>(Landroid/support/design/circularreveal/CircularRevealWidget;)V

    return-object v0
.end method
