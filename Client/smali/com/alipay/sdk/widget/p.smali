.class public Lcom/alipay/sdk/widget/p;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/widget/p$c;,
        Lcom/alipay/sdk/widget/p$b;,
        Lcom/alipay/sdk/widget/p$a;
    }
.end annotation


# static fields
.field private static f:Landroid/os/Handler;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/webkit/WebView;

.field private g:Lcom/alipay/sdk/widget/p$a;

.field private h:Lcom/alipay/sdk/widget/p$b;

.field private i:Lcom/alipay/sdk/widget/p$c;

.field private final j:Lcom/alipay/sdk/sys/a;

.field private k:Landroid/view/View$OnClickListener;

.field private final l:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alipay/sdk/widget/p;->f:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/alipay/sdk/sys/a;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/alipay/sdk/widget/q;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/widget/q;-><init>(Lcom/alipay/sdk/widget/p;)V

    iput-object v0, p0, Lcom/alipay/sdk/widget/p;->k:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/alipay/sdk/widget/p;->j:Lcom/alipay/sdk/sys/a;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/alipay/sdk/widget/p;->l:F

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/sdk/widget/p;->setOrientation(I)V

    invoke-direct {p0, p1}, Lcom/alipay/sdk/widget/p;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/alipay/sdk/widget/p;->b(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/alipay/sdk/widget/p;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/sdk/sys/a;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/alipay/sdk/widget/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/alipay/sdk/sys/a;)V

    return-void
.end method

