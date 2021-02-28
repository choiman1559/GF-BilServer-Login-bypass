.class Lcn/sharesdk/system/text/login/utils/a$2;
.super Ljava/lang/Object;
.source "CommDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/system/text/login/utils/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/system/text/login/utils/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/system/text/login/utils/a;)V
    .registers 2

    .prologue
    .line 160
    iput-object p1, p0, Lcn/sharesdk/system/text/login/utils/a$2;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    iget-object v0, p0, Lcn/sharesdk/system/text/login/utils/a$2;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/utils/a;->dismiss()V

    .line 163
    return-void
.end method
