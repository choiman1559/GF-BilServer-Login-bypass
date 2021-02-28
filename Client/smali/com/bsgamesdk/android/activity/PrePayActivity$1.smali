.class Lcom/bsgamesdk/android/activity/PrePayActivity$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/PrePayActivity;->doCheckPayCondition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lcom/bsgamesdk/android/model/PayConditionModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/PrePayActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/PrePayActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/bsgamesdk/android/model/PayConditionModel;
    .registers 7

    :try_start_0
    new-instance v0, Lcom/bsgamesdk/android/model/PayConditionModel;

    invoke-direct {v0}, Lcom/bsgamesdk/android/model/PayConditionModel;-><init>()V

    sget-object v1, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PrePayActivity;->a(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/PrePayActivity;->b(Lcom/bsgamesdk/android/activity/PrePayActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v4}, Lcom/bsgamesdk/android/activity/PrePayActivity;->c(Lcom/bsgamesdk/android/activity/PrePayActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/bsgamesdk/android/api/k;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bsgamesdk/android/model/PayConditionModel;->code:I

    const-string v1, ""

    iput-object v1, v0, Lcom/bsgamesdk/android/model/PayConditionModel;->message:Ljava/lang/String;
    :try_end_23
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_0 .. :try_end_23} :catch_24

    :goto_23
    return-object v0

    :catch_24
    move-exception v0

    move-object v1, v0

    iget v0, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    sget-object v2, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->E_MINOR_LIMITED:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_43

    new-instance v0, Lcom/bsgamesdk/android/model/PayConditionModel;

    invoke-direct {v0}, Lcom/bsgamesdk/android/model/PayConditionModel;-><init>()V

    const/4 v2, 0x2

    iput v2, v0, Lcom/bsgamesdk/android/model/PayConditionModel;->code:I

    iget-object v1, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->newConfig:Lorg/json/JSONObject;

    const-string v2, "limit_message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bsgamesdk/android/model/PayConditionModel;->message:Ljava/lang/String;

    goto :goto_23

    :cond_43
    iget v0, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    sget-object v2, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->E_MINOR_LIMITED_PARENT:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_60

    new-instance v0, Lcom/bsgamesdk/android/model/PayConditionModel;

    invoke-direct {v0}, Lcom/bsgamesdk/android/model/PayConditionModel;-><init>()V

    const/4 v2, 0x4

    iput v2, v0, Lcom/bsgamesdk/android/model/PayConditionModel;->code:I

    iget-object v1, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->newConfig:Lorg/json/JSONObject;

    const-string v2, "limit_message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bsgamesdk/android/model/PayConditionModel;->message:Ljava/lang/String;

    goto :goto_23

    :cond_60
    iget v0, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    sget-object v2, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->E_GAME_GOODS_NOT_EXIST:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_7e

    new-instance v0, Lcom/bsgamesdk/android/model/PayConditionModel;

    invoke-direct {v0}, Lcom/bsgamesdk/android/model/PayConditionModel;-><init>()V

    sget-object v2, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->E_GAME_GOODS_NOT_EXIST:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/bsgamesdk/android/model/PayConditionModel;->code:I

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bsgamesdk/android/model/PayConditionModel;->message:Ljava/lang/String;

    goto :goto_23

    :cond_7e
    new-instance v0, Lcom/bsgamesdk/android/model/PayConditionModel;

    invoke-direct {v0}, Lcom/bsgamesdk/android/model/PayConditionModel;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Lcom/bsgamesdk/android/model/PayConditionModel;->code:I

    const-string v1, ""

    iput-object v1, v0, Lcom/bsgamesdk/android/model/PayConditionModel;->message:Ljava/lang/String;

    goto :goto_23
.end method

.method protected a(Lcom/bsgamesdk/android/model/PayConditionModel;)V
    .registers 7

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-static {}, Lcom/bsgamesdk/android/utils/k;->a()V

    iget v0, p1, Lcom/bsgamesdk/android/model/PayConditionModel;->code:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a3

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->d(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->e(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->f(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/bsgamesdk/android/model/PayConditionModel;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_97

    :try_start_2e
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->g(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    iget-object v2, p1, Lcom/bsgamesdk/android/model/PayConditionModel;->message:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/activity/PrePayActivity;->a(Lcom/bsgamesdk/android/activity/PrePayActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_43} :catch_8a

    :goto_43
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->f(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/bsgamesdk/android/utils/f$d;->cn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/bsgamesdk/android/activity/PrePayActivity$1$1;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/PrePayActivity$1$1;-><init>(Lcom/bsgamesdk/android/activity/PrePayActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->h(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/bsgamesdk/android/activity/PrePayActivity$1$2;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/PrePayActivity$1$2;-><init>(Lcom/bsgamesdk/android/activity/PrePayActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->i(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->h(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->j(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->k(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_89
    return-void

    :catch_8a
    move-exception v0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->g(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/bsgamesdk/android/model/PayConditionModel;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_43

    :cond_97
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->g(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u60a8\u7684\u8d26\u53f7\u8fbe\u5230\u672a\u6210\u5e74\u4eba\u652f\u4ed8\u989d\u5ea6\u9650\u5236\uff0c\u6682\u65e0\u6cd5\u4e3a\u60a8\u63d0\u4f9b\u652f\u4ed8\u670d\u52a1\u3002"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_43

    :cond_a3
    iget v0, p1, Lcom/bsgamesdk/android/model/PayConditionModel;->code:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_145

    iget-object v0, p1, Lcom/bsgamesdk/android/model/PayConditionModel;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12f

    :try_start_b0
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->l(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    iget-object v2, p1, Lcom/bsgamesdk/android/model/PayConditionModel;->message:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/activity/PrePayActivity;->a(Lcom/bsgamesdk/android/activity/PrePayActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_c5} :catch_122

    :goto_c5
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->m(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/bsgamesdk/android/activity/PrePayActivity$1$3;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/PrePayActivity$1$3;-><init>(Lcom/bsgamesdk/android/activity/PrePayActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->h(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/bsgamesdk/android/activity/PrePayActivity$1$4;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/PrePayActivity$1$4;-><init>(Lcom/bsgamesdk/android/activity/PrePayActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->d(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->e(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->f(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->i(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->h(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->j(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->k(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_89

    :catch_122
    move-exception v0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->l(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/bsgamesdk/android/model/PayConditionModel;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c5

    :cond_12f
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->l(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/b;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c5

    :cond_145
    iget v0, p1, Lcom/bsgamesdk/android/model/PayConditionModel;->code:I

    sget-object v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->E_GAME_GOODS_NOT_EXIST:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_15a

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    iget v1, p1, Lcom/bsgamesdk/android/model/PayConditionModel;->code:I

    iget-object v2, p1, Lcom/bsgamesdk/android/model/PayConditionModel;->message:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bsgamesdk/android/activity/PrePayActivity;->a(Lcom/bsgamesdk/android/activity/PrePayActivity;ILjava/lang/String;)V

    goto/16 :goto_89

    :cond_15a
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->n(Lcom/bsgamesdk/android/activity/PrePayActivity;)V

    goto/16 :goto_89
.end method

.method protected varargs b([Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PrePayActivity;->a(Lcom/bsgamesdk/android/activity/PrePayActivity;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a([Ljava/lang/String;)Lcom/bsgamesdk/android/model/PayConditionModel;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/bsgamesdk/android/model/PayConditionModel;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a(Lcom/bsgamesdk/android/model/PayConditionModel;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->b([Ljava/lang/String;)V

    return-void
.end method