.method private a(I)I
    .registers 4

    int-to-float v0, p1

    iget v1, p0, Lcom/alipay/sdk/widget/p;->l:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/alipay/sdk/widget/p;)Lcom/alipay/sdk/widget/p$c;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->i:Lcom/alipay/sdk/widget/p$c;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 12

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/16 v7, 0xc

    const/4 v6, -0x2

    const/4 v5, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v1, -0xd000001

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/sdk/widget/p;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/sdk/widget/p;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alipay/sdk/widget/p;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/alipay/sdk/widget/p;->a:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/alipay/sdk/widget/p;->a:Landroid/widget/ImageView;

    const-string v2, "iVBORw0KGgoAAAANSUhEUgAAAEgAAABIBAMAAACnw650AAAAFVBMVEUAAAARjusRkOkQjuoRkeoRj+oQjunya570AAAABnRSTlMAinWeSkk7CjRNAAAAZElEQVRIx+3MOw6AIBQF0YsrMDGx1obaLeGH/S9BQgkJ82rypp4ceTN1ilvyKizmZIAyU7FML0JVYig55BBAfQ2EU4V4CpZJ+2AiSj11C6rUoTannBpRn4W6xNQjLBSI2+TN0w/+3HT2wPClrQAAAABJRU5ErkJggg=="

    invoke-static {v2, p1}, Lcom/alipay/sdk/util/k;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/alipay/sdk/widget/p;->a:Landroid/widget/ImageView;

    invoke-direct {p0, v7}, Lcom/alipay/sdk/widget/p;->a(I)I

    move-result v2

    invoke-direct {p0, v7}, Lcom/alipay/sdk/widget/p;->a(I)I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/alipay/sdk/widget/p;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v2, -0x262627

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v9}, Lcom/alipay/sdk/widget/p;->a(I)I

    move-result v3

    const/16 v4, 0x19

    invoke-direct {p0, v4}, Lcom/alipay/sdk/widget/p;->a(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/sdk/widget/p;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/sdk/widget/p;->b:Landroid/widget/TextView;

    const v2, -0xeeeeef

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/alipay/sdk/widget/p;->b:Landroid/widget/TextView;

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/alipay/sdk/widget/p;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lcom/alipay/sdk/widget/p;->b:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lcom/alipay/sdk/widget/p;->a(I)I

    move-result v2

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lcom/alipay/sdk/widget/p;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/sdk/widget/p;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/sdk/widget/p;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alipay/sdk/widget/p;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/alipay/sdk/widget/p;->c:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/alipay/sdk/widget/p;->c:Landroid/widget/ImageView;

    const-string v2, "iVBORw0KGgoAAAANSUhEUgAAAEgAAABICAMAAABiM0N1AAAAmVBMVEUAAAARj+oQjuoRkOsVk/AQj+oRjuoQj+oSkO3///8Rj+kRj+oQkOsTk+whm/8Qj+oRj+oQj+oSkus2p/8QjuoQj+oQj+oQj+oQj+oRj+oTkuwRj+oQj+oRj+oRj+oSkOsSkO0ZlfMbk+8XnPgQj+oRj+oQj+oQj+sSj+sRkOoSkescqv8Rj+oQj+oSj+sXku4Rj+kQjuoQjumXGBCVAAAAMnRSTlMAxPtPF8ry7CoB9npbGwe6lm0wBODazb1+aSejm5GEYjcTDwvls6uJc0g/CdWfRCF20AXrk5QAAAJqSURBVFjD7ZfXmpswEIUFphmDCxi3talurGvm/R8uYSDe5FNBwlzsxf6XmvFBmiaZ/PCdWDk9CWn61OhHCMAaXfoRAth7wx6EkMXnWyrho4yg4bDpquI8Jy78Q7eoj9cmUFijsaLM0JsD9CD0uQAa9aNdPuCFvbA7B9t/Becap8Pu6Q/2jcyH81VHc/WCHDQZXwbvtUhQ61iDlqadncU6Rp31yGkZIzOAu7AjtPpYGREzq/pY5DRFHS1siyO6HfkOKTrMjdb2qevV4zosK7MbkFY2LmYk55hL6juCIFWMOI2KGzblmho3b18EIbxL1hs6r5m2Q2WaEElwS3NW4xh6ZZJuzTtUsBKT4G0h35s4y1mNgkNoS6TZ8SKBXTZQGBNYdPTozXGYKoyLAmOasttjThT4xT6Ch+2qIjRhV9Ja3NC87Kyo5We1vCNEMW1T+j1VLZ9UhE54Q1DL52r5piJ0YxdegvWlHOwTu76uKkJX+MOTHno4YFSEbHYdhViojsLrCTg/MKnhKWaEYzvkZFM8aOkPH7iTSvoFZKD7jGEJbarkRaxQyOeWvGVIbsji152jK7TbDgRzcIuz7SGj89BFU8d30TqWeDtrILxyTkD1IXfvmHseuU3lVHDz607bw0f3xDqejm5ncd0j8VDwfoibRy8RcgTkWHBvocbDbMlJsQAkGnAOHwGy90kLmQY1Wkob07/GaCNRIzdoWK7/+6y/XkLDJCcynOGFuUrKIMuCMonNr9VpSOQoIxBgJ0SacGbzZNy4ICrkscvU2fpElYz+U3sd+aQThjfVmjNa5i15kLcojM3Gz8kP34jf4VaV3X55gNEAAAAASUVORK5CYII="

    invoke-static {v2, p1}, Lcom/alipay/sdk/util/k;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/alipay/sdk/widget/p;->c:Landroid/widget/ImageView;

    invoke-direct {p0, v7}, Lcom/alipay/sdk/widget/p;->a(I)I

    move-result v2

    invoke-direct {p0, v7}, Lcom/alipay/sdk/widget/p;->a(I)I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/alipay/sdk/widget/p;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x30

    invoke-direct {p0, v2}, Lcom/alipay/sdk/widget/p;->a(I)I

    move-result v2

    invoke-direct {v1, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/sdk/widget/p;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic b()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/alipay/sdk/widget/p;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/sdk/widget/p;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x103001f

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/alipay/sdk/widget/p;->d:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->d:Landroid/widget/ProgressBar;

    const v1, -0xd000001

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/alipay/sdk/widget/p;->a(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/alipay/sdk/widget/p;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/sdk/widget/p;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/sdk/widget/p;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .registers 8

    const/4 v5, -0x1

    const/4 v4, 0x1

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    invoke-virtual {p0, v0, p1}, Lcom/alipay/sdk/widget/p;->a(Landroid/webkit/WebView;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    const-wide/32 v2, 0x500000

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    :try_start_49
    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5e} :catch_69

    :goto_5e
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/sdk/widget/p;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catch_69
    move-exception v0

    goto :goto_5e
.end method

.method static synthetic d(Lcom/alipay/sdk/widget/p;)Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/sdk/widget/p;)Lcom/alipay/sdk/widget/p$a;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->g:Lcom/alipay/sdk/widget/p$a;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/sdk/widget/p;)Lcom/alipay/sdk/widget/p$b;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->h:Lcom/alipay/sdk/widget/p$b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/sdk/widget/p;->removeAllViews()V

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method protected a(Landroid/webkit/WebView;Landroid/content/Context;)V
    .registers 8

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/widget/p;->j:Lcom/alipay/sdk/sys/a;

    invoke-static {v2, p2}, Lcom/alipay/sdk/util/n;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "15.7.4"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AlipaySDK("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .registers 4

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    return-void
.end method

.method public getBackButton()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getProgressbar()Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getRefreshButton()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    return-object v0
.end method

.method public setChromeProxy(Lcom/alipay/sdk/widget/p$a;)V
    .registers 4

    iput-object p1, p0, Lcom/alipay/sdk/widget/p;->g:Lcom/alipay/sdk/widget/p$a;

    if-nez p1, :cond_b

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/sdk/widget/s;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/widget/s;-><init>(Lcom/alipay/sdk/widget/p;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_a
.end method

.method public setWebClientProxy(Lcom/alipay/sdk/widget/p$b;)V
    .registers 4

    iput-object p1, p0, Lcom/alipay/sdk/widget/p;->h:Lcom/alipay/sdk/widget/p$b;

    if-nez p1, :cond_b

    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/sdk/widget/t;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/widget/t;-><init>(Lcom/alipay/sdk/widget/p;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_a
.end method

.method public setWebEventProxy(Lcom/alipay/sdk/widget/p$c;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/widget/p;->i:Lcom/alipay/sdk/widget/p$c;

    return-void
.end method
