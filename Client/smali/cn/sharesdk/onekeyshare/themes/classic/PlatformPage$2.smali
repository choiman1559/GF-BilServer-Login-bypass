.class Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;
.super Ljava/lang/Object;
.source "PlatformPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->showEditPage(Lcn/sharesdk/framework/Platform;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

.field private final synthetic val$platform:Lcn/sharesdk/framework/Platform;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Lcn/sharesdk/framework/Platform;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    iput-object p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->val$platform:Lcn/sharesdk/framework/Platform;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 122
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-static {v4}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->access$0(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)Z

    move-result v1

    .line 123
    .local v1, "isSilent":Z
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->val$platform:Lcn/sharesdk/framework/Platform;

    instance-of v0, v4, Lcn/sharesdk/framework/CustomPlatform;

    .line 124
    .local v0, "isCustomPlatform":Z
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->val$platform:Lcn/sharesdk/framework/Platform;

    invoke-static {v4, v5}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->access$1(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Lcn/sharesdk/framework/Platform;)Z

    move-result v2

    .line 125
    .local v2, "isUseClientToShare":Z
    if-nez v1, :cond_18

    if-nez v0, :cond_18

    if-eqz v2, :cond_20

    .line 126
    :cond_18
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->val$platform:Lcn/sharesdk/framework/Platform;

    invoke-static {v4, v5}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->access$2(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Lcn/sharesdk/framework/Platform;)V

    .line 138
    :cond_1f
    :goto_1f
    return-void

    .line 128
    :cond_20
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->val$platform:Lcn/sharesdk/framework/Platform;

    invoke-static {v4, v5}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->access$3(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v3

    .line 129
    .local v3, "sp":Lcn/sharesdk/framework/Platform$ShareParams;
    if-eqz v3, :cond_1f

    .line 131
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 132
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-static {v4}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->access$4(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    move-result-object v4

    if-eqz v4, :cond_42

    .line 133
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-static {v4}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->access$4(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    move-result-object v4

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->val$platform:Lcn/sharesdk/framework/Platform;

    invoke-interface {v4, v5, v3}, Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;->onShare(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 135
    :cond_42
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-static {v4}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->access$5(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)Lcn/sharesdk/onekeyshare/themes/classic/ClassicTheme;

    move-result-object v4

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-static {v5}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->access$6(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->val$platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v4, v5, v6, v3}, Lcn/sharesdk/onekeyshare/themes/classic/ClassicTheme;->showEditPage(Landroid/content/Context;Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V

    goto :goto_1f
.end method
