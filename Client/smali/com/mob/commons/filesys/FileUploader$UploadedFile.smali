.class public Lcom/mob/commons/filesys/FileUploader$UploadedFile;
.super Ljava/lang/Object;
.source "FileUploader.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/filesys/FileUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadedFile"
.end annotation


# instance fields
.field public final url:Ljava/lang/String;


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
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const-string v0, "src"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 190
    const-string v0, "src"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mob/commons/filesys/FileUploader$UploadedFile;->url:Ljava/lang/String;

    .line 194
    :goto_15
    return-void

    .line 192
    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mob/commons/filesys/FileUploader$UploadedFile;->url:Ljava/lang/String;

    goto :goto_15
.end method
