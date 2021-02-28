.class final Lcom/mob/MobSDK$3;
.super Ljava/lang/Object;
.source "MobSDK.java"

# interfaces
.implements Lcom/mob/MobUser$OnUserGotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/MobSDK;->clearUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserGot(Lcom/mob/MobUser;)V
    .registers 3

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/mob/MobUser;->getMobUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 117
    invoke-static {}, Lcom/mob/MobUser;->a()V

    .line 119
    :cond_9
    return-void
.end method
