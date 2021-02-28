.class Landroid/support/transition/ImageViewUtils;
.super Ljava/lang/Object;
.source "ImageViewUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageViewUtils"

.field private static sAnimateTransformMethod:Ljava/lang/reflect/Method;

.field private static sAnimateTransformMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method static animateTransform(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V
    .registers 6
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 56
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_a

    .line 57
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 70
    :cond_9
    :goto_9
    return-void

    .line 59
    :cond_a
    invoke-static {}, Landroid/support/transition/ImageViewUtils;->fetchAnimateTransformMethod()V

    .line 60
    sget-object v1, Landroid/support/transition/ImageViewUtils;->sAnimateTransformMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_9

    .line 62
    :try_start_11
    sget-object v1, Landroid/support/transition/ImageViewUtils;->sAnimateTransformMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_1c} :catch_1f

    goto :goto_9

    .line 63
    :catch_1d
    move-exception v1

    goto :goto_9

    .line 65
    :catch_1f
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static fetchAnimateTransformMethod()V
    .registers 7

    .prologue
    const/4 v6, 0x1

    .line 73
    sget-boolean v1, Landroid/support/transition/ImageViewUtils;->sAnimateTransformMethodFetched:Z

    if-nez v1, :cond_1f

    .line 75
    :try_start_5
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "animateTransform"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Matrix;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/ImageViewUtils;->sAnimateTransformMethod:Ljava/lang/reflect/Method;

    .line 77
    sget-object v1, Landroid/support/transition/ImageViewUtils;->sAnimateTransformMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1d} :catch_20

    .line 81
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_1d
    sput-boolean v6, Landroid/support/transition/ImageViewUtils;->sAnimateTransformMethodFetched:Z

    .line 83
    :cond_1f
    return-void

    .line 78
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_20
    move-exception v0

    .line 79
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ImageViewUtils"

    const-string v2, "Failed to retrieve animateTransform method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method

.method static reserveEndAnimateTransform(Landroid/widget/ImageView;Landroid/animation/Animator;)V
    .registers 4
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_e

    .line 91
    new-instance v0, Landroid/support/transition/ImageViewUtils$1;

    invoke-direct {v0, p0}, Landroid/support/transition/ImageViewUtils$1;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 106
    :cond_e
    return-void
.end method

.method static startAnimateTransform(Landroid/widget/ImageView;)V
    .registers 4
    .param p0, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 40
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_21

    .line 41
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    .line 42
    .local v0, "scaleType":Landroid/widget/ImageView$ScaleType;
    sget v1, Landroid/support/transition/R$id;->save_scale_type:I

    invoke-virtual {p0, v1, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 43
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_22

    .line 44
    sget v1, Landroid/support/transition/R$id;->save_image_matrix:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 48
    :goto_1c
    sget-object v1, Landroid/support/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 50
    .end local v0    # "scaleType":Landroid/widget/ImageView$ScaleType;
    :cond_21
    return-void

    .line 46
    .restart local v0    # "scaleType":Landroid/widget/ImageView$ScaleType;
    :cond_22
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1c
.end method
