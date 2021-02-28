.class final Lcom/mob/MobUser$1;
.super Ljava/lang/Object;
.source "MobUser.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/MobUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 9

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4c

    .line 87
    :goto_8
    return v6

    .line 62
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 63
    aget-object v1, v0, v6

    check-cast v1, Ljava/lang/String;

    .line 64
    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    .line 65
    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/String;

    .line 67
    const/4 v4, 0x3

    aget-object v4, v0, v4

    check-cast v4, Ljava/util/HashMap;

    .line 68
    const/4 v5, 0x4

    aget-object v0, v0, v5

    check-cast v0, Ljava/lang/String;

    .line 69
    invoke-static {v1, v2, v3, v4, v0}, Lcom/mob/MobUser;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_8

    .line 72
    :pswitch_29
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 73
    aget-object v1, v0, v6

    check-cast v1, Ljava/lang/String;

    .line 74
    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    .line 76
    aget-object v0, v0, v3

    check-cast v0, Ljava/util/HashMap;

    .line 77
    invoke-static {v1, v2, v0}, Lcom/mob/MobUser;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_8

    .line 80
    :pswitch_3f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mob/MobUser$OnUserGotListener;

    .line 81
    invoke-static {v0}, Lcom/mob/MobUser;->b(Lcom/mob/MobUser$OnUserGotListener;)V

    goto :goto_8

    .line 84
    :pswitch_47
    invoke-static {}, Lcom/mob/MobUser;->b()V

    goto :goto_8

    .line 60
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_29
        :pswitch_3f
        :pswitch_47
    .end packed-switch
.end method
