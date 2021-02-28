.class Lcn/sharesdk/google/WebShareActivity$1;
.super Ljava/lang/Object;
.source "WebShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/google/WebShareActivity;->getBodyView()Lcn/sharesdk/framework/authorize/RegisterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/google/WebShareActivity;


# direct methods
.method constructor <init>(Lcn/sharesdk/google/WebShareActivity;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lcn/sharesdk/google/WebShareActivity$1;->a:Lcn/sharesdk/google/WebShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    new-instance v0, Lcn/sharesdk/google/WebShareActivity$1$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/google/WebShareActivity$1$1;-><init>(Lcn/sharesdk/google/WebShareActivity$1;)V

    .line 119
    invoke-virtual {v0}, Lcn/sharesdk/google/WebShareActivity$1$1;->start()V

    .line 120
    return-void
.end method
