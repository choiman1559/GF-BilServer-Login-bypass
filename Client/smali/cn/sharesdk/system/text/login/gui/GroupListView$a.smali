.class public abstract Lcn/sharesdk/system/text/login/gui/GroupListView$a;
.super Ljava/lang/Object;
.source "GroupListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/system/text/login/gui/GroupListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field protected final a:Lcn/sharesdk/system/text/login/gui/GroupListView;


# direct methods
.method public constructor <init>(Lcn/sharesdk/system/text/login/gui/GroupListView;)V
    .registers 2

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p1, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$a;->a:Lcn/sharesdk/system/text/login/gui/GroupListView;

    .line 279
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(I)I
.end method

.method public abstract a(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract a(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public abstract b(II)Ljava/lang/Object;
.end method

.method public abstract b(I)Ljava/lang/String;
.end method

.method public c()V
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$a;->a:Lcn/sharesdk/system/text/login/gui/GroupListView;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/gui/GroupListView;->f(Lcn/sharesdk/system/text/login/gui/GroupListView;)V

    .line 326
    return-void
.end method
