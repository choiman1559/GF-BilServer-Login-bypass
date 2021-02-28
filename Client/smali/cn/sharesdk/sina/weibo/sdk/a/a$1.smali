.class Lcn/sharesdk/sina/weibo/sdk/a/a$1;
.super Ljava/lang/Object;
.source "WeiboWebPageLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/sdk/a/a;->a(I)Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/sdk/a/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/sdk/a/a;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a$1;->a:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_c

    .line 71
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 75
    :cond_a
    :goto_a
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 73
    const v0, -0x20203

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_a
.end method
