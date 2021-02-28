.class public abstract Lcom/mob/commons/logcollector/LogsCollector;
.super Ljava/lang/Object;
.source "LogsCollector.java"

# interfaces
.implements Lcom/mob/tools/log/LogCollector;
.implements Lcom/mob/tools/proguard/ProtectedMemberKeeper;
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# instance fields
.field private a:Lcom/mob/commons/logcollector/c;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/mob/commons/logcollector/c;->a()Lcom/mob/commons/logcollector/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/logcollector/LogsCollector;->a:Lcom/mob/commons/logcollector/c;

    .line 21
    iget-object v0, p0, Lcom/mob/commons/logcollector/LogsCollector;->a:Lcom/mob/commons/logcollector/c;

    invoke-virtual {p0}, Lcom/mob/commons/logcollector/LogsCollector;->getSDKVersion()I

    move-result v1

    invoke-virtual {p0}, Lcom/mob/commons/logcollector/LogsCollector;->getSDKTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/logcollector/c;->a(ILjava/lang/String;)V

    .line 24
    :try_start_16
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "cn.sharesdk.log"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_2b

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mob/commons/logcollector/LogsCollector;->b:Z
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_2b} :catch_2c

    .line 32
    :cond_2b
    :goto_2b
    return-void

    .line 29
    :catch_2c
    move-exception v0

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mob/commons/logcollector/LogsCollector;->b:Z

    goto :goto_2b
.end method


# virtual methods
.method final a(ILjava/lang/String;)I
    .registers 6

    .prologue
    .line 66
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Lcom/mob/commons/logcollector/LogsCollector;->b:Z

    if-eqz v0, :cond_36

    .line 68
    :try_start_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    const-string v1, "cn.sharesdk.log"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 71
    const-string v2, "package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v2, "priority"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    const-string v2, "msg"

    invoke-static {v1, p2}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 74
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_36} :catch_38

    .line 79
    :cond_36
    :goto_36
    const/4 v0, 0x0

    return v0

    .line 75
    :catch_38
    move-exception v0

    .line 76
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_36
.end method

.method protected abstract getSDKTag()Ljava/lang/String;
.end method

.method protected abstract getSDKVersion()I
.end method

.method public final log(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 43
    invoke-virtual {p0, p2, p5}, Lcom/mob/commons/logcollector/LogsCollector;->a(ILjava/lang/String;)I

    .line 45
    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/mob/commons/logcollector/LogsCollector;->getSDKTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 62
    :cond_f
    :goto_f
    return-void

    .line 48
    :cond_10
    const-string v0, "SHARESDK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 50
    const-string v0, "com.mob."

    invoke-virtual {p5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "cn.sharesdk."

    invoke-virtual {p5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 55
    :cond_28
    const/4 v0, 0x1

    if-ne p3, v0, :cond_35

    .line 56
    iget-object v0, p0, Lcom/mob/commons/logcollector/LogsCollector;->a:Lcom/mob/commons/logcollector/c;

    invoke-virtual {p0}, Lcom/mob/commons/logcollector/LogsCollector;->getSDKVersion()I

    move-result v1

    invoke-virtual {v0, v1, p3, p1, p5}, Lcom/mob/commons/logcollector/c;->b(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 57
    :cond_35
    const/4 v0, 0x2

    if-ne p3, v0, :cond_42

    .line 58
    iget-object v0, p0, Lcom/mob/commons/logcollector/LogsCollector;->a:Lcom/mob/commons/logcollector/c;

    invoke-virtual {p0}, Lcom/mob/commons/logcollector/LogsCollector;->getSDKVersion()I

    move-result v1

    invoke-virtual {v0, v1, p3, p1, p5}, Lcom/mob/commons/logcollector/c;->a(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 59
    :cond_42
    const/4 v0, 0x5

    if-ne p2, v0, :cond_f

    .line 60
    iget-object v0, p0, Lcom/mob/commons/logcollector/LogsCollector;->a:Lcom/mob/commons/logcollector/c;

    invoke-virtual {p0}, Lcom/mob/commons/logcollector/LogsCollector;->getSDKVersion()I

    move-result v1

    invoke-virtual {v0, v1, p3, p1, p5}, Lcom/mob/commons/logcollector/c;->a(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method
