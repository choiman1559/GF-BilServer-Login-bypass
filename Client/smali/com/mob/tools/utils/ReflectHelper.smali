.class public Lcom/mob/tools/utils/ReflectHelper;
.super Ljava/lang/Object;
.source "ReflectHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;
    }
.end annotation


# static fields
.field private static cachedConstr:Lcom/mob/tools/gui/CachePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/gui/CachePool",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static cachedMethod:Lcom/mob/tools/gui/CachePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/gui/CachePool",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static classMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static nameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static packageSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 27
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/mob/tools/utils/ReflectHelper;->packageSet:Ljava/util/HashSet;

    .line 28
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->packageSet:Ljava/util/HashSet;

    const-string v2, "java.lang"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->packageSet:Ljava/util/HashSet;

    const-string v2, "java.io"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->packageSet:Ljava/util/HashSet;

    const-string v2, "java.nio"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->packageSet:Ljava/util/HashSet;

    const-string v2, "java.net"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->packageSet:Ljava/util/HashSet;

    const-string v2, "java.util"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->packageSet:Ljava/util/HashSet;

    const-string v2, "com.mob.tools"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->packageSet:Ljava/util/HashSet;

    const-string v2, "com.mob.tools.gui"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->packageSet:Ljava/util/HashSet;

    const-string v2, "com.mob.tools.log"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->packageSet:Ljava/util/HashSet;

    const-string v2, "com.mob.tools.network"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->packageSet:Ljava/util/HashSet;

    const-string v2, "com.mob.tools.utils"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    .line 40
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    const-string v2, "double"

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    const-string v2, "float"

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    const-string v2, "long"

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    const-string v2, "int"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    const-string v2, "short"

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    const-string v2, "byte"

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    const-string v2, "char"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    const-string v2, "boolean"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    const-string v2, "Object"

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    const-string v2, "String"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    const-string v2, "Thread"

    const-class v3, Ljava/lang/Thread;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    const-string v2, "Runnable"

    const-class v3, Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    const-string v2, "System"

    const-class v3, Ljava/lang/System;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    const-string v2, "double"

    const-class v3, Ljava/lang/Double;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    const-string v2, "Float"

    const-class v3, Ljava/lang/Float;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    const-string v2, "Long"

    const-class v3, Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    const-string v2, "Integer"

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    const-string v2, "Short"

    const-class v3, Ljava/lang/Short;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    const-string v2, "Byte"

    const-class v3, Ljava/lang/Byte;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    const-string v2, "Character"

    const-class v3, Ljava/lang/Character;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    const-string v2, "Boolean"

    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mob/tools/utils/ReflectHelper;->nameMap:Ljava/util/HashMap;

    .line 63
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    :goto_122
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    .restart local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    sget-object v2, Lcom/mob/tools/utils/ReflectHelper;->nameMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_122

    .line 67
    :cond_13c
    new-instance v1, Lcom/mob/tools/gui/CachePool;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lcom/mob/tools/gui/CachePool;-><init>(I)V

    sput-object v1, Lcom/mob/tools/utils/ReflectHelper;->cachedMethod:Lcom/mob/tools/gui/CachePool;

    .line 68
    new-instance v1, Lcom/mob/tools/gui/CachePool;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/mob/tools/gui/CachePool;-><init>(I)V

    sput-object v1, Lcom/mob/tools/utils/ReflectHelper;->cachedConstr:Lcom/mob/tools/gui/CachePool;

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs createProxy(Ljava/util/HashMap;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;",
            ">;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 826
    .local p0, "proxyHandler":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;>;"
    .local p1, "proxyInterfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, p1

    if-nez v2, :cond_5

    .line 827
    const/4 v2, 0x0

    .line 840
    :goto_4
    return-object v2

    .line 830
    :cond_5
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 831
    .local v1, "loader":Ljava/lang/ClassLoader;
    new-instance v0, Lcom/mob/tools/utils/ReflectHelper$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/utils/ReflectHelper$1;-><init>(Ljava/util/HashMap;)V

    .line 840
    .local v0, "handler":Ljava/lang/reflect/InvocationHandler;
    invoke-static {v1, p1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_4
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 780
    invoke-static {p0}, Lcom/mob/tools/utils/ReflectHelper;->getImportedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 781
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_11

    .line 783
    :try_start_6
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 784
    if-eqz v0, :cond_11

    .line 785
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_11} :catch_12

    .line 789
    :cond_11
    :goto_11
    return-object v0

    .line 787
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method private static declared-synchronized getImportedClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 7
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 110
    const-class v3, Lcom/mob/tools/utils/ReflectHelper;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 111
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_43

    .line 112
    sget-object v2, Lcom/mob/tools/utils/ReflectHelper;->packageSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_45

    .line 114
    .local v1, "packageName":Ljava/lang/String;
    :try_start_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_39} :catch_48
    .catchall {:try_start_1f .. :try_end_39} :catchall_45

    .line 116
    :goto_39
    :try_start_39
    sget-object v4, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast v0, Ljava/lang/Class;
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_45

    .line 117
    .restart local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_13

    .line 122
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_43
    monitor-exit v3

    return-object v0

    .line 110
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_45
    move-exception v2

    monitor-exit v3

    throw v2

    .line 115
    .restart local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "packageName":Ljava/lang/String;
    :catch_48
    move-exception v4

    goto :goto_39
