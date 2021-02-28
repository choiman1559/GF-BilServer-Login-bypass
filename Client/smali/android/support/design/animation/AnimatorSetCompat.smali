.class public Landroid/support/design/animation/AnimatorSetCompat;
.super Ljava/lang/Object;
.source "AnimatorSetCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V
    .registers 12
    .param p0, "animatorSet"    # Landroid/animation/AnimatorSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const-wide/16 v4, 0x0

    .line 38
    .local v4, "totalDuration":J
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_7
    if-ge v3, v1, :cond_1f

    .line 39
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 40
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 38
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 42
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_1f
    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_34

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 43
    .local v2, "fix":Landroid/animation/Animator;
    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 44
    const/4 v6, 0x0

    invoke-interface {p1, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 46
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 47
    return-void

    .line 42
    :array_34
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
