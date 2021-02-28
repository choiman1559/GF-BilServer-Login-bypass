.class Lcom/bilibili/track/storage/database/DbDataHelper$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/track/storage/database/DbDataHelper;->updateOverData(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/track/storage/database/DbDataHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/bilibili/track/storage/database/DbDataHelper;Landroid/content/Context;J)V
    .registers 6

    iput-object p1, p0, Lcom/bilibili/track/storage/database/DbDataHelper$10;->this$0:Lcom/bilibili/track/storage/database/DbDataHelper;

    iput-object p2, p0, Lcom/bilibili/track/storage/database/DbDataHelper$10;->val$context:Landroid/content/Context;

    iput-wide p3, p0, Lcom/bilibili/track/storage/database/DbDataHelper$10;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/bilibili/track/storage/database/DbDataHelper$10;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/track/storage/database/BiliDataBaseManager;

    move-result-object v0

    iget-wide v2, p0, Lcom/bilibili/track/storage/database/DbDataHelper$10;->val$time:J

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/track/storage/database/BiliDataBaseManager;->updateExpired(J)V

    return-void
.end method
