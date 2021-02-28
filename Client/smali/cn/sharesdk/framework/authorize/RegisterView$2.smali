.class Lcn/sharesdk/framework/authorize/RegisterView$2;
.super Landroid/webkit/WebChromeClient;
.source "RegisterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/authorize/RegisterView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/sharesdk/framework/authorize/RegisterView;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/authorize/RegisterView;I)V
    .registers 3

    .prologue
    .line 119
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/RegisterView$2;->b:Lcn/sharesdk/framework/authorize/RegisterView;

    iput p2, p0, Lcn/sharesdk/framework/authorize/RegisterView$2;->a:I

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 121
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 122
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/RegisterView$2;->b:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-static {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->a(Lcn/sharesdk/framework/authorize/RegisterView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 123
    iget v1, p0, Lcn/sharesdk/framework/authorize/RegisterView$2;->a:I

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 124
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/RegisterView$2;->b:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-static {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->a(Lcn/sharesdk/framework/authorize/RegisterView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    if-lez p2, :cond_30

    const/16 v0, 0x64

    if-ge p2, v0, :cond_30

    .line 126
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/RegisterView$2;->b:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-static {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->a(Lcn/sharesdk/framework/authorize/RegisterView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    :goto_2f
    return-void

    .line 128
    :cond_30
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/RegisterView$2;->b:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-static {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->a(Lcn/sharesdk/framework/authorize/RegisterView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2f
.end method
