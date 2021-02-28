.class public Landroid/support/design/shape/RoundedCornerTreatment;
.super Landroid/support/design/shape/CornerTreatment;
.source "RoundedCornerTreatment.java"


# annotations
.annotation build Landroid/support/design/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# instance fields
.field private final radius:F


# direct methods
.method public constructor <init>(F)V
    .registers 2
    .param p1, "radius"    # F

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/design/shape/CornerTreatment;-><init>()V

    .line 34
    iput p1, p0, Landroid/support/design/shape/RoundedCornerTreatment;->radius:F

    .line 35
    return-void
.end method


# virtual methods
.method public getCornerPath(FFLandroid/support/design/shape/ShapePath;)V
    .registers 11
    .param p1, "angle"    # F
    .param p2, "interpolation"    # F
    .param p3, "shapePath"    # Landroid/support/design/shape/ShapePath;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 39
    iget v0, p0, Landroid/support/design/shape/RoundedCornerTreatment;->radius:F

    mul-float/2addr v0, p2

    invoke-virtual {p3, v1, v0}, Landroid/support/design/shape/ShapePath;->reset(FF)V

    .line 40
    iget v0, p0, Landroid/support/design/shape/RoundedCornerTreatment;->radius:F

    mul-float/2addr v0, v2

    mul-float v3, v0, p2

    iget v0, p0, Landroid/support/design/shape/RoundedCornerTreatment;->radius:F

    mul-float/2addr v0, v2

    mul-float v4, v0, p2

    const/high16 v0, 0x43340000    # 180.0f

    add-float v5, p1, v0

    const/high16 v6, 0x42b40000    # 90.0f

    move-object v0, p3

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/shape/ShapePath;->addArc(FFFFFF)V

    .line 41
    return-void
.end method
