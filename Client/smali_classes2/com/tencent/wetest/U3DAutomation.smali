.class public Lcom/tencent/wetest/U3DAutomation;
.super Ljava/lang/Object;


# static fields
.field protected static a:Ljava/lang/String;

.field protected static b:Landroid/view/View;

.field protected static c:Z

.field protected static d:Ljava/lang/Class;

.field protected static e:Ljava/lang/reflect/Field;

.field protected static f:I

.field protected static g:Ljava/lang/reflect/Method;

.field protected static h:Landroid/app/Activity;

.field protected static i:Landroid/content/Context;

.field protected static j:Landroid/view/WindowManager;

.field protected static k:Lcom/tencent/wetest/f;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "wetest"

    sput-object v0, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    sput-object v1, Lcom/tencent/wetest/U3DAutomation;->b:Landroid/view/View;

    sput-boolean v2, Lcom/tencent/wetest/U3DAutomation;->c:Z

    sput-object v1, Lcom/tencent/wetest/U3DAutomation;->d:Ljava/lang/Class;

    sput-object v1, Lcom/tencent/wetest/U3DAutomation;->e:Ljava/lang/reflect/Field;

    sput v2, Lcom/tencent/wetest/U3DAutomation;->f:I

    sput-object v1, Lcom/tencent/wetest/U3DAutomation;->g:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/tencent/wetest/U3DAutomation;->h:Landroid/app/Activity;

    sput-object v1, Lcom/tencent/wetest/U3DAutomation;->i:Landroid/content/Context;

    sput-object v1, Lcom/tencent/wetest/U3DAutomation;->j:Landroid/view/WindowManager;

    sput-object v1, Lcom/tencent/wetest/U3DAutomation;->k:Lcom/tencent/wetest/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetHeight()I
    .registers 1

    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->f()Lcom/tencent/wetest/f;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    iget v0, v0, Lcom/tencent/wetest/f;->b:I

    goto :goto_7
.end method

.method public static GetPlayerActivity()Landroid/app/Activity;
    .registers 3

    const/4 v1, 0x0

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->h:Landroid/app/Activity;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->h:Landroid/app/Activity;

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->d()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v2, "GetPlayerActivity: can\'t find com.unity3d.player.UnityPlayer"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_7

    :cond_17
    const-string v2, "currentActivity"

    invoke-static {v0, v2}, Lcom/tencent/wetest/U3DAutomation;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v2, "GetPlayerActivity: can\'t find currentActivity"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_7

    :cond_28
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_38

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v2, "GetPlayerActivity: can\'t get currentActivity"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_7

    :cond_38
    check-cast v0, Landroid/app/Activity;

    sput-object v0, Lcom/tencent/wetest/U3DAutomation;->h:Landroid/app/Activity;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3c} :catch_3f

    :goto_3c
    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->h:Landroid/app/Activity;

    goto :goto_7

    :catch_3f
    move-exception v0

    sget-object v1, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c
.end method

.method public static GetWidth()I
    .registers 2

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v1, "GetWidth( )"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->f()Lcom/tencent/wetest/f;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v0, -0x1

    :goto_e
    return v0

    :cond_f
    iget v0, v0, Lcom/tencent/wetest/f;->a:I

    goto :goto_e
.end method

