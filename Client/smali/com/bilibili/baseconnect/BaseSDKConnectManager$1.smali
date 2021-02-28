.class Lcom/bilibili/baseconnect/BaseSDKConnectManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/baseconnect/BaseSDKConnectManager;->setTrackConfig(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/baseconnect/BaseSDKConnectManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/bilibili/baseconnect/BaseSDKConnectManager;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager$1;->this$0:Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    iput-object p2, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager$1;->this$0:Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    iget-object v1, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager$1;->this$0:Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    iget-object v2, v2, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->logState:Ljava/lang/String;

    iget-object v3, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager$1;->this$0:Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    iget v3, v3, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->androidPercent:I

    iget-object v4, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager$1;->this$0:Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    iget-object v4, v4, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->fingerprint:Ljava/lang/String;

    iget-object v5, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager$1;->this$0:Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    iget-object v6, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager$1;->this$0:Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    iget-object v6, v6, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->strategy:Lorg/json/JSONArray;

    invoke-static {v5, v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->access$000(Lcom/bilibili/baseconnect/BaseSDKConnectManager;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->onConfigSuccess(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method
