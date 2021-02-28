.class public Lcn/sharesdk/framework/b/b/f;
.super Lcn/sharesdk/framework/b/b/c;
.source "ShareEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/b/b/f$a;
    }
.end annotation


# static fields
.field private static o:I

.field private static p:J


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcn/sharesdk/framework/b/b/f$a;

.field public m:Ljava/lang/String;

.field public n:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcn/sharesdk/framework/b/b/c;-><init>()V

    .line 29
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/b/b/f;->d:Lcn/sharesdk/framework/b/b/f$a;

    .line 30
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    const-string v0, "[SHR]"

    return-object v0
.end method

.method protected a(J)V
    .registers 4

    .prologue
    .line 101
    sput-wide p1, Lcn/sharesdk/framework/b/b/f;->p:J

    .line 102
    return-void
.end method

.method protected b()I
    .registers 2

    .prologue
    .line 81
    const/16 v0, 0x1388

    return v0
.end method

.method protected c()I
    .registers 2

    .prologue
    .line 85
    const/16 v0, 0x1e

    return v0
.end method

.method protected d()J
    .registers 3

    .prologue
    .line 89
    sget v0, Lcn/sharesdk/framework/b/b/f;->o:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected e()J
    .registers 3

    .prologue
    .line 93
    sget-wide v0, Lcn/sharesdk/framework/b/b/f;->p:J

    return-wide v0
.end method

.method protected f()V
    .registers 2

    .prologue
    .line 97
    sget v0, Lcn/sharesdk/framework/b/b/f;->o:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/sharesdk/framework/b/b/f;->o:I

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0x7c

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcn/sharesdk/framework/b/b/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/sharesdk/framework/b/b/f;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/sharesdk/framework/b/b/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcn/sharesdk/framework/b/b/f;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e0

    const-string v0, ""

    :goto_2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v0, ""

    .line 42
    iget-object v2, p0, Lcn/sharesdk/framework/b/b/f;->n:[Ljava/lang/String;

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcn/sharesdk/framework/b/b/f;->n:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_5a

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\""

    iget-object v3, p0, Lcn/sharesdk/framework/b/b/f;->n:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    :cond_5a
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    iget-object v0, p0, Lcn/sharesdk/framework/b/b/f;->d:Lcn/sharesdk/framework/b/b/f$a;

    if-eqz v0, :cond_93

    .line 48
    iget-object v0, p0, Lcn/sharesdk/framework/b/b/f;->d:Lcn/sharesdk/framework/b/b/f$a;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/b/f$a;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    :try_start_6e
    iget-object v2, p0, Lcn/sharesdk/framework/b/b/f;->f:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 53
    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_90
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_93} :catch_e4

    .line 60
    :cond_93
    :goto_93
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    iget-object v0, p0, Lcn/sharesdk/framework/b/b/f;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a3

    .line 62
    iget-object v0, p0, Lcn/sharesdk/framework/b/b/f;->l:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_a3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    iget-object v0, p0, Lcn/sharesdk/framework/b/b/f;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_db

    .line 67
    :try_start_ae
    iget-object v0, p0, Lcn/sharesdk/framework/b/b/f;->f:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/sharesdk/framework/b/b/f;->m:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 68
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d8

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 70
    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_d8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_db
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_db} :catch_ed

    .line 77
    :cond_db
    :goto_db
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 40
    :cond_e0
    iget-object v0, p0, Lcn/sharesdk/framework/b/b/f;->c:Ljava/lang/String;

    goto/16 :goto_2b

    .line 56
    :catch_e4
    move-exception v0

    .line 57
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_93

    .line 73
    :catch_ed
    move-exception v0

    .line 74
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_db
.end method
