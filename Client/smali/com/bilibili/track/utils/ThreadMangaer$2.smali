.class Lcom/bilibili/track/utils/ThreadMangaer$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/track/utils/ThreadMangaer;
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

    iput-object p1, p0, Lcom/bilibili/track/utils/ThreadMangaer$2;->this$0:Lcom/bilibili/track/utils/ThreadMangaer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/bilibili/track/utils/ThreadMangaer$2;->this$0:Lcom/bilibili/track/utils/ThreadMangaer;

    invoke-static {v0}, Lcom/bilibili/track/utils/ThreadMangaer;->access$000(Lcom/bilibili/track/utils/ThreadMangaer;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/bilibili/track/utils/ThreadMangaer$2;->this$0:Lcom/bilibili/track/utils/ThreadMangaer;

    invoke-static {v1}, Lcom/bilibili/track/utils/ThreadMangaer;->access$100(Lcom/bilibili/track/utils/ThreadMangaer;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_0

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
