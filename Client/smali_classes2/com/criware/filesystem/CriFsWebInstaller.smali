.class public Lcom/criware/filesystem/CriFsWebInstaller;
.super Ljava/lang/Object;
.source "CriFsWebInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;,
        Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;,
        Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;,
        Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;,
        Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;,
        Lcom/criware/filesystem/CriFsWebInstaller$Config;,
        Lcom/criware/filesystem/CriFsWebInstaller$Error;,
        Lcom/criware/filesystem/CriFsWebInstaller$Status;
    }
.end annotation


# static fields
.field private static manager:Lcom/criware/filesystem/CriFsWebInstallerManager;


# instance fields
.field private can_access_asynctask:Z

.field private crc_num:Ljava/util/zip/CRC32;

.field public is_stop_required:Z

.field private is_timeouted:Z

.field private is_waiting_to_start:Z

.field private start_time:J

.field private synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

.field private task:Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;

.field private task_params:Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

.field private timeout_start_time:J


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    invoke-direct {v0, p0}, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;-><init>(Lcom/criware/filesystem/CriFsWebInstaller;)V

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_stop_required:Z

    .line 134
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    iget-boolean v0, v0, Lcom/criware/filesystem/CriFsWebInstallerManager;->crc_enabled:Z

    if-eqz v0, :cond_1a

    .line 135
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->crc_num:Ljava/util/zip/CRC32;

    .line 137
    :cond_1a
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller;->ClearMember()V

    .line 138
    return-void
.end method

.method private ClearMember()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 630
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_STOP:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    iput-object v1, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    .line 631
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_NONE:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iput-object v1, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    .line 632
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    const/4 v1, -0x1

    iput v1, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->http_status_code:I

    .line 633
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->contents_size:J

    .line 634
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iput-wide v6, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->received_size:J

    .line 635
    iput-wide v6, p0, Lcom/criware/filesystem/CriFsWebInstaller;->start_time:J

    .line 636
    iput-wide v6, p0, Lcom/criware/filesystem/CriFsWebInstaller;->timeout_start_time:J

    .line 637
    iput-boolean v4, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_waiting_to_start:Z

    .line 638
    iput-boolean v4, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_timeouted:Z

    .line 639
    iput-boolean v4, p0, Lcom/criware/filesystem/CriFsWebInstaller;->can_access_asynctask:Z

    .line 640
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    iget-boolean v0, v0, Lcom/criware/filesystem/CriFsWebInstallerManager;->crc_enabled:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->crc_num:Ljava/util/zip/CRC32;

    if-eqz v0, :cond_37

    .line 641
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->crc_num:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 643
    :cond_37
    return-void
.end method

.method public static Create()Lcom/criware/filesystem/CriFsWebInstaller;
    .registers 2

    .prologue
    .line 719
    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    if-eqz v1, :cond_b

    .line 720
    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    invoke-virtual {v1}, Lcom/criware/filesystem/CriFsWebInstallerManager;->CreateInstaller()Lcom/criware/filesystem/CriFsWebInstaller;

    move-result-object v0

    .line 724
    .local v0, "installer":Lcom/criware/filesystem/CriFsWebInstaller;
    :goto_a
    return-object v0

    .line 723
    .end local v0    # "installer":Lcom/criware/filesystem/CriFsWebInstaller;
    :cond_b
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    .line 724
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static native ErrorCallback(I)Z
.end method

.method public static ErrorEntry(I)Z
    .registers 2
    .param p0, "entrynum"    # I

    .prologue
    .line 818
    invoke-static {p0}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorCallback(I)Z

    move-result v0

    return v0
.end method

.method public static ExecuteMain()V
    .registers 1

    .prologue
    .line 713
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    if-eqz v0, :cond_9

    .line 714
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    invoke-virtual {v0}, Lcom/criware/filesystem/CriFsWebInstallerManager;->ExecuteMain()V

    .line 716
    :cond_9
    return-void
.end method

.method public static Finalize()V
    .registers 1

    .prologue
    .line 697
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    if-eqz v0, :cond_d

    .line 698
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    invoke-virtual {v0}, Lcom/criware/filesystem/CriFsWebInstallerManager;->Manager_Finalize()V

    .line 699
    const/4 v0, 0x0

    sput-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    .line 704
    :goto_c
    return-void

    .line 702
    :cond_d
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    goto :goto_c
.end method

