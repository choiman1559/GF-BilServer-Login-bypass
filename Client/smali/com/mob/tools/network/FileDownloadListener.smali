.class public abstract Lcom/mob/tools/network/FileDownloadListener;
.super Ljava/lang/Object;
.source "FileDownloadListener.java"


# instance fields
.field private isCanceled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mob/tools/network/FileDownloadListener;->isCanceled:Z

    .line 8
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mob/tools/network/FileDownloadListener;->isCanceled:Z

    .line 14
    return-void
.end method

.method public isCanceled()Z
    .registers 2

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/mob/tools/network/FileDownloadListener;->isCanceled:Z

    return v0
.end method

.method protected abstract onProgress(IJJ)V
.end method
