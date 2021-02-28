.class Lcom/bilibili/track/storage/database/DbDataHelper$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/track/storage/database/DbDataHelper;->deleteExpiredData(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/track/storage/database/DbDataHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/bilibili/track/storage/database/DbDataHelper;Landroid/content/Context;I)V
    .registers 4

    iput-object p1, p0, Lcom/bilibili/track/storage/database/DbDataHelper$7;->this$0:Lcom/bilibili/track/storage/database/DbDataHelper;

    iput-object p2, p0, Lcom/bilibili/track/storage/database/DbDataHelper$7;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/bilibili/track/storage/database/DbDataHelper$7;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/bilibili/track/storage/database/DbDataHelper$7;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/track/storage/database/BiliDataBaseManager;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/track/storage/database/DbDataHelper$7;->val$count:I

    invoke-virtual {v0, v1}, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->delete(I)V

    return-void
.end method
