.class Lcom/bilibili/track/storage/database/DbDataHelper$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/track/storage/database/DbDataHelper;->queryCountBean(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
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
        "Ljava/util/List",
        "<",
        "Lcom/bilibili/track/storage/database/BaseBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/track/storage/database/DbDataHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$count:I

.field final synthetic val$logLevel:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bilibili/track/storage/database/DbDataHelper;Landroid/content/Context;ILjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/bilibili/track/storage/database/DbDataHelper$4;->this$0:Lcom/bilibili/track/storage/database/DbDataHelper;

    iput-object p2, p0, Lcom/bilibili/track/storage/database/DbDataHelper$4;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/bilibili/track/storage/database/DbDataHelper$4;->val$count:I

    iput-object p4, p0, Lcom/bilibili/track/storage/database/DbDataHelper$4;->val$logLevel:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bilibili/track/storage/database/DbDataHelper$4;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/track/storage/database/BaseBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bilibili/track/storage/database/DbDataHelper$4;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/track/storage/database/BiliDataBaseManager;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/track/storage/database/DbDataHelper$4;->val$count:I

    iget-object v2, p0, Lcom/bilibili/track/storage/database/DbDataHelper$4;->val$logLevel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->query(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
