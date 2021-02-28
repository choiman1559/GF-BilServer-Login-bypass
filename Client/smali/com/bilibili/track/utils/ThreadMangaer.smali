.class public Lcom/bilibili/track/utils/ThreadMangaer;
.super Ljava/lang/Object;


# static fields
.field private static threadManager:Lcom/bilibili/track/utils/ThreadMangaer;


# instance fields
.field private mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public runnable:Ljava/lang/Runnable;

.field private threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bilibili/track/utils/ThreadMangaer;

    invoke-direct {v0}, Lcom/bilibili/track/utils/ThreadMangaer;-><init>()V

    sput-object v0, Lcom/bilibili/track/utils/ThreadMangaer;->threadManager:Lcom/bilibili/track/utils/ThreadMangaer;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bilibili/track/utils/ThreadMangaer;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/bilibili/track/utils/ThreadMangaer$2;

    invoke-direct {v0, p0}, Lcom/bilibili/track/utils/ThreadMangaer$2;-><init>(Lcom/bilibili/track/utils/ThreadMangaer;)V

    iput-object v0, p0, Lcom/bilibili/track/utils/ThreadMangaer;->runnable:Ljava/lang/Runnable;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x3

    const/16 v3, 0xa

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v0, 0x4

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v8, Lcom/bilibili/track/utils/ThreadMangaer$1;

    invoke-direct {v8, p0}, Lcom/bilibili/track/utils/ThreadMangaer$1;-><init>(Lcom/bilibili/track/utils/ThreadMangaer;)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/bilibili/track/utils/ThreadMangaer;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/bilibili/track/utils/ThreadMangaer;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/bilibili/track/utils/ThreadMangaer;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/track/utils/ThreadMangaer;)Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/utils/ThreadMangaer;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/track/utils/ThreadMangaer;)Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/utils/ThreadMangaer;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static getInstance()Lcom/bilibili/track/utils/ThreadMangaer;
    .registers 1

    sget-object v0, Lcom/bilibili/track/utils/ThreadMangaer;->threadManager:Lcom/bilibili/track/utils/ThreadMangaer;

    return-object v0
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;)V
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/bilibili/track/utils/ThreadMangaer;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
