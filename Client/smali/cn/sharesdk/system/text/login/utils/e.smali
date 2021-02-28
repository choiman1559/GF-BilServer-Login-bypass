.class public Lcn/sharesdk/system/text/login/utils/e;
.super Ljava/lang/Object;
.source "ViewRound.java"


# direct methods
.method public static a(FI)Landroid/graphics/drawable/ShapeDrawable;
    .registers 8

    .prologue
    const/16 v5, 0x8

    .line 11
    const/4 v1, 0x0

    .line 12
    new-array v2, v5, [F

    .line 13
    new-array v3, v5, [F

    .line 14
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v5, :cond_13

    .line 15
    add-float v4, p0, v1

    aput v4, v2, v0

    .line 16
    aput p0, v3, v0

    .line 14
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 18
    :cond_13
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/RoundRectShape;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v4, v2, v5, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 22
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    return-object v0
.end method
