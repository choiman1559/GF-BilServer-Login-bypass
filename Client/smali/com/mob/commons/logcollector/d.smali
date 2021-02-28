.class public Lcom/mob/commons/logcollector/d;
.super Ljava/lang/Object;
.source "LogsSharePrefrence.java"


# static fields
.field private static a:Lcom/mob/commons/logcollector/d;


# instance fields
.field private b:Lcom/mob/tools/utils/SharePrefrenceHelper;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mob/commons/logcollector/d;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    .line 26
    iget-object v0, p0, Lcom/mob/commons/logcollector/d;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "mob_sdk_exception"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;I)V

    .line 27
    return-void
.end method

.method public static a()Lcom/mob/commons/logcollector/d;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/mob/commons/logcollector/d;->a:Lcom/mob/commons/logcollector/d;

    if-nez v0, :cond_b

    .line 31
    new-instance v0, Lcom/mob/commons/logcollector/d;

    invoke-direct {v0}, Lcom/mob/commons/logcollector/d;-><init>()V

    sput-object v0, Lcom/mob/commons/logcollector/d;->a:Lcom/mob/commons/logcollector/d;

    .line 33
    :cond_b
    sget-object v0, Lcom/mob/commons/logcollector/d;->a:Lcom/mob/commons/logcollector/d;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 5

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mob/commons/logcollector/d;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "is_upload_crash"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    return-void
.end method

.method public a(J)V
    .registers 6

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mob/commons/logcollector/d;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "service_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 38
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mob/commons/logcollector/d;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "err_log_filter"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public a(Z)V
    .registers 5

    .prologue
    .line 46
    iget-object v1, p0, Lcom/mob/commons/logcollector/d;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "is_upload_err_log"

    if-eqz p1, :cond_f

    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    return-void

    .line 46
    :cond_f
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public b()J
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mob/commons/logcollector/d;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "service_time"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(I)V
    .registers 5

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mob/commons/logcollector/d;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "is_upload_sdkerr"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    return-void
.end method

.method public c(I)V
    .registers 5

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mob/commons/logcollector/d;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "is_upload_apperr"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    return-void
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mob/commons/logcollector/d;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "is_upload_err_log"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 51
    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public d()I
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mob/commons/logcollector/d;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "is_upload_crash"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public e()I
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mob/commons/logcollector/d;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "is_upload_sdkerr"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public f()I
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mob/commons/logcollector/d;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "is_upload_apperr"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mob/commons/logcollector/d;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "err_log_filter"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
