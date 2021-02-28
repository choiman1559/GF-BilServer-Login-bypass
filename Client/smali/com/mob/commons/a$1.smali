.class final Lcom/mob/commons/a$1;
.super Ljava/lang/Thread;
.source "CommonConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 367
    invoke-static {}, Lcom/mob/commons/a;->u()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 369
    invoke-static {v0}, Lcom/mob/commons/a;->a(Ljava/lang/String;)V

    .line 370
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-static {}, Lcom/mob/commons/a;->v()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/e;->d(Ljava/lang/String;)V

    .line 372
    :cond_1d
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mob/commons/a;->a(Z)Z

    .line 373
    return-void
.end method
