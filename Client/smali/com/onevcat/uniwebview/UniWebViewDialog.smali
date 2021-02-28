.class Lcom/onevcat/uniwebview/UniWebViewDialog;
.super Landroid/app/Dialog;
.source "UniWebViewDialog.java"

# interfaces
.implements Lcom/onevcat/uniwebview/OnKeyboardVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;
    }
.end annotation


# static fields
.field static final ANIMATION_EDGE_BOTTOM:I = 0x3

.field static final ANIMATION_EDGE_LEFT:I = 0x2

.field static final ANIMATION_EDGE_NONE:I = 0x0

.field static final ANIMATION_EDGE_RIGHT:I = 0x4

.field static final ANIMATION_EDGE_TOP:I = 0x1

.field static defaultUserAgent:Ljava/lang/String;

.field static presetUserAgent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activity:Landroid/app/Activity;

.field private animating:Z

.field private backButtonEnabled:Z

.field private chromeClient:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

.field private headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private height:I

.field private immersiveMode:Z

.field private isLoading:Z

.field final listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

.field private loadingInterrupted:Z

.field private openLinksInExternalBrowser:Z

.field private permissionTrustDomains:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private schemes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private showHTTPAuthPopUpWindow:Z

.field private showSpinnerWhileLoading:Z

.field private spinner:Landroid/app/ProgressDialog;

.field private spinnerText:Ljava/lang/String;

.field private sslExceptionDomains:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field touchFromAnotherDialog:Z

.field private uniWebView:Lcom/onevcat/uniwebview/UniWebView;

.field private userAgent:Ljava/lang/String;

.field private userInteractionEnabled:Z

.field videoContainer:Landroid/widget/FrameLayout;

.field private webViewAlpha:F

.field webViewContainer:Landroid/widget/FrameLayout;

.field private webViewName:Ljava/lang/String;

.field private webViewShowing:Z

.field private webViewVisible:Z

.field private width:I

