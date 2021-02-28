.class final Lcom/mob/commons/eventrecoder/EventRecorder$2;
.super Ljava/lang/Object;
.source "EventRecorder.java"

# interfaces
.implements Lcom/mob/commons/LockAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/eventrecoder/EventRecorder;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/mob/commons/eventrecoder/EventRecorder$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/mob/tools/utils/FileLocker;)Z
    .registers 5

    .prologue
    .line 59
    :try_start_0
    invoke-static {}, Lcom/mob/commons/eventrecoder/EventRecorder;->b()Ljava/io/FileOutputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/eventrecoder/EventRecorder$2;->a:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 60
    invoke-static {}, Lcom/mob/commons/eventrecoder/EventRecorder;->b()Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_18

    .line 64
    :goto_16
    const/4 v0, 0x0

    return v0

    .line 61
    :catch_18
    move-exception v0

    .line 62
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_16
.end method
