.class public final synthetic Llib/xdsdk/passport/httpUrlConnectionUtil/-$$Lambda$HttpUrlConnectionHelper$x4HZ6zv_ZaLP0cleaU0DF2Gfb4g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/app/Activity;

.field public final synthetic f$3:Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/-$$Lambda$HttpUrlConnectionHelper$x4HZ6zv_ZaLP0cleaU0DF2Gfb4g;->f$0:Ljava/lang/String;

    iput-object p2, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/-$$Lambda$HttpUrlConnectionHelper$x4HZ6zv_ZaLP0cleaU0DF2Gfb4g;->f$1:Ljava/lang/String;

    iput-object p3, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/-$$Lambda$HttpUrlConnectionHelper$x4HZ6zv_ZaLP0cleaU0DF2Gfb4g;->f$2:Landroid/app/Activity;

    iput-object p4, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/-$$Lambda$HttpUrlConnectionHelper$x4HZ6zv_ZaLP0cleaU0DF2Gfb4g;->f$3:Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/-$$Lambda$HttpUrlConnectionHelper$x4HZ6zv_ZaLP0cleaU0DF2Gfb4g;->f$0:Ljava/lang/String;

    iget-object v1, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/-$$Lambda$HttpUrlConnectionHelper$x4HZ6zv_ZaLP0cleaU0DF2Gfb4g;->f$1:Ljava/lang/String;

    iget-object v2, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/-$$Lambda$HttpUrlConnectionHelper$x4HZ6zv_ZaLP0cleaU0DF2Gfb4g;->f$2:Landroid/app/Activity;

    iget-object v3, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/-$$Lambda$HttpUrlConnectionHelper$x4HZ6zv_ZaLP0cleaU0DF2Gfb4g;->f$3:Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;

    invoke-static {v0, v1, v2, v3}, Llib/xdsdk/passport/httpUrlConnectionUtil/HttpUrlConnectionHelper;->lambda$doPost$0(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;)V

    return-void
.end method
