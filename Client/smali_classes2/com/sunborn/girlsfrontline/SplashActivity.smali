.class public Lcom/sunborn/girlsfrontline/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# static fields
.field private static final MSG_ID_GOTO:I = 0xc0a83

.field private static final TIMEOUT:I = 0x7d0


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initHandler()V
    .registers 5

    .prologue
    .line 26
    new-instance v0, Lcom/sunborn/girlsfrontline/SplashActivity$1;

    invoke-direct {v0, p0}, Lcom/sunborn/girlsfrontline/SplashActivity$1;-><init>(Lcom/sunborn/girlsfrontline/SplashActivity;)V

    iput-object v0, p0, Lcom/sunborn/girlsfrontline/SplashActivity;->mHandler:Landroid/os/Handler;

    .line 42
    iget-object v0, p0, Lcom/sunborn/girlsfrontline/SplashActivity;->mHandler:Landroid/os/Handler;

    const v1, 0xc0a83

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 43
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/sunborn/girlsfrontline/SplashActivity;->setContentView(I)V

    .line 21
    invoke-direct {p0}, Lcom/sunborn/girlsfrontline/SplashActivity;->initHandler()V

    .line 22
    invoke-static {p0}, Lcom/smali/tools/SmaliTools;->checkOverlayPermissionAndRequest(Landroid/content/Context;)V

    .line 23
    return-void
.end method
