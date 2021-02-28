.class public final synthetic Llib/xdsdk/passport/-$$Lambda$CometPassport$Koz30RExYGGcDnkSLdiHCNw94GY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Llib/xdsdk/passport/CometPassport;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Llib/xdsdk/passport/CometPassport;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llib/xdsdk/passport/-$$Lambda$CometPassport$Koz30RExYGGcDnkSLdiHCNw94GY;->f$0:Llib/xdsdk/passport/CometPassport;

    iput-object p2, p0, Llib/xdsdk/passport/-$$Lambda$CometPassport$Koz30RExYGGcDnkSLdiHCNw94GY;->f$1:Ljava/lang/String;

    iput-object p3, p0, Llib/xdsdk/passport/-$$Lambda$CometPassport$Koz30RExYGGcDnkSLdiHCNw94GY;->f$2:Ljava/lang/String;

    iput-object p4, p0, Llib/xdsdk/passport/-$$Lambda$CometPassport$Koz30RExYGGcDnkSLdiHCNw94GY;->f$3:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Llib/xdsdk/passport/-$$Lambda$CometPassport$Koz30RExYGGcDnkSLdiHCNw94GY;->f$0:Llib/xdsdk/passport/CometPassport;

    iget-object v1, p0, Llib/xdsdk/passport/-$$Lambda$CometPassport$Koz30RExYGGcDnkSLdiHCNw94GY;->f$1:Ljava/lang/String;

    iget-object v2, p0, Llib/xdsdk/passport/-$$Lambda$CometPassport$Koz30RExYGGcDnkSLdiHCNw94GY;->f$2:Ljava/lang/String;

    iget-object v3, p0, Llib/xdsdk/passport/-$$Lambda$CometPassport$Koz30RExYGGcDnkSLdiHCNw94GY;->f$3:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3}, Llib/xdsdk/passport/CometPassport;->lambda$signInWithXdg$0$CometPassport(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
