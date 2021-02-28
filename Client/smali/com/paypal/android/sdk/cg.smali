.class public abstract Lcom/paypal/android/sdk/cg;
.super Lcom/paypal/android/sdk/ce;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/paypal/android/sdk/ct;

.field private final c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/cg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/cg;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/paypal/android/sdk/ct;)V
    .registers 4

    invoke-direct {p0}, Lcom/paypal/android/sdk/ce;-><init>()V

    iput p1, p0, Lcom/paypal/android/sdk/cg;->d:I

    iput-object p2, p0, Lcom/paypal/android/sdk/cg;->b:Lcom/paypal/android/sdk/ct;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/paypal/android/sdk/cg;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/cg;)I
    .registers 2

    iget v0, p0, Lcom/paypal/android/sdk/cg;->d:I

    return v0
.end method

.method static synthetic b(Lcom/paypal/android/sdk/cg;)Lcom/paypal/android/sdk/ct;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/cg;->b:Lcom/paypal/android/sdk/ct;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/paypal/android/sdk/cg;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public final b(Lcom/paypal/android/sdk/cs;)Z
    .registers 4

    iget-object v0, p0, Lcom/paypal/android/sdk/cg;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/paypal/android/sdk/ch;

    invoke-direct {v1, p0, p1}, Lcom/paypal/android/sdk/ch;-><init>(Lcom/paypal/android/sdk/cg;Lcom/paypal/android/sdk/cs;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract c()I
.end method

.method protected abstract c(Lcom/paypal/android/sdk/cs;)Z
.end method
