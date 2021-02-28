.class public Landroid/support/design/widget/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DrawableUtils"

.field private static setConstantStateMethod:Ljava/lang/reflect/Method;

.field private static setConstantStateMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setContainerConstantState(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z
    .registers 3
    .param p0, "drawable"    # Landroid/graphics/drawable/DrawableContainer;
    .param p1, "constantState"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .prologue
    .line 45
    invoke-static {p0, p1}, Landroid/support/design/widget/DrawableUtils;->setContainerConstantStateV9(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v0

    return v0
.end method

.method private static setContainerConstantStateV9(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z
    .registers 10
    .param p0, "drawable"    # Landroid/graphics/drawable/DrawableContainer;
    .param p1, "constantState"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 50
    sget-boolean v3, Landroid/support/design/widget/DrawableUtils;->setConstantStateMethodFetched:Z

    if-nez v3, :cond_20

    .line 52
    :try_start_6
    const-class v3, Landroid/graphics/drawable/DrawableContainer;

    const-string v4, "setConstantState"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    aput-object v7, v5, v6

    .line 53
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/support/design/widget/DrawableUtils;->setConstantStateMethod:Ljava/lang/reflect/Method;

    .line 55
    sget-object v3, Landroid/support/design/widget/DrawableUtils;->setConstantStateMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_1e} :catch_30

    .line 59
    :goto_1e
    sput-boolean v1, Landroid/support/design/widget/DrawableUtils;->setConstantStateMethodFetched:Z

    .line 61
    :cond_20
    sget-object v3, Landroid/support/design/widget/DrawableUtils;->setConstantStateMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_41

    .line 63
    :try_start_24
    sget-object v3, Landroid/support/design/widget/DrawableUtils;->setConstantStateMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2f} :catch_39

    .line 69
    :goto_2f
    return v1

    .line 56
    :catch_30
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "DrawableUtils"

    const-string v4, "Could not fetch setConstantState(). Oh well."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 65
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_39
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DrawableUtils"

    const-string v3, "Could not invoke setConstantState(). Oh well."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_41
    move v1, v2

    .line 69
    goto :goto_2f
.end method
