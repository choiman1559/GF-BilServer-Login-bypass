.class final Lcom/alipay/sdk/app/statistic/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/app/statistic/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/app/statistic/a$a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "RecordPref"

.field private static final b:Ljava/lang/String; = "alipay_cashier_statistic_record"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)I
    .registers 8

    const/4 v0, 0x0

    const-class v1, Lcom/alipay/sdk/app/statistic/a$a;

    monitor-enter v1

    :try_start_4
    const-string v2, "RecordPref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stat remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_24

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_72

    move-result v2

    if-eqz v2, :cond_26

    :cond_24
    :goto_24
    monitor-exit v1

    return v0

    :cond_26
    :try_start_26
    invoke-static {p0}, Lcom/alipay/sdk/app/statistic/a$a;->b(Landroid/content/Context;)Lcom/alipay/sdk/app/statistic/a$a$a;

    move-result-object v2

    iget-object v3, v2, Lcom/alipay/sdk/app/statistic/a$a$a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_72

    move-result v3

    if-nez v3, :cond_24

    :try_start_32
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v2, Lcom/alipay/sdk/app/statistic/a$a$a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_41
    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_5e} :catch_5f
    .catchall {:try_start_32 .. :try_end_5e} :catchall_72

    goto :goto_41

    :catch_5f
    move-exception v0

    :try_start_60
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    iget-object v0, v2, Lcom/alipay/sdk/app/statistic/a$a$a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    new-instance v2, Lcom/alipay/sdk/app/statistic/a$a$a;

    invoke-direct {v2}, Lcom/alipay/sdk/app/statistic/a$a$a;-><init>()V

    invoke-static {p0, v2}, Lcom/alipay/sdk/app/statistic/a$a;->a(Landroid/content/Context;Lcom/alipay/sdk/app/statistic/a$a$a;)V
    :try_end_71
    .catchall {:try_start_60 .. :try_end_71} :catchall_72

    goto :goto_24

    :catchall_72
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_75
    :try_start_75
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_79
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, v2, Lcom/alipay/sdk/app/statistic/a$a$a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_79

    :cond_8b
    invoke-static {p0, v2}, Lcom/alipay/sdk/app/statistic/a$a;->a(Landroid/content/Context;Lcom/alipay/sdk/app/statistic/a$a$a;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_91} :catch_5f
    .catchall {:try_start_75 .. :try_end_91} :catchall_72

    move-result v0

    goto :goto_24
.end method

.method static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    const-class v2, Lcom/alipay/sdk/app/statistic/a$a;

    monitor-enter v2

    :try_start_4
    const-string v0, "RecordPref"

    const-string v3, "stat peek"

    invoke-static {v0, v3}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_3b

    if-nez p0, :cond_10

    move-object v0, v1

    :goto_e
    monitor-exit v2

    return-object v0

    :cond_10
    :try_start_10
    invoke-static {p0}, Lcom/alipay/sdk/app/statistic/a$a;->b(Landroid/content/Context;)Lcom/alipay/sdk/app/statistic/a$a$a;

    move-result-object v0

    iget-object v3, v0, Lcom/alipay/sdk/app/statistic/a$a$a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_3b

    move-result v3

    if-eqz v3, :cond_1e

    move-object v0, v1

    goto :goto_e

    :cond_1e
    :try_start_1e
    iget-object v0, v0, Lcom/alipay/sdk/app/statistic/a$a$a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_34} :catch_35
    .catchall {:try_start_1e .. :try_end_34} :catchall_3b

    goto :goto_e

    :catch_35
    move-exception v0

    :try_start_36
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3b

    move-object v0, v1

    goto :goto_e

    :catchall_3b
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-class v1, Lcom/alipay/sdk/app/statistic/a$a;

    monitor-enter v1

    :try_start_3
    const-string v0, "RecordPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stat append "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_2d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_5a

    move-result v0

    if-eqz v0, :cond_30

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    monitor-exit v1

    return-object v0

    :cond_30
    :try_start_30
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3e
    invoke-static {p0}, Lcom/alipay/sdk/app/statistic/a$a;->b(Landroid/content/Context;)Lcom/alipay/sdk/app/statistic/a$a$a;

    move-result-object v2

    iget-object v3, v2, Lcom/alipay/sdk/app/statistic/a$a$a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_51

    iget-object v3, v2, Lcom/alipay/sdk/app/statistic/a$a$a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    :cond_51
    iget-object v3, v2, Lcom/alipay/sdk/app/statistic/a$a$a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/alipay/sdk/app/statistic/a$a;->a(Landroid/content/Context;Lcom/alipay/sdk/app/statistic/a$a$a;)V
    :try_end_59
    .catchall {:try_start_30 .. :try_end_59} :catchall_5a

    goto :goto_2e

    :catchall_5a
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5d
    move-object v0, p2

    goto :goto_3e
.end method

.method private static declared-synchronized a(Landroid/content/Context;Lcom/alipay/sdk/app/statistic/a$a$a;)V
    .registers 6

    const-class v1, Lcom/alipay/sdk/app/statistic/a$a;

    monitor-enter v1

    if-nez p1, :cond_a

    :try_start_5
    new-instance p1, Lcom/alipay/sdk/app/statistic/a$a$a;

    invoke-direct {p1}, Lcom/alipay/sdk/app/statistic/a$a$a;-><init>()V

    :cond_a
    invoke-virtual {p1}, Lcom/alipay/sdk/app/statistic/a$a$a;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "alipay_cashier_statistic_record"

    invoke-static {v2, p0, v3, v0}, Lcom/alipay/sdk/util/j;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_14} :catch_16
    .catchall {:try_start_5 .. :try_end_14} :catchall_1b

    :goto_14
    monitor-exit v1

    return-void

    :catch_16
    move-exception v0

    :try_start_17
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_14

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)Lcom/alipay/sdk/app/statistic/a$a$a;
    .registers 5

    const-class v1, Lcom/alipay/sdk/app/statistic/a$a;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    const-string v2, "alipay_cashier_statistic_record"

    const/4 v3, 0x0

    invoke-static {v0, p0, v2, v3}, Lcom/alipay/sdk/util/j;->b(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/alipay/sdk/app/statistic/a$a$a;

    invoke-direct {v0}, Lcom/alipay/sdk/app/statistic/a$a$a;-><init>()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_16} :catch_1e
    .catchall {:try_start_4 .. :try_end_16} :catchall_28

    :goto_16
    monitor-exit v1

    return-object v0

    :cond_18
    :try_start_18
    new-instance v0, Lcom/alipay/sdk/app/statistic/a$a$a;

    invoke-direct {v0, v2}, Lcom/alipay/sdk/app/statistic/a$a$a;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1d} :catch_1e
    .catchall {:try_start_18 .. :try_end_1d} :catchall_28

    goto :goto_16

    :catch_1e
    move-exception v0

    :try_start_1f
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/alipay/sdk/app/statistic/a$a$a;

    invoke-direct {v0}, Lcom/alipay/sdk/app/statistic/a$a$a;-><init>()V
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_28

    goto :goto_16

    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0
.end method
