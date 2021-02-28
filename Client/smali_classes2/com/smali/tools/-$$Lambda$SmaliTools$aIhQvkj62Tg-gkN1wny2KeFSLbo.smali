.class public final synthetic Lcom/smali/tools/-$$Lambda$SmaliTools$aIhQvkj62Tg-gkN1wny2KeFSLbo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Llib/xdsdk/passport/CometPassport;

.field public final synthetic f$3:Landroid/app/Activity;

.field public final synthetic f$4:Landroid/app/ProgressDialog;

.field public final synthetic f$5:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Llib/xdsdk/passport/CometPassport;Landroid/app/Activity;Landroid/app/ProgressDialog;Landroid/app/Dialog;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smali/tools/-$$Lambda$SmaliTools$aIhQvkj62Tg-gkN1wny2KeFSLbo;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/smali/tools/-$$Lambda$SmaliTools$aIhQvkj62Tg-gkN1wny2KeFSLbo;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/smali/tools/-$$Lambda$SmaliTools$aIhQvkj62Tg-gkN1wny2KeFSLbo;->f$2:Llib/xdsdk/passport/CometPassport;

    iput-object p4, p0, Lcom/smali/tools/-$$Lambda$SmaliTools$aIhQvkj62Tg-gkN1wny2KeFSLbo;->f$3:Landroid/app/Activity;

    iput-object p5, p0, Lcom/smali/tools/-$$Lambda$SmaliTools$aIhQvkj62Tg-gkN1wny2KeFSLbo;->f$4:Landroid/app/ProgressDialog;

    iput-object p6, p0, Lcom/smali/tools/-$$Lambda$SmaliTools$aIhQvkj62Tg-gkN1wny2KeFSLbo;->f$5:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 9

    iget-object v0, p0, Lcom/smali/tools/-$$Lambda$SmaliTools$aIhQvkj62Tg-gkN1wny2KeFSLbo;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/smali/tools/-$$Lambda$SmaliTools$aIhQvkj62Tg-gkN1wny2KeFSLbo;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/smali/tools/-$$Lambda$SmaliTools$aIhQvkj62Tg-gkN1wny2KeFSLbo;->f$2:Llib/xdsdk/passport/CometPassport;

    iget-object v3, p0, Lcom/smali/tools/-$$Lambda$SmaliTools$aIhQvkj62Tg-gkN1wny2KeFSLbo;->f$3:Landroid/app/Activity;

    iget-object v4, p0, Lcom/smali/tools/-$$Lambda$SmaliTools$aIhQvkj62Tg-gkN1wny2KeFSLbo;->f$4:Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/smali/tools/-$$Lambda$SmaliTools$aIhQvkj62Tg-gkN1wny2KeFSLbo;->f$5:Landroid/app/Dialog;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/smali/tools/SmaliTools;->lambda$showLoginDialog$4(Landroid/widget/EditText;Landroid/widget/EditText;Llib/xdsdk/passport/CometPassport;Landroid/app/Activity;Landroid/app/ProgressDialog;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
