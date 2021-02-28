.class public Lcom/mob/tools/MobUIShell;
.super Landroid/app/Activity;
.source "MobUIShell.java"


# static fields
.field private static executors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mob/tools/FakeActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private executor:Lcom/mob/tools/FakeActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 30
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mob/tools/MobUIShell;->executors:Ljava/util/HashMap;

    .line 32
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "==============================="

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 33
    const-string v1, "2017-10-24"

    const-string v2, "-0"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "version":Ljava/lang/String;
    const-string v1, "-"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MobTools "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 36
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "==============================="

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private activityForName(Ljava/lang/String;)Lcom/mob/tools/FakeActivity;
    .registers 7
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 123
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 124
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mob/tools/MobUIShell;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    :cond_23
    invoke-static {p1}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 129
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    .local v0, "fa":Ljava/lang/Object;
    if-eqz v0, :cond_45

    instance-of v3, v0, Lcom/mob/tools/FakeActivity;

    if-eqz v3, :cond_45

    .line 131
    check-cast v0, Lcom/mob/tools/FakeActivity;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3c} :catch_3d

    .line 138
    .end local v0    # "fa":Ljava/lang/Object;
    .end local v1    # "name":Ljava/lang/String;
    :goto_3c
    return-object v0

    .line 135
    :catch_3d
    move-exception v2

    .line 136
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 138
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_45
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method private initExecutor()Z
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 79
    iget-object v6, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    if-nez v6, :cond_e9

    .line 80
    invoke-virtual {p0}, Lcom/mob/tools/MobUIShell;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 81
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 82
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_53

    const-string v6, "mobui"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 83
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mob/tools/MobUIShell;->activityForName(Ljava/lang/String;)Lcom/mob/tools/FakeActivity;

    move-result-object v6

    iput-object v6, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    .line 84
    iget-object v6, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    if-eqz v6, :cond_53

    .line 85
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MobUIShell found executor: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v9, v8}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 86
    iget-object v6, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v6, p0}, Lcom/mob/tools/FakeActivity;->setActivity(Landroid/app/Activity;)V

    move v6, v7

    .line 118
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "uri":Landroid/net/Uri;
    :goto_52
    return v6

    .line 91
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_53
    const-string v2, ""

    .line 92
    .local v2, "launchTime":Ljava/lang/String;
    const-string v0, ""

    .line 94
    .local v0, "executorName":Ljava/lang/String;
    :try_start_57
    const-string v6, "launch_time"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    const-string v6, "executor_name"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_62} :catch_b8

    move-result-object v0

    .line 101
    sget-object v6, Lcom/mob/tools/MobUIShell;->executors:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mob/tools/FakeActivity;

    iput-object v6, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    .line 102
    iget-object v6, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    if-nez v6, :cond_c2

    .line 103
    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "uriScheme":Ljava/lang/String;
    sget-object v6, Lcom/mob/tools/MobUIShell;->executors:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mob/tools/FakeActivity;

    iput-object v6, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    .line 105
    iget-object v6, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    if-nez v6, :cond_c2

    .line 106
    invoke-virtual {p0}, Lcom/mob/tools/MobUIShell;->getDefault()Lcom/mob/tools/FakeActivity;

    move-result-object v6

    iput-object v6, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    .line 107
    iget-object v6, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    if-nez v6, :cond_c2

    .line 108
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Executor lost! launchTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", executorName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move v6, v8

    .line 110
    goto :goto_52

    .line 96
    .end local v5    # "uriScheme":Ljava/lang/String;
    :catch_b8
    move-exception v3

    .line 97
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move v6, v8

    .line 98
    goto :goto_52

    .line 115
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_c2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MobUIShell found executor: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v9, v8}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 116
    iget-object v6, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v6, p0}, Lcom/mob/tools/FakeActivity;->setActivity(Landroid/app/Activity;)V

    .end local v0    # "executorName":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "launchTime":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_e9
    move v6, v7

    .line 118
    goto/16 :goto_52
.end method

