.class public final synthetic Lcom/smali/tools/-$$Lambda$SmaliTools$HKclyHPG4Vx_evdTMoHocSS-oYc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Llib/xdsdk/passport/CometPassport$OnXdgLoginCompleteListener;


# instance fields
.field public final synthetic f$0:Landroid/app/ProgressDialog;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ProgressDialog;Landroid/app/Activity;Landroid/app/Dialog;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smali/tools/-$$Lambda$SmaliTools$HKclyHPG4Vx_evdTMoHocSS-oYc;->f$0:Landroid/app/ProgressDialog;

    iput-object p2, p0, Lcom/smali/tools/-$$Lambda$SmaliTools$HKclyHPG4Vx_evdTMoHocSS-oYc;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/smali/tools/-$$Lambda$SmaliTools$HKclyHPG4Vx_evdTMoHocSS-oYc;->f$2:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onFinish(Lorg/json/JSONObject;)V
    .registers 5

    iget-object v0, p0, Lcom/smali/tools/-$$Lambda$SmaliTools$HKclyHPG4Vx_evdTMoHocSS-oYc;->f$0:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/smali/tools/-$$Lambda$SmaliTools$HKclyHPG4Vx_evdTMoHocSS-oYc;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/smali/tools/-$$Lambda$SmaliTools$HKclyHPG4Vx_evdTMoHocSS-oYc;->f$2:Landroid/app/Dialog;

    invoke-static {v0, v1, v2, p1}, Lcom/smali/tools/SmaliTools;->lambda$showLoginDialog$3(Landroid/app/ProgressDialog;Landroid/app/Activity;Landroid/app/Dialog;Lorg/json/JSONObject;)V

    return-void
.end method
