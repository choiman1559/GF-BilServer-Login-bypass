.class Lcn/sharesdk/unity3d/ShareSDKUtils$1;
.super Ljava/lang/Object;
.source "ShareSDKUtils.java"

# interfaces
.implements Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/unity3d/ShareSDKUtils;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/unity3d/ShareSDKUtils;

.field private final synthetic val$customizeSP:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcn/sharesdk/unity3d/ShareSDKUtils;Ljava/util/HashMap;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcn/sharesdk/unity3d/ShareSDKUtils$1;->this$0:Lcn/sharesdk/unity3d/ShareSDKUtils;

    iput-object p2, p0, Lcn/sharesdk/unity3d/ShareSDKUtils$1;->val$customizeSP:Ljava/util/HashMap;

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShare(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 11
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "paramsToShare"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    .line 389
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/sharesdk/framework/ShareSDK;->platformNameToId(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 390
    .local v4, "platformID":Ljava/lang/String;
    iget-object v5, p0, Lcn/sharesdk/unity3d/ShareSDKUtils$1;->val$customizeSP:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 391
    new-instance v2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 392
    .local v2, "hashon":Lcom/mob/tools/utils/Hashon;
    iget-object v5, p0, Lcn/sharesdk/unity3d/ShareSDKUtils$1;->val$customizeSP:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 393
    .local v0, "content":Ljava/lang/String;
    invoke-static {}, Lcn/sharesdk/unity3d/ShareSDKUtils;->access$0()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 394
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "share content ==>>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 396
    :cond_3b
    invoke-virtual {v2, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 397
    .local v1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_47
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4e

    .line 401
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "hashon":Lcom/mob/tools/utils/Hashon;
    :cond_4d
    return-void

    .line 397
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v1    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "hashon":Lcom/mob/tools/utils/Hashon;
    :cond_4e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 398
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v3, v6}, Lcn/sharesdk/framework/Platform$ShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_47
.end method
