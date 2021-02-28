.class Lcom/bilibili/track/storage/presistent/config/SharedPreferencesLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/track/storage/presistent/config/SharedPreferencesLoader$LoadSharedPreferences;
    }
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/track/storage/presistent/config/SharedPreferencesLoader;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method loadPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bilibili/track/storage/presistent/config/SharedPreferencesLoader$LoadSharedPreferences;

    invoke-direct {v0, p1, p2}, Lcom/bilibili/track/storage/presistent/config/SharedPreferencesLoader$LoadSharedPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v0, p0, Lcom/bilibili/track/storage/presistent/config/SharedPreferencesLoader;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v1
.end method
