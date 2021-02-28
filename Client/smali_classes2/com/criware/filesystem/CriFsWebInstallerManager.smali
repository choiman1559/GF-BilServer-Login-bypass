.class public Lcom/criware/filesystem/CriFsWebInstallerManager;
.super Ljava/lang/Object;
.source "CriFsWebInstallerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;,
        Lcom/criware/filesystem/CriFsWebInstallerManager$LooseTrustManager;
    }
.end annotation


# instance fields
.field public allow_insecure_ssl:Z

.field public crc_enabled:Z

.field public inactive_timeout_sec:I

.field public installer_list:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/criware/filesystem/CriFsWebInstaller;",
            ">;"
        }
    .end annotation
.end field

.field public is_initialized:Z

.field public num_installers:I

.field private num_installers_max:I

.field public proxy_host:Ljava/lang/String;

.field public proxy_port:S

.field public request_headers:Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;

.field public user_agent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->proxy_host:Ljava/lang/String;

    .line 19
    const/4 v0, -0x1

    iput-short v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->proxy_port:S

    return-void
.end method


# virtual methods
.method public CreateInstaller()Lcom/criware/filesystem/CriFsWebInstaller;
    .registers 4

    .prologue
    .line 64
    iget v1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->num_installers:I

    iget v2, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->num_installers_max:I

    if-lt v1, v2, :cond_c

    .line 65
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    .line 66
    const/4 v0, 0x0

    .line 72
    :cond_b
    :goto_b
    return-object v0

    .line 68
    :cond_c
    new-instance v0, Lcom/criware/filesystem/CriFsWebInstaller;

    invoke-direct {v0}, Lcom/criware/filesystem/CriFsWebInstaller;-><init>()V

    .line 69
    .local v0, "hnd":Lcom/criware/filesystem/CriFsWebInstaller;
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->installer_list:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 70
    iget v1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->num_installers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->num_installers:I

    goto :goto_b
.end method

.method public ExecuteMain()V
    .registers 4

    .prologue
    .line 77
    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->installer_list:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criware/filesystem/CriFsWebInstaller;

    .line 79
    .local v0, "hnd":Lcom/criware/filesystem/CriFsWebInstaller;
    invoke-virtual {v0}, Lcom/criware/filesystem/CriFsWebInstaller;->Update()V

    goto :goto_6

    .line 81
    .end local v0    # "hnd":Lcom/criware/filesystem/CriFsWebInstaller;
    :cond_16
    return-void
.end method

.method public Manager_Finalize()V
    .registers 4

    .prologue
    .line 51
    iget-boolean v2, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->is_initialized:Z

    if-nez v2, :cond_5

    .line 61
    :goto_4
    return-void

    .line 55
    :cond_5
    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->installer_list:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criware/filesystem/CriFsWebInstaller;

    .line 57
    .local v0, "hnd":Lcom/criware/filesystem/CriFsWebInstaller;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/criware/filesystem/CriFsWebInstaller;->is_stop_required:Z

    .line 58
    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->installer_list:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_b

    .line 60
    .end local v0    # "hnd":Lcom/criware/filesystem/CriFsWebInstaller;
    :cond_20
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->is_initialized:Z

    goto :goto_4
.end method

.method public Manager_Initialize(Lcom/criware/filesystem/CriFsWebInstaller$Config;)V
    .registers 4
    .param p1, "wiconfig"    # Lcom/criware/filesystem/CriFsWebInstaller$Config;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->is_initialized:Z

    if-eqz v0, :cond_5

    .line 48
    :goto_4
    return-void

    .line 35
    :cond_5
    iget v0, p1, Lcom/criware/filesystem/CriFsWebInstaller$Config;->num_installers:I

    iput v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->num_installers:I

    .line 36
    iget-boolean v0, p1, Lcom/criware/filesystem/CriFsWebInstaller$Config;->allow_insecure_ssl:Z

    iput-boolean v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->allow_insecure_ssl:Z

    .line 37
    iget v0, p1, Lcom/criware/filesystem/CriFsWebInstaller$Config;->inactive_timeout_sec:I

    iput v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->inactive_timeout_sec:I

    .line 38
    iget-object v0, p1, Lcom/criware/filesystem/CriFsWebInstaller$Config;->proxy_host:Ljava/lang/String;

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->proxy_host:Ljava/lang/String;

    .line 39
    iget-short v0, p1, Lcom/criware/filesystem/CriFsWebInstaller$Config;->proxy_port:S

    iput-short v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->proxy_port:S

    .line 40
    iget-object v0, p1, Lcom/criware/filesystem/CriFsWebInstaller$Config;->user_agent:Ljava/lang/String;

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->user_agent:Ljava/lang/String;

    .line 41
    iget-boolean v0, p1, Lcom/criware/filesystem/CriFsWebInstaller$Config;->crc_enabled:Z

    iput-boolean v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->crc_enabled:Z

    .line 43
    iget v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->num_installers:I

    iput v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->num_installers_max:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->num_installers:I

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->installer_list:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 46
    new-instance v0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;

    iget v1, p1, Lcom/criware/filesystem/CriFsWebInstaller$Config;->max_request_fields:I

    invoke-direct {v0, p0, v1}, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;-><init>(Lcom/criware/filesystem/CriFsWebInstallerManager;I)V

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->request_headers:Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->is_initialized:Z

    goto :goto_4
.end method
