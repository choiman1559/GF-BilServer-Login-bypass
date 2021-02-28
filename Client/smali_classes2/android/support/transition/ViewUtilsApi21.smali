.class Landroid/support/transition/ViewUtilsApi21;
.super Landroid/support/transition/ViewUtilsApi19;
.source "ViewUtilsApi21.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewUtilsApi21"

.field private static sSetAnimationMatrixMethod:Ljava/lang/reflect/Method;

.field private static sSetAnimationMatrixMethodFetched:Z

.field private static sTransformMatrixToGlobalMethod:Ljava/lang/reflect/Method;

.field private static sTransformMatrixToGlobalMethodFetched:Z

.field private static sTransformMatrixToLocalMethod:Ljava/lang/reflect/Method;

.field private static sTransformMatrixToLocalMethodFetched:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/transition/ViewUtilsApi19;-><init>()V

    return-void
.end method

.method private fetchSetAnimationMatrix()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 110
    sget-boolean v1, Landroid/support/transition/ViewUtilsApi21;->sSetAnimationMatrixMethodFetched:Z

    if-nez v1, :cond_1f

    .line 112
    :try_start_5
    const-class v1, Landroid/view/View;

    const-string v2, "setAnimationMatrix"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Matrix;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/ViewUtilsApi21;->sSetAnimationMatrixMethod:Ljava/lang/reflect/Method;

    .line 114
    sget-object v1, Landroid/support/transition/ViewUtilsApi21;->sSetAnimationMatrixMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1d} :catch_20

    .line 118
    :goto_1d
    sput-boolean v6, Landroid/support/transition/ViewUtilsApi21;->sSetAnimationMatrixMethodFetched:Z

    .line 120
    :cond_1f
    return-void

    .line 115
    :catch_20
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewUtilsApi21"

    const-string v2, "Failed to retrieve setAnimationMatrix method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method

.method private fetchTransformMatrixToGlobalMethod()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 84
    sget-boolean v1, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToGlobalMethodFetched:Z

    if-nez v1, :cond_1f

    .line 86
    :try_start_5
    const-class v1, Landroid/view/View;

    const-string v2, "transformMatrixToGlobal"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Matrix;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToGlobalMethod:Ljava/lang/reflect/Method;

    .line 88
    sget-object v1, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToGlobalMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1d} :catch_20

    .line 92
    :goto_1d
    sput-boolean v6, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToGlobalMethodFetched:Z

    .line 94
    :cond_1f
    return-void

    .line 89
    :catch_20
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewUtilsApi21"

    const-string v2, "Failed to retrieve transformMatrixToGlobal method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method

.method private fetchTransformMatrixToLocalMethod()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 97
    sget-boolean v1, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToLocalMethodFetched:Z

    if-nez v1, :cond_1f

    .line 99
    :try_start_5
    const-class v1, Landroid/view/View;

    const-string v2, "transformMatrixToLocal"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Matrix;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToLocalMethod:Ljava/lang/reflect/Method;

    .line 101
    sget-object v1, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToLocalMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1d} :catch_20

    .line 105
    :goto_1d
    sput-boolean v6, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToLocalMethodFetched:Z

    .line 107
    :cond_1f
    return-void

    .line 102
    :catch_20
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewUtilsApi21"

    const-string v2, "Failed to retrieve transformMatrixToLocal method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method


# virtual methods
.method public setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/support/transition/ViewUtilsApi21;->fetchSetAnimationMatrix()V

    .line 72
    sget-object v1, Landroid/support/transition/ViewUtilsApi21;->sSetAnimationMatrixMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_12

    .line 74
    :try_start_7
    sget-object v1, Landroid/support/transition/ViewUtilsApi21;->sSetAnimationMatrixMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_12} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_12} :catch_13

    .line 81
    :cond_12
    :goto_12
    return-void

    .line 77
    :catch_13
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 75
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1e
    move-exception v1

    goto :goto_12
.end method

.method public transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "matrix"    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/transition/ViewUtilsApi21;->fetchTransformMatrixToGlobalMethod()V

    .line 44
    sget-object v1, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToGlobalMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_12

    .line 46
    :try_start_7
    sget-object v1, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToGlobalMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_12} :catch_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_12} :catch_13

    .line 53
    :cond_12
    :goto_12
    return-void

    .line 49
    :catch_13
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 47
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1e
    move-exception v1

    goto :goto_12
.end method

.method public transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "matrix"    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/transition/ViewUtilsApi21;->fetchTransformMatrixToLocalMethod()V

    .line 58
    sget-object v1, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToLocalMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_12

    .line 60
    :try_start_7
    sget-object v1, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToLocalMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_12} :catch_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_12} :catch_13

    .line 67
    :cond_12
    :goto_12
    return-void

    .line 63
    :catch_13
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 61
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1e
    move-exception v1

    goto :goto_12
.end method
