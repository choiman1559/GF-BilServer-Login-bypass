.class public final Landroid/support/design/widget/StateListAnimator;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/StateListAnimator$Tuple;
    }
.end annotation


# instance fields
.field private final animationListener:Landroid/animation/Animator$AnimatorListener;

.field private lastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

.field runningAnimator:Landroid/animation/ValueAnimator;

.field private final tuples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->tuples:Ljava/util/ArrayList;

    .line 39
    iput-object v1, p0, Landroid/support/design/widget/StateListAnimator;->lastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 40
    iput-object v1, p0, Landroid/support/design/widget/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 42
    new-instance v0, Landroid/support/design/widget/StateListAnimator$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/StateListAnimator$1;-><init>(Landroid/support/design/widget/StateListAnimator;)V

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->animationListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method private cancel()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    .line 97
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 100
    :cond_c
    return-void
.end method

.method private start(Landroid/support/design/widget/StateListAnimator$Tuple;)V
    .registers 3
    .param p1, "match"    # Landroid/support/design/widget/StateListAnimator$Tuple;

    .prologue
    .line 91
    iget-object v0, p1, Landroid/support/design/widget/StateListAnimator$Tuple;->animator:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 92
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 93
    return-void
.end method


# virtual methods
.method public addState([ILandroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "specs"    # [I
    .param p2, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 60
    new-instance v0, Landroid/support/design/widget/StateListAnimator$Tuple;

    invoke-direct {v0, p1, p2}, Landroid/support/design/widget/StateListAnimator$Tuple;-><init>([ILandroid/animation/ValueAnimator;)V

    .line 61
    .local v0, "tuple":Landroid/support/design/widget/StateListAnimator$Tuple;
    iget-object v1, p0, Landroid/support/design/widget/StateListAnimator;->animationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 62
    iget-object v1, p0, Landroid/support/design/widget/StateListAnimator;->tuples:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public jumpToCurrentState()V
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    .line 109
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 112
    :cond_c
    return-void
.end method

.method public setState([I)V
    .registers 7
    .param p1, "state"    # [I

    .prologue
    .line 67
    const/4 v2, 0x0

    .line 68
    .local v2, "match":Landroid/support/design/widget/StateListAnimator$Tuple;
    iget-object v4, p0, Landroid/support/design/widget/StateListAnimator;->tuples:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 69
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1b

    .line 70
    iget-object v4, p0, Landroid/support/design/widget/StateListAnimator;->tuples:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 71
    .local v3, "tuple":Landroid/support/design/widget/StateListAnimator$Tuple;
    iget-object v4, v3, Landroid/support/design/widget/StateListAnimator$Tuple;->specs:[I

    invoke-static {v4, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 72
    move-object v2, v3

    .line 76
    .end local v3    # "tuple":Landroid/support/design/widget/StateListAnimator$Tuple;
    :cond_1b
    iget-object v4, p0, Landroid/support/design/widget/StateListAnimator;->lastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    if-ne v2, v4, :cond_23

    .line 88
    :cond_1f
    :goto_1f
    return-void

    .line 69
    .restart local v3    # "tuple":Landroid/support/design/widget/StateListAnimator$Tuple;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 79
    .end local v3    # "tuple":Landroid/support/design/widget/StateListAnimator$Tuple;
    :cond_23
    iget-object v4, p0, Landroid/support/design/widget/StateListAnimator;->lastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    if-eqz v4, :cond_2a

    .line 80
    invoke-direct {p0}, Landroid/support/design/widget/StateListAnimator;->cancel()V

    .line 83
    :cond_2a
    iput-object v2, p0, Landroid/support/design/widget/StateListAnimator;->lastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 85
    if-eqz v2, :cond_1f

    .line 86
    invoke-direct {p0, v2}, Landroid/support/design/widget/StateListAnimator;->start(Landroid/support/design/widget/StateListAnimator$Tuple;)V

    goto :goto_1f
.end method
