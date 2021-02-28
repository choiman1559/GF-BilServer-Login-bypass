.class Lcom/mob/commons/authorize/a$2;
.super Ljava/lang/Object;
.source "Authorizer.java"

# interfaces
.implements Lcom/mob/commons/LockAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/authorize/a;->a(Z)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/mob/commons/authorize/a;


# direct methods
.method constructor <init>(Lcom/mob/commons/authorize/a;Z[Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 480
    iput-object p1, p0, Lcom/mob/commons/authorize/a$2;->c:Lcom/mob/commons/authorize/a;

    iput-boolean p2, p0, Lcom/mob/commons/authorize/a$2;->a:Z

    iput-object p3, p0, Lcom/mob/commons/authorize/a$2;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/mob/tools/utils/FileLocker;)Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 487
    .line 488
    :try_start_2
    iget-object v0, p0, Lcom/mob/commons/authorize/a$2;->c:Lcom/mob/commons/authorize/a;

    invoke-static {v0}, Lcom/mob/commons/authorize/a;->a(Lcom/mob/commons/authorize/a;)Ljava/io/File;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_11} :catch_5c

    move-result v1

    if-eqz v1, :cond_6d

    .line 492
    :try_start_14
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 493
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1e} :catch_41
    .catchall {:try_start_14 .. :try_end_1e} :catchall_54

    .line 494
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_24} :catch_6b
    .catchall {:try_start_1e .. :try_end_24} :catchall_69

    .line 498
    if-eqz v1, :cond_29

    .line 500
    :try_start_26
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_65

    .line 506
    :cond_29
    :goto_29
    if-nez v0, :cond_33

    .line 507
    :try_start_2b
    iget-object v0, p0, Lcom/mob/commons/authorize/a$2;->c:Lcom/mob/commons/authorize/a;

    iget-boolean v1, p0, Lcom/mob/commons/authorize/a$2;->a:Z

    invoke-static {v0, v1}, Lcom/mob/commons/authorize/a;->a(Lcom/mob/commons/authorize/a;Z)Ljava/util/HashMap;

    move-result-object v0

    .line 510
    :cond_33
    iget-object v1, p0, Lcom/mob/commons/authorize/a$2;->b:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "duid"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_40} :catch_5c

    .line 514
    :goto_40
    return v4

    .line 495
    :catch_41
    move-exception v0

    move-object v1, v2

    .line 496
    :goto_43
    :try_start_43
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_69

    .line 498
    if-eqz v1, :cond_6d

    .line 500
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4f} :catch_51

    move-object v0, v2

    .line 501
    goto :goto_29

    :catch_51
    move-exception v0

    move-object v0, v2

    goto :goto_29

    .line 498
    :catchall_54
    move-exception v0

    move-object v1, v2

    :goto_56
    if-eqz v1, :cond_5b

    .line 500
    :try_start_58
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_5b} :catch_67

    .line 501
    :cond_5b
    :goto_5b
    :try_start_5b
    throw v0
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5c} :catch_5c

    .line 511
    :catch_5c
    move-exception v0

    .line 512
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_40

    .line 501
    :catch_65
    move-exception v1

    goto :goto_29

    :catch_67
    move-exception v1

    goto :goto_5b

    .line 498
    :catchall_69
    move-exception v0

    goto :goto_56

    .line 495
    :catch_6b
    move-exception v0

    goto :goto_43

    :cond_6d
    move-object v0, v2

    goto :goto_29
.end method
