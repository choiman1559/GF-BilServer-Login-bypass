.class public Lcn/sharesdk/system/text/login/a/a;
.super Ljava/lang/Object;
.source "CountryListPageLayout.java"


# instance fields
.field a:Landroid/widget/LinearLayout;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcn/sharesdk/system/text/login/a/a;->a:Landroid/widget/LinearLayout;

    .line 15
    iput-object v0, p0, Lcn/sharesdk/system/text/login/a/a;->b:Landroid/content/Context;

    .line 18
    iput-object p1, p0, Lcn/sharesdk/system/text/login/a/a;->b:Landroid/content/Context;

    .line 19
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/sharesdk/system/text/login/a/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/system/text/login/a/a;->a:Landroid/widget/LinearLayout;

    .line 20
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 22
    iget-object v1, p0, Lcn/sharesdk/system/text/login/a/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 24
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 27
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/a;->b:Landroid/content/Context;

    invoke-static {v0, v3}, Lcn/sharesdk/system/text/login/a/b;->a(Landroid/content/Context;Z)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcn/sharesdk/system/text/login/a/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 29
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcn/sharesdk/system/text/login/a/a;->a(Landroid/widget/LinearLayout;)V

    .line 30
    return-void
.end method


# virtual methods
.method public a()Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/a;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected a(Landroid/widget/LinearLayout;)V
    .registers 7

    .prologue
    .line 38
    new-instance v0, Lcn/sharesdk/system/text/login/gui/CountryListView;

    iget-object v1, p0, Lcn/sharesdk/system/text/login/a/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/sharesdk/system/text/login/gui/CountryListView;-><init>(Landroid/content/Context;)V

    .line 39
    iget-object v1, p0, Lcn/sharesdk/system/text/login/a/a;->b:Landroid/content/Context;

    const-string v2, "ssdk_sms_id_clCountry"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/system/text/login/gui/CountryListView;->setId(I)V

    .line 40
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 42
    invoke-virtual {v0, v1}, Lcn/sharesdk/system/text/login/gui/CountryListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 44
    return-void
.end method
