.class Lcn/sharesdk/google/b$1;
.super Ljava/lang/Object;
.source "GooglePlusUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/google/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/google/b;


# direct methods
.method constructor <init>(Lcn/sharesdk/google/b;)V
    .registers 2

    .prologue
    .line 170
    iput-object p1, p0, Lcn/sharesdk/google/b$1;->a:Lcn/sharesdk/google/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 175
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/google/b$1;->a:Lcn/sharesdk/google/b;

    invoke-static {v0}, Lcn/sharesdk/google/b;->a(Lcn/sharesdk/google/b;)I

    move-result v0

    const/16 v1, 0x1388

    if-ge v0, v1, :cond_21

    .line 176
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 180
    :goto_f
    iget-object v0, p0, Lcn/sharesdk/google/b$1;->a:Lcn/sharesdk/google/b;

    invoke-static {v0}, Lcn/sharesdk/google/b;->b(Lcn/sharesdk/google/b;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 181
    iget-object v0, p0, Lcn/sharesdk/google/b$1;->a:Lcn/sharesdk/google/b;

    const-string v1, "INTERNAL_ERROR"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcn/sharesdk/google/b;->a(Lcn/sharesdk/google/b;Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 187
    :cond_20
    :goto_20
    return-void

    .line 178
    :cond_21
    iget-object v0, p0, Lcn/sharesdk/google/b$1;->a:Lcn/sharesdk/google/b;

    invoke-static {v0}, Lcn/sharesdk/google/b;->a(Lcn/sharesdk/google/b;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_f

    .line 183
    :catch_2c
    move-exception v0

    .line 184
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_20
.end method
