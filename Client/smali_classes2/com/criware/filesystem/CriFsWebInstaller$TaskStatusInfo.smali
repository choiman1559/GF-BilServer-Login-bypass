.class public Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;
.super Ljava/lang/Object;
.source "CriFsWebInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criware/filesystem/CriFsWebInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskStatusInfo"
.end annotation


# instance fields
.field contents_size:J

.field error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

.field http_status_code:I

.field received_size:J

.field status:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

.field final synthetic this$0:Lcom/criware/filesystem/CriFsWebInstaller;


# direct methods
.method constructor <init>(Lcom/criware/filesystem/CriFsWebInstaller;)V
    .registers 4
    .param p1, "this$0"    # Lcom/criware/filesystem/CriFsWebInstaller;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->this$0:Lcom/criware/filesystem/CriFsWebInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->BUSY:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    .line 158
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_NONE:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    .line 160
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->contents_size:J

    .line 161
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->received_size:J

    .line 162
    return-void
.end method
