.class public final Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;
.super Ljava/lang/Object;
.source "CriFsWebInstallerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criware/filesystem/CriFsWebInstallerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RequestHeaders"
.end annotation


# instance fields
.field private fieldAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/criware/filesystem/CriFsWebInstallerManager;


# direct methods
.method public constructor <init>(Lcom/criware/filesystem/CriFsWebInstallerManager;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/criware/filesystem/CriFsWebInstallerManager;
    .param p2, "maxFields"    # I

    .prologue
    .line 100
    iput-object p1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->this$0:Lcom/criware/filesystem/CriFsWebInstallerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    .line 102
    return-void
.end method

.method private add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method private removeAll(Ljava/lang/String;)V
    .registers 4
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 135
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 136
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 134
    :cond_21
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 140
    :cond_24
    return-void
.end method


# virtual methods
.method public getFieldName(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 115
    mul-int/lit8 v0, p1, 0x2

    .line 116
    .local v0, "fieldIndex":I
    if-ltz v0, :cond_c

    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_e

    .line 117
    :cond_c
    const/4 v1, 0x0

    .line 119
    :goto_d
    return-object v1

    :cond_e
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_d
.end method

.method public getValue(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 122
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v0, v1, 0x1

    .line 123
    .local v0, "valueIndex":I
    if-ltz v0, :cond_e

    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    .line 124
    :cond_e
    const/4 v1, 0x0

    .line 126
    :goto_f
    return-object v1

    :cond_10
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_f
.end method

.method public length()I
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->removeAll(Ljava/lang/String;)V

    .line 106
    if-eqz p2, :cond_8

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_8
    return-void
.end method
