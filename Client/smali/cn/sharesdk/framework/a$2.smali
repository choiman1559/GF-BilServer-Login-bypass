.class Lcn/sharesdk/framework/a$2;
.super Ljava/lang/Object;
.source "InnerPlatformActionListener.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/Platform;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/PlatformActionListener;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcn/sharesdk/framework/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/a;Lcn/sharesdk/framework/PlatformActionListener;ILjava/lang/Object;)V
    .registers 5

    .prologue
    .line 185
    iput-object p1, p0, Lcn/sharesdk/framework/a$2;->d:Lcn/sharesdk/framework/a;

    iput-object p2, p0, Lcn/sharesdk/framework/a$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iput p3, p0, Lcn/sharesdk/framework/a$2;->b:I

    iput-object p4, p0, Lcn/sharesdk/framework/a$2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .registers 5
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "actionInner"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcn/sharesdk/framework/a$2;->d:Lcn/sharesdk/framework/a;

    iget-object v1, p0, Lcn/sharesdk/framework/a$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-static {v0, v1}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/a;Lcn/sharesdk/framework/PlatformActionListener;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 201
    iget-object v0, p0, Lcn/sharesdk/framework/a$2;->d:Lcn/sharesdk/framework/a;

    invoke-static {v0}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/a;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 202
    iget-object v0, p0, Lcn/sharesdk/framework/a$2;->d:Lcn/sharesdk/framework/a;

    invoke-static {v0}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/a;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget v1, p0, Lcn/sharesdk/framework/a$2;->b:I

    invoke-interface {v0, p1, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 204
    :cond_1a
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .registers 6
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
    .line 195
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcn/sharesdk/framework/a$2;->d:Lcn/sharesdk/framework/a;

    iget-object v1, p0, Lcn/sharesdk/framework/a$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-static {v0, v1}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/a;Lcn/sharesdk/framework/PlatformActionListener;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 196
    iget v0, p0, Lcn/sharesdk/framework/a$2;->b:I

    iget-object v1, p0, Lcn/sharesdk/framework/a$2;->c:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/framework/Platform;->afterRegister(ILjava/lang/Object;)V

    .line 197
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .registers 6
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 187
    iget-object v0, p0, Lcn/sharesdk/framework/a$2;->d:Lcn/sharesdk/framework/a;

    iget-object v1, p0, Lcn/sharesdk/framework/a$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-static {v0, v1}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/a;Lcn/sharesdk/framework/PlatformActionListener;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 188
    iget-object v0, p0, Lcn/sharesdk/framework/a$2;->d:Lcn/sharesdk/framework/a;

    invoke-static {v0}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/a;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 189
    iget-object v0, p0, Lcn/sharesdk/framework/a$2;->d:Lcn/sharesdk/framework/a;

    invoke-static {v0}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/a;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 191
    :cond_18
    return-void
.end method
