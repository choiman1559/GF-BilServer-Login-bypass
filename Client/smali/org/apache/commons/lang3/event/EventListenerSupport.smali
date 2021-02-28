.class public Lorg/apache/commons/lang3/event/EventListenerSupport;
.super Ljava/lang/Object;
.source "EventListenerSupport.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x31ddd8615c1ecd20L


# instance fields
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private transient prototypeArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[T",
            "L;"
        }
    .end annotation
.end field

.field private transient proxy:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 154
    .local p0, "this":Lorg/apache/commons/lang3/event/EventListenerSupport;, "Lorg/apache/commons/lang3/event/EventListenerSupport<TL;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->listeners:Ljava/util/List;

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<T",
            "L;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lorg/apache/commons/lang3/event/EventListenerSupport;, "Lorg/apache/commons/lang3/event/EventListenerSupport<TL;>;"
    .local p1, "listenerInterface":Ljava/lang/Class;, "Ljava/lang/Class<TL;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/event/EventListenerSupport;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .registers 8
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<T",
            "L;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/lang3/event/EventListenerSupport;, "Lorg/apache/commons/lang3/event/EventListenerSupport<TL;>;"
    .local p1, "listenerInterface":Ljava/lang/Class;, "Ljava/lang/Class<TL;>;"
    const/4 v4, 0x0

    .line 142
    invoke-direct {p0}, Lorg/apache/commons/lang3/event/EventListenerSupport;-><init>()V

    .line 143
    const-string v0, "Listener interface cannot be null."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v0, "ClassLoader cannot be null."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    const-string v1, "Class {0} is not an interface"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 146
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 145
    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/event/EventListenerSupport;->initializeTransientFields(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 148
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/lang3/event/EventListenerSupport;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/lang3/event/EventListenerSupport;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public static create(Ljava/lang/Class;)Lorg/apache/commons/lang3/event/EventListenerSupport;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/apache/commons/lang3/event/EventListenerSupport",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "listenerInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/apache/commons/lang3/event/EventListenerSupport;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/event/EventListenerSupport;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private createProxy(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .registers 5
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<T",
            "L;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lorg/apache/commons/lang3/event/EventListenerSupport;, "Lorg/apache/commons/lang3/event/EventListenerSupport<TL;>;"
    .local p1, "listenerInterface":Ljava/lang/Class;, "Ljava/lang/Class<TL;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 303
    invoke-virtual {p0}, Lorg/apache/commons/lang3/event/EventListenerSupport;->createInvocationHandler()Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    .line 302
    invoke-static {p2, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->proxy:Ljava/lang/Object;

    .line 304
    return-void
.end method

.method private initializeTransientFields(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .registers 5
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<T",
            "L;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Lorg/apache/commons/lang3/event/EventListenerSupport;, "Lorg/apache/commons/lang3/event/EventListenerSupport<TL;>;"
    .local p1, "listenerInterface":Ljava/lang/Class;, "Ljava/lang/Class<TL;>;"
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 292
    .local v0, "array":[Ljava/lang/Object;, "[TL;"
    iput-object v0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->prototypeArray:[Ljava/lang/Object;

    .line 293
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/event/EventListenerSupport;->createProxy(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 294
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "objectInputStream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lorg/apache/commons/lang3/event/EventListenerSupport;, "Lorg/apache/commons/lang3/event/EventListenerSupport<TL;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 274
    .local v1, "srcListeners":[Ljava/lang/Object;, "[TL;"
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>([Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->listeners:Ljava/util/List;

    .line 278
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 280
    .local v0, "listenerInterface":Ljava/lang/Class;, "Ljava/lang/Class<TL;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/lang3/event/EventListenerSupport;->initializeTransientFields(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 281
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 8
    .param p1, "objectOutputStream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lorg/apache/commons/lang3/event/EventListenerSupport;, "Lorg/apache/commons/lang3/event/EventListenerSupport<TL;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v2, "serializableListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TL;>;"
    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v3, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 247
    .local v3, "testObjectOutputStream":Ljava/io/ObjectOutputStream;
    iget-object v4, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 249
    .local v1, "listener":Ljava/lang/Object;, "TL;"
    :try_start_1f
    invoke-virtual {v3, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 250
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_25} :catch_26

    goto :goto_15

    .line 251
    :catch_26
    move-exception v0

    .line 253
    .local v0, "exception":Ljava/io/IOException;
    new-instance v3, Ljava/io/ObjectOutputStream;

    .end local v3    # "testObjectOutputStream":Ljava/io/ObjectOutputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v3, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .restart local v3    # "testObjectOutputStream":Ljava/io/ObjectOutputStream;
    goto :goto_15

    .line 260
    .end local v0    # "exception":Ljava/io/IOException;
    .end local v1    # "listener":Ljava/lang/Object;, "TL;"
    :cond_32
    iget-object v4, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->prototypeArray:[Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 261
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lorg/apache/commons/lang3/event/EventListenerSupport;, "Lorg/apache/commons/lang3/event/EventListenerSupport<TL;>;"
    .local p1, "listener":Ljava/lang/Object;, "TL;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/event/EventListenerSupport;->addListener(Ljava/lang/Object;Z)V

    .line 183
    return-void
.end method

.method public addListener(Ljava/lang/Object;Z)V
    .registers 5
    .param p2, "allowDuplicate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lorg/apache/commons/lang3/event/EventListenerSupport;, "Lorg/apache/commons/lang3/event/EventListenerSupport<TL;>;"
    .local p1, "listener":Ljava/lang/Object;, "TL;"
    const-string v0, "Listener object cannot be null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    if-eqz p2, :cond_10

    .line 199
    iget-object v0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_f
    :goto_f
    return-void

    .line 200
    :cond_10
    iget-object v0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 201
    iget-object v0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method protected createInvocationHandler()Ljava/lang/reflect/InvocationHandler;
    .registers 2

    .prologue
    .line 312
    .local p0, "this":Lorg/apache/commons/lang3/event/EventListenerSupport;, "Lorg/apache/commons/lang3/event/EventListenerSupport<TL;>;"
    new-instance v0, Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;-><init>(Lorg/apache/commons/lang3/event/EventListenerSupport;)V

    return-object v0
.end method

.method public fire()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lorg/apache/commons/lang3/event/EventListenerSupport;, "Lorg/apache/commons/lang3/event/EventListenerSupport<TL;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->proxy:Ljava/lang/Object;

    return-object v0
.end method

.method getListenerCount()I
    .registers 2

    .prologue
    .line 211
    .local p0, "this":Lorg/apache/commons/lang3/event/EventListenerSupport;, "Lorg/apache/commons/lang3/event/EventListenerSupport<TL;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getListeners()[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[T",
            "L;"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, "this":Lorg/apache/commons/lang3/event/EventListenerSupport;, "Lorg/apache/commons/lang3/event/EventListenerSupport<TL;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->listeners:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->prototypeArray:[Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lorg/apache/commons/lang3/event/EventListenerSupport;, "Lorg/apache/commons/lang3/event/EventListenerSupport<TL;>;"
    .local p1, "listener":Ljava/lang/Object;, "TL;"
    const-string v0, "Listener object cannot be null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method