.end method

.method public static getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 554
    :try_start_0
    invoke-static {p0, p1}, Lcom/mob/tools/utils/ReflectHelper;->onGetInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v2

    return-object v2

    .line 555
    :catch_5
    move-exception v1

    .line 556
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/NoSuchFieldException;

    if-eqz v2, :cond_b

    .line 557
    throw v1

    .line 559
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "className: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fieldName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 798
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->nameMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 799
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_2b

    .line 800
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 801
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 802
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->nameMap:Ljava/util/HashMap;

    sget-object v2, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    :cond_21
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->nameMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    :cond_2b
    return-object v0
.end method

.method public static getStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 469
    :try_start_0
    invoke-static {p0, p1}, Lcom/mob/tools/utils/ReflectHelper;->onGetStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v2

    return-object v2

    .line 470
    :catch_5
    move-exception v1

    .line 471
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/NoSuchFieldException;

    if-eqz v2, :cond_b

    .line 472
    throw v1

    .line 474
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "className: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fieldName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getTypes([Ljava/lang/Object;)[Ljava/lang/Class;
    .registers 4
    .param p0, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 126
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Class;

    .line 127
    .local v1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_18

    .line 128
    aget-object v2, p0, v0

    if-nez v2, :cond_11

    const/4 v2, 0x0

    :goto_c
    aput-object v2, v1, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 128
    :cond_11
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_c

    .line 130
    :cond_18
    return-object v1
.end method

