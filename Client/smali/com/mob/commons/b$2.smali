.class Lcom/mob/commons/b$2;
.super Ljava/lang/Object;
.source "DataHeap.java"

# interfaces
.implements Lcom/mob/commons/LockAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/b;


# direct methods
.method constructor <init>(Lcom/mob/commons/b;)V
    .registers 2

    .prologue
    .line 133
    iput-object p1, p0, Lcom/mob/commons/b$2;->a:Lcom/mob/commons/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/mob/tools/utils/FileLocker;)Z
    .registers 5

    .prologue
    .line 135
    const/16 v0, 0x32

    new-array v1, v0, [[Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/mob/commons/b$2;->a:Lcom/mob/commons/b;

    invoke-static {v0, v1}, Lcom/mob/commons/b;->a(Lcom/mob/commons/b;[[Ljava/lang/String;)I

    move-result v0

    .line 137
    :goto_a
    if-lez v0, :cond_1c

    .line 138
    iget-object v2, p0, Lcom/mob/commons/b$2;->a:Lcom/mob/commons/b;

    invoke-static {v2, v1, v0}, Lcom/mob/commons/b;->a(Lcom/mob/commons/b;[[Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 139
    iget-object v2, p0, Lcom/mob/commons/b$2;->a:Lcom/mob/commons/b;

    invoke-static {v2, v1, v0}, Lcom/mob/commons/b;->b(Lcom/mob/commons/b;[[Ljava/lang/String;I)V

    .line 141
    :cond_19
    array-length v2, v1

    if-ge v0, v2, :cond_1e

    .line 146
    :cond_1c
    const/4 v0, 0x0

    return v0

    .line 144
    :cond_1e
    iget-object v0, p0, Lcom/mob/commons/b$2;->a:Lcom/mob/commons/b;

    invoke-static {v0, v1}, Lcom/mob/commons/b;->a(Lcom/mob/commons/b;[[Ljava/lang/String;)I

    move-result v0

    goto :goto_a
.end method
