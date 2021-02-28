.class final Lcom/mob/tools/utils/ReflectHelper$1;
.super Ljava/lang/Object;
.source "ReflectHelper.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/ReflectHelper;->createProxy(Ljava/util/HashMap;[Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$proxyHandler:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .registers 2

    .prologue
    .line 831
    iput-object p1, p0, Lcom/mob/tools/utils/ReflectHelper$1;->val$proxyHandler:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 833
    iget-object v1, p0, Lcom/mob/tools/utils/ReflectHelper$1;->val$proxyHandler:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;

    .line 834
    .local v0, "function":Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;
    if-eqz v0, :cond_13

    .line 835
    invoke-interface {v0, p3}, Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 837
    :cond_13
    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-direct {v1}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v1
.end method