.field private workaround:Lcom/onevcat/uniwebview/AndroidBug5497Workaround;

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->presetUserAgent:Ljava/util/HashMap;

    .line 124
    const-string v0, ""

    sput-object v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->defaultUserAgent:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    const v0, 0x103006c

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 64
    iput-boolean v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->immersiveMode:Z

    .line 65
    iput-boolean v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->showHTTPAuthPopUpWindow:Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->spinnerText:Ljava/lang/String;

    .line 71
    iput-boolean v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->userInteractionEnabled:Z

    .line 107
    iput-boolean v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->backButtonEnabled:Z

    .line 109
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewAlpha:F

    .line 114
    iput-boolean v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewShowing:Z

    .line 117
    iput-boolean v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewVisible:Z

    .line 141
    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->defaultUserAgent:Ljava/lang/String;

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->userAgent:Ljava/lang/String;

    .line 189
    iput-boolean v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->touchFromAnotherDialog:Z

    .line 161
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Creating new UniWebView dialog."

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->debug(Ljava/lang/String;)V

    .line 163
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->activity:Landroid/app/Activity;

    .line 164
    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    .line 166
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->schemes:Ljava/util/HashSet;

    .line 167
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->schemes:Ljava/util/HashSet;

    const-string v1, "uniwebview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->permissionTrustDomains:Ljava/util/HashSet;

    .line 170
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->sslExceptionDomains:Ljava/util/HashSet;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->headers:Ljava/util/HashMap;

    .line 173
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->prepareWindow()V

    .line 174
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->hideSystemUI()V

    .line 175
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->addWebViewContent()V

    .line 177
    invoke-virtual {p0, v2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setBouncesEnabled(Z)V

    .line 178
    invoke-direct {p0, p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setKeyboardVisibilityListener(Lcom/onevcat/uniwebview/OnKeyboardVisibilityListener;)V

    .line 179
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewContainer:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->assistFrameLayout(Landroid/widget/FrameLayout;Landroid/app/Activity;)Lcom/onevcat/uniwebview/AndroidBug5497Workaround;

    move-result-object v0

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->workaround:Lcom/onevcat/uniwebview/AndroidBug5497Workaround;

    .line 181
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    new-instance v1, Lcom/onevcat/uniwebview/UniWebViewDialog$1;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewDialog$1;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/onevcat/uniwebview/UniWebViewDialog;ZLjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->finishShowDialog(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->animating:Z

    return p1
.end method

.method static synthetic access$200(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .registers 3
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->removeUTFCharacters(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->unescapeJavaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/onevcat/uniwebview/UniWebViewDialog;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private addWebViewContent()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 681
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewContainer:Landroid/widget/FrameLayout;

    .line 682
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 684
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->videoContainer:Landroid/widget/FrameLayout;

    .line 685
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->videoContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 688
    new-instance v0, Lcom/onevcat/uniwebview/UniWebView;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/onevcat/uniwebview/UniWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    .line 690
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewDialog$8;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog$8;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    .line 698
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    new-instance v1, Lcom/onevcat/uniwebview/UniWebViewClient;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewClient;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebView;->setClient(Lcom/onevcat/uniwebview/UniWebViewClient;)V

    .line 700
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->videoContainer:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/onevcat/uniwebview/UniWebView;Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->chromeClient:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    .line 702
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->chromeClient:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 704
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    new-instance v1, Lcom/onevcat/uniwebview/UniWebViewDialog$9;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewDialog$9;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 714
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0, v10}, Lcom/onevcat/uniwebview/UniWebView;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0, v10}, Lcom/onevcat/uniwebview/UniWebView;->setBackgroundColor(I)V

    .line 718
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->spinner:Landroid/app/ProgressDialog;

    .line 719
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v12}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 720
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v12}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 721
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->spinnerText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setSpinnerText(Ljava/lang/String;)V

    .line 723
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 724
    .local v7, "videoParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->videoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v7}, Lcom/onevcat/uniwebview/UniWebViewDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    iget v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->width:I

    iget v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->height:I

    invoke-direct {v8, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 728
    .local v8, "webParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewContainer:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->x:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setX(F)V

    .line 729
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewContainer:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setY(F)V

    .line 730
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v8}, Lcom/onevcat/uniwebview/UniWebViewDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 733
    invoke-virtual {p0, v9, v9, v9, v9}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setBackgroundColor(FFFF)V

    .line 734
    return-void
.end method

.method private animatedShow(ZZIFLjava/lang/String;)V
    .registers 14
    .param p1, "show"    # Z
    .param p2, "fade"    # Z
    .param p3, "edge"    # I
    .param p4, "duration"    # F
    .param p5, "identifier"    # Ljava/lang/String;

    .prologue
    .line 374
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->animating:Z

    .line 377
    new-instance v4, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 378
    .local v4, "set":Landroid/view/animation/AnimationSet;
    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v5, p4

    float-to-int v0, v5

    .line 380
    .local v0, "durationMillisecond":I
    invoke-direct {p0, p1, p2, v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->fadeAnimation(ZZI)Landroid/view/animation/Animation;

    move-result-object v1

    .line 381
    .local v1, "fadeAnimation":Landroid/view/animation/Animation;
    if-eqz v1, :cond_16

    .line 382
    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 385
    :cond_16
    invoke-direct {p0, p1, p3, v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->moveAnimation(ZII)Landroid/view/animation/Animation;

    move-result-object v3

    .line 386
    .local v3, "moveAnimation":Landroid/view/animation/Animation;
    if-eqz v3, :cond_1f

    .line 387
    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 391
    :cond_1f
    iget-object v5, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 394
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 395
    .local v2, "handler":Landroid/os/Handler;
    new-instance v5, Lcom/onevcat/uniwebview/UniWebViewDialog$3;

    invoke-direct {v5, p0, p1, p5}, Lcom/onevcat/uniwebview/UniWebViewDialog$3;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;ZLjava/lang/String;)V

    int-to-long v6, v0

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 403
    return-void
.end method

.method private displaySize()Landroid/graphics/Point;
    .registers 4

    .prologue
    .line 940
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 941
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 942
    .local v1, "size":Landroid/graphics/Point;
    iget-boolean v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->immersiveMode:Z

    if-eqz v2, :cond_19

    .line 943
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 947
    :goto_18
    return-object v1

    .line 946
    :cond_19
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_18
.end method

.method private fadeAnimation(ZZI)Landroid/view/animation/Animation;
    .registers 10
    .param p1, "show"    # Z
    .param p2, "fade"    # Z
    .param p3, "durationMillisecond"    # I

    .prologue
    const/4 v1, 0x0

    .line 952
    if-nez p2, :cond_5

    .line 953
    const/4 v0, 0x0

    .line 961
    :goto_4
    return-object v0

    .line 956
    :cond_5
    if-eqz p1, :cond_1c

    move v2, v1

    .line 957
    .local v2, "startAlpha":F
    :goto_8
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWebViewAlpha()F

    move-result v1

    .line 958
    .local v1, "endAlpha":F
    :cond_e
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 959
    .local v0, "animation":Landroid/view/animation/Animation;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 960
    int-to-long v4, p3

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_4

    .line 956
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v1    # "endAlpha":F
    .end local v2    # "startAlpha":F
    :cond_1c
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWebViewAlpha()F

    move-result v2

    goto :goto_8
.end method

.method private finishShowDialog(ZLjava/lang/String;)V
    .registers 5
    .param p1, "show"    # Z
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 406
    if-eqz p1, :cond_8

    .line 407
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    invoke-interface {v0, p0, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onShowTransitionFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V

    .line 412
    :goto_7
    return-void

    .line 409
    :cond_8
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    invoke-interface {v0, p0, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onHideTransitionFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private getUserAgent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method static getUserAgent(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 126
    if-eqz p0, :cond_7

    .line 127
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_6
    :goto_6
    return-object v0

    .line 129
    :cond_7
    sget-object v1, Lcom/onevcat/uniwebview/UniWebViewDialog;->presetUserAgent:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_6

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->defaultUserAgent:Ljava/lang/String;

    goto :goto_6
.end method

.method private isEventInside(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->isViewContains(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method private isViewContains(Landroid/view/View;II)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rx"    # I
    .param p3, "ry"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 206
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 207
    .local v1, "location":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 208
    aget v3, v1, v6

    .line 209
    .local v3, "x":I
    aget v4, v1, v5

    .line 210
    .local v4, "y":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 211
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 213
    .local v0, "h":I
    if-lt p2, v3, :cond_20

    add-int v7, v3, v2

    if-gt p2, v7, :cond_20

    if-lt p3, v4, :cond_20

    add-int v7, v4, v0

    if-le p3, v7, :cond_21

    :cond_20
    move v5, v6

    .line 216
    :cond_21
    return v5
.end method

.method private moveAnimation(ZII)Landroid/view/animation/Animation;
    .registers 13
    .param p1, "show"    # Z
    .param p2, "edge"    # I
    .param p3, "durationMillisecond"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 965
    if-nez p2, :cond_6

    .line 990
    :cond_5
    :goto_5
    return-object v0

    .line 970
    :cond_6
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->displaySize()Landroid/graphics/Point;

    move-result-object v1

    .line 971
    .local v1, "size":Landroid/graphics/Point;
    if-ne p2, v8, :cond_29

    .line 972
    const/4 v2, 0x0

    .line 973
    .local v2, "xValue":I
    iget v5, v1, Landroid/graphics/Point;->y:I

    neg-int v3, v5

    .line 987
    .local v3, "yValue":I
    :goto_10
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_3f

    int-to-float v5, v2

    move v7, v5

    :goto_16
    if-eqz p1, :cond_41

    move v6, v4

    :goto_19
    if-eqz p1, :cond_44

    int-to-float v5, v3

    :goto_1c
    if-eqz p1, :cond_46

    :goto_1e
    invoke-direct {v0, v7, v6, v5, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 988
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 989
    int-to-long v4, p3

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_5

    .line 974
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v2    # "xValue":I
    .end local v3    # "yValue":I
    :cond_29
    const/4 v5, 0x2

    if-ne p2, v5, :cond_31

    .line 975
    iget v5, v1, Landroid/graphics/Point;->x:I

    neg-int v2, v5

    .line 976
    .restart local v2    # "xValue":I
    const/4 v3, 0x0

    .restart local v3    # "yValue":I
    goto :goto_10

    .line 977
    .end local v2    # "xValue":I
    .end local v3    # "yValue":I
    :cond_31
    const/4 v5, 0x3

    if-ne p2, v5, :cond_38

    .line 978
    const/4 v2, 0x0

    .line 979
    .restart local v2    # "xValue":I
    iget v3, v1, Landroid/graphics/Point;->y:I

    .restart local v3    # "yValue":I
    goto :goto_10

    .line 980
    .end local v2    # "xValue":I
    .end local v3    # "yValue":I
    :cond_38
    const/4 v5, 0x4

    if-ne p2, v5, :cond_5

    .line 981
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 982
    .restart local v2    # "xValue":I
    const/4 v3, 0x0

    .restart local v3    # "yValue":I
    goto :goto_10

    :cond_3f
    move v7, v4

    .line 987
    goto :goto_16

    :cond_41
    int-to-float v5, v2

    move v6, v5

    goto :goto_19

    :cond_44
    move v5, v4

    goto :goto_1c

    :cond_46
    int-to-float v4, v3

    goto :goto_1e
.end method

.method private moveToAnimation(IIII)Landroid/view/animation/Animation;
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "durationMillisecond"    # I
    .param p4, "delayMillisecond"    # I

    .prologue
    const/4 v3, 0x0

    .line 994
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->x:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->y:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 995
    .local v0, "animation":Landroid/view/animation/Animation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 996
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 997
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 998
    return-object v0
.end method

.method private prepareWindow()V
    .registers 8

    .prologue
    const/high16 v6, 0x1000000

    const/16 v5, 0x400

    .line 663
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v3

    const-string v4, "Preparing window layout for web view dialog."

    invoke-virtual {v3, v4}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 665
    .local v2, "window":Landroid/view/Window;
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 666
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 667
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 668
    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 669
    invoke-virtual {v2, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 671
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_4d

    .line 672
    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 673
    .local v0, "mode":I
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 674
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 675
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 677
    .end local v0    # "mode":I
    .end local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_4d
    return-void
.end method

.method private removeUTFCharacters(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .registers 8
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1010
    const-string v4, "\\\\u(\\p{XDigit}{4})"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1011
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1012
    .local v2, "m":Ljava/util/regex/Matcher;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1013
    .local v0, "buf":Ljava/lang/StringBuffer;
    :goto_13
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1014
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 1015
    .local v1, "ch":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_13

    .line 1017
    .end local v1    # "ch":Ljava/lang/String;
    :cond_31
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 1018
    return-object v0
.end method

.method private setKeyboardVisibilityListener(Lcom/onevcat/uniwebview/OnKeyboardVisibilityListener;)V
    .registers 5
    .param p1, "onKeyboardVisibilityListener"    # Lcom/onevcat/uniwebview/OnKeyboardVisibilityListener;

    .prologue
    .line 817
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 818
    .local v0, "parentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/onevcat/uniwebview/UniWebViewDialog$10;

    invoke-direct {v2, p0, v0, p1}, Lcom/onevcat/uniwebview/UniWebViewDialog$10;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;Landroid/view/View;Lcom/onevcat/uniwebview/OnKeyboardVisibilityListener;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 839
    return-void
.end method

.method static setUserAgent(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ua"    # Ljava/lang/String;

    .prologue
    .line 134
    if-eqz p0, :cond_b

    .line 135
    invoke-direct {p0, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setUserAgent(Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->presetUserAgent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :goto_a
    return-void

    .line 138
    :cond_b
    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->presetUserAgent:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method private setUserAgent(Ljava/lang/String;)V
    .registers 4
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_15

    .line 145
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWebView()Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 147
    :cond_15
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->userAgent:Ljava/lang/String;

    .line 148
    return-void
.end method

.method private showDialog()V
    .registers 3

    .prologue
    .line 931
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewShowing:Z

    if-eqz v0, :cond_b

    .line 932
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 937
    :goto_a
    return-void

    .line 934
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewShowing:Z

    .line 935
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->show()V

    goto :goto_a
.end method

.method private sizeToAnimation(IIII)Landroid/view/animation/Animation;
    .registers 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "durationMillisecond"    # I
    .param p4, "delayMillisecond"    # I

    .prologue
    .line 1002
    new-instance v0, Lcom/onevcat/uniwebview/ResizeAnimation;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewContainer:Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->width:I

    iget v4, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->height:I

    move v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/onevcat/uniwebview/ResizeAnimation;-><init>(Landroid/view/View;IIII)V

    .line 1003
    .local v0, "animation":Landroid/view/animation/Animation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1004
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1005
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1006
    return-object v0
.end method

.method private unescapeJavaString(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "st"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x5c

    const/16 v9, 0x37

    const/16 v8, 0x30

    .line 1023
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1025
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_129

    .line 1026
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1027
    .local v0, "ch":C
    if-ne v0, v5, :cond_bb

    .line 1028
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_ae

    move v3, v5

    .line 1031
    .local v3, "nextChar":C
    :goto_25
    if-lt v3, v8, :cond_b6

    if-gt v3, v9, :cond_b6

    .line 1032
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1033
    .local v1, "code":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 1034
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_a0

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v8, :cond_a0

    add-int/lit8 v6, v2, 0x1

    .line 1035
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v6, v9, :cond_a0

    .line 1036
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1037
    add-int/lit8 v2, v2, 0x1

    .line 1038
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_a0

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v8, :cond_a0

    add-int/lit8 v6, v2, 0x1

    .line 1039
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v6, v9, :cond_a0

    .line 1040
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1041
    add-int/lit8 v2, v2, 0x1

    .line 1044
    :cond_a0
    const/16 v6, 0x8

    invoke-static {v1, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1025
    .end local v1    # "code":Ljava/lang/String;
    .end local v3    # "nextChar":C
    :goto_aa
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    .line 1028
    :cond_ae
    add-int/lit8 v6, v2, 0x1

    .line 1029
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto/16 :goto_25

    .line 1047
    .restart local v3    # "nextChar":C
    :cond_b6
    sparse-switch v3, :sswitch_data_12e

    .line 1085
    :goto_b9
    add-int/lit8 v2, v2, 0x1

    .line 1087
    .end local v3    # "nextChar":C
    :cond_bb
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_aa

    .line 1049
    .restart local v3    # "nextChar":C
    :sswitch_bf
    const/16 v0, 0x5c

    .line 1050
    goto :goto_b9

    .line 1052
    :sswitch_c2
    const/16 v0, 0x8

    .line 1053
    goto :goto_b9

    .line 1055
    :sswitch_c5
    const/16 v0, 0xc

    .line 1056
    goto :goto_b9

    .line 1058
    :sswitch_c8
    const/16 v0, 0xa

    .line 1059
    goto :goto_b9

    .line 1061
    :sswitch_cb
    const/16 v0, 0xd

    .line 1062
    goto :goto_b9

    .line 1064
    :sswitch_ce
    const/16 v0, 0x9

    .line 1065
    goto :goto_b9

    .line 1067
    :sswitch_d1
    const/16 v0, 0x22

    .line 1068
    goto :goto_b9

    .line 1070
    :sswitch_d4
    const/16 v0, 0x27

    .line 1071
    goto :goto_b9

    .line 1074
    :sswitch_d7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x5

    if-lt v2, v6, :cond_e2

    .line 1075
    const/16 v0, 0x75

    .line 1076
    goto :goto_b9

    .line 1078
    :cond_e2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v2, 0x2

    .line 1079
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v2, 0x3

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v2, 0x4

    .line 1080
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v2, 0x5

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    .line 1078
    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1081
    .local v1, "code":I
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 1082
    add-int/lit8 v2, v2, 0x5

    .line 1083
    goto :goto_aa

    .line 1089
    .end local v0    # "ch":C
    .end local v1    # "code":I
    .end local v3    # "nextChar":C
    :cond_129
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1047
    :sswitch_data_12e
    .sparse-switch
        0x22 -> :sswitch_d1
        0x27 -> :sswitch_d4
        0x5c -> :sswitch_bf
        0x62 -> :sswitch_c2
        0x66 -> :sswitch_c5
        0x6e -> :sswitch_c8
        0x72 -> :sswitch_cb
        0x74 -> :sswitch_ce
        0x75 -> :sswitch_d7
    .end sparse-switch
.end method


# virtual methods
.method addJavaScript(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "jsString"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 502
    if-nez p1, :cond_c

    .line 503
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Trying to add null as js string. Aborting..."

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    .line 521
    :goto_b
    return-void

    .line 507
    :cond_c
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding javascript string to web view. Requesting string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->debug(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    new-instance v1, Lcom/onevcat/uniwebview/UniWebViewDialog$5;

    invoke-direct {v1, p0, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog$5;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/onevcat/uniwebview/UniWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_b
.end method

.method animateTo(IIIIFFLjava/lang/String;)Z
    .registers 19
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "duration"    # F
    .param p6, "delay"    # F
    .param p7, "identifier"    # Ljava/lang/String;

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->animating:Z

    if-eqz v0, :cond_f

    .line 417
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Trying to animate but another transition animation is not finished yet. Ignore this one."

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    .line 418
    const/4 v0, 0x0

    .line 442
    :goto_e
    return v0

    .line 421
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->animating:Z

    .line 423
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float v0, v0, p5

    float-to-int v8, v0

    .line 424
    .local v8, "durationMillisecond":I
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float v0, v0, p6

    float-to-int v7, v0

    .line 426
    .local v7, "delayMillisecond":I
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 427
    .local v10, "set":Landroid/view/animation/AnimationSet;
    invoke-direct {p0, p1, p2, v8, v7}, Lcom/onevcat/uniwebview/UniWebViewDialog;->moveToAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 428
    invoke-direct {p0, p3, p4, v8, v7}, Lcom/onevcat/uniwebview/UniWebViewDialog;->sizeToAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 430
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 432
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    .line 433
    .local v9, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/onevcat/uniwebview/UniWebViewDialog$4;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;IIIILjava/lang/String;)V

    add-int v1, v8, v7

    int-to-long v2, v1

    invoke-virtual {v9, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 442
    const/4 v0, 0x1

    goto :goto_e
.end method

.method clearHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 915
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWebView()Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/onevcat/uniwebview/UniWebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    return-void
.end method

.method destroy()V
    .registers 3

    .prologue
    .line 585
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebView;->loadUrl(Ljava/lang/String;)V

    .line 586
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->getInstance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewManager;->removeShowingDialog(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    .line 589
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    .line 591
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->dismiss()V

    .line 592
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 241
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchKeyEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_43

    .line 243
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 244
    .local v0, "keyCode":I
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key down event for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    invoke-interface {v1, p0, v0}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onDialogKeyDown(Lcom/onevcat/uniwebview/UniWebViewDialog;I)V

    .line 247
    .end local v0    # "keyCode":I
    :cond_43
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method evaluateJavaScript(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "jsString"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 524
    if-nez p1, :cond_c

    .line 525
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Trying to evaluate null as js string. Aborting..."

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    .line 551
    :goto_b
    return-void

    .line 528
    :cond_c
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Evaluating javascript string in web view. Requesting string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->debug(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    new-instance v1, Lcom/onevcat/uniwebview/UniWebViewDialog$6;

    invoke-direct {v1, p0, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog$6;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/onevcat/uniwebview/UniWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_b
.end method

.method getAnimating()Z
    .registers 2

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->animating:Z

    return v0
.end method

.method public getChromeClient()Lcom/onevcat/uniwebview/UniWebViewChromeClient;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->chromeClient:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    return-object v0
.end method

.method getHeaders()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 911
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->headers:Ljava/util/HashMap;

    return-object v0
.end method

.method getImmersiveMode()Z
    .registers 2

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->immersiveMode:Z

    return v0
.end method

.method getPermissionTrustDomains()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 809
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->permissionTrustDomains:Ljava/util/HashSet;

    return-object v0
.end method

.method getSchemes()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->schemes:Ljava/util/HashSet;

    return-object v0
.end method

.method public getShowHTTPAuthPopUpWindow()Z
    .registers 2

    .prologue
    .line 1093
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->showHTTPAuthPopUpWindow:Z

    return v0
.end method

.method getSslExceptionDomains()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 805
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->sslExceptionDomains:Ljava/util/HashSet;

    return-object v0
.end method

.method getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWebView()Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getWebView()Lcom/onevcat/uniwebview/UniWebView;
    .registers 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    return-object v0
.end method

.method getWebViewAlpha()F
    .registers 2

    .prologue
    .line 879
    iget v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewAlpha:F

    return v0
.end method

.method public getWebViewName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewName:Ljava/lang/String;

    return-object v0
.end method

.method goBack()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 554
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->chromeClient:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->getPopUpWebView()Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v0

    .line 555
    .local v0, "popupWebView":Landroid/webkit/WebView;
    if-eqz v0, :cond_1e

    .line 556
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 557
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 571
    :goto_12
    return v1

    .line 559
    :cond_13
    const-string v2, "window.close()"

    new-instance v3, Lcom/onevcat/uniwebview/UniWebViewDialog$7;

    invoke-direct {v3, p0}, Lcom/onevcat/uniwebview/UniWebViewDialog$7;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_12

    .line 567
    :cond_1e
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/UniWebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 568
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/UniWebView;->goBack()V

    goto :goto_12

    .line 571
    :cond_2c
    const/4 v1, 0x0

    goto :goto_12
.end method

.method goBackground()V
    .registers 3

    .prologue
    .line 595
    iget-boolean v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->isLoading:Z

    if-eqz v1, :cond_c

    .line 596
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->loadingInterrupted:Z

    .line 597
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebView;->stopLoading()V

    .line 600
    :cond_c
    iget-boolean v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewShowing:Z

    if-eqz v1, :cond_23

    .line 601
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->chromeClient:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->getAlertDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 602
    .local v0, "alert":Landroid/app/AlertDialog;
    if-eqz v0, :cond_1b

    .line 603
    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 605
    :cond_1b
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->hide()V

    .line 606
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebView;->onPause()V

    .line 608
    .end local v0    # "alert":Landroid/app/AlertDialog;
    :cond_23
    return-void
.end method

.method goForeground()V
    .registers 3

    .prologue
    .line 611
    iget-boolean v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->loadingInterrupted:Z

    if-eqz v1, :cond_c

    .line 612
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebView;->reload()V

    .line 613
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->loadingInterrupted:Z

    .line 616
    :cond_c
    iget-boolean v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewShowing:Z

    if-eqz v1, :cond_23

    .line 617
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->show()V

    .line 619
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->chromeClient:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->getAlertDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 620
    .local v0, "alert":Landroid/app/AlertDialog;
    if-eqz v0, :cond_1e

    .line 621
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 624
    :cond_1e
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebView;->onResume()V

    .line 626
    .end local v0    # "alert":Landroid/app/AlertDialog;
    :cond_23
    return-void
.end method

.method goForward()Z
    .registers 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 577
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->goForward()V

    .line 578
    const/4 v0, 0x1

    .line 580
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method hideSpinner()V
    .registers 3

    .prologue
    .line 643
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Hide spinner."

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 645
    return-void
.end method

.method hideSystemUI()V
    .registers 4

    .prologue
    .line 766
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 770
    .local v0, "decorView":Landroid/view/View;
    iget-boolean v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->immersiveMode:Z

    if-eqz v2, :cond_12

    .line 771
    const/16 v1, 0x1706

    .line 780
    .local v1, "updatedUIOptions":I
    :goto_e
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 781
    return-void

    .line 778
    .end local v1    # "updatedUIOptions":I
    :cond_12
    const/4 v1, 0x4

    .restart local v1    # "updatedUIOptions":I
    goto :goto_e
.end method

.method isCanGoBack()Z
    .registers 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWebView()Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method isCanGoForward()Z
    .registers 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWebView()Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method isShowSpinnerWhileLoading()Z
    .registers 2

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->showSpinnerWhileLoading:Z

    return v0
.end method

.method public isUserInteractionEnabled()Z
    .registers 2

    .prologue
    .line 1101
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->userInteractionEnabled:Z

    return v0
.end method

.method load(Ljava/lang/String;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 446
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UniWebView will load url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". With headers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->headers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 447
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->shouldOverride(Ljava/lang/String;Z)Z

    move-result v0

    .line 448
    .local v0, "result":Z
    if-nez v0, :cond_38

    .line 449
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->headers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Lcom/onevcat/uniwebview/UniWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 451
    :cond_38
    return-void
.end method

.method loadHTMLString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 495
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UniWebView will load html string with base url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 496
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input html content: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->getClient()Lcom/onevcat/uniwebview/UniWebViewClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewClient;->prepareLoadingStates()V

    .line 498
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/onevcat/uniwebview/UniWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 221
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown, key code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 222
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2c

    .line 223
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Not back key. Delegating to super..."

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 224
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 236
    :cond_2b
    :goto_2b
    return v0

    .line 227
    :cond_2c
    iget-boolean v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->backButtonEnabled:Z

    if-nez v1, :cond_3a

    .line 228
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    const-string v2, "Back button is not enabled. Ignore."

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_2b

    .line 232
    :cond_3a
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->goBack()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 233
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    const-string v2, "No back page for the web view. Trying to close current web view..."

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    invoke-interface {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onDialogClosedByBackButton(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    goto :goto_2b
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 252
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 253
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    invoke-interface {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onDialogClose(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    .line 254
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 193
    iget-boolean v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->touchFromAnotherDialog:Z

    if-nez v3, :cond_11

    .line 194
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->getInstance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p0, v2, p1}, Lcom/onevcat/uniwebview/UniWebViewManager;->handleTouchEvent(Lcom/onevcat/uniwebview/UniWebViewDialog;Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 197
    :cond_10
    :goto_10
    return v1

    .line 196
    :cond_11
    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_24

    move v0, v1

    .line 197
    .local v0, "visible":Z
    :goto_1a
    if-eqz v0, :cond_22

    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->isEventInside(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_10

    :cond_22
    move v1, v2

    goto :goto_10

    .end local v0    # "visible":Z
    :cond_24
    move v0, v2

    .line 196
    goto :goto_1a
.end method

.method public onVisibilityChanged(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .prologue
    .line 843
    if-nez p1, :cond_f

    .line 844
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 845
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/onevcat/uniwebview/UniWebViewDialog$11;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewDialog$11;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 852
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_f
    return-void
.end method

.method openUrlExternal(Ljava/lang/String;)Z
    .registers 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 741
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/UniWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v2

    if-nez v2, :cond_28

    .line 742
    :cond_d
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open url due to dialog or webview being null. Url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    .line 762
    :goto_27
    return v1

    .line 746
    :cond_28
    iget-boolean v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->openLinksInExternalBrowser:Z

    if-nez v2, :cond_36

    .line 747
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v2

    const-string v3, "UniWebView should open links in current web view."

    invoke-virtual {v2, v3}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_27

    .line 751
    :cond_36
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/UniWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v2

    if-nez v2, :cond_4c

    .line 752
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v2

    const-string v3, "UniWebView getHitTestResult unknown. Do not open url externally."

    invoke-virtual {v2, v3}, Lcom/onevcat/uniwebview/Logger;->debug(Ljava/lang/String;)V

    goto :goto_27

    .line 756
    :cond_4c
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    const-string v2, "UniWebView is opening links in external browser."

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 758
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 759
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 760
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 762
    const/4 v1, 0x1

    goto :goto_27
.end method

.method print()V
    .registers 5

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "print"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintManager;

    .line 796
    .local v1, "printManager":Landroid/print/PrintManager;
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWebView()Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v2

    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v3}, Lcom/onevcat/uniwebview/UniWebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onevcat/uniwebview/UniWebView;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    move-result-object v0

    .line 797
    .local v0, "printAdapter":Landroid/print/PrintDocumentAdapter;
    const-string v2, "UniWebView Printing"

    new-instance v3, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v3}, Landroid/print/PrintAttributes$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 798
    return-void
.end method

.method scrollTo(IIZ)V
    .registers 14
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "animated"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 919
    if-eqz p3, :cond_45

    .line 920
    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    const-string v4, "scrollX"

    new-array v5, v9, [I

    iget-object v6, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v6}, Lcom/onevcat/uniwebview/UniWebView;->getScrollX()I

    move-result v6

    aput v6, v5, v7

    aput p1, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 921
    .local v0, "animX":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    const-string v4, "scrollY"

    new-array v5, v9, [I

    iget-object v6, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v6}, Lcom/onevcat/uniwebview/UniWebView;->getScrollY()I

    move-result v6

    aput v6, v5, v7

    aput p2, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 922
    .local v1, "animY":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 923
    .local v2, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v3, v9, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    aput-object v1, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 924
    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 928
    .end local v0    # "animX":Landroid/animation/ObjectAnimator;
    .end local v1    # "animY":Landroid/animation/ObjectAnimator;
    .end local v2    # "animatorSet":Landroid/animation/AnimatorSet;
    :goto_44
    return-void

    .line 926
    :cond_45
    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v3, p1, p2}, Lcom/onevcat/uniwebview/UniWebView;->scrollTo(II)V

    goto :goto_44
.end method

.method setBackButtonEnabled(Z)V
    .registers 2
    .param p1, "backButtonEnabled"    # Z

    .prologue
    .line 871
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->backButtonEnabled:Z

    .line 872
    return-void
.end method

.method setBackgroundColor(FFFF)V
    .registers 12
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/high16 v6, 0x437f0000    # 255.0f

    .line 648
    mul-float v5, p1, v6

    float-to-int v4, v5

    .line 649
    .local v4, "redInt":I
    mul-float v5, p2, v6

    float-to-int v3, v5

    .line 650
    .local v3, "greenInt":I
    mul-float v5, p3, v6

    float-to-int v2, v5

    .line 651
    .local v2, "blueInt":I
    mul-float v5, p4, v6

    float-to-int v0, v5

    .line 653
    .local v0, "alphaInt":I
    invoke-static {v0, v4, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 654
    .local v1, "backgroundColor":I
    iget-object v5, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewContainer:Landroid/widget/FrameLayout;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 655
    iget-object v5, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->videoContainer:Landroid/widget/FrameLayout;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 656
    return-void
.end method

.method setBouncesEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 859
    if-eqz p1, :cond_9

    .line 860
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebView;->setOverScrollMode(I)V

    .line 864
    :goto_8
    return-void

    .line 862
    :cond_9
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebView;->setOverScrollMode(I)V

    goto :goto_8
.end method

.method setCalloutEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 867
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    iput-boolean p1, v0, Lcom/onevcat/uniwebview/UniWebView;->calloutEnabled:Z

    .line 868
    return-void
.end method

.method setDefaultFontSize(I)V
    .registers 5
    .param p1, "size"    # I

    .prologue
    .line 906
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 907
    .local v0, "scale":F
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    int-to-float v2, p1

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 908
    return-void
.end method

.method setFrame(IIII)V
    .registers 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 263
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Setting web dialog frame to {%d, %d, %d, %d}"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 264
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setPosition(II)V

    .line 268
    invoke-virtual {p0, p3, p4}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setSize(II)V

    .line 269
    return-void
.end method

.method setHeaderField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 891
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    .line 892
    :cond_8
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Trying to set null or empty key for header field. Please check you have set correct key."

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    .line 901
    :goto_11
    return-void

    .line 896
    :cond_12
    if-nez p2, :cond_1a

    .line 897
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 899
    :cond_1a
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11
.end method

.method setImmersiveMode(Z)V
    .registers 2
    .param p1, "immersiveMode"    # Z

    .prologue
    .line 855
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->immersiveMode:Z

    .line 856
    return-void
.end method

.method setLoading(Z)V
    .registers 2
    .param p1, "loading"    # Z

    .prologue
    .line 784
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->isLoading:Z

    .line 785
    return-void
.end method

.method setOpenLinksInExternalBrowser(Z)V
    .registers 2
    .param p1, "openLinksInExternalBrowser"    # Z

    .prologue
    .line 659
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->openLinksInExternalBrowser:Z

    .line 660
    return-void
.end method

.method setPosition(II)V
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 272
    iput p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->x:I

    .line 273
    iput p2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->y:I

    .line 275
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 276
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 277
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x33

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 278
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 279
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 281
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 283
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewContainer:Landroid/widget/FrameLayout;

    int-to-float v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setX(F)V

    .line 284
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewContainer:Landroid/widget/FrameLayout;

    int-to-float v3, p2

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setY(F)V

    .line 285
    return-void
.end method

.method setShow(ZZIFLjava/lang/String;)Z
    .registers 14
    .param p1, "show"    # Z
    .param p2, "fade"    # Z
    .param p3, "edge"    # I
    .param p4, "duration"    # F
    .param p5, "identifier"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 312
    iget-boolean v5, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewVisible:Z

    if-eqz v5, :cond_12

    if-eqz p1, :cond_12

    .line 313
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v4

    const-string v5, "Showing web view is ignored since it is already visible."

    invoke-virtual {v4, v5}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    .line 370
    :cond_11
    :goto_11
    return v3

    .line 318
    :cond_12
    iget-boolean v5, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewVisible:Z

    if-nez v5, :cond_22

    if-nez p1, :cond_22

    .line 319
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v4

    const-string v5, "Hiding web view is ignored since it is already invisible."

    invoke-virtual {v4, v5}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    goto :goto_11

    .line 323
    :cond_22
    iget-boolean v5, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->animating:Z

    if-eqz v5, :cond_30

    .line 324
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v4

    const-string v5, "Trying to animate but another transition animation is not finished yet. Ignore this one."

    invoke-virtual {v4, v5}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    goto :goto_11

    .line 328
    :cond_30
    iget-boolean v5, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewShowing:Z

    if-eqz v5, :cond_3f

    .line 329
    iget-object v5, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_6d

    move v0, v4

    .line 330
    .local v0, "alreadyVisible":Z
    :goto_3d
    if-eq p1, v0, :cond_11

    .line 335
    .end local v0    # "alreadyVisible":Z
    :cond_3f
    if-eqz p1, :cond_6f

    .line 336
    iput-boolean v4, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewVisible:Z

    .line 337
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->showDialog()V

    .line 338
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->getInstance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/onevcat/uniwebview/UniWebViewManager;->addShowingDialog(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    .line 340
    iget-boolean v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->showSpinnerWhileLoading:Z

    if-eqz v3, :cond_58

    iget-boolean v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->isLoading:Z

    if-eqz v3, :cond_58

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->showSpinner()V

    .line 351
    :cond_58
    :goto_58
    if-nez p2, :cond_88

    if-nez p3, :cond_88

    .line 358
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 359
    .local v1, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/onevcat/uniwebview/UniWebViewDialog$2;

    invoke-direct {v3, p0, p1, p5}, Lcom/onevcat/uniwebview/UniWebViewDialog$2;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;ZLjava/lang/String;)V

    const-wide/16 v6, 0x1

    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v1    # "handler":Landroid/os/Handler;
    :goto_6b
    move v3, v4

    .line 370
    goto :goto_11

    :cond_6d
    move v0, v3

    .line 329
    goto :goto_3d

    .line 343
    :cond_6f
    iput-boolean v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewVisible:Z

    .line 345
    iget-object v5, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->activity:Landroid/app/Activity;

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 346
    .local v2, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v5, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v5}, Lcom/onevcat/uniwebview/UniWebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 348
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->hideSpinner()V

    goto :goto_58

    .line 368
    .end local v2    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_88
    invoke-direct/range {p0 .. p5}, Lcom/onevcat/uniwebview/UniWebViewDialog;->animatedShow(ZZIFLjava/lang/String;)V

    goto :goto_6b
.end method

.method public setShowHTTPAuthPopUpWindow(Z)V
    .registers 2
    .param p1, "showHTTPAuthPopUpWindow"    # Z

    .prologue
    .line 1097
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->showHTTPAuthPopUpWindow:Z

    .line 1098
    return-void
.end method

.method setShowSpinnerWhileLoading(Z)V
    .registers 2
    .param p1, "showSpinnerWhileLoading"    # Z

    .prologue
    .line 791
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->showSpinnerWhileLoading:Z

    .line 792
    return-void
.end method

.method setSize(II)V
    .registers 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 289
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->width:I

    .line 290
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->height:I

    .line 292
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 293
    .local v2, "window":Landroid/view/Window;
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->displaySize()Landroid/graphics/Point;

    move-result-object v1

    .line 295
    .local v1, "size":Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 297
    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 298
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->width:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 299
    iget v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->height:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 300
    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->workaround:Lcom/onevcat/uniwebview/AndroidBug5497Workaround;

    iget v4, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->height:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->setTargetHeight(F)V

    .line 303
    return-void
.end method

.method setSpinnerText(Ljava/lang/String;)V
    .registers 4
    .param p1, "spinnerText"    # Ljava/lang/String;

    .prologue
    .line 629
    if-eqz p1, :cond_c

    .line 630
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->spinnerText:Ljava/lang/String;

    .line 634
    :goto_4
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->spinner:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->spinnerText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 635
    return-void

    .line 632
    :cond_c
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/onevcat/uniwebview/R$string;->LOADING:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->spinnerText:Ljava/lang/String;

    goto :goto_4
.end method

.method setSupportMultipleWindows(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 903
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    return-void
.end method

.method public setUserInteractionEnabled(Z)V
    .registers 2
    .param p1, "userInteractionEnabled"    # Z

    .prologue
    .line 1105
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->userInteractionEnabled:Z

    .line 1106
    return-void
.end method

.method setWebViewAlpha(FZ)V
    .registers 6
    .param p1, "alpha"    # F
    .param p2, "actually"    # Z

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 883
    cmpl-float v2, p1, v0

    if-lez v2, :cond_11

    .line 884
    .local v0, "a":F
    :goto_7
    iput v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewAlpha:F

    .line 885
    if-eqz p2, :cond_10

    .line 886
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 888
    :cond_10
    return-void

    .line 883
    .end local v0    # "a":F
    :cond_11
    cmpg-float v2, p1, v1

    if-gez v2, :cond_17

    move v0, v1

    goto :goto_7

    :cond_17
    move v0, p1

    goto :goto_7
.end method

.method public setWebViewName(Ljava/lang/String;)V
    .registers 2
    .param p1, "webViewName"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->webViewName:Ljava/lang/String;

    .line 102
    return-void
.end method

.method setZoomEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 875
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 876
    return-void
.end method

.method shouldOverride(Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "checkExternal"    # Z

    .prologue
    const/4 v2, 0x1

    .line 459
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    .line 460
    .local v0, "logger":Lcom/onevcat/uniwebview/Logger;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldOverrideUrlLoading for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 461
    new-instance v1, Lcom/onevcat/uniwebview/URLLoadingResponser;

    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3, p0, p1}, Lcom/onevcat/uniwebview/URLLoadingResponser;-><init>(Landroid/content/Context;Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V

    .line 463
    .local v1, "responser":Lcom/onevcat/uniwebview/URLLoadingResponser;
    invoke-virtual {v1}, Lcom/onevcat/uniwebview/URLLoadingResponser;->canResponseBuiltinScheme()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 464
    const-string v3, "Url handled internally in UniWebView."

    invoke-virtual {v0, v3}, Lcom/onevcat/uniwebview/Logger;->debug(Ljava/lang/String;)V

    .line 491
    :goto_2d
    return v2

    .line 468
    :cond_2e
    invoke-virtual {v1}, Lcom/onevcat/uniwebview/URLLoadingResponser;->handleWithIntent()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 469
    const-string v3, "Url handled by intent."

    invoke-virtual {v0, v3}, Lcom/onevcat/uniwebview/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2d

    .line 473
    :cond_3a
    invoke-virtual {v1}, Lcom/onevcat/uniwebview/URLLoadingResponser;->canResponseDefinedScheme()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Url redirected to Unity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onevcat/uniwebview/Logger;->debug(Ljava/lang/String;)V

    .line 475
    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    invoke-interface {v3, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onSendMessageReceived(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V

    goto :goto_2d

    .line 479
    :cond_5c
    if-eqz p2, :cond_7b

    invoke-virtual {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->openUrlExternal(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Url redirected to Unity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onevcat/uniwebview/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2d

    .line 484
    :cond_7b
    invoke-virtual {v1}, Lcom/onevcat/uniwebview/URLLoadingResponser;->handleWithThirdPartyApp()Z

    move-result v3

    if-eqz v3, :cond_98

    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Url handled by a third party app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onevcat/uniwebview/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2d

    .line 489
    :cond_98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Url is opening without overridden: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onevcat/uniwebview/Logger;->debug(Ljava/lang/String;)V

    .line 490
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/UniWebView;->getClient()Lcom/onevcat/uniwebview/UniWebViewClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/UniWebViewClient;->prepareLoadingStates()V

    .line 491
    const/4 v2, 0x0

    goto/16 :goto_2d
.end method

.method showSpinner()V
    .registers 3

    .prologue
    .line 638
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Show spinner for loading."

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 640
    return-void
.end method

.method stop()V
    .registers 3

    .prologue
    .line 454
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->stopLoading()V

    .line 455
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->getClient()Lcom/onevcat/uniwebview/UniWebViewClient;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewClient;->setUserStopped(Z)V

    .line 456
    return-void
.end method

.method updateFrame()V
    .registers 3

    .prologue
    .line 306
    iget v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->x:I

    iget v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setPosition(II)V

    .line 307
    iget v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->width:I

    iget v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->height:I

    invoke-virtual {p0, v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setSize(II)V

    .line 308
    return-void
.end method
