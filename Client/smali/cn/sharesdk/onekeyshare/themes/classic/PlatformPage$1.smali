.class Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$1;
.super Ljava/lang/Object;
.source "PlatformPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$1;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$1;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->finish()V

    .line 65
    return-void
.end method
