.class final Lcom/mob/commons/eventrecoder/EventRecorder$3;
.super Ljava/lang/Object;
.source "EventRecorder.java"

# interfaces
.implements Lcom/mob/commons/LockAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/eventrecoder/EventRecorder;->checkRecord(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/LinkedList;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/LinkedList;)V
    .registers 3

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mob/commons/eventrecoder/EventRecorder$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mob/commons/eventrecoder/EventRecorder$3;->b:Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/mob/tools/utils/FileLocker;)Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 74
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/mob/commons/eventrecoder/EventRecorder;->a()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 75
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 76
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 77
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_1a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 79
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/mob/commons/eventrecoder/EventRecorder$3;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 81
    const-string v1, "0"

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 82
    iget-object v1, p0, Lcom/mob/commons/eventrecoder/EventRecorder$3;->b:Ljava/util/LinkedList;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_44
    :goto_44
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 83
    :cond_49
    const-string v1, "1"

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 84
    iget-object v1, p0, Lcom/mob/commons/eventrecoder/EventRecorder$3;->b:Ljava/util/LinkedList;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 85
    const/4 v1, -0x1

    if-eq v0, v1, :cond_44

    .line 86
    iget-object v1, p0, Lcom/mob/commons/eventrecoder/EventRecorder$3;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_65} :catch_66

    goto :goto_44

    .line 93
    :catch_66
    move-exception v0

    .line 94
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 96
    :goto_6e
    return v4

    .line 92
    :cond_6f
    :try_start_6f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_72} :catch_66

    goto :goto_6e
.end method
