.class public Lcom/lohanry/android/framework/reflect/util/ClassLoadFrameworkServiceImp;
.super Ljava/lang/Object;
.source "ClassLoadFrameworkServiceImp.java"

# interfaces
.implements Lcom/lohanry/android/framework/service/FrameworkService;


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-class v0, Lcom/lohanry/android/framework/reflect/util/ClassLoadFrameworkServiceImp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lohanry/android/framework/reflect/util/ClassLoadFrameworkServiceImp;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public loadClassAndInit(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 27
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 28
    :cond_8
    iget-object v2, p0, Lcom/lohanry/android/framework/reflect/util/ClassLoadFrameworkServiceImp;->TAG:Ljava/lang/String;

    const-string v3, "ClassName is empty"

    invoke-static {v2, v3}, Lcom/lohanry/android/framework/tools/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_f
    :try_start_f
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 32
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {p0, v0}, Lcom/lohanry/android/framework/reflect/util/ClassLoadFrameworkServiceImp;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_16} :catch_18

    move-result-object v2

    .line 35
    .end local v0    # "c":Ljava/lang/Class;
    :goto_17
    return-object v2

    .line 33
    :catch_18
    move-exception v1

    .line 34
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    iget-object v2, p0, Lcom/lohanry/android/framework/reflect/util/ClassLoadFrameworkServiceImp;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t Find Class"

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/lohanry/android/framework/tools/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_3} :catch_b

    move-result-object v1

    .line 47
    :goto_4
    return-object v1

    .line 42
    :catch_5
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 47
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :goto_9
    const/4 v1, 0x0

    goto :goto_4

    .line 44
    :catch_b
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_9
.end method

.method public varargs newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    array-length v4, p2

    new-array v0, v4, [Ljava/lang/Class;

    .line 54
    .local v0, "classes":[Ljava/lang/Class;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    array-length v4, p2

    if-ge v3, v4, :cond_13

    .line 55
    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v0, v3

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 58
    :cond_13
    :try_start_13
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 59
    .local v1, "cons":Ljava/lang/reflect/Constructor;
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/InstantiationException; {:try_start_13 .. :try_end_1a} :catch_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_1a} :catch_22
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_13 .. :try_end_1a} :catch_27
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_1a} :catch_2c

    move-result-object v4

    .line 69
    .end local v1    # "cons":Ljava/lang/reflect/Constructor;
    :goto_1b
    return-object v4

    .line 60
    :catch_1c
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 69
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :goto_20
    const/4 v4, 0x0

    goto :goto_1b

    .line 62
    :catch_22
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_20

    .line 64
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_27
    move-exception v2

    .line 65
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_20

    .line 66
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2c
    move-exception v2

    .line 67
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_20
.end method
