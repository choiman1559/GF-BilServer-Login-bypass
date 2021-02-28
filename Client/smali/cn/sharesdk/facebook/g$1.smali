.class Lcn/sharesdk/facebook/g$1;
.super Ljava/lang/Object;
.source "WebShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/facebook/g;->a()Lcn/sharesdk/framework/authorize/RegisterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/facebook/g;


# direct methods
.method constructor <init>(Lcn/sharesdk/facebook/g;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcn/sharesdk/facebook/g$1;->a:Lcn/sharesdk/facebook/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    new-instance v0, Lcn/sharesdk/facebook/g$1$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/facebook/g$1$1;-><init>(Lcn/sharesdk/facebook/g$1;)V

    .line 124
    invoke-virtual {v0}, Lcn/sharesdk/facebook/g$1$1;->start()V

    .line 125
    return-void
.end method
