.class public Lcom/sunborn/gameplatform/channel/SunbornGameApplication;
.super Landroid/app/Application;
.source "SunbornGameApplication.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 1

    .prologue
    .line 12
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 13
    return-void
.end method
