.class Lcom/paypal/android/sdk/payments/aa;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final g:Ljava/lang/Object;

.field private static h:Lcom/paypal/android/sdk/payments/aa;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/HashMap;

.field private final d:Ljava/util/HashMap;

.field private final e:Ljava/util/ArrayList;

.field private final f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/payments/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/aa;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/payments/aa;->g:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/aa;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/aa;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/aa;->e:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/aa;->b:Landroid/content/Context;

    new-instance v0, Lcom/paypal/android/sdk/payments/ab;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/paypal/android/sdk/payments/ab;-><init>(Lcom/paypal/android/sdk/payments/aa;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/aa;->f:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/paypal/android/sdk/payments/aa;
    .registers 4

    sget-object v1, Lcom/paypal/android/sdk/payments/aa;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/paypal/android/sdk/payments/aa;->h:Lcom/paypal/android/sdk/payments/aa;

    if-nez v0, :cond_12

    new-instance v0, Lcom/paypal/android/sdk/payments/aa;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/paypal/android/sdk/payments/aa;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/paypal/android/sdk/payments/aa;->h:Lcom/paypal/android/sdk/payments/aa;

    :cond_12
    sget-object v0, Lcom/paypal/android/sdk/payments/aa;->h:Lcom/paypal/android/sdk/payments/aa;

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/aa;)V
    .registers 9

    const/4 v2, 0x0

    :cond_1
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/aa;->c:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aa;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_e

    monitor-exit v1

    return-void

    :cond_e
    new-array v4, v0, [Lcom/paypal/android/sdk/payments/ac;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aa;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aa;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_3f

    move v3, v2

    :goto_1c
    array-length v0, v4

    if-ge v3, v0, :cond_1

    aget-object v5, v4, v3

    move v1, v2

    :goto_22
    iget-object v0, v5, Lcom/paypal/android/sdk/payments/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_42

    iget-object v0, v5, Lcom/paypal/android/sdk/payments/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/ad;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/ad;->b:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/paypal/android/sdk/payments/aa;->b:Landroid/content/Context;

    iget-object v7, v5, Lcom/paypal/android/sdk/payments/ac;->a:Landroid/content/Intent;

    invoke-virtual {v0, v6, v7}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0

    :cond_42
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1c
.end method


# virtual methods
.method public final a(Landroid/content/BroadcastReceiver;)V
    .registers 12

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/paypal/android/sdk/payments/aa;->c:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_4
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aa;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_10

    monitor-exit v8

    :goto_f
    return-void

    :cond_10
    move v7, v5

    :goto_11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_5e

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    move v6, v5

    :goto_1e
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countActions()I

    move-result v2

    if-ge v6, v2, :cond_5a

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v9

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/aa;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_56

    move v4, v5

    :goto_33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_4b

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/paypal/android/sdk/payments/ad;

    iget-object v3, v3, Lcom/paypal/android/sdk/payments/ad;->b:Landroid/content/BroadcastReceiver;

    if-ne v3, p1, :cond_63

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v4, -0x1

    :goto_48
    add-int/lit8 v4, v3, 0x1

    goto :goto_33

    :cond_4b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_56

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/aa;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_56
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_1e

    :cond_5a
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_11

    :cond_5e
    monitor-exit v8

    goto :goto_f

    :catchall_60
    move-exception v0

    monitor-exit v8
    :try_end_62
    .catchall {:try_start_4 .. :try_end_62} :catchall_60

    throw v0

    :cond_63
    move v3, v4

    goto :goto_48
.end method

.method public final a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 9

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/aa;->c:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    new-instance v3, Lcom/paypal/android/sdk/payments/ad;

    invoke-direct {v3, p2, p1}, Lcom/paypal/android/sdk/payments/ad;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aa;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1d

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/aa;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v1, v0

    :goto_22
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ge v1, v0, :cond_48

    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aa;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_41

    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, p0, Lcom/paypal/android/sdk/payments/aa;->d:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    :cond_48
    monitor-exit v2

    return-void

    :catchall_4a
    move-exception v0

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method public final a(Landroid/content/Intent;)Z
    .registers 17

    iget-object v13, p0, Lcom/paypal/android/sdk/payments/aa;->c:Ljava/util/HashMap;

    monitor-enter v13

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/aa;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_92

    const/4 v1, 0x1

    move v12, v1

    :goto_29
    if-eqz v12, :cond_4b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Resolving type "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " scheme "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " of intent "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4b
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/aa;->d:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    if-eqz v8, :cond_114

    if-eqz v12, :cond_67

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Action list: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_67
    const/4 v10, 0x0

    const/4 v1, 0x0

    move v11, v1

    :goto_6a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_df

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/paypal/android/sdk/payments/ad;

    move-object v9, v0

    if-eqz v12, :cond_86

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Matching against filter "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v9, Lcom/paypal/android/sdk/payments/ad;->a:Landroid/content/IntentFilter;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_86
    iget-boolean v1, v9, Lcom/paypal/android/sdk/payments/ad;->c:Z

    if-eqz v1, :cond_95

    if-eqz v12, :cond_d1

    move-object v1, v10

    :goto_8d
    add-int/lit8 v7, v11, 0x1

    move v11, v7

    move-object v10, v1

    goto :goto_6a

    :cond_92
    const/4 v1, 0x0

    move v12, v1

    goto :goto_29

    :cond_95
    iget-object v1, v9, Lcom/paypal/android/sdk/payments/ad;->a:Landroid/content/IntentFilter;

    const-string v7, "ClonedLocalBroadcastManager"

    invoke-virtual/range {v1 .. v7}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_c0

    if-eqz v12, :cond_af

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v14, "  Filter matched!  match=0x"

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_af
    if-nez v10, :cond_117

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_b6
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    iput-boolean v7, v9, Lcom/paypal/android/sdk/payments/ad;->c:Z

    goto :goto_8d

    :catchall_bd
    move-exception v1

    monitor-exit v13
    :try_end_bf
    .catchall {:try_start_3 .. :try_end_bf} :catchall_bd

    throw v1

    :cond_c0
    if-eqz v12, :cond_d1

    packed-switch v1, :pswitch_data_11a

    :try_start_c5
    const-string v1, "unknown reason"

    :goto_c7
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "  Filter did not match: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d1
    move-object v1, v10

    goto :goto_8d

    :pswitch_d3
    const-string v1, "action"

    goto :goto_c7

    :pswitch_d6
    const-string v1, "category"

    goto :goto_c7

    :pswitch_d9
    const-string v1, "data"

    goto :goto_c7

    :pswitch_dc
    const-string v1, "type"

    goto :goto_c7

    :cond_df
    if-eqz v10, :cond_114

    const/4 v1, 0x0

    move v2, v1

    :goto_e3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_f6

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/paypal/android/sdk/payments/ad;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/paypal/android/sdk/payments/ad;->c:Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_e3

    :cond_f6
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/aa;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/paypal/android/sdk/payments/ac;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v10}, Lcom/paypal/android/sdk/payments/ac;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/aa;->f:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_111

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/aa;->f:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_111
    const/4 v1, 0x1

    monitor-exit v13

    :goto_113
    return v1

    :cond_114
    monitor-exit v13
    :try_end_115
    .catchall {:try_start_c5 .. :try_end_115} :catchall_bd

    const/4 v1, 0x0

    goto :goto_113

    :cond_117
    move-object v1, v10

    goto :goto_b6

    nop

    :pswitch_data_11a
    .packed-switch -0x4
        :pswitch_d6
        :pswitch_d3
        :pswitch_d9
        :pswitch_dc
    .end packed-switch
.end method