.class Lcom/criware/filesystem/CriFsWebInstaller$1;
.super Ljava/lang/Object;
.source "CriFsWebInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criware/filesystem/CriFsWebInstaller;->StartTask(Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/criware/filesystem/CriFsWebInstaller;

.field final synthetic val$params:Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;


# direct methods
.method constructor <init>(Lcom/criware/filesystem/CriFsWebInstaller;Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;)V
    .registers 3
    .param p1, "this$0"    # Lcom/criware/filesystem/CriFsWebInstaller;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/criware/filesystem/CriFsWebInstaller$1;->this$0:Lcom/criware/filesystem/CriFsWebInstaller;

    iput-object p2, p0, Lcom/criware/filesystem/CriFsWebInstaller$1;->val$params:Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 652
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$1;->this$0:Lcom/criware/filesystem/CriFsWebInstaller;

    new-instance v1, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;

    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller$1;->this$0:Lcom/criware/filesystem/CriFsWebInstaller;

    invoke-direct {v1, v2}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;-><init>(Lcom/criware/filesystem/CriFsWebInstaller;)V

    invoke-static {v0, v1}, Lcom/criware/filesystem/CriFsWebInstaller;->access$202(Lcom/criware/filesystem/CriFsWebInstaller;Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;)Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;

    .line 653
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$1;->this$0:Lcom/criware/filesystem/CriFsWebInstaller;

    invoke-static {v0}, Lcom/criware/filesystem/CriFsWebInstaller;->access$200(Lcom/criware/filesystem/CriFsWebInstaller;)Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;

    move-result-object v0

    new-array v1, v4, [Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/criware/filesystem/CriFsWebInstaller$1;->val$params:Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 654
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$1;->this$0:Lcom/criware/filesystem/CriFsWebInstaller;

    invoke-static {v0, v4}, Lcom/criware/filesystem/CriFsWebInstaller;->access$302(Lcom/criware/filesystem/CriFsWebInstaller;Z)Z

    .line 655
    return-void
.end method
