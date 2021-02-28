.class public Landroid/support/design/shape/CutCornerTreatment;
.super Landroid/support/design/shape/CornerTreatment;
.source "CutCornerTreatment.java"


# annotations
.annotation build Landroid/support/design/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# instance fields
.field private final size:F


# direct methods
.method public constructor <init>(F)V
    .registers 2
    .param p1, "size"    # F

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/design/shape/CornerTreatment;-><init>()V

    .line 38
    iput p1, p0, Landroid/support/design/shape/CutCornerTreatment;->size:F

    .line 39
    return-void
.end method


# virtual methods
.method public getCornerPath(FFLandroid/support/design/shape/ShapePath;)V
    .registers 10
    .param p1, "angle"    # F
    .param p2, "interpolation"    # F
    .param p3, "shapePath"    # Landroid/support/design/shape/ShapePath;

    .prologue
    .line 43
    const/4 v0, 0x0

    iget v1, p0, Landroid/support/design/shape/CutCornerTreatment;->size:F

    mul-float/2addr v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/support/design/shape/ShapePath;->reset(FF)V

    .line 44
    float-to-double v0, p1

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iget v2, p0, Landroid/support/design/shape/CutCornerTreatment;->size:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    float-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v2, p1

    .line 46
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget v1, p0, Landroid/support/design/shape/CutCornerTreatment;->size:F

    float-to-double v4, v1

    mul-double/2addr v2, v4

    float-to-double v4, p2

    mul-double/2addr v2, v4

    double-to-float v1, v2

    .line 44
    invoke-virtual {p3, v0, v1}, Landroid/support/design/shape/ShapePath;->lineTo(FF)V

    .line 47
    return-void
.end method
