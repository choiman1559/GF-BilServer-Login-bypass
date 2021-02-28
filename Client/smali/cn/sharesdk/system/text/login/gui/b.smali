.class public Lcn/sharesdk/system/text/login/gui/b;
.super Lcom/mob/tools/FakeActivity;
.source "CountryPage.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcn/sharesdk/system/text/login/gui/GroupListView$OnItemClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcn/sharesdk/system/text/login/LoginActionListener;

.field private d:Lcn/sharesdk/system/text/login/gui/CountryListView;

.field private e:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    .line 51
    new-instance v0, Lcn/sharesdk/system/text/login/a/a;

    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/b;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/sharesdk/system/text/login/a/a;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/a/a;->a()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_12

    .line 55
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/b;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 57
    :cond_12
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/b;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/b;->activity:Landroid/app/Activity;

    const-string v2, "ssdk_sms_id_ll_back"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/b;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/b;->activity:Landroid/app/Activity;

    const-string v2, "ssdk_sms_id_ivSearch"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/b;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/b;->activity:Landroid/app/Activity;

    const-string v2, "ssdk_sms_id_iv_clear"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/b;->activity:Landroid/app/Activity;

    const-string v1, "ssdk_sms_id_clCountry"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 62
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/b;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/system/text/login/gui/CountryListView;

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/b;->d:Lcn/sharesdk/system/text/login/gui/CountryListView;

    .line 63
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/b;->d:Lcn/sharesdk/system/text/login/gui/CountryListView;

    invoke-virtual {v0, p0}, Lcn/sharesdk/system/text/login/gui/CountryListView;->a(Lcn/sharesdk/system/text/login/gui/GroupListView$OnItemClickListener;)V

    .line 65
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/b;->activity:Landroid/app/Activity;

    const-string v1, "ssdk_sms_id_et_put_identify"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 66
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/b;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/b;->e:Landroid/widget/EditText;

    .line 67
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/b;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 68
    return-void
.end method


# virtual methods
.method public a(Lcn/sharesdk/system/text/login/LoginActionListener;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcn/sharesdk/system/text/login/gui/b;->c:Lcn/sharesdk/system/text/login/LoginActionListener;

    .line 32
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 138
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 130
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 81
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/b;->activity:Landroid/app/Activity;

    const-string v2, "ssdk_sms_id_ll_back"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 82
    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/b;->activity:Landroid/app/Activity;

    const-string v3, "ssdk_sms_id_ivSearch"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 83
    iget-object v3, p0, Lcn/sharesdk/system/text/login/gui/b;->activity:Landroid/app/Activity;

    const-string v4, "ssdk_sms_id_iv_clear"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 84
    if-ne v0, v1, :cond_22

    .line 85
    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/gui/b;->finish()V

    .line 97
    :cond_21
    :goto_21
    return-void

    .line 86
    :cond_22
    if-ne v0, v2, :cond_58

    .line 88
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/b;->activity:Landroid/app/Activity;

    const-string v1, "ssdk_sms_id_llTitle"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 89
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/b;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/b;->activity:Landroid/app/Activity;

    const-string v1, "ssdk_sms_id_llSearch"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 91
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/b;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/b;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 93
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/b;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_21

    .line 94
    :cond_58
    if-ne v0, v3, :cond_21

    .line 95
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/b;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    goto :goto_21
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 36
    invoke-static {}, Lcn/sharesdk/system/text/login/utils/c;->a()V

    .line 37
    invoke-direct {p0}, Lcn/sharesdk/system/text/login/gui/b;->a()V

    .line 38
    return-void
.end method

.method public onFinish()Z
    .registers 4

    .prologue
    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    const-string v1, "zone"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "country"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "listener"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/b;->c:Lcn/sharesdk/system/text/login/LoginActionListener;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "page"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {p0, v0}, Lcn/sharesdk/system/text/login/gui/b;->setResult(Ljava/util/HashMap;)V

    .line 125
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onFinish()Z

    move-result v0

    return v0
.end method

.method public onItemClick(Lcn/sharesdk/system/text/login/gui/GroupListView;Landroid/view/View;II)V
    .registers 7
    .param p1, "parent"    # Lcn/sharesdk/system/text/login/gui/GroupListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "group"    # I
    .param p4, "position"    # I

    .prologue
    .line 71
    if-ltz p4, :cond_15

    .line 72
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/b;->d:Lcn/sharesdk/system/text/login/gui/CountryListView;

    invoke-virtual {v0, p3, p4}, Lcn/sharesdk/system/text/login/gui/CountryListView;->a(II)[Ljava/lang/String;

    move-result-object v0

    .line 73
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcn/sharesdk/system/text/login/gui/b;->a:Ljava/lang/String;

    .line 74
    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/b;->b:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/gui/b;->finish()V

    .line 77
    :cond_15
    return-void
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 101
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/b;->activity:Landroid/app/Activity;

    const-string v1, "ssdk_sms_id_llSearch"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 102
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4b

    .line 103
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4b

    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/b;->activity:Landroid/app/Activity;

    .line 104
    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4b

    .line 105
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/b;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/b;->activity:Landroid/app/Activity;

    const-string v1, "ssdk_sms_id_llTitle"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 107
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/b;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/b;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_41} :catch_43

    .line 109
    const/4 v0, 0x1

    .line 114
    :goto_42
    return v0

    .line 111
    :catch_43
    move-exception v0

    .line 112
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 114
    :cond_4b
    invoke-super {p0, p1, p2}, Lcom/mob/tools/FakeActivity;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_42
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onPause()V

    .line 48
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onResume()V

    .line 43
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/b;->d:Lcn/sharesdk/system/text/login/gui/CountryListView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/system/text/login/gui/CountryListView;->a(Ljava/lang/String;)V

    .line 134
    return-void
.end method
