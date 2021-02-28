.class public final synthetic Lcom/smali/tools/-$$Lambda$MainActivity$hn8-jRgxiRkTU18Rk4T6mM4mxdk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/smali/tools/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/smali/tools/MainActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smali/tools/-$$Lambda$MainActivity$hn8-jRgxiRkTU18Rk4T6mM4mxdk;->f$0:Lcom/smali/tools/MainActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/smali/tools/-$$Lambda$MainActivity$hn8-jRgxiRkTU18Rk4T6mM4mxdk;->f$0:Lcom/smali/tools/MainActivity;

    invoke-virtual {v0, p1}, Lcom/smali/tools/MainActivity;->lambda$onCreate$1$MainActivity(Landroid/view/View;)V

    return-void
.end method
