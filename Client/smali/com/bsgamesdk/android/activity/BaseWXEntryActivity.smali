.class public Lcom/bsgamesdk/android/activity/BaseWXEntryActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# static fields
.field public static final WEI_PAY_RESULT_CANCEL:I = -0x2

.field public static final WEI_PAY_RESULT_FAILED:I = -0x1

.field public static final WEI_PAY_RESULT_SUCCESS:I = 0x0

.field public static final WEI_PAY_RESULT_UNKNOWN_ERROR:I = -0x3


# instance fields
.field private a:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x3

    iput v0, p0, Lcom/bsgamesdk/android/activity/BaseWXEntryActivity;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BaseWXEntryActivity;->c:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "wei_pay_result"

    iget v2, p0, Lcom/bsgamesdk/android/activity/BaseWXEntryActivity;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "wei_pay_result_message"

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/BaseWXEntryActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "wei_pay"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/BaseWXEntryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_25
    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/BaseWXEntryActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/bsgamesdk/android/utils/f$e;->z:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/BaseWXEntryActivity;->setContentView(I)V

    sget-object v0, Lcom/bsgamesdk/android/model/c;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/BaseWXEntryActivity;->a()V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/BaseWXEntryActivity;->finish()V

    :goto_16
    return-void

    :cond_17
    sget-object v0, Lcom/bsgamesdk/android/model/c;->w:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BaseWXEntryActivity;->a:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BaseWXEntryActivity;->a:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/BaseWXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    goto :goto_16
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/activity/BaseWXEntryActivity;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BaseWXEntryActivity;->a:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    return-void
.end method

.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .registers 2

    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .registers 4

    iget v0, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    iput v0, p0, Lcom/bsgamesdk/android/activity/BaseWXEntryActivity;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->transaction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BaseWXEntryActivity;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/BaseWXEntryActivity;->a()V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/BaseWXEntryActivity;->finish()V

    return-void
.end method
