.class Lcom/bsgamesdk/android/buvid/o$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/buvid/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/bsgamesdk/android/buvid/o$a;->a()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/buvid/o$a;->a:Ljava/lang/reflect/Method;

    return-void
.end method

.method private static a()Ljava/lang/reflect/Method;
    .registers 3

    :try_start_0
    const-class v0, Landroid/content/SharedPreferences$Editor;

    const-string v1, "apply"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v0

    :goto_b
    return-object v0

    :catch_c
    move-exception v0

    const/4 v0, 0x0

    goto :goto_b
.end method

.method static a(Landroid/content/SharedPreferences$Editor;)V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/bsgamesdk/android/buvid/o$a;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/bsgamesdk/android/buvid/o$a;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    :cond_e
    :goto_e
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_c

    :catch_12
    move-exception v0

    goto :goto_e

    :catch_14
    move-exception v0

    goto :goto_e
.end method
