.class final Lcom/mob/tools/gui/SmoothScroller$2;
.super Ljava/lang/Object;
.source "SmoothScroller.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/gui/SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$overScroll:[F


# direct methods
.method constructor <init>([F)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mob/tools/gui/SmoothScroller$2;->val$overScroll:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4
    .param p1, "input"    # F

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mob/tools/gui/SmoothScroller$2;->val$overScroll:[F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    aget v0, v0, v1

    return v0
.end method
