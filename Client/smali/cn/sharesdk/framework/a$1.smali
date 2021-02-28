.class Lcn/sharesdk/framework/a$1;
.super Ljava/lang/Object;
.source "InnerPlatformActionListener.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/PlatformActionListener;

.field final synthetic b:I

.field final synthetic c:Ljava/util/HashMap;

.field final synthetic d:Lcn/sharesdk/framework/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/a;Lcn/sharesdk/framework/PlatformActionListener;ILjava/util/HashMap;)V
    .registers 5

    .prologue
    .line 87
    iput-object p1, p0, Lcn/sharesdk/framework/a$1;->d:Lcn/sharesdk/framework/a;

    iput-object p2, p0, Lcn/sharesdk/framework/a$1;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iput p3, p0, Lcn/sharesdk/framework/a$1;->b:I

    iput-object p4, p0, Lcn/sharesdk/framework/a$1;->c:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .registers 6
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "actionInner"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcn/sharesdk/framework/a$1;->d:Lcn/sharesdk/framework/a;

    iget-object v1, p0, Lcn/sharesdk/framework/a$1;->a:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-static {v0, v1}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/a;Lcn/sharesdk/framework/PlatformActionListener;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 117
    iget-object v0, p0, Lcn/sharesdk/framework/a$1;->d:Lcn/sharesdk/framework/a;

    invoke-static {v0}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/a;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 118
    iget-object v0, p0, Lcn/sharesdk/framework/a$1;->d:Lcn/sharesdk/framework/a;

    invoke-static {v0}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/a;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget v1, p0, Lcn/sharesdk/framework/a$1;->b:I

    iget-object v2, p0, Lcn/sharesdk/framework/a$1;->c:Ljava/util/HashMap;

    invoke-interface {v0, p1, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 120
    :cond_1c
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .registers 7
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "actionInner"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p3, "resInner":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcn/sharesdk/framework/a$1;->d:Lcn/sharesdk/framework/a;

    iget-object v1, p0, Lcn/sharesdk/framework/a$1;->a:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-static {v0, v1}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/a;Lcn/sharesdk/framework/PlatformActionListener;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 91
    iget-object v0, p0, Lcn/sharesdk/framework/a$1;->d:Lcn/sharesdk/framework/a;

    invoke-static {v0}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/a;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 92
    iget-object v0, p0, Lcn/sharesdk/framework/a$1;->d:Lcn/sharesdk/framework/a;

    invoke-static {v0}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/a;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget v1, p0, Lcn/sharesdk/framework/a$1;->b:I

    iget-object v2, p0, Lcn/sharesdk/framework/a$1;->c:Ljava/util/HashMap;

    invoke-interface {v0, p1, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 95
    :cond_1c
    new-instance v1, Lcn/sharesdk/framework/b/b/b;

    invoke-direct {v1}, Lcn/sharesdk/framework/b/b/b;-><init>()V

    .line 96
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v0

    iput v0, v1, Lcn/sharesdk/framework/b/b/b;->a:I

    .line 97
    const-string v0, "TencentWeibo"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v2, "name"

    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3d
    iput-object v0, v1, Lcn/sharesdk/framework/b/b/b;->b:Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p3}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/framework/b/b/b;->c:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcn/sharesdk/framework/a$1;->d:Lcn/sharesdk/framework/a;

    invoke-static {v0, p1}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/a;Lcn/sharesdk/framework/Platform;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/framework/b/b/b;->d:Ljava/lang/String;

    .line 101
    invoke-static {}, Lcn/sharesdk/framework/b/d;->a()Lcn/sharesdk/framework/b/d;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_5b

    .line 103
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/b/d;->a(Lcn/sharesdk/framework/b/b/c;)V

    .line 105
    :cond_5b
    return-void

    .line 97
    :cond_5c
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .registers 7
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "actionInner"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 108
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 109
    iget-object v0, p0, Lcn/sharesdk/framework/a$1;->d:Lcn/sharesdk/framework/a;

    iget-object v1, p0, Lcn/sharesdk/framework/a$1;->a:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-static {v0, v1}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/a;Lcn/sharesdk/framework/PlatformActionListener;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 110
    iget-object v0, p0, Lcn/sharesdk/framework/a$1;->d:Lcn/sharesdk/framework/a;

    invoke-static {v0}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/a;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 111
    iget-object v0, p0, Lcn/sharesdk/framework/a$1;->d:Lcn/sharesdk/framework/a;

    invoke-static {v0}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/a;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget v1, p0, Lcn/sharesdk/framework/a$1;->b:I

    iget-object v2, p0, Lcn/sharesdk/framework/a$1;->c:Ljava/util/HashMap;

    invoke-interface {v0, p1, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 113
    :cond_23
    return-void
.end method
