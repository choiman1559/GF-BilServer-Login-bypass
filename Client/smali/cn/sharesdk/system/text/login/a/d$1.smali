.class Lcn/sharesdk/system/text/login/a/d$1;
.super Ljava/lang/Object;
.source "InputPhoneNumPageLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/system/text/login/a/d;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/system/text/login/a/d;


# direct methods
.method constructor <init>(Lcn/sharesdk/system/text/login/a/d;)V
    .registers 2

    .prologue
    .line 163
    iput-object p1, p0, Lcn/sharesdk/system/text/login/a/d$1;->a:Lcn/sharesdk/system/text/login/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 165
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_e

    .line 166
    const v0, -0xba3fe8

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 170
    :cond_c
    :goto_c
    const/4 v0, 0x0

    return v0

    .line 167
    :cond_e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 168
    const v0, -0xa33ba6

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_c
.end method
