.class Lcn/sharesdk/system/text/login/gui/c$2;
.super Ljava/lang/Object;
.source "IdentifyNumPage.java"

# interfaces
.implements Lcn/sharesdk/system/text/login/utils/VerifyCodeReadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/system/text/login/gui/c;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/system/text/login/gui/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/system/text/login/gui/c;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcn/sharesdk/system/text/login/gui/c$2;->a:Lcn/sharesdk/system/text/login/gui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadVerifyCode(Ljava/lang/String;)V
    .registers 3
    .param p1, "verifyCode"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c$2;->a:Lcn/sharesdk/system/text/login/gui/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/gui/c;->c(Lcn/sharesdk/system/text/login/gui/c;)Lcn/sharesdk/system/text/login/utils/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/sharesdk/system/text/login/utils/b;->setText(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method