.method public static importClass(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized importClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 91
    const-class v2, Lcom/mob/tools/utils/ReflectHelper;

    monitor-enter v2

    :try_start_3
    const-string v1, ".*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 92
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->packageSet:Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    const-string p0, "*"
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_47

    .line 106
    .end local p0    # "name":Ljava/lang/String;
    :goto_1d
    monitor-exit v2

    return-object p0

    .line 96
    .restart local p0    # "name":Ljava/lang/String;
    :cond_1f
    :try_start_1f
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 97
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_29

    .line 98
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 101
    :cond_29
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 102
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->nameMap:Ljava/util/HashMap;

    sget-object v3, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_3c
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->classMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->nameMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_1f .. :try_end_46} :catchall_47

    goto :goto_1d

    .line 91
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_47
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static varargs invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 450
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v2, p0, p1, p2}, Lcom/mob/tools/utils/ReflectHelper;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v2

    return-object v2

    .line 451
    :catch_6
    move-exception v1

    .line 452
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/NoSuchMethodException;

    if-eqz v2, :cond_c

    .line 453
    throw v1

    .line 455
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "className: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", methodName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static varargs invokeMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 37
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 339
    if-nez p1, :cond_83

    .line 340
    invoke-static/range {p0 .. p0}, Lcom/mob/tools/utils/ReflectHelper;->getImportedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 344
    .local v8, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_6
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "#"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "#"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 345
    .local v19, "mthSign":Ljava/lang/String;
    sget-object v28, Lcom/mob/tools/utils/ReflectHelper;->cachedMethod:Lcom/mob/tools/gui/CachePool;

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/CachePool;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/reflect/Method;

    .line 346
    .local v18, "mth":Ljava/lang/reflect/Method;
    invoke-static/range {p3 .. p3}, Lcom/mob/tools/utils/ReflectHelper;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v27

    .line 347
    .local v27, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v18, :cond_9c

    .line 348
    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v14

    .line 349
    .local v14, "isReqStatic":Z
    if-nez p1, :cond_89

    move/from16 v25, v14

    .line 350
    .local v25, "reqModifier":Z
    :goto_52
    if-eqz v25, :cond_9c

    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->matchParams([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v28

    if-eqz v28, :cond_9c

    .line 351
    const/16 v28, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 352
    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v28

    sget-object v29, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_91

    .line 353
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const/16 v28, 0x0

    .line 432
    .end local v14    # "isReqStatic":Z
    .end local v25    # "reqModifier":Z
    :goto_82
    return-object v28

    .line 342
    .end local v8    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "mth":Ljava/lang/reflect/Method;
    .end local v19    # "mthSign":Ljava/lang/String;
    .end local v27    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_83
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .restart local v8    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_6

    .line 349
    .restart local v14    # "isReqStatic":Z
    .restart local v18    # "mth":Ljava/lang/reflect/Method;
    .restart local v19    # "mthSign":Ljava/lang/String;
    .restart local v27    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_89
    if-nez v14, :cond_8e

    const/16 v25, 0x1

    goto :goto_52

    :cond_8e
    const/16 v25, 0x0

    goto :goto_52

    .line 356
    .restart local v25    # "reqModifier":Z
    :cond_91
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    goto :goto_82

    .line 361
    .end local v14    # "isReqStatic":Z
    .end local v25    # "reqModifier":Z
    :cond_9c
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v9, "clzs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    :goto_a1
    if-eqz v8, :cond_ab

    .line 363
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-virtual {v8}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    goto :goto_a1

    .line 367
    :cond_ab
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v22, "overloads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v24, "paramsTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Class<*>;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_b9
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_17d

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 370
    .local v7, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v20

    .line 371
    .local v20, "mths":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    const/16 v28, 0x0

    :goto_d0
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_b9

    aget-object v16, v20, v28

    .line 372
    .local v16, "m":Ljava/lang/reflect/Method;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v15

    .line 373
    .local v15, "isStatic":Z
    if-nez p1, :cond_12f

    move/from16 v17, v15

    .line 374
    .local v17, "modifier":Z
    :goto_e4
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_179

    if-eqz v17, :cond_179

    .line 375
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v23

    .line 376
    .local v23, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->matchParams([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v31

    if-eqz v31, :cond_143

    .line 377
    sget-object v28, Lcom/mob/tools/utils/ReflectHelper;->cachedMethod:Lcom/mob/tools/gui/CachePool;

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/gui/CachePool;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 378
    const/16 v28, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 379
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v28

    sget-object v29, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_137

    .line 380
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const/16 v28, 0x0

    goto/16 :goto_82

    .line 373
    .end local v17    # "modifier":Z
    .end local v23    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_12f
    if-nez v15, :cond_134

    const/16 v17, 0x1

    goto :goto_e4

    :cond_134
    const/16 v17, 0x0

    goto :goto_e4

    .line 383
    .restart local v17    # "modifier":Z
    .restart local v23    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_137
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    goto/16 :goto_82

    .line 385
    :cond_143
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v31, v0

    if-lez v31, :cond_179

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    aget-object v31, v23, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->isArray()Z

    move-result v31

    if-eqz v31, :cond_179

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_179

    .line 387
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    .end local v23    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_179
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_d0

    .line 394
    .end local v7    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "isStatic":Z
    .end local v16    # "m":Ljava/lang/reflect/Method;
    .end local v17    # "modifier":Z
    .end local v20    # "mths":[Ljava/lang/reflect/Method;
    :cond_17d
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_17e
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v12, v0, :cond_2be

    .line 395
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/Class;

    .line 396
    .restart local v23    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    aget-object v28, v23, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v10

    .line 397
    .local v10, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->tryMatchParams([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v28

    if-eqz v28, :cond_20d

    .line 398
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 399
    .local v21, "newArgs":[Ljava/lang/Object;
    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v28

    move-object/from16 v2, v21

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-static {v10, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v29

    aput-object v29, v21, v28

    .line 401
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/reflect/Method;

    .line 402
    .restart local v16    # "m":Ljava/lang/reflect/Method;
    const/16 v28, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 403
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v28

    sget-object v29, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_201

    .line 404
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const/16 v28, 0x0

    goto/16 :goto_82

    .line 407
    :cond_201
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    goto/16 :goto_82

    .line 410
    .end local v16    # "m":Ljava/lang/reflect/Method;
    .end local v21    # "newArgs":[Ljava/lang/Object;
    :cond_20d
    const/4 v13, 0x1

    .line 411
    .local v13, "isElement":Z
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v26, v28, -0x1

    .local v26, "t":I
    :goto_215
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_22b

    .line 412
    aget-object v28, v27, v26

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_255

    .line 413
    const/4 v13, 0x0

    .line 417
    :cond_22b
    if-eqz v13, :cond_2ba

    .line 418
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v29, v0

    sub-int v28, v28, v29

    add-int/lit8 v6, v28, 0x1

    .line 419
    .local v6, "arrLen":I
    invoke-static {v10, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    .line 420
    .local v5, "arr":Ljava/lang/Object;
    const/4 v11, 0x0

    .local v11, "e":I
    :goto_240
    if-ge v11, v6, :cond_258

    .line 421
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    add-int v28, v28, v11

    aget-object v28, p3, v28

    move-object/from16 v0, v28

    invoke-static {v5, v11, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 420
    add-int/lit8 v11, v11, 0x1

    goto :goto_240

    .line 411
    .end local v5    # "arr":Ljava/lang/Object;
    .end local v6    # "arrLen":I
    .end local v11    # "e":I
    :cond_255
    add-int/lit8 v26, v26, 0x1

    goto :goto_215

    .line 423
    .restart local v5    # "arr":Ljava/lang/Object;
    .restart local v6    # "arrLen":I
    .restart local v11    # "e":I
    :cond_258
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 424
    .restart local v21    # "newArgs":[Ljava/lang/Object;
    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v28

    move-object/from16 v2, v21

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    aput-object v5, v21, v28

    .line 426
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/reflect/Method;

    .line 427
    .restart local v16    # "m":Ljava/lang/reflect/Method;
    const/16 v28, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 428
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v28

    sget-object v29, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_2ae

    .line 429
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const/16 v28, 0x0

    goto/16 :goto_82

    .line 432
    :cond_2ae
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    goto/16 :goto_82

    .line 394
    .end local v5    # "arr":Ljava/lang/Object;
    .end local v6    # "arrLen":I
    .end local v11    # "e":I
    .end local v16    # "m":Ljava/lang/reflect/Method;
    .end local v21    # "newArgs":[Ljava/lang/Object;
    :cond_2ba
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_17e

    .line 438
    .end local v10    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "isElement":Z
    .end local v23    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v26    # "t":I
    :cond_2be
    new-instance v28, Ljava/lang/NoSuchMethodException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "className: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", methodName: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v28
.end method

.method public static varargs invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 324
    const/4 v2, 0x0

    :try_start_1
    invoke-static {p0, v2, p1, p2}, Lcom/mob/tools/utils/ReflectHelper;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v2

    return-object v2

    .line 325
    :catch_6
    move-exception v1

    .line 326
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/NoSuchMethodException;

    if-eqz v2, :cond_c

    .line 327
    throw v1

    .line 329
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "className: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", methodName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static matchParams([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "mTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_26

    .line 150
    const/4 v1, 0x1

    .line 151
    .local v1, "match":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v2, p1

    if-ge v0, v2, :cond_22

    .line 152
    aget-object v2, p1, v0

    if-eqz v2, :cond_23

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->primitiveEquals(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_23

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 154
    const/4 v1, 0x0

    .line 160
    .end local v0    # "i":I
    .end local v1    # "match":Z
    :cond_22
    :goto_22
    return v1

    .line 151
    .restart local v0    # "i":I
    .restart local v1    # "match":Z
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 160
    .end local v0    # "i":I
    .end local v1    # "match":Z
    :cond_26
    const/4 v1, 0x0

    goto :goto_22
.end method

.method private static varargs newArray(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 265
    move-object v5, p0

    .line 266
    .local v5, "tmp":Ljava/lang/String;
    const/4 v0, 0x0

    .line 267
    .local v0, "dimension":I
    :goto_2
    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 268
    add-int/lit8 v0, v0, 0x1

    .line 269
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 272
    :cond_12
    const/4 v3, 0x0

    .line 273
    .local v3, "lens":[I
    array-length v6, p1

    if-ne v0, v6, :cond_2c

    .line 274
    new-array v3, v0, [I

    .line 275
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v0, :cond_2c

    .line 277
    :try_start_1b
    aget-object v6, p1, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v3, v2
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_27} :catch_2a

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 278
    :catch_2a
    move-exception v4

    .line 279
    .local v4, "t":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 285
    .end local v2    # "i":I
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_2c
    if-eqz v3, :cond_92

    .line 286
    const/4 v1, 0x0

    .line 287
    .local v1, "eleClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "B"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 288
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 307
    :goto_39
    if-eqz v1, :cond_92

    .line 308
    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 289
    :cond_40
    const-string v6, "S"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 290
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_39

    .line 291
    :cond_4b
    const-string v6, "I"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 292
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_39

    .line 293
    :cond_56
    const-string v6, "J"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 294
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_39

    .line 295
    :cond_61
    const-string v6, "F"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 296
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_39

    .line 297
    :cond_6c
    const-string v6, "D"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 298
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_39

    .line 299
    :cond_77
    const-string v6, "Z"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 300
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_39

    .line 301
    :cond_82
    const-string v6, "C"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 302
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_39

    .line 304
    :cond_8d
    invoke-static {v5}, Lcom/mob/tools/utils/ReflectHelper;->getImportedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_39

    .line 312
    .end local v1    # "eleClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_92
    new-instance v6, Ljava/lang/NoSuchMethodException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "className: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", methodName: <init>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static varargs newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 186
    :try_start_0
    invoke-static {p0, p1}, Lcom/mob/tools/utils/ReflectHelper;->onNewInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v2

    return-object v2

    .line 187
    :catch_5
    move-exception v1

    .line 188
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/NoSuchMethodException;

    if-eqz v2, :cond_b

    .line 189
    throw v1

    .line 191
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "className: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", methodName: <init>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static onGetElement(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 593
    const-string v2, "length"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 594
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 602
    :goto_10
    return-object v2

    .line 595
    :cond_11
    const-string v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 596
    const/4 v0, -0x1

    .line 598
    .local v0, "index":I
    const/4 v2, 0x1

    :try_start_23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, "strIndex":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_30} :catch_60

    move-result v0

    .line 601
    .end local v1    # "strIndex":Ljava/lang/String;
    :goto_31
    const/4 v2, -0x1

    if-eq v0, v2, :cond_39

    .line 602
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_10

    .line 606
    .end local v0    # "index":I
    :cond_39
    new-instance v2, Ljava/lang/NoSuchFieldException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "className: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fieldName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 600
    .restart local v0    # "index":I
    :catch_60
    move-exception v2

    goto :goto_31
.end method

.method private static onGetInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 567
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 568
    invoke-static {p0, p1}, Lcom/mob/tools/utils/ReflectHelper;->onGetElement(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 585
    :goto_e
    return-object v4

    .line 571
    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .local v2, "clzs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 573
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_18
    if-eqz v1, :cond_22

    .line 574
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_18

    .line 578
    :cond_22
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 579
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 581
    .local v3, "fld":Ljava/lang/reflect/Field;
    :try_start_33
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_36} :catch_73

    move-result-object v3

    .line 583
    :goto_37
    if-eqz v3, :cond_26

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_26

    .line 584
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 585
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_e

    .line 589
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "fld":Ljava/lang/reflect/Field;
    :cond_4c
    new-instance v4, Ljava/lang/NoSuchFieldException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "className: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fieldName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 582
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "fld":Ljava/lang/reflect/Field;
    :catch_73
    move-exception v5

    goto :goto_37
.end method

.method private static onGetStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 482
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .local v2, "clzs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    invoke-static {p0}, Lcom/mob/tools/utils/ReflectHelper;->getImportedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 484
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_9
    if-eqz v1, :cond_13

    .line 485
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_9

    .line 489
    :cond_13
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 490
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 492
    .local v3, "fld":Ljava/lang/reflect/Field;
    :try_start_24
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_61

    move-result-object v3

    .line 494
    :goto_28
    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 495
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 496
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 500
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "fld":Ljava/lang/reflect/Field;
    :cond_3e
    new-instance v4, Ljava/lang/NoSuchFieldException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "className: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fieldName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 493
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "fld":Ljava/lang/reflect/Field;
    :catch_61
    move-exception v5

    goto :goto_28
.end method

.method private static varargs onNewInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 27
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 198
    const-string v21, "["

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 199
    invoke-static/range {p0 .. p1}, Lcom/mob/tools/utils/ReflectHelper;->newArray(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 256
    :goto_10
    return-object v21

    .line 202
    :cond_11
    invoke-static/range {p0 .. p0}, Lcom/mob/tools/utils/ReflectHelper;->getImportedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 203
    .local v7, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "#"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 204
    .local v14, "mthSign":Ljava/lang/String;
    sget-object v21, Lcom/mob/tools/utils/ReflectHelper;->cachedConstr:Lcom/mob/tools/gui/CachePool;

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/mob/tools/gui/CachePool;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Constructor;

    .line 205
    .local v9, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/utils/ReflectHelper;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v20

    .line 206
    .local v20, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v9, :cond_61

    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->matchParams([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_61

    .line 207
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 208
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    goto :goto_10

    .line 211
    :cond_61
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 212
    .local v10, "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v16, "overloads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Constructor<*>;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v18, "paramsTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Class<*>;>;"
    array-length v0, v10

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_74
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_d7

    aget-object v6, v10, v21

    .line 215
    .local v6, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v17

    .line 216
    .local v17, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->matchParams([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_a0

    .line 217
    sget-object v21, Lcom/mob/tools/utils/ReflectHelper;->cachedConstr:Lcom/mob/tools/gui/CachePool;

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v6}, Lcom/mob/tools/gui/CachePool;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 218
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 219
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    goto/16 :goto_10

    .line 220
    :cond_a0
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    if-lez v23, :cond_d4

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    aget-object v23, v17, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->isArray()Z

    move-result v23

    if-eqz v23, :cond_d4

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_d4

    .line 222
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_d4
    add-int/lit8 v21, v21, 0x1

    goto :goto_74

    .line 227
    .end local v6    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v17    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_d7
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_d8
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_1d0

    .line 228
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/Class;

    .line 229
    .restart local v17    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v21, v17, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    .line 230
    .local v8, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->tryMatchParams([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_144

    .line 231
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    new-array v15, v0, [Ljava/lang/Object;

    .line 232
    .local v15, "newArgs":[Ljava/lang/Object;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v15, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v8, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v22

    aput-object v22, v15, v21

    .line 234
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Constructor;

    .line 235
    .restart local v6    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 236
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    goto/16 :goto_10

    .line 238
    .end local v6    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v15    # "newArgs":[Ljava/lang/Object;
    :cond_144
    const/4 v13, 0x1

    .line 239
    .local v13, "isElement":Z
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v19, v21, -0x1

    .local v19, "t":I
    :goto_14c
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_162

    .line 240
    aget-object v21, v20, v19

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_18c

    .line 241
    const/4 v13, 0x0

    .line 245
    :cond_162
    if-eqz v13, :cond_1cc

    .line 246
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    sub-int v21, v21, v22

    add-int/lit8 v5, v21, 0x1

    .line 247
    .local v5, "arrLen":I
    invoke-static {v8, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    .line 248
    .local v4, "arr":Ljava/lang/Object;
    const/4 v11, 0x0

    .local v11, "e":I
    :goto_177
    if-ge v11, v5, :cond_18f

    .line 249
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    add-int v21, v21, v11

    aget-object v21, p1, v21

    move-object/from16 v0, v21

    invoke-static {v4, v11, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 248
    add-int/lit8 v11, v11, 0x1

    goto :goto_177

    .line 239
    .end local v4    # "arr":Ljava/lang/Object;
    .end local v5    # "arrLen":I
    .end local v11    # "e":I
    :cond_18c
    add-int/lit8 v19, v19, 0x1

    goto :goto_14c

    .line 251
    .restart local v4    # "arr":Ljava/lang/Object;
    .restart local v5    # "arrLen":I
    .restart local v11    # "e":I
    :cond_18f
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    new-array v15, v0, [Ljava/lang/Object;

    .line 252
    .restart local v15    # "newArgs":[Ljava/lang/Object;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v15, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    aput-object v4, v15, v21

    .line 254
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Constructor;

    .line 255
    .restart local v6    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 256
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    goto/16 :goto_10

    .line 227
    .end local v4    # "arr":Ljava/lang/Object;
    .end local v5    # "arrLen":I
    .end local v6    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v11    # "e":I
    .end local v15    # "newArgs":[Ljava/lang/Object;
    :cond_1cc
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_d8

    .line 261
    .end local v8    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "isElement":Z
    .end local v17    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v19    # "t":I
    :cond_1d0
    new-instance v21, Ljava/lang/NoSuchMethodException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "className: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", methodName: <init>"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v21
.end method

.method private static onSetElement(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 15
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 661
    const-string v9, "["

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1e1

    const-string v9, "]"

    invoke-virtual {p1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1e1

    .line 662
    const/4 v3, -0x1

    .line 664
    .local v3, "index":I
    const/4 v9, 0x1

    :try_start_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 665
    .local v7, "strIndex":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_20} :catch_216

    move-result v3

    .line 667
    .end local v7    # "strIndex":Ljava/lang/String;
    :goto_21
    const/4 v9, -0x1

    if-eq v3, v9, :cond_1e1

    .line 668
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 669
    .local v5, "recClzName":Ljava/lang/String;
    :goto_2c
    const-string v9, "["

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 670
    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2c

    .line 672
    :cond_39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 674
    .local v8, "vClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "B"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 675
    const-class v9, Ljava/lang/Byte;

    if-ne v8, v9, :cond_1e1

    .line 676
    invoke-static {p0, v3, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 766
    :goto_4c
    return-void

    .line 679
    :cond_4d
    const-string v9, "S"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_72

    .line 680
    const/4 v6, 0x0

    .line 681
    .local v6, "sValue":Ljava/lang/Object;
    const-class v9, Ljava/lang/Short;

    if-ne v8, v9, :cond_61

    .line 682
    move-object v6, p2

    .line 686
    .end local v6    # "sValue":Ljava/lang/Object;
    :cond_5b
    :goto_5b
    if-eqz v6, :cond_1e1

    .line 687
    invoke-static {p0, v3, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_4c

    .line 683
    .restart local v6    # "sValue":Ljava/lang/Object;
    :cond_61
    const-class v9, Ljava/lang/Byte;

    if-ne v8, v9, :cond_5b

    move-object v9, p2

    .line 684
    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    int-to-short v9, v9

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    .local v6, "sValue":Ljava/lang/Short;
    goto :goto_5b

    .line 690
    .end local v6    # "sValue":Ljava/lang/Short;
    :cond_72
    const-string v9, "I"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a6

    .line 691
    const/4 v2, 0x0

    .line 692
    .local v2, "iValue":Ljava/lang/Object;
    const-class v9, Ljava/lang/Integer;

    if-ne v8, v9, :cond_86

    .line 693
    move-object v2, p2

    .line 699
    .end local v2    # "iValue":Ljava/lang/Object;
    :cond_80
    :goto_80
    if-eqz v2, :cond_1e1

    .line 700
    invoke-static {p0, v3, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_4c

    .line 694
    .restart local v2    # "iValue":Ljava/lang/Object;
    :cond_86
    const-class v9, Ljava/lang/Short;

    if-ne v8, v9, :cond_96

    move-object v9, p2

    .line 695
    check-cast v9, Ljava/lang/Short;

    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .local v2, "iValue":Ljava/lang/Integer;
    goto :goto_80

    .line 696
    .local v2, "iValue":Ljava/lang/Object;
    :cond_96
    const-class v9, Ljava/lang/Byte;

    if-ne v8, v9, :cond_80

    move-object v9, p2

    .line 697
    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .local v2, "iValue":Ljava/lang/Integer;
    goto :goto_80

    .line 703
    .end local v2    # "iValue":Ljava/lang/Integer;
    :cond_a6
    const-string v9, "J"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ed

    .line 704
    const/4 v4, 0x0

    .line 705
    .local v4, "jValue":Ljava/lang/Object;
    const-class v9, Ljava/lang/Long;

    if-ne v8, v9, :cond_ba

    .line 706
    move-object v4, p2

    .line 714
    .end local v4    # "jValue":Ljava/lang/Object;
    :cond_b4
    :goto_b4
    if-eqz v4, :cond_1e1

    .line 715
    invoke-static {p0, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_4c

    .line 707
    .restart local v4    # "jValue":Ljava/lang/Object;
    :cond_ba
    const-class v9, Ljava/lang/Integer;

    if-ne v8, v9, :cond_cb

    move-object v9, p2

    .line 708
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v10, v9

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .local v4, "jValue":Ljava/lang/Long;
    goto :goto_b4

    .line 709
    .local v4, "jValue":Ljava/lang/Object;
    :cond_cb
    const-class v9, Ljava/lang/Short;

    if-ne v8, v9, :cond_dc

    move-object v9, p2

    .line 710
    check-cast v9, Ljava/lang/Short;

    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    move-result v9

    int-to-long v10, v9

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .local v4, "jValue":Ljava/lang/Long;
    goto :goto_b4

    .line 711
    .local v4, "jValue":Ljava/lang/Object;
    :cond_dc
    const-class v9, Ljava/lang/Byte;

    if-ne v8, v9, :cond_b4

    move-object v9, p2

    .line 712
    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    int-to-long v10, v9

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .local v4, "jValue":Ljava/lang/Long;
    goto :goto_b4

    .line 718
    .end local v4    # "jValue":Ljava/lang/Long;
    :cond_ed
    const-string v9, "F"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_146

    .line 719
    const/4 v1, 0x0

    .line 720
    .local v1, "fValue":Ljava/lang/Object;
    const-class v9, Ljava/lang/Float;

    if-ne v8, v9, :cond_102

    .line 721
    move-object v1, p2

    .line 731
    .end local v1    # "fValue":Ljava/lang/Object;
    :cond_fb
    :goto_fb
    if-eqz v1, :cond_1e1

    .line 732
    invoke-static {p0, v3, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_4c

    .line 722
    .restart local v1    # "fValue":Ljava/lang/Object;
    :cond_102
    const-class v9, Ljava/lang/Long;

    if-ne v8, v9, :cond_113

    move-object v9, p2

    .line 723
    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-float v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .local v1, "fValue":Ljava/lang/Float;
    goto :goto_fb

    .line 724
    .local v1, "fValue":Ljava/lang/Object;
    :cond_113
    const-class v9, Ljava/lang/Integer;

    if-ne v8, v9, :cond_124

    move-object v9, p2

    .line 725
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .local v1, "fValue":Ljava/lang/Float;
    goto :goto_fb

    .line 726
    .local v1, "fValue":Ljava/lang/Object;
    :cond_124
    const-class v9, Ljava/lang/Short;

    if-ne v8, v9, :cond_135

    move-object v9, p2

    .line 727
    check-cast v9, Ljava/lang/Short;

    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    move-result v9

    int-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .local v1, "fValue":Ljava/lang/Float;
    goto :goto_fb

    .line 728
    .local v1, "fValue":Ljava/lang/Object;
    :cond_135
    const-class v9, Ljava/lang/Byte;

    if-ne v8, v9, :cond_fb

    move-object v9, p2

    .line 729
    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    int-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .local v1, "fValue":Ljava/lang/Float;
    goto :goto_fb

    .line 735
    .end local v1    # "fValue":Ljava/lang/Float;
    :cond_146
    const-string v9, "D"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b0

    .line 736
    const/4 v0, 0x0

    .line 737
    .local v0, "dValue":Ljava/lang/Object;
    const-class v9, Ljava/lang/Double;

    if-ne v8, v9, :cond_15b

    .line 738
    move-object v0, p2

    .line 750
    .end local v0    # "dValue":Ljava/lang/Object;
    :cond_154
    :goto_154
    if-eqz v0, :cond_1e1

    .line 751
    invoke-static {p0, v3, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_4c

    .line 739
    .restart local v0    # "dValue":Ljava/lang/Object;
    :cond_15b
    const-class v9, Ljava/lang/Float;

    if-ne v8, v9, :cond_16c

    move-object v9, p2

    .line 740
    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .local v0, "dValue":Ljava/lang/Double;
    goto :goto_154

    .line 741
    .local v0, "dValue":Ljava/lang/Object;
    :cond_16c
    const-class v9, Ljava/lang/Long;

    if-ne v8, v9, :cond_17d

    move-object v9, p2

    .line 742
    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .local v0, "dValue":Ljava/lang/Double;
    goto :goto_154

    .line 743
    .local v0, "dValue":Ljava/lang/Object;
    :cond_17d
    const-class v9, Ljava/lang/Integer;

    if-ne v8, v9, :cond_18e

    move-object v9, p2

    .line 744
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .local v0, "dValue":Ljava/lang/Double;
    goto :goto_154

    .line 745
    .local v0, "dValue":Ljava/lang/Object;
    :cond_18e
    const-class v9, Ljava/lang/Short;

    if-ne v8, v9, :cond_19f

    move-object v9, p2

    .line 746
    check-cast v9, Ljava/lang/Short;

    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    move-result v9

    int-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .local v0, "dValue":Ljava/lang/Double;
    goto :goto_154

    .line 747
    .local v0, "dValue":Ljava/lang/Object;
    :cond_19f
    const-class v9, Ljava/lang/Byte;

    if-ne v8, v9, :cond_154

    move-object v9, p2

    .line 748
    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    int-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .local v0, "dValue":Ljava/lang/Double;
    goto :goto_154

    .line 754
    .end local v0    # "dValue":Ljava/lang/Double;
    :cond_1b0
    const-string v9, "Z"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c1

    .line 755
    const-class v9, Ljava/lang/Boolean;

    if-ne v8, v9, :cond_1e1

    .line 756
    invoke-static {p0, v3, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_4c

    .line 759
    :cond_1c1
    const-string v9, "C"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d2

    .line 760
    const-class v9, Ljava/lang/Character;

    if-ne v8, v9, :cond_1e1

    .line 761
    invoke-static {p0, v3, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_4c

    .line 764
    :cond_1d2
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e1

    .line 765
    invoke-static {p0, v3, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_4c

    .line 771
    .end local v3    # "index":I
    .end local v5    # "recClzName":Ljava/lang/String;
    .end local v8    # "vClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1e1
    new-instance v9, Ljava/lang/NoSuchFieldException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "className: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", fieldName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 666
    .restart local v3    # "index":I
    :catch_216
    move-exception v9

    goto/16 :goto_21
.end method

.method private static onSetInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 633
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 634
    invoke-static {p0, p1, p2}, Lcom/mob/tools/utils/ReflectHelper;->onSetElement(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 653
    :goto_d
    return-void

    .line 638
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v2, "clzs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 640
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_17
    if-eqz v1, :cond_21

    .line 641
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_17

    .line 645
    :cond_21
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 646
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 648
    .local v3, "fld":Ljava/lang/reflect/Field;
    :try_start_32
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_7f

    move-result-object v3

    .line 650
    :goto_36
    if-eqz v3, :cond_25

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_25

    .line 651
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 652
    invoke-virtual {v3, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    .line 657
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "fld":Ljava/lang/reflect/Field;
    :cond_4a
    new-instance v4, Ljava/lang/NoSuchFieldException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "className: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fieldName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 649
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "fld":Ljava/lang/reflect/Field;
    :catch_7f
    move-exception v5

    goto :goto_36
.end method

.method private static onSetStaticField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 524
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v2, "clzs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    invoke-static {p0}, Lcom/mob/tools/utils/ReflectHelper;->getImportedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 526
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_9
    if-eqz v1, :cond_13

    .line 527
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_9

    .line 531
    :cond_13
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 532
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 534
    .local v3, "fld":Ljava/lang/reflect/Field;
    :try_start_24
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_6e

    move-result-object v3

    .line 536
    :goto_28
    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 537
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 538
    const/4 v4, 0x0

    invoke-virtual {v3, v4, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 539
    return-void

    .line 543
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "fld":Ljava/lang/reflect/Field;
    :cond_3d
    new-instance v4, Ljava/lang/NoSuchFieldException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "className: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fieldName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 535
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "fld":Ljava/lang/reflect/Field;
    :catch_6e
    move-exception v5

    goto :goto_28
.end method

.method private static primitiveEquals(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "primitive":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_98

    :cond_8
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_18

    const-class v0, Ljava/lang/Short;

    if-eq p1, v0, :cond_98

    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_98

    const-class v0, Ljava/lang/Character;

    if-eq p1, v0, :cond_98

    :cond_18
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_28

    const-class v0, Ljava/lang/Character;

    if-eq p1, v0, :cond_98

    const-class v0, Ljava/lang/Short;

    if-eq p1, v0, :cond_98

    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_98

    :cond_28
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3c

    const-class v0, Ljava/lang/Integer;

    if-eq p1, v0, :cond_98

    const-class v0, Ljava/lang/Short;

    if-eq p1, v0, :cond_98

    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_98

    const-class v0, Ljava/lang/Character;

    if-eq p1, v0, :cond_98

    :cond_3c
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_54

    const-class v0, Ljava/lang/Long;

    if-eq p1, v0, :cond_98

    const-class v0, Ljava/lang/Integer;

    if-eq p1, v0, :cond_98

    const-class v0, Ljava/lang/Short;

    if-eq p1, v0, :cond_98

    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_98

    const-class v0, Ljava/lang/Character;

    if-eq p1, v0, :cond_98

    :cond_54
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_70

    const-class v0, Ljava/lang/Float;

    if-eq p1, v0, :cond_98

    const-class v0, Ljava/lang/Long;

    if-eq p1, v0, :cond_98

    const-class v0, Ljava/lang/Integer;

    if-eq p1, v0, :cond_98

    const-class v0, Ljava/lang/Short;

    if-eq p1, v0, :cond_98

    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_98

    const-class v0, Ljava/lang/Character;

    if-eq p1, v0, :cond_98

    :cond_70
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_90

    const-class v0, Ljava/lang/Double;

    if-eq p1, v0, :cond_98

    const-class v0, Ljava/lang/Float;

    if-eq p1, v0, :cond_98

    const-class v0, Ljava/lang/Long;

    if-eq p1, v0, :cond_98

    const-class v0, Ljava/lang/Integer;

    if-eq p1, v0, :cond_98

    const-class v0, Ljava/lang/Short;

    if-eq p1, v0, :cond_98

    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_98

    const-class v0, Ljava/lang/Character;

    if-eq p1, v0, :cond_98

    :cond_90
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_9a

    const-class v0, Ljava/lang/Boolean;

    if-ne p1, v0, :cond_9a

    :cond_98
    const/4 v0, 0x1

    :goto_99
    return v0

    :cond_9a
    const/4 v0, 0x0

    goto :goto_99
.end method

.method public static setInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 619
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/mob/tools/utils/ReflectHelper;->onSetInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 629
    return-void

    .line 620
    :catch_4
    move-exception v1

    .line 621
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/NoSuchFieldException;

    if-eqz v2, :cond_a

    .line 622
    throw v1

    .line 625
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "className: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fieldName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static setStaticField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 512
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/mob/tools/utils/ReflectHelper;->onSetStaticField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 521
    return-void

    .line 513
    :catch_4
    move-exception v1

    .line 514
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/NoSuchFieldException;

    if-eqz v2, :cond_a

    .line 515
    throw v1

    .line 517
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "className: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fieldName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static tryMatchParams([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "mTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 164
    array-length v4, p0

    array-length v5, p1

    sub-int/2addr v4, v5

    if-ne v4, v2, :cond_38

    .line 165
    const/4 v1, 0x1

    .line 166
    .local v1, "match":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    array-length v4, p1

    if-ge v0, v4, :cond_25

    .line 167
    aget-object v4, p1, v0

    if-eqz v4, :cond_33

    aget-object v4, p0, v0

    aget-object v5, p1, v0

    invoke-static {v4, v5}, Lcom/mob/tools/utils/ReflectHelper;->primitiveEquals(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_33

    aget-object v4, p0, v0

    aget-object v5, p1, v0

    .line 168
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 169
    const/4 v1, 0x0

    .line 173
    :cond_25
    if-eqz v1, :cond_36

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 175
    .end local v0    # "i":I
    .end local v1    # "match":Z
    :goto_32
    return v2

    .line 166
    .restart local v0    # "i":I
    .restart local v1    # "match":Z
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_36
    move v2, v3

    .line 173
    goto :goto_32

    .end local v0    # "i":I
    .end local v1    # "match":Z
    :cond_38
    move v2, v3

    .line 175
    goto :goto_32
.end method
