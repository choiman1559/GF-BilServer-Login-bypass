.class public Lcom/tencent/wetest/g;
.super Ljava/lang/Object;


# static fields
.field private static b:Ljava/lang/Class;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/tencent/wetest/g;->b()V

    invoke-direct {p0}, Lcom/tencent/wetest/g;->c()V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Landroid/view/ViewGroup;Z)V
    .registers 7

    if-eqz p2, :cond_a

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_b

    :cond_a
    return-void

    :cond_b
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1b

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0, p3}, Lcom/tencent/wetest/g;->a(Ljava/util/ArrayList;Landroid/view/ViewGroup;Z)V

    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4
.end method

.method private final b([Landroid/view/View;)Landroid/view/View;
    .registers 12

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    move v4, v0

    move-wide v8, v2

    move-object v3, v1

    move-wide v0, v8

    :goto_8
    array-length v2, p1

    if-lt v4, v2, :cond_c

    return-object v3

    :cond_c
    aget-object v2, p1, v4

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual {v2}, Landroid/view/View;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual {v2}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v6

    cmp-long v5, v6, v0

    if-lez v5, :cond_2d

    invoke-virtual {v2}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v0

    :goto_28
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v2

    goto :goto_8

    :cond_2d
    move-object v2, v3

    goto :goto_28
.end method

.method private b()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    const-string v0, "sDefaultWindowManager"

    iput-object v0, p0, Lcom/tencent/wetest/g;->a:Ljava/lang/String;

    :goto_a
    return-void

    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_16

    const-string v0, "sWindowManager"

    iput-object v0, p0, Lcom/tencent/wetest/g;->a:Ljava/lang/String;

    goto :goto_a

    :cond_16
    const-string v0, "mWindowManager"

    iput-object v0, p0, Lcom/tencent/wetest/g;->a:Ljava/lang/String;

    goto :goto_a
.end method

.method private c()V
    .registers 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_f

    const-string v0, "android.view.WindowManagerGlobal"

    :goto_8
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/tencent/wetest/g;->b:Ljava/lang/Class;

    return-void

    :cond_f
    const-string v0, "android.view.WindowManagerImpl"
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_11} :catch_12
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_11} :catch_19

    goto :goto_8

    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_19
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final c([Landroid/view/View;)[Landroid/view/View;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_29

    array-length v1, p1

    new-array v2, v1, [Landroid/view/View;

    move v1, v0

    :goto_8
    array-length v3, p1

    if-lt v0, v3, :cond_d

    move-object v0, v2

    :goto_c
    return-object v0

    :cond_d
    aget-object v3, p1, v0

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.internal.policy.impl.PhoneWindow$DecorView"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_21
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_24
    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_29
    move-object v0, v1

    goto :goto_c
.end method


# virtual methods
.method public final a([Landroid/view/View;)Landroid/view/View;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p1

    new-array v2, v1, [Landroid/view/View;

    move v1, v0

    :goto_9
    array-length v3, p1

    if-lt v0, v3, :cond_11

    invoke-direct {p0, v2}, Lcom/tencent/wetest/g;->b([Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_4

    :cond_11
    aget-object v3, p1, v0

    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.internal.policy.impl.PhoneWindow$DecorView"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    const-string v5, "com.android.internal.policy.impl.MultiPhoneWindow$MultiPhoneDecorView"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    :cond_2d
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_30
    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d
.end method

.method public a(Z)Ljava/util/ArrayList;
    .registers 9

    invoke-virtual {p0}, Lcom/tencent/wetest/g;->a()[Landroid/view/View;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v4}, Lcom/tencent/wetest/g;->c([Landroid/view/View;)[Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_14

    const/4 v1, 0x0

    move v3, v1

    :goto_11
    array-length v1, v6

    if-lt v3, v1, :cond_2a

    :cond_14
    if-eqz v4, :cond_29

    array-length v1, v4

    if-lez v1, :cond_29

    invoke-virtual {p0, v4}, Lcom/tencent/wetest/g;->a([Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    :try_start_1d
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    invoke-direct {p0, v5, v1, p1}, Lcom/tencent/wetest/g;->a(Ljava/util/ArrayList;Landroid/view/ViewGroup;Z)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_24} :catch_3d

    :goto_24
    if-eqz v2, :cond_29

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    return-object v5

    :cond_2a
    aget-object v2, v6, v3

    :try_start_2c
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    invoke-direct {p0, v5, v1, p1}, Lcom/tencent/wetest/g;->a(Ljava/util/ArrayList;Landroid/view/ViewGroup;Z)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_33} :catch_3f

    :goto_33
    if-nez v2, :cond_39

    :goto_35
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_11

    :cond_39
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :catch_3d
    move-exception v1

    goto :goto_24

    :catch_3f
    move-exception v1

    goto :goto_33
.end method

.method public a()[Landroid/view/View;
    .registers 5

    :try_start_0
    sget-object v0, Lcom/tencent/wetest/g;->b:Ljava/lang/Class;

    const-string v1, "mViews"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sget-object v1, Lcom/tencent/wetest/g;->b:Ljava/lang/Class;

    iget-object v2, p0, Lcom/tencent/wetest/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_33

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    :goto_32
    return-object v0

    :cond_33
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    goto :goto_32

    :catch_3a
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
