.class public Landroid/support/design/animation/Positioning;
.super Ljava/lang/Object;
.source "Positioning.java"


# instance fields
.field public final gravity:I

.field public final xAdjustment:F

.field public final yAdjustment:F


# direct methods
.method public constructor <init>(IFF)V
    .registers 4
    .param p1, "gravity"    # I
    .param p2, "xAdjustment"    # F
    .param p3, "yAdjustment"    # F

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Landroid/support/design/animation/Positioning;->gravity:I

    .line 36
    iput p2, p0, Landroid/support/design/animation/Positioning;->xAdjustment:F

    .line 37
    iput p3, p0, Landroid/support/design/animation/Positioning;->yAdjustment:F

    .line 38
    return-void
.end method
