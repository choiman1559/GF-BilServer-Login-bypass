.class Lcom/qiniu/android/dns/DnsManager$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/dns/DnsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/dns/DnsManager;


# direct methods
.method constructor <init>(Lcom/qiniu/android/dns/DnsManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/qiniu/android/dns/DnsManager$1;->this$0:Lcom/qiniu/android/dns/DnsManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c2

    :goto_9
    return-void

    :pswitch_a
    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager$1;->this$0:Lcom/qiniu/android/dns/DnsManager;

    invoke-static {v0}, Lcom/qiniu/android/dns/DnsManager;->access$100(Lcom/qiniu/android/dns/DnsManager;)Lcom/qiniu/android/dns/util/LruCache;

    move-result-object v3

    monitor-enter v3

    :try_start_11
    sget v0, Lcom/qiniu/android/dns/DnsManager;->running:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/qiniu/android/dns/DnsManager;->running:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_42

    const-string v2, "domain"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager$1;->this$0:Lcom/qiniu/android/dns/DnsManager;

    invoke-static {v0}, Lcom/qiniu/android/dns/DnsManager;->access$200(Lcom/qiniu/android/dns/DnsManager;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/qiniu/android/dns/DnsManager$1;->this$0:Lcom/qiniu/android/dns/DnsManager;

    invoke-static {v4}, Lcom/qiniu/android/dns/DnsManager;->access$100(Lcom/qiniu/android/dns/DnsManager;)Lcom/qiniu/android/dns/util/LruCache;

    move-result-object v4

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lcom/qiniu/android/dns/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    sget v0, Lcom/qiniu/android/dns/DnsManager;->running:I

    if-nez v0, :cond_bf

    sget-object v0, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->j()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_56
    if-ge v2, v5, :cond_85

    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager$1;->this$0:Lcom/qiniu/android/dns/DnsManager;

    invoke-static {v0}, Lcom/qiniu/android/dns/DnsManager;->access$100(Lcom/qiniu/android/dns/DnsManager;)Lcom/qiniu/android/dns/util/LruCache;

    move-result-object v7

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/qiniu/android/dns/util/Tools;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/qiniu/android/dns/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qiniu/android/dns/Record;

    if-eqz v0, :cond_81

    array-length v7, v0

    if-lez v7, :cond_81

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v7, Lcom/qiniu/android/dns/Record;->domain:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_81
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_56

    :cond_85
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/qiniu/android/dns/Record;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qiniu/android/dns/Record;

    array-length v2, v0

    if-eq v2, v5, :cond_97

    monitor-exit v3

    goto/16 :goto_9

    :catchall_94
    move-exception v0

    monitor-exit v3
    :try_end_96
    .catchall {:try_start_11 .. :try_end_96} :catchall_94

    throw v0

    :cond_97
    :try_start_97
    new-instance v2, Lcom/qiniu/android/dns/DnsManager$1$1;

    invoke-direct {v2, p0}, Lcom/qiniu/android/dns/DnsManager$1$1;-><init>(Lcom/qiniu/android/dns/DnsManager$1;)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :goto_a4
    if-ge v1, v5, :cond_b0

    aget-object v6, v0, v1

    iget-object v6, v6, Lcom/qiniu/android/dns/Record;->domain:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a4

    :cond_b0
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ne v0, v1, :cond_bf

    sget-object v0, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v0, v2}, Lcom/bsgamesdk/android/api/b;->b(Ljava/util/LinkedList;)V

    :cond_bf
    monitor-exit v3
    :try_end_c0
    .catchall {:try_start_97 .. :try_end_c0} :catchall_94

    goto/16 :goto_9

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method
