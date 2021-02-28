.class Lcn/sharesdk/sina/weibo/a$1;
.super Ljava/lang/Object;
.source "SinaActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/a;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/a;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/a$1;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 66
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a$1;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/a;->a(Lcn/sharesdk/sina/weibo/a;)V

    .line 67
    const/4 v0, 0x1

    return v0
.end method
