.class public Lcn/sharesdk/alipay/utils/AlipayHandlerActivity;
.super Landroid/app/Activity;
.source "AlipayHandlerActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    const v0, 0x103000f

    invoke-virtual {p0, v0}, Lcn/sharesdk/alipay/utils/AlipayHandlerActivity;->setTheme(I)V

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {}, Lcn/sharesdk/alipay/utils/c;->a()Lcn/sharesdk/alipay/utils/c;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcn/sharesdk/alipay/utils/AlipayHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/alipay/utils/c;->a(Landroid/content/Intent;)V

    .line 31
    invoke-virtual {p0}, Lcn/sharesdk/alipay/utils/AlipayHandlerActivity;->finish()V

    .line 32
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 37
    invoke-static {}, Lcn/sharesdk/alipay/utils/c;->a()Lcn/sharesdk/alipay/utils/c;

    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Lcn/sharesdk/alipay/utils/c;->a(Landroid/content/Intent;)V

    .line 39
    invoke-virtual {p0}, Lcn/sharesdk/alipay/utils/AlipayHandlerActivity;->finish()V

    .line 40
    return-void
.end method
