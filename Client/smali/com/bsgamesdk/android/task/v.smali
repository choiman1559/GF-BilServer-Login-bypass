.class public Lcom/bsgamesdk/android/task/v;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/Thread;

.field public static b:Ljava/lang/Thread;

.field public static c:Ljava/lang/Thread;


# direct methods
.method public static a()V
    .registers 1

    sget-object v0, Lcom/bsgamesdk/android/task/v;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/bsgamesdk/android/task/v;->a:Ljava/lang/Thread;

    check-cast v0, Lcom/bsgamesdk/android/api/g;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/g;->b()V

    :cond_b
    sget-object v0, Lcom/bsgamesdk/android/task/v;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/bsgamesdk/android/task/v;->b:Ljava/lang/Thread;

    check-cast v0, Lcom/bsgamesdk/android/api/g;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/g;->b()V

    :cond_16
    sget-object v0, Lcom/bsgamesdk/android/task/v;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_21

    sget-object v0, Lcom/bsgamesdk/android/task/v;->c:Ljava/lang/Thread;

    check-cast v0, Lcom/bsgamesdk/android/api/g;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/g;->b()V

    :cond_21
    return-void
.end method
