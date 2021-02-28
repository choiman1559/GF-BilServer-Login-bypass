.class public Lcom/alipay/euler/andfix/AndFix;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "AndFix"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "andfix"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->loadLibrary(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addReplaceMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 3

    :try_start_0
    invoke-static {p0, p1}, Lcom/alipay/euler/andfix/AndFix;->replaceMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/euler/andfix/AndFix;->initFields(Ljava/lang/Class;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method private static initFields(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/alipay/euler/andfix/AndFix;->setFieldFlag(Ljava/lang/reflect/Field;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method

.method public static initTargetClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/euler/andfix/AndFix;->initFields(Ljava/lang/Class;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static native replaceMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
.end method

.method private static native setFieldFlag(Ljava/lang/reflect/Field;)V
.end method

.method public static setup()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "java.vm.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    :goto_12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1, v2}, Lcom/alipay/euler/andfix/AndFix;->setup(ZI)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_1b

    move-result v0

    :goto_18
    return v0

    :cond_19
    move v1, v0

    goto :goto_12

    :catch_1b
    move-exception v1

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_18
.end method

.method private static native setup(ZI)Z
.end method
