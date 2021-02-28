.class final Lcom/mob/MobSDK$2;
.super Ljava/lang/Object;
.source "MobSDK.java"

# interfaces
.implements Lcom/mob/MobUser$OnUserGotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/MobSDK;->setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/HashMap;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mob/MobSDK$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mob/MobSDK$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mob/MobSDK$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/mob/MobSDK$2;->d:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/mob/MobSDK$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserGot(Lcom/mob/MobUser;)V
    .registers 7

    .prologue
    .line 104
    invoke-virtual {p1}, Lcom/mob/MobUser;->getMobUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/mob/MobSDK$2;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mob/MobUser;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 105
    iget-object v0, p0, Lcom/mob/MobSDK$2;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/mob/MobSDK$2;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mob/MobSDK$2;->d:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lcom/mob/MobUser;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 109
    :goto_1b
    return-void

    .line 107
    :cond_1c
    iget-object v0, p0, Lcom/mob/MobSDK$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/mob/MobSDK$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/mob/MobSDK$2;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/mob/MobSDK$2;->d:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/mob/MobSDK$2;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mob/MobUser;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_1b
.end method
