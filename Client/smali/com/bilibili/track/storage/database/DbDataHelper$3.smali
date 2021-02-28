.class Lcom/bilibili/track/storage/database/DbDataHelper$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/track/storage/database/DbDataHelper;->queryUnUploadCount(Landroid/content/Context;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/track/storage/database/DbDataHelper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/bilibili/track/storage/database/DbDataHelper;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/bilibili/track/storage/database/DbDataHelper$3;->this$0:Lcom/bilibili/track/storage/database/DbDataHelper;

    iput-object p2, p0, Lcom/bilibili/track/storage/database/DbDataHelper$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bilibili/track/storage/database/DbDataHelper$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/track/storage/database/BiliDataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->queryCountUploaded()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bilibili/track/storage/database/DbDataHelper$3;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
