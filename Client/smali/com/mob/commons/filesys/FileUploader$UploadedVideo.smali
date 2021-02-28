.class public Lcom/mob/commons/filesys/FileUploader$UploadedVideo;
.super Lcom/mob/commons/filesys/FileUploader$UploadedFile;
.source "FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/filesys/FileUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadedVideo"
.end annotation


# instance fields
.field public final durationUSec:I


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .registers 4
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
    .line 217
    invoke-direct {p0, p1}, Lcom/mob/commons/filesys/FileUploader$UploadedFile;-><init>(Ljava/util/HashMap;)V

    .line 218
    const/4 v0, -0x1

    .line 220
    :try_start_4
    const-string v1, "time"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_11} :catch_15

    move-result v0

    .line 222
    :goto_12
    iput v0, p0, Lcom/mob/commons/filesys/FileUploader$UploadedVideo;->durationUSec:I

    .line 223
    return-void

    .line 221
    :catch_15
    move-exception v1

    goto :goto_12
.end method