.method public static InjectTouchEvent(IFF)V
    .registers 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "Recycle"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_33

    const/4 v7, 0x0

    :goto_8
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v2, v0

    move v4, p0

    move v5, p1

    move/from16 v6, p2

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_25

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    :cond_25
    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->e()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_36

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v1, "Unable to get UnityPlayer object! please check the Unity3D version."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    return-void

    :cond_33
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_36
    sget v2, Lcom/tencent/wetest/U3DAutomation;->f:I

    if-nez v2, :cond_56

    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->b()I

    move-result v2

    sput v2, Lcom/tencent/wetest/U3DAutomation;->f:I

    sget-object v2, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unity version = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/tencent/wetest/U3DAutomation;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    new-instance v2, Lcom/tencent/wetest/e;

    invoke-direct {v2, v0, v1}, Lcom/tencent/wetest/e;-><init>(Landroid/view/MotionEvent;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_32
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_d

    throw v0

    :cond_d
    invoke-static {v1, p1}, Lcom/tencent/wetest/U3DAutomation;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_4
.end method

.method static synthetic a(Z)V
    .registers 1

    invoke-static {p0}, Lcom/tencent/wetest/U3DAutomation;->b(Z)V

    return-void
.end method

.method static synthetic a()Z
    .registers 1

    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->c()Z

    move-result v0

    return v0
.end method

.method private static b()I
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/tencent/wetest/U3DAutomation;->d:Ljava/lang/Class;

    const-string v2, "l"

    invoke-static {v1, v2}, Lcom/tencent/wetest/U3DAutomation;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_1d

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v0, 0x4

    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    sget-object v1, Lcom/tencent/wetest/U3DAutomation;->d:Ljava/lang/Class;

    const-string v2, "k"

    invoke-static {v1, v2}, Lcom/tencent/wetest/U3DAutomation;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_1c

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_34} :catch_39

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x5

    goto :goto_1c

    :catch_39
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1c
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-lt v1, v3, :cond_11

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_3a

    const/4 v0, 0x0

    :goto_10
    return-object v0

    :cond_11
    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    sget-object v1, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get field ok, type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_36
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_3a
    invoke-static {v0, p1}, Lcom/tencent/wetest/U3DAutomation;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_10
.end method

.method private static b(Z)V
    .registers 6

    :try_start_0
    sget v0, Lcom/tencent/wetest/U3DAutomation;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_36

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->e:Ljava/lang/reflect/Field;

    if-nez v0, :cond_25

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->d:Ljava/lang/Class;

    const-string v1, "l"

    invoke-static {v0, v1}, Lcom/tencent/wetest/U3DAutomation;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/tencent/wetest/U3DAutomation;->e:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->e:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1f

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v1, "can\'t find forwardNative!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    return-void

    :cond_1f
    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->e:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_25
    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->e:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/tencent/wetest/U3DAutomation;->b:Landroid/view/View;

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2c} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_2c} :catch_7e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_2c} :catch_8f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_2c} :catch_98

    goto :goto_1e

    :catch_2d
    move-exception v0

    sget-object v1, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v2, "setForward"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    :cond_36
    :try_start_36
    sget v0, Lcom/tencent/wetest/U3DAutomation;->f:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_87

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->g:Ljava/lang/reflect/Method;

    if-nez v0, :cond_6c

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->d:Ljava/lang/Class;

    const-string v1, "nativeForwardEventsToDalvik"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tencent/wetest/U3DAutomation;->g:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->g:Ljava/lang/reflect/Method;

    if-nez v0, :cond_66

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v1, "can\'t find nativeForwardEventsToDalvik!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_36 .. :try_end_5c} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_36 .. :try_end_5c} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_5c} :catch_7e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_36 .. :try_end_5c} :catch_8f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_36 .. :try_end_5c} :catch_98

    goto :goto_1e

    :catch_5d
    move-exception v0

    sget-object v1, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v2, "setForward"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    :cond_66
    :try_start_66
    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_6c
    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->g:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/tencent/wetest/U3DAutomation;->b:Landroid/view/View;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_66 .. :try_end_7d} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_66 .. :try_end_7d} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_66 .. :try_end_7d} :catch_7e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_66 .. :try_end_7d} :catch_8f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_66 .. :try_end_7d} :catch_98

    goto :goto_1e

    :catch_7e
    move-exception v0

    sget-object v1, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v2, "setForward"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    :cond_87
    :try_start_87
    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v1, "Unknown Unity Version."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_87 .. :try_end_8e} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_87 .. :try_end_8e} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_87 .. :try_end_8e} :catch_7e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_87 .. :try_end_8e} :catch_8f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_87 .. :try_end_8e} :catch_98

    goto :goto_1e

    :catch_8f
    move-exception v0

    sget-object v1, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v2, "setForward"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    :catch_98
    move-exception v0

    sget-object v1, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v2, "setForward"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e
.end method

