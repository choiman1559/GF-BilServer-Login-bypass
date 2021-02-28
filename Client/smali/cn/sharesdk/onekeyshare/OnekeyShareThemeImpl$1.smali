.class Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl$1;
.super Ljava/lang/Object;
.source "OnekeyShareThemeImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

.field private final synthetic val$resOrName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl$1;->this$0:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    iput-object p2, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl$1;->val$resOrName:Ljava/lang/String;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 334
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl$1;->this$0:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    iget-object v1, v1, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl$1;->val$resOrName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 335
    .local v0, "resId":I
    if-lez v0, :cond_19

    .line 336
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl$1;->this$0:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    iget-object v1, v1, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->context:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 340
    :goto_18
    return v3

    .line 338
    :cond_19
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl$1;->this$0:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    iget-object v1, v1, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl$1;->val$resOrName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_18
.end method
