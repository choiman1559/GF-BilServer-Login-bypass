.class Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper$1;
.super Ljava/lang/Object;
.source "InterpolateOnScrollPositionChangeHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;


# direct methods
.method constructor <init>(Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;

    .prologue
    .line 35
    iput-object p1, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper$1;->this$0:Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper$1;->this$0:Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;

    invoke-virtual {v0}, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->updateInterpolationForScreenPosition()V

    .line 39
    return-void
.end method
