.class Lcn/sharesdk/mingdao/d$2;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/mingdao/d;->a()Lcn/sharesdk/framework/authorize/RegisterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/mingdao/d;


# direct methods
.method constructor <init>(Lcn/sharesdk/mingdao/d;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcn/sharesdk/mingdao/d$2;->a:Lcn/sharesdk/mingdao/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    new-instance v0, Lcn/sharesdk/mingdao/d$2$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/mingdao/d$2$1;-><init>(Lcn/sharesdk/mingdao/d$2;)V

    .line 123
    invoke-virtual {v0}, Lcn/sharesdk/mingdao/d$2$1;->start()V

    .line 124
    return-void
.end method
