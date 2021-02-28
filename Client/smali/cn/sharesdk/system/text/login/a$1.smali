.class Lcn/sharesdk/system/text/login/a$1;
.super Ljava/lang/Object;
.source "DialogShell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/system/text/login/a;->a(II)Lcn/sharesdk/system/text/login/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/system/text/login/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/system/text/login/a;)V
    .registers 2

    .prologue
    .line 159
    iput-object p1, p0, Lcn/sharesdk/system/text/login/a$1;->a:Lcn/sharesdk/system/text/login/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 162
    invoke-static {}, Lcn/sharesdk/system/text/login/a;->e()Lcn/sharesdk/system/text/login/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/utils/a;->dismiss()V

    .line 163
    return-void
.end method