.method private static c()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/tencent/wetest/U3DAutomation;->e:Ljava/lang/reflect/Field;

    if-nez v1, :cond_30

    const-string v1, ""

    sget v1, Lcom/tencent/wetest/U3DAutomation;->f:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_22

    const-string v1, "k"

    :goto_e
    sget-object v2, Lcom/tencent/wetest/U3DAutomation;->d:Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/tencent/wetest/U3DAutomation;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/tencent/wetest/U3DAutomation;->e:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/tencent/wetest/U3DAutomation;->e:Ljava/lang/reflect/Field;

    if-nez v1, :cond_2a

    sget-object v1, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v2, "can\'t find forwardNative!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_21
    return v0

    :cond_22
    sget v1, Lcom/tencent/wetest/U3DAutomation;->f:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_21

    const-string v1, "l"

    goto :goto_e

    :cond_2a
    sget-object v1, Lcom/tencent/wetest/U3DAutomation;->e:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_30
    sget-object v1, Lcom/tencent/wetest/U3DAutomation;->e:Ljava/lang/reflect/Field;

    sget-object v2, Lcom/tencent/wetest/U3DAutomation;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_37} :catch_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_37} :catch_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_37} :catch_4b

    move-result v0

    goto :goto_21

    :catch_39
    move-exception v1

    sget-object v2, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v3, "getForward"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    :catch_42
    move-exception v1

    sget-object v2, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v3, "getForward"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    :catch_4b
    move-exception v1

    sget-object v2, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v3, "getForward"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method private static d()Ljava/lang/Class;
    .registers 2

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->d:Ljava/lang/Class;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->d:Ljava/lang/Class;

    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    const-string v0, "com.unity3d.player.UnityPlayer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/tencent/wetest/U3DAutomation;->d:Ljava/lang/Class;

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->d:Ljava/lang/Class;
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_11} :catch_12

    goto :goto_6

    :catch_12
    move-exception v0

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v1, "can\'t find com.unity3d.player.UnityPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static e()Landroid/view/View;
    .registers 6

    const/4 v1, 0x0

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->b:Landroid/view/View;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->b:Landroid/view/View;

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->d()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v2, "can\'t find com.unity3d.player.UnityPlayer"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_7

    :cond_17
    const-string v2, "currentActivity"

    invoke-static {v0, v2}, Lcom/tencent/wetest/U3DAutomation;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v2, "can\'t find currentActivity"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_7

    :cond_28
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_38

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v2, "can\'t get currentActivity"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_7

    :cond_38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "currentActivity = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "class com.unity3d.player.UnityPlayer"

    invoke-static {v2, v3}, Lcom/tencent/wetest/U3DAutomation;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-nez v2, :cond_65

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v2, "com.unity3d.player.UnityPlayer not get."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_7

    :cond_65
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sput-object v0, Lcom/tencent/wetest/U3DAutomation;->b:Landroid/view/View;

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->b:Landroid/view/View;
    :try_end_73
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_73} :catch_74
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_73} :catch_80
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_73} :catch_8b
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_73} :catch_96

    goto :goto_7

    :catch_74
    move-exception v0

    sget-object v2, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7e
    move-object v0, v1

    goto :goto_7

    :catch_80
    move-exception v0

    sget-object v2, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7e

    :catch_8b
    move-exception v0

    sget-object v2, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7e

    :catch_96
    move-exception v0

    sget-object v2, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7e
.end method

.method private static f()Lcom/tencent/wetest/f;
    .registers 4

    const/4 v0, 0x0

    sget-object v1, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v2, "GetMResolution Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->GetPlayerActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v1, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    const-string v2, "GetContext: get activity is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-object v0

    :cond_16
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    :try_start_1b
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v1, Lcom/tencent/wetest/f;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v1, v3, v2}, Lcom/tencent/wetest/f;-><init>(II)V

    sput-object v1, Lcom/tencent/wetest/U3DAutomation;->k:Lcom/tencent/wetest/f;

    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->k:Lcom/tencent/wetest/f;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_37} :catch_38

    goto :goto_15

    :catch_38
    move-exception v1

    sget-object v2, Lcom/tencent/wetest/U3DAutomation;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method