.method protected static registerExecutor(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p0, "executor"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "launchTime":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/mob/tools/MobUIShell;->registerExecutor(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static registerExecutor(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "executor"    # Ljava/lang/Object;

    .prologue
    .line 54
    sget-object v0, Lcom/mob/tools/MobUIShell;->executors:Ljava/util/HashMap;

    check-cast p1, Lcom/mob/tools/FakeActivity;

    .end local p1    # "executor":Ljava/lang/Object;
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-object p0
.end method

.method public static toMobUIShellUri(Ljava/lang/String;Ljava/util/HashMap;)Landroid/net/Uri;
    .registers 8
    .param p0, "fakeActivity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v1, "kvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    .local v0, "key":Ljava/lang/String;
    new-instance v4, Lcom/mob/tools/network/KVPair;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 44
    .end local v0    # "key":Ljava/lang/String;
    :cond_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobui://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->encodeUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "strUri":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->onFinish()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 295
    :goto_c
    return-void

    .line 294
    :cond_d
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_c
.end method

.method public getDefault()Lcom/mob/tools/FakeActivity;
    .registers 7

    .prologue
    .line 155
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/MobUIShell;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 156
    invoke-virtual {p0}, Lcom/mob/tools/MobUIShell;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    .line 155
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 157
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "defaultActivity"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_1b

    move-result-object v1

    .line 162
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .local v1, "defaultActivity":Ljava/lang/String;
    :goto_16
    invoke-direct {p0, v1}, Lcom/mob/tools/MobUIShell;->activityForName(Ljava/lang/String;)Lcom/mob/tools/FakeActivity;

    move-result-object v3

    return-object v3

    .line 158
    .end local v1    # "defaultActivity":Ljava/lang/String;
    :catch_1b
    move-exception v2

    .line 159
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 160
    const/4 v1, 0x0

    .restart local v1    # "defaultActivity":Ljava/lang/String;
    goto :goto_16
.end method

.method public getExecutor()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_9

    .line 256
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mob/tools/FakeActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 258
    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 259
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 278
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 279
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_c

    .line 280
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0, p1}, Lcom/mob/tools/FakeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 282
    :cond_c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/mob/tools/MobUIShell;->initExecutor()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 143
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCreate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 145
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->onCreate()V

    .line 150
    :goto_35
    return-void

    .line 147
    :cond_36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Lcom/mob/tools/MobUIShell;->finish()V

    goto :goto_35
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 302
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 303
    .local v0, "res":Z
    iget-object v1, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    if-eqz v1, :cond_e

    .line 304
    iget-object v1, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v1, p1}, Lcom/mob/tools/FakeActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 306
    .end local v0    # "res":Z
    :cond_e
    return v0
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 246
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_35

    .line 247
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->sendResult()V

    .line 248
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 249
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->onDestroy()V

    .line 251
    :cond_35
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 252
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    if-eqz v1, :cond_b

    .line 264
    iget-object v1, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v1, p1, p2}, Lcom/mob/tools/FakeActivity;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 266
    :cond_b
    if-eqz v0, :cond_f

    const/4 v1, 0x1

    :goto_e
    return v1

    :cond_f
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_e
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    if-eqz v1, :cond_b

    .line 272
    iget-object v1, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v1, p1, p2}, Lcom/mob/tools/FakeActivity;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 274
    :cond_b
    if-eqz v0, :cond_f

    const/4 v1, 0x1

    :goto_e
    return v1

    :cond_f
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_e
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    if-nez v0, :cond_8

    .line 199
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 203
    :goto_7
    return-void

    .line 201
    :cond_8
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0, p1}, Lcom/mob/tools/FakeActivity;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_7
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 310
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 311
    .local v0, "res":Z
    iget-object v1, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    if-eqz v1, :cond_e

    .line 312
    iget-object v1, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v1, p1}, Lcom/mob/tools/FakeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 314
    .end local v0    # "res":Z
    :cond_e
    return v0
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_30

    .line 223
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onPause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 224
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->onPause()V

    .line 226
    :cond_30
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 227
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_9

    .line 286
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mob/tools/FakeActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 288
    :cond_9
    return-void
.end method

.method protected onRestart()V
    .registers 4

    .prologue
    .line 238
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_30

    .line 239
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onRestart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 240
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->onRestart()V

    .line 242
    :cond_30
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 243
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_30

    .line 215
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onResume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 216
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->onResume()V

    .line 218
    :cond_30
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 219
    return-void
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 206
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_30

    .line 207
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 208
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->onStart()V

    .line 210
    :cond_30
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 211
    return-void
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_30

    .line 231
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onStop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 232
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->onStop()V

    .line 234
    :cond_30
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 235
    return-void
.end method

.method public setContentView(I)V
    .registers 5
    .param p1, "layoutResID"    # I

    .prologue
    .line 166
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/mob/tools/MobUIShell;->setContentView(Landroid/view/View;)V

    .line 168
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 171
    if-nez p1, :cond_3

    .line 179
    :cond_2
    :goto_2
    return-void

    .line 175
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 176
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0, p1}, Lcom/mob/tools/FakeActivity;->setContentView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 182
    if-nez p1, :cond_3

    .line 195
    :cond_2
    :goto_2
    return-void

    .line 186
    :cond_3
    if-nez p2, :cond_12

    .line 187
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 192
    :goto_8
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0, p1}, Lcom/mob/tools/FakeActivity;->setContentView(Landroid/view/View;)V

    goto :goto_2

    .line 189
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8
.end method

.method public final setTheme(I)V
    .registers 7
    .param p1, "resid"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mob/tools/MobUIShell;->initExecutor()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 60
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 61
    .local v2, "stacks":[Ljava/lang/StackTraceElement;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v3, v2

    if-ge v0, v3, :cond_40

    .line 62
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.lang.Thread.getStackTrace"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 63
    add-int/lit8 v0, v0, 0x2

    .line 64
    array-length v3, v2

    if-ge v0, v3, :cond_3d

    .line 65
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.app.ActivityThread.performLaunchActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 66
    .local v1, "l":Z
    iget-object v3, p0, Lcom/mob/tools/MobUIShell;->executor:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v3, p1, v1}, Lcom/mob/tools/FakeActivity;->onSetTheme(IZ)I

    move-result p1

    .line 67
    if-lez p1, :cond_3c

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 76
    .end local v0    # "i":I
    .end local v1    # "l":Z
    .end local v2    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_3c
    :goto_3c
    return-void

    .line 61
    .restart local v0    # "i":I
    .restart local v2    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 75
    .end local v0    # "i":I
    .end local v2    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_40
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_3c
.end method
