.class final Lcom/unity3d/player/ReflectionHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/ReflectionHelper;->newProxyInstance(I[Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:[Ljava/lang/Class;

.field private c:J


# direct methods
.method constructor <init>(I[Ljava/lang/Class;)V
    .registers 5

    iput p1, p0, Lcom/unity3d/player/ReflectionHelper$1;->a:I

    iput-object p2, p0, Lcom/unity3d/player/ReflectionHelper$1;->b:[Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/unity3d/player/ReflectionHelper;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/player/ReflectionHelper$1;->c:J

    return-void
.end method


# virtual methods
.method protected final finalize()V
    .registers 5

    :try_start_0
    iget-wide v0, p0, Lcom/unity3d/player/ReflectionHelper$1;->c:J

    invoke-static {}, Lcom/unity3d/player/ReflectionHelper;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    iget v0, p0, Lcom/unity3d/player/ReflectionHelper$1;->a:I

    invoke-static {v0}, Lcom/unity3d/player/ReflectionHelper;->a(I)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_13

    :cond_f
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_13
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iget-wide v0, p0, Lcom/unity3d/player/ReflectionHelper$1;->c:J

    invoke-static {}, Lcom/unity3d/player/ReflectionHelper;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    const/4 v0, 0x6

    const-string v1, "Scripting proxy object was destroyed, because Unity player was unloaded."

    invoke-static {v0, v1}, Lcom/unity3d/player/e;->Log(ILjava/lang/String;)V

    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    iget v0, p0, Lcom/unity3d/player/ReflectionHelper$1;->a:I

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/unity3d/player/ReflectionHelper;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_11
.end method
