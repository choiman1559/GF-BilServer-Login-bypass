.class public Lcom/unity3d/splash/services/core/misc/ViewUtilities;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeViewFromParent(Landroid/view/View;)V
    .registers 3

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_11

    :try_start_8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_11} :catch_12

    :cond_11
    :goto_11
    return-void

    :catch_12
    move-exception v0

    const-string v1, "Error while removing view from it\'s parent"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 7

    const-class v2, Landroid/view/View;

    const-string v0, "setBackground"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v1, v3, :cond_37

    const-string v0, "setBackgroundDrawable"

    move-object v1, v0

    :goto_d
    const/4 v0, 0x1

    :try_start_e
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/drawable/Drawable;

    aput-object v4, v0, v3

    invoke-virtual {v2, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_22} :catch_23

    :goto_22
    return-void

    :catch_23
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t run"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_22

    :cond_37
    move-object v1, v0

    goto :goto_d
.end method
