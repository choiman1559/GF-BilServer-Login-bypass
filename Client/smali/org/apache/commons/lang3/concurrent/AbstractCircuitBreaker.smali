.class public abstract Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;
.super Ljava/lang/Object;
.source "AbstractCircuitBreaker.java"

# interfaces
.implements Lorg/apache/commons/lang3/concurrent/CircuitBreaker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/concurrent/CircuitBreaker",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "open"


# instance fields
.field private final changeSupport:Ljava/beans/PropertyChangeSupport;

.field protected final state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 45
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;, "Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->CLOSED:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 46
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->changeSupport:Ljava/beans/PropertyChangeSupport;

    .line 47
    return-void
.end method

.method protected static isOpen(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)Z
    .registers 2
    .param p0, "state"    # Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    .prologue
    .line 100
    sget-object v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->OPEN:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public addChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 3
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;

    .prologue
    .line 123
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;, "Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->changeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 124
    return-void
.end method

.method protected changeState(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)V
    .registers 6
    .param p1, "newState"    # Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    .prologue
    .line 110
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;, "Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->oppositeState()Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 111
    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->changeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "open"

    invoke-static {p1}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->isOpen(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :goto_17
    invoke-static {p1}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->isOpen(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)Z

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;ZZ)V

    .line 113
    :cond_1e
    return-void

    .line 111
    :cond_1f
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public abstract checkState()Z
.end method

.method public close()V
    .registers 2

    .prologue
    .line 82
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;, "Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker<TT;>;"
    sget-object v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->CLOSED:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->changeState(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)V

    .line 83
    return-void
.end method

.method public abstract incrementAndCheckState(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 62
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;, "Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->isOpen()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 54
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;, "Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    invoke-static {v0}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->isOpen(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)Z

    move-result v0

    return v0
.end method

.method public open()V
    .registers 2

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;, "Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker<TT;>;"
    sget-object v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->OPEN:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->changeState(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)V

    .line 91
    return-void
.end method

.method public removeChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 3
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;

    .prologue
    .line 132
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;, "Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->changeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 133
    return-void
.end method
