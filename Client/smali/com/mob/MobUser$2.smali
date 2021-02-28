.class final Lcom/mob/MobUser$2;
.super Ljava/lang/Object;
.source "MobUser.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/MobUser;->c(Lcom/mob/MobUser$OnUserGotListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/MobUser$OnUserGotListener;


# direct methods
.method constructor <init>(Lcom/mob/MobUser$OnUserGotListener;)V
    .registers 2

    .prologue
    .line 202
    iput-object p1, p0, Lcom/mob/MobUser$2;->a:Lcom/mob/MobUser$OnUserGotListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mob/MobUser$2;->a:Lcom/mob/MobUser$OnUserGotListener;

    invoke-static {}, Lcom/mob/MobUser;->c()Lcom/mob/MobUser;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mob/MobUser$OnUserGotListener;->onUserGot(Lcom/mob/MobUser;)V

    .line 205
    const/4 v0, 0x0

    return v0
.end method
