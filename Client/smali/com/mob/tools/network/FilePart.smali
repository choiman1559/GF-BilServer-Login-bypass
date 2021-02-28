.class public Lcom/mob/tools/network/FilePart;
.super Lcom/mob/tools/network/HTTPPart;
.source "FilePart.java"


# instance fields
.field private file:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/mob/tools/network/HTTPPart;-><init>()V

    return-void
.end method


# virtual methods
.method protected getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/mob/tools/network/FilePart;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method protected length()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mob/tools/network/FilePart;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/mob/tools/network/FilePart;->file:Ljava/io/File;

    .line 12
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 15
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mob/tools/network/FilePart;->file:Ljava/io/File;

    .line 16
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mob/tools/network/FilePart;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