.method private GetNow()J
    .registers 5

    .prologue
    .line 618
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 619
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    return-wide v2
.end method

.method public static Initialize(Lcom/criware/filesystem/CriFsWebInstaller$Config;)V
    .registers 2
    .param p0, "wiconfig"    # Lcom/criware/filesystem/CriFsWebInstaller$Config;

    .prologue
    .line 687
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    if-nez v0, :cond_11

    .line 688
    new-instance v0, Lcom/criware/filesystem/CriFsWebInstallerManager;

    invoke-direct {v0}, Lcom/criware/filesystem/CriFsWebInstallerManager;-><init>()V

    sput-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    .line 689
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    invoke-virtual {v0, p0}, Lcom/criware/filesystem/CriFsWebInstallerManager;->Manager_Initialize(Lcom/criware/filesystem/CriFsWebInstaller$Config;)V

    .line 694
    :goto_10
    return-void

    .line 692
    :cond_11
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    goto :goto_10
.end method

.method private static IsRetryable(Lcom/criware/filesystem/CriFsWebInstaller$Error;J)Z
    .registers 10
    .param p0, "error"    # Lcom/criware/filesystem/CriFsWebInstaller$Error;
    .param p1, "contents_size"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 623
    sget-object v4, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_CONNECTION:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    if-eq p0, v4, :cond_a

    sget-object v4, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_DNS:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    if-ne p0, v4, :cond_17

    :cond_a
    move v1, v2

    .line 625
    .local v1, "is_error_retryable":Z
    :goto_b
    const-wide/16 v4, -0x1

    cmp-long v4, p1, v4

    if-eqz v4, :cond_19

    move v0, v2

    .line 626
    .local v0, "is_contents_size_retryable":Z
    :goto_12
    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    :goto_16
    return v2

    .end local v0    # "is_contents_size_retryable":Z
    .end local v1    # "is_error_retryable":Z
    :cond_17
    move v1, v3

    .line 623
    goto :goto_b

    .restart local v1    # "is_error_retryable":Z
    :cond_19
    move v0, v3

    .line 625
    goto :goto_12

    .restart local v0    # "is_contents_size_retryable":Z
    :cond_1b
    move v2, v3

    .line 626
    goto :goto_16
.end method

.method public static SetRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 707
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    if-eqz v0, :cond_b

    .line 708
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    iget-object v0, v0, Lcom/criware/filesystem/CriFsWebInstallerManager;->request_headers:Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;

    invoke-virtual {v0, p0, p1}, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :cond_b
    return-void
.end method

