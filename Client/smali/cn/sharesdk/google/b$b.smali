.class final Lcn/sharesdk/google/b$b;
.super Ljava/lang/Object;
.source "GooglePlusUtil.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/google/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/google/b;


# direct methods
.method constructor <init>(Lcn/sharesdk/google/b;)V
    .registers 2

    .prologue
    .line 678
    iput-object p1, p0, Lcn/sharesdk/google/b$b;->a:Lcn/sharesdk/google/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 682
    sput-object p2, Lcn/sharesdk/google/b;->a:Landroid/os/IBinder;

    .line 683
    const/4 v0, 0x1

    invoke-static {v0}, Lcn/sharesdk/google/b;->a(Z)Z

    .line 684
    iget-object v0, p0, Lcn/sharesdk/google/b$b;->a:Lcn/sharesdk/google/b;

    invoke-virtual {v0, p2}, Lcn/sharesdk/google/b;->a(Landroid/os/IBinder;)V

    .line 685
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 688
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/sharesdk/google/b;->a(Z)Z

    .line 689
    const/4 v0, 0x0

    sput-object v0, Lcn/sharesdk/google/b;->a:Landroid/os/IBinder;

    .line 690
    return-void
.end method
