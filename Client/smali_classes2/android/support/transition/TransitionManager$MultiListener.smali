.class Landroid/support/transition/TransitionManager$MultiListener;
.super Ljava/lang/Object;
.source "TransitionManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/TransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiListener"
.end annotation


# instance fields
.field mSceneRoot:Landroid/view/ViewGroup;

.field mTransition:Landroid/support/transition/Transition;


# direct methods
.method constructor <init>(Landroid/support/transition/Transition;Landroid/view/ViewGroup;)V
    .registers 3
    .param p1, "transition"    # Landroid/support/transition/Transition;
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Landroid/support/transition/TransitionManager$MultiListener;->mTransition:Landroid/support/transition/Transition;

    .line 235
    iput-object p2, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 236
    return-void
.end method

.method private removeListeners()V
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 240
    iget-object v0, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 241
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 263
    invoke-direct {p0}, Landroid/support/transition/TransitionManager$MultiListener;->removeListeners()V

    .line 266
    sget-object v4, Landroid/support/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 297
    :goto_e
    return v7

    .line 272
    :cond_f
    invoke-static {}, Landroid/support/transition/TransitionManager;->getRunningTransitions()Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    .line 273
    .local v3, "runningTransitions":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/Transition;>;>;"
    iget-object v4, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 274
    .local v0, "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    const/4 v1, 0x0

    .line 275
    .local v1, "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    if-nez v0, :cond_57

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .restart local v0    # "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    iget-object v4, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_28
    :goto_28
    iget-object v4, p0, Landroid/support/transition/TransitionManager$MultiListener;->mTransition:Landroid/support/transition/Transition;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v4, p0, Landroid/support/transition/TransitionManager$MultiListener;->mTransition:Landroid/support/transition/Transition;

    new-instance v5, Landroid/support/transition/TransitionManager$MultiListener$1;

    invoke-direct {v5, p0, v3}, Landroid/support/transition/TransitionManager$MultiListener$1;-><init>(Landroid/support/transition/TransitionManager$MultiListener;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {v4, v5}, Landroid/support/transition/Transition;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 289
    iget-object v4, p0, Landroid/support/transition/TransitionManager$MultiListener;->mTransition:Landroid/support/transition/Transition;

    iget-object v5, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 290
    if-eqz v1, :cond_63

    .line 291
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_45
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    .line 292
    .local v2, "runningTransition":Landroid/support/transition/Transition;
    iget-object v5, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/support/transition/Transition;->resume(Landroid/view/View;)V

    goto :goto_45

    .line 278
    .end local v2    # "runningTransition":Landroid/support/transition/Transition;
    :cond_57
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_28

    .line 279
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v1    # "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    goto :goto_28

    .line 295
    :cond_63
    iget-object v4, p0, Landroid/support/transition/TransitionManager$MultiListener;->mTransition:Landroid/support/transition/Transition;

    iget-object v5, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/support/transition/Transition;->playTransition(Landroid/view/ViewGroup;)V

    goto :goto_e
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 245
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 249
    invoke-direct {p0}, Landroid/support/transition/TransitionManager$MultiListener;->removeListeners()V

    .line 251
    sget-object v2, Landroid/support/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 252
    invoke-static {}, Landroid/support/transition/TransitionManager;->getRunningTransitions()Landroid/support/v4/util/ArrayMap;

    move-result-object v2

    iget-object v3, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 253
    .local v1, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    if-eqz v1, :cond_34

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_34

    .line 254
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/Transition;

    .line 255
    .local v0, "runningTransition":Landroid/support/transition/Transition;
    iget-object v3, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/support/transition/Transition;->resume(Landroid/view/View;)V

    goto :goto_22

    .line 258
    .end local v0    # "runningTransition":Landroid/support/transition/Transition;
    :cond_34
    iget-object v2, p0, Landroid/support/transition/TransitionManager$MultiListener;->mTransition:Landroid/support/transition/Transition;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/transition/Transition;->clearValues(Z)V

    .line 259
    return-void
.end method
