.class public Lcom/mob/commons/filesys/FileUploader$UploadedAvatar;
.super Lcom/mob/commons/filesys/FileUploader$UploadedImage;
.source "FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/filesys/FileUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadedAvatar"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .registers 2
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
    .line 229
    invoke-direct {p0, p1}, Lcom/mob/commons/filesys/FileUploader$UploadedImage;-><init>(Ljava/util/HashMap;)V

    .line 230
    return-void
.end method
