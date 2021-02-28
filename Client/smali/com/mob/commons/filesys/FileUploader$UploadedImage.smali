.class public Lcom/mob/commons/filesys/FileUploader$UploadedImage;
.super Lcom/mob/commons/filesys/FileUploader$UploadedFile;
.source "FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/filesys/FileUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadedImage"
.end annotation


# instance fields
.field public final zoomList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/mob/commons/filesys/FileUploader$UploadedFile;-><init>(Ljava/util/HashMap;)V

    .line 205
    :try_start_3
    const-string v0, "list"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_b} :catch_e

    .line 209
    :goto_b
    iput-object v0, p0, Lcom/mob/commons/filesys/FileUploader$UploadedImage;->zoomList:Ljava/util/HashMap;

    .line 210
    return-void

    .line 206
    :catch_e
    move-exception v0

    .line 207
    const/4 v0, 0x0

    goto :goto_b
.end method