.method private StartTask(Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;)V
    .registers 8
    .param p1, "params"    # Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    .prologue
    const/16 v3, 0xb

    .line 647
    :try_start_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_18

    .line 648
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 649
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/criware/filesystem/CriFsWebInstaller$1;

    invoke-direct {v2, p0, p1}, Lcom/criware/filesystem/CriFsWebInstaller$1;-><init>(Lcom/criware/filesystem/CriFsWebInstaller;Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 681
    .end local v1    # "handler":Landroid/os/Handler;
    :goto_17
    return-void

    .line 658
    :cond_18
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_47

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_47

    .line 659
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 660
    .restart local v1    # "handler":Landroid/os/Handler;
    new-instance v2, Lcom/criware/filesystem/CriFsWebInstaller$2;

    invoke-direct {v2, p0, p1}, Lcom/criware/filesystem/CriFsWebInstaller$2;-><init>(Lcom/criware/filesystem/CriFsWebInstaller;Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_33
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_33} :catch_34

    goto :goto_17

    .line 675
    .end local v1    # "handler":Landroid/os/Handler;
    :catch_34
    move-exception v0

    .line 676
    .local v0, "e":Ljava/lang/NullPointerException;
    const/16 v2, 0xa

    invoke-static {v2}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    .line 677
    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    sget-object v3, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_ERROR:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    iput-object v3, v2, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    .line 678
    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    sget-object v3, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_MEMORY:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iput-object v3, v2, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    goto :goto_17

    .line 670
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_47
    :try_start_47
    new-instance v2, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;

    invoke-direct {v2, p0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;-><init>(Lcom/criware/filesystem/CriFsWebInstaller;)V

    iput-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task:Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;

    .line 671
    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task:Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 672
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/criware/filesystem/CriFsWebInstaller;->can_access_asynctask:Z
    :try_end_5e
    .catch Ljava/lang/NullPointerException; {:try_start_47 .. :try_end_5e} :catch_34

    goto :goto_17
.end method

.method static synthetic access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/criware/filesystem/CriFsWebInstaller;)Ljava/util/zip/CRC32;
    .registers 2
    .param p0, "x0"    # Lcom/criware/filesystem/CriFsWebInstaller;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->crc_num:Ljava/util/zip/CRC32;

    return-object v0
.end method

.method static synthetic access$200(Lcom/criware/filesystem/CriFsWebInstaller;)Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;
    .registers 2
    .param p0, "x0"    # Lcom/criware/filesystem/CriFsWebInstaller;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task:Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/criware/filesystem/CriFsWebInstaller;Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;)Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;
    .registers 2
    .param p0, "x0"    # Lcom/criware/filesystem/CriFsWebInstaller;
    .param p1, "x1"    # Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task:Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;

    return-object p1
.end method

.method static synthetic access$302(Lcom/criware/filesystem/CriFsWebInstaller;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/criware/filesystem/CriFsWebInstaller;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->can_access_asynctask:Z

    return p1
.end method


# virtual methods
.method public Copy(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "src_path"    # Ljava/lang/String;
    .param p2, "dst_path"    # Ljava/lang/String;

    .prologue
    .line 739
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-object v0, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_STOP:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    if-eq v0, v1, :cond_d

    .line 740
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    .line 756
    :goto_c
    return-void

    .line 743
    :cond_d
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller;->ClearMember()V

    .line 744
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_stop_required:Z

    .line 745
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_BUSY:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    iput-object v1, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    .line 747
    new-instance v0, Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v4, v1, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->contents_size:J

    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v6, v1, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->received_size:J

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;-><init>(Lcom/criware/filesystem/CriFsWebInstaller;Ljava/lang/String;Ljava/lang/String;JJ)V

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task_params:Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    .line 753
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller;->GetNow()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->timeout_start_time:J

    .line 755
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task_params:Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    invoke-direct {p0, v0}, Lcom/criware/filesystem/CriFsWebInstaller;->StartTask(Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;)V

    goto :goto_c
.end method

.method public Destroy()V
    .registers 3

    .prologue
    .line 729
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-object v0, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_STOP:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    if-eq v0, v1, :cond_d

    .line 730
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    .line 736
    :cond_c
    :goto_c
    return-void

    .line 733
    :cond_d
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    iget-object v0, v0, Lcom/criware/filesystem/CriFsWebInstallerManager;->installer_list:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 734
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    iget v1, v0, Lcom/criware/filesystem/CriFsWebInstallerManager;->num_installers:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/criware/filesystem/CriFsWebInstallerManager;->num_installers:I

    goto :goto_c
.end method

.method public GetCRC32()J
    .registers 3

    .prologue
    .line 797
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->crc_num:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public GetStatusInfo_contents_size()J
    .registers 3

    .prologue
    .line 783
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v0, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->contents_size:J

    return-wide v0
.end method

.method public GetStatusInfo_error()I
    .registers 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-object v0, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-virtual {v0}, Lcom/criware/filesystem/CriFsWebInstaller$Error;->getValue()I

    move-result v0

    return v0
.end method

.method public GetStatusInfo_http_status_code()I
    .registers 2

    .prologue
    .line 780
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget v0, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->http_status_code:I

    return v0
.end method

.method public GetStatusInfo_received_size()J
    .registers 3

    .prologue
    .line 786
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v0, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->received_size:J

    return-wide v0
.end method

.method public GetStatusInfo_status()I
    .registers 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-object v0, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    invoke-virtual {v0}, Lcom/criware/filesystem/CriFsWebInstaller$Status;->getValue()I

    move-result v0

    return v0
.end method

.method public IsCRCEnabled()I
    .registers 2

    .prologue
    .line 790
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    iget-boolean v0, v0, Lcom/criware/filesystem/CriFsWebInstallerManager;->crc_enabled:Z

    if-eqz v0, :cond_8

    .line 791
    const/4 v0, 0x1

    .line 793
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public Stop()V
    .registers 3

    .prologue
    .line 759
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller$3;->$SwitchMap$com$criware$filesystem$CriFsWebInstaller$Status:[I

    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-object v1, v1, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    invoke-virtual {v1}, Lcom/criware/filesystem/CriFsWebInstaller$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 770
    :goto_f
    :pswitch_f
    return-void

    .line 763
    :pswitch_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_stop_required:Z

    goto :goto_f

    .line 767
    :pswitch_14
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller;->ClearMember()V

    goto :goto_f

    .line 759
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public Update()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x3e8

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 536
    iget-object v8, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-object v8, v8, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    sget-object v9, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_BUSY:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    if-ne v8, v9, :cond_10

    iget-boolean v8, p0, Lcom/criware/filesystem/CriFsWebInstaller;->can_access_asynctask:Z

    if-nez v8, :cond_11

    .line 615
    :cond_10
    :goto_10
    return-void

    .line 541
    :cond_11
    iget-object v8, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task:Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;

    invoke-virtual {v8}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->GetTaskStatusInfo()Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    move-result-object v5

    .line 542
    .local v5, "task_statusinfo":Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;
    if-eqz v5, :cond_10

    .line 546
    sget-object v8, Lcom/criware/filesystem/CriFsWebInstaller$3;->$SwitchMap$com$criware$filesystem$CriFsWebInstaller$TaskStatus:[I

    iget-object v9, v5, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    invoke-virtual {v9}, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_14c

    goto :goto_10

    .line 548
    :pswitch_27
    iget-boolean v8, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_stop_required:Z

    if-eqz v8, :cond_31

    .line 549
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task:Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;

    invoke-virtual {v7}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->Cancel()V

    goto :goto_10

    .line 551
    :cond_31
    iget-object v8, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v10, v5, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->contents_size:J

    iput-wide v10, v8, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->contents_size:J

    .line 552
    iget-wide v8, v5, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->received_size:J

    iget-object v10, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v10, v10, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->received_size:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_42

    move v4, v7

    .line 553
    .local v4, "is_progressing":Z
    :cond_42
    if-eqz v4, :cond_52

    .line 554
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v8, v5, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->received_size:J

    iput-wide v8, v7, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->received_size:J

    .line 555
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller;->GetNow()J

    move-result-wide v8

    div-long/2addr v8, v12

    iput-wide v8, p0, Lcom/criware/filesystem/CriFsWebInstaller;->timeout_start_time:J

    goto :goto_10

    .line 557
    :cond_52
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller;->GetNow()J

    move-result-wide v8

    div-long v0, v8, v12

    .line 558
    .local v0, "currentSec":J
    iget-wide v8, p0, Lcom/criware/filesystem/CriFsWebInstaller;->timeout_start_time:J

    sget-object v10, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    iget v10, v10, Lcom/criware/filesystem/CriFsWebInstallerManager;->inactive_timeout_sec:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    cmp-long v8, v8, v0

    if-gez v8, :cond_10

    .line 559
    iput-boolean v7, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_timeouted:Z

    .line 560
    iget-object v8, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task:Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;

    invoke-virtual {v8, v7}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->cancel(Z)Z

    goto :goto_10

    .line 566
    .end local v0    # "currentSec":J
    .end local v4    # "is_progressing":Z
    :pswitch_6c
    iget-boolean v8, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_stop_required:Z

    if-eqz v8, :cond_94

    .line 567
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task_params:Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    iget-object v8, v8, Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;->param_dst_path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 568
    .local v6, "tmp_file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 569
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller;->ClearMember()V

    goto/16 :goto_10

    .line 570
    .end local v6    # "tmp_file":Ljava/io/File;
    :cond_94
    iget-boolean v8, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_timeouted:Z

    if-eqz v8, :cond_b2

    .line 571
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v8, v5, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->contents_size:J

    iput-wide v8, v7, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->contents_size:J

    .line 572
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v8, v5, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->received_size:J

    iput-wide v8, v7, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->received_size:J

    .line 573
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    sget-object v8, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_ERROR:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    iput-object v8, v7, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    .line 574
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    sget-object v8, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_TIMEOUT:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iput-object v8, v7, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    goto/16 :goto_10

    .line 576
    :cond_b2
    iget-object v8, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v10, v5, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->contents_size:J

    iput-wide v10, v8, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->contents_size:J

    .line 577
    iget-object v8, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v10, v5, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->received_size:J

    iput-wide v10, v8, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->received_size:J

    .line 578
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller;->GetNow()J

    move-result-wide v8

    div-long v0, v8, v12

    .line 579
    .restart local v0    # "currentSec":J
    iget-wide v8, p0, Lcom/criware/filesystem/CriFsWebInstaller;->timeout_start_time:J

    sget-object v10, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    iget v10, v10, Lcom/criware/filesystem/CriFsWebInstallerManager;->inactive_timeout_sec:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    cmp-long v8, v8, v0

    if-gez v8, :cond_d2

    .line 580
    iput-boolean v7, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_timeouted:Z

    .line 582
    :cond_d2
    iget-object v8, v5, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    sget-object v9, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_NONE:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    if-ne v8, v9, :cond_e6

    .line 583
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    sget-object v8, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_COMPLETE:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    iput-object v8, v7, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    .line 584
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget v8, v5, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    iput v8, v7, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->http_status_code:I

    goto/16 :goto_10

    .line 586
    :cond_e6
    iget-object v8, v5, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iget-object v9, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v10, v9, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->contents_size:J

    invoke-static {v8, v10, v11}, Lcom/criware/filesystem/CriFsWebInstaller;->IsRetryable(Lcom/criware/filesystem/CriFsWebInstaller$Error;J)Z

    move-result v8

    if-eqz v8, :cond_129

    .line 587
    iget-boolean v8, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_waiting_to_start:Z

    if-nez v8, :cond_100

    .line 588
    iput-boolean v7, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_waiting_to_start:Z

    .line 589
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller;->GetNow()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/criware/filesystem/CriFsWebInstaller;->start_time:J

    goto/16 :goto_10

    .line 591
    :cond_100
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller;->GetNow()J

    move-result-wide v2

    .line 592
    .local v2, "currentminiSec":J
    iget-wide v8, p0, Lcom/criware/filesystem/CriFsWebInstaller;->start_time:J

    sub-long v8, v2, v8

    const-wide/16 v10, 0x1388

    cmp-long v7, v8, v10

    if-ltz v7, :cond_10

    .line 593
    iput-boolean v4, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_waiting_to_start:Z

    .line 595
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task_params:Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    iget-object v8, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v8, v8, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->contents_size:J

    iput-wide v8, v7, Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;->param_contents_size:J

    .line 596
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task_params:Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    iget-object v8, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v8, v8, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->received_size:J

    iput-wide v8, v7, Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;->param_received_size:J

    .line 597
    iput-boolean v4, p0, Lcom/criware/filesystem/CriFsWebInstaller;->can_access_asynctask:Z

    .line 598
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task_params:Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    invoke-direct {p0, v7}, Lcom/criware/filesystem/CriFsWebInstaller;->StartTask(Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;)V

    goto/16 :goto_10

    .line 602
    .end local v2    # "currentminiSec":J
    :cond_129
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    sget-object v8, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_ERROR:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    iput-object v8, v7, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    .line 603
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-object v8, v5, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iput-object v8, v7, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    .line 604
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget v8, v5, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    iput v8, v7, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->http_status_code:I

    goto/16 :goto_10

    .line 610
    .end local v0    # "currentSec":J
    :pswitch_13d
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v8, v5, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->contents_size:J

    iput-wide v8, v7, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->contents_size:J

    .line 611
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v8, v5, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->received_size:J

    iput-wide v8, v7, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->received_size:J

    goto/16 :goto_10

    .line 546
    nop

    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_6c
        :pswitch_13d
    .end packed-switch
.end method
