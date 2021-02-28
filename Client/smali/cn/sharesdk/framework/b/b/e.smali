.class public Lcn/sharesdk/framework/b/b/e;
.super Lcn/sharesdk/framework/b/b/c;
.source "ExitEvent.java"


# static fields
.field private static b:I

.field private static c:J


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcn/sharesdk/framework/b/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    const-string v0, "[EXT]"

    return-object v0
.end method

.method protected a(J)V
    .registers 4

    .prologue
    .line 51
    sput-wide p1, Lcn/sharesdk/framework/b/b/e;->c:J

    .line 52
    return-void
.end method

.method protected b()I
    .registers 2

    .prologue
    .line 17
    const/16 v0, 0x1388

    return v0
.end method

.method protected c()I
    .registers 2

    .prologue
    .line 21
    const/4 v0, 0x5

    return v0
.end method

.method protected d()J
    .registers 3

    .prologue
    .line 39
    sget v0, Lcn/sharesdk/framework/b/b/e;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected e()J
    .registers 3

    .prologue
    .line 43
    sget-wide v0, Lcn/sharesdk/framework/b/b/e;->c:J

    return-wide v0
.end method

.method protected f()V
    .registers 2

    .prologue
    .line 47
    sget v0, Lcn/sharesdk/framework/b/b/e;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/sharesdk/framework/b/b/e;->b:I

    .line 48
    return-void
.end method

.method public g()Z
    .registers 3

    .prologue
    .line 25
    invoke-static {}, Lcn/sharesdk/framework/b/a/e;->a()Lcn/sharesdk/framework/b/a/e;

    move-result-object v0

    .line 26
    const-string v1, "insertExitEventCount"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/b/a/e;->g(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcn/sharesdk/framework/b/b/e;->b:I

    .line 27
    const-string v1, "lastInsertExitEventTime"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/b/a/e;->f(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcn/sharesdk/framework/b/b/e;->c:J

    .line 28
    invoke-super {p0}, Lcn/sharesdk/framework/b/b/c;->g()Z

    move-result v0

    return v0
.end method

.method public h()V
    .registers 5

    .prologue
    .line 32
    invoke-super {p0}, Lcn/sharesdk/framework/b/b/c;->h()V

    .line 33
    invoke-static {}, Lcn/sharesdk/framework/b/a/e;->a()Lcn/sharesdk/framework/b/a/e;

    move-result-object v0

    .line 34
    const-string v1, "lastInsertExitEventTime"

    sget-wide v2, Lcn/sharesdk/framework/b/b/e;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/b/a/e;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 35
    const-string v1, "insertExitEventCount"

    sget v2, Lcn/sharesdk/framework/b/b/e;->b:I

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/b/a/e;->a(Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v2, 0x7c

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcn/sharesdk/framework/b/b/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lcn/sharesdk/framework/b/b/e;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 58
    iget-object v1, p0, Lcn/sharesdk/framework/b/b/e;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/sharesdk/framework/b/b/e;->a:J

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
