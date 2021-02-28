.class Lcom/bilibili/track/utils/ThreadMangaer$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/track/utils/ThreadMangaer;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/track/utils/ThreadMangaer;


# direct methods
.method constructor <init>(Lcom/bilibili/track/utils/ThreadMangaer;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/utils/ThreadMangaer$1;->this$0:Lcom/bilibili/track/utils/ThreadMangaer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 4

    iget-object v0, p0, Lcom/bilibili/track/utils/ThreadMangaer$1;->this$0:Lcom/bilibili/track/utils/ThreadMangaer;

    invoke-virtual {v0, p1}, Lcom/bilibili/track/utils/ThreadMangaer;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method
