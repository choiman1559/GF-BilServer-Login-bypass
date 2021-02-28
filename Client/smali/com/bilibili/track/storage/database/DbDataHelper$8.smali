.class Lcom/bilibili/track/storage/database/DbDataHelper$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/track/storage/database/DbDataHelper;->updateUploadState(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/track/storage/database/DbDataHelper;

.field final synthetic val$baseBeanList:Ljava/util/List;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/bilibili/track/storage/database/DbDataHelper;Landroid/content/Context;Ljava/util/List;)V
    .registers 4

    iput-object p1, p0, Lcom/bilibili/track/storage/database/DbDataHelper$8;->this$0:Lcom/bilibili/track/storage/database/DbDataHelper;

    iput-object p2, p0, Lcom/bilibili/track/storage/database/DbDataHelper$8;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/bilibili/track/storage/database/DbDataHelper$8;->val$baseBeanList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/bilibili/track/storage/database/DbDataHelper$8;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/track/storage/database/BiliDataBaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/track/storage/database/DbDataHelper$8;->val$baseBeanList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->update(Ljava/util/List;)V

    return-void
.end method
