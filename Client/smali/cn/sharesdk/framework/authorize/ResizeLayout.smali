.class public Lcn/sharesdk/framework/authorize/ResizeLayout;
.super Landroid/widget/LinearLayout;
.source "ResizeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/authorize/ResizeLayout$OnResizeListener;
    }
.end annotation


# instance fields
.field private a:Lcn/sharesdk/framework/authorize/ResizeLayout$OnResizeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/authorize/ResizeLayout$OnResizeListener;)V
    .registers 2

    .prologue
    .line 16
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/ResizeLayout;->a:Lcn/sharesdk/framework/authorize/ResizeLayout$OnResizeListener;

    .line 17
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 30
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/ResizeLayout;->a:Lcn/sharesdk/framework/authorize/ResizeLayout$OnResizeListener;

    if-eqz v0, :cond_c

    .line 31
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/ResizeLayout;->a:Lcn/sharesdk/framework/authorize/ResizeLayout$OnResizeListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/sharesdk/framework/authorize/ResizeLayout$OnResizeListener;->OnResize(IIII)V

    .line 33
    :cond_c
    return-void
.end method
