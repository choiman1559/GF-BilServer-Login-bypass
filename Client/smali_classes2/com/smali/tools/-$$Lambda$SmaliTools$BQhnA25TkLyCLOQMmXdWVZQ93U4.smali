.class public final synthetic Lcom/smali/tools/-$$Lambda$SmaliTools$BQhnA25TkLyCLOQMmXdWVZQ93U4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;Ljava/lang/String;Landroid/app/Dialog;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smali/tools/-$$Lambda$SmaliTools$BQhnA25TkLyCLOQMmXdWVZQ93U4;->f$0:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    iput-object p2, p0, Lcom/smali/tools/-$$Lambda$SmaliTools$BQhnA25TkLyCLOQMmXdWVZQ93U4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/smali/tools/-$$Lambda$SmaliTools$BQhnA25TkLyCLOQMmXdWVZQ93U4;->f$2:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/smali/tools/-$$Lambda$SmaliTools$BQhnA25TkLyCLOQMmXdWVZQ93U4;->f$0:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    iget-object v1, p0, Lcom/smali/tools/-$$Lambda$SmaliTools$BQhnA25TkLyCLOQMmXdWVZQ93U4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/smali/tools/-$$Lambda$SmaliTools$BQhnA25TkLyCLOQMmXdWVZQ93U4;->f$2:Landroid/app/Dialog;

    invoke-static {v0, v1, v2, p1}, Lcom/smali/tools/SmaliTools;->lambda$doLogin$0(Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;Ljava/lang/String;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
