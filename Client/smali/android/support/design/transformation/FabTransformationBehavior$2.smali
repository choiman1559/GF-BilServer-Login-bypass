.class Landroid/support/design/transformation/FabTransformationBehavior$2;
.super Ljava/lang/Object;
.source "FabTransformationBehavior.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/transformation/FabTransformationBehavior;->createIconFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/transformation/FabTransformationBehavior;

.field final synthetic val$child:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/design/transformation/FabTransformationBehavior;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/design/transformation/FabTransformationBehavior;

    .prologue
    .line 297
    iput-object p1, p0, Landroid/support/design/transformation/FabTransformationBehavior$2;->this$0:Landroid/support/design/transformation/FabTransformationBehavior;

    iput-object p2, p0, Landroid/support/design/transformation/FabTransformationBehavior$2;->val$child:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 302
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior$2;->val$child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 303
    return-void
.end method
