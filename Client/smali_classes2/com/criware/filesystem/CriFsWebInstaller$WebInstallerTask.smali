.class Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;
.super Landroid/os/AsyncTask;
.source "CriFsWebInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criware/filesystem/CriFsWebInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebInstallerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private http_connection:Ljava/net/HttpURLConnection;

.field private is_ssl:Z

.field private task_dst_path:Ljava/lang/String;

.field private task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

.field private task_src_path:Ljava/lang/String;

.field final synthetic this$0:Lcom/criware/filesystem/CriFsWebInstaller;

.field private tmp_file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/criware/filesystem/CriFsWebInstaller;)V
    .registers 3

    .prologue
    .line 173
    iput-object p1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->this$0:Lcom/criware/filesystem/CriFsWebInstaller;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    .line 175
    new-instance v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    invoke-direct {v0, p1}, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;-><init>(Lcom/criware/filesystem/CriFsWebInstaller;)V

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    .line 176
    return-void
.end method

.method private declared-synchronized SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V
    .registers 6
    .param p1, "error"    # Lcom/criware/filesystem/CriFsWebInstaller$Error;
    .param p2, "http_status_code"    # I

    .prologue
    .line 240
    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_CONNECTION:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    if-eq p1, v1, :cond_9

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_DNS:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    if-ne p1, v1, :cond_29

    :cond_9
    const/4 v0, 0x1

    .line 242
    .local v0, "is_error_retryable":Z
    :goto_a
    if-nez v0, :cond_19

    .line 243
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 244
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 247
    :cond_19
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    sget-object v2, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->STOP:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    iput-object v2, v1, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    .line 248
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iput-object p1, v1, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    .line 249
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iput p2, v1, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2b

    .line 250
    monitor-exit p0

    return-void

    .line 240
    .end local v0    # "is_error_retryable":Z
    :cond_29
    const/4 v0, 0x0

    goto :goto_a

    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private task_connect()Z
    .registers 12

    .prologue
    const/4 v10, -0x1

    const/4 v4, 0x0

    .line 372
    const/4 v3, -0x1

    .line 373
    .local v3, "status_code":I
    const-wide/16 v0, -0x1

    .line 375
    .local v0, "contents_size":J
    :try_start_5
    iget-object v5, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 377
    iget-object v5, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 378
    const/16 v5, 0xc8

    if-ne v3, v5, :cond_27

    .line 379
    iget-object v5, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    int-to-long v0, v5

    .line 392
    :goto_1b
    monitor-enter p0
    :try_end_1c
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_1c} :catch_41
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_1c} :catch_4f
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_1c} :catch_59
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_5 .. :try_end_1c} :catch_60
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_1c} :catch_67
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_1c} :catch_6e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1c} :catch_75

    .line 393
    :try_start_1c
    iget-object v5, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iput v3, v5, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    .line 394
    iget-object v5, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iput-wide v0, v5, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->contents_size:J

    .line 395
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_56

    .line 424
    const/4 v4, 0x1

    :goto_26
    return v4

    .line 380
    :cond_27
    const/16 v5, 0xce

    if-ne v3, v5, :cond_39

    .line 381
    :try_start_2b
    iget-object v5, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    int-to-long v6, v5

    iget-object v5, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget-wide v8, v5, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->received_size:J

    add-long v0, v6, v8

    goto :goto_1b

    .line 382
    :cond_39
    if-ltz v3, :cond_48

    .line 383
    sget-object v5, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_HTTP:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v5, v3}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V
    :try_end_40
    .catch Ljava/net/UnknownHostException; {:try_start_2b .. :try_end_40} :catch_41
    .catch Ljava/net/SocketException; {:try_start_2b .. :try_end_40} :catch_4f
    .catch Ljava/net/SocketTimeoutException; {:try_start_2b .. :try_end_40} :catch_59
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2b .. :try_end_40} :catch_60
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_40} :catch_67
    .catch Ljavax/net/ssl/SSLException; {:try_start_2b .. :try_end_40} :catch_6e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_40} :catch_75

    goto :goto_26

    .line 397
    :catch_41
    move-exception v2

    .line 398
    .local v2, "e":Ljava/net/UnknownHostException;
    sget-object v5, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_CONNECTION:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v5, v10}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    goto :goto_26

    .line 388
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :cond_48
    :try_start_48
    sget-object v5, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_CONNECTION:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    const/4 v6, -0x1

    invoke-direct {p0, v5, v6}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V
    :try_end_4e
    .catch Ljava/net/UnknownHostException; {:try_start_48 .. :try_end_4e} :catch_41
    .catch Ljava/net/SocketException; {:try_start_48 .. :try_end_4e} :catch_4f
    .catch Ljava/net/SocketTimeoutException; {:try_start_48 .. :try_end_4e} :catch_59
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_48 .. :try_end_4e} :catch_60
    .catch Ljava/io/FileNotFoundException; {:try_start_48 .. :try_end_4e} :catch_67
    .catch Ljavax/net/ssl/SSLException; {:try_start_48 .. :try_end_4e} :catch_6e
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4e} :catch_75

    goto :goto_26

    .line 400
    :catch_4f
    move-exception v2

    .line 401
    .local v2, "e":Ljava/net/SocketException;
    sget-object v5, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_CONNECTION:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v5, v10}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    goto :goto_26

    .line 395
    .end local v2    # "e":Ljava/net/SocketException;
    :catchall_56
    move-exception v5

    :try_start_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    :try_start_58
    throw v5
    :try_end_59
    .catch Ljava/net/UnknownHostException; {:try_start_58 .. :try_end_59} :catch_41
    .catch Ljava/net/SocketException; {:try_start_58 .. :try_end_59} :catch_4f
    .catch Ljava/net/SocketTimeoutException; {:try_start_58 .. :try_end_59} :catch_59
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_58 .. :try_end_59} :catch_60
    .catch Ljava/io/FileNotFoundException; {:try_start_58 .. :try_end_59} :catch_67
    .catch Ljavax/net/ssl/SSLException; {:try_start_58 .. :try_end_59} :catch_6e
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_59} :catch_75

    .line 403
    :catch_59
    move-exception v2

    .line 404
    .local v2, "e":Ljava/net/SocketTimeoutException;
    sget-object v5, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_CONNECTION:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v5, v10}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    goto :goto_26

    .line 406
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    :catch_60
    move-exception v2

    .line 407
    .local v2, "e":Ljavax/net/ssl/SSLHandshakeException;
    sget-object v5, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_CONNECTION:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v5, v10}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    goto :goto_26

    .line 409
    .end local v2    # "e":Ljavax/net/ssl/SSLHandshakeException;
    :catch_67
    move-exception v2

    .line 413
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-object v5, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_HTTP:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v5, v10}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    goto :goto_26

    .line 415
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_6e
    move-exception v2

    .line 416
    .local v2, "e":Ljavax/net/ssl/SSLException;
    sget-object v5, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_SSL:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v5, v10}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    goto :goto_26

    .line 418
    .end local v2    # "e":Ljavax/net/ssl/SSLException;
    :catch_75
    move-exception v2

    .line 419
    .local v2, "e":Ljava/io/IOException;
    sget-object v5, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_CONNECTION:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v5, v10}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    .line 420
    const/4 v5, 0x5

    invoke-static {v5}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    .line 421
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26
.end method

.method private task_copyfile()Z
    .registers 16

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v14, -0x1

    .line 429
    :try_start_3
    iget-object v8, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 430
    .local v4, "in":Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v8, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    const/4 v9, 0x1

    invoke-direct {v5, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 431
    .local v5, "out":Ljava/io/FileOutputStream;
    const/4 v1, -0x1

    .line 432
    .local v1, "bytesRead":I
    const/high16 v8, 0x10000

    new-array v0, v8, [B

    .line 434
    .local v0, "buffer":[B
    :goto_16
    invoke-virtual {p0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->isCancelled()Z
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_19} :catch_50
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_19} :catch_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_19} :catch_a6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_19} :catch_bc
    .catchall {:try_start_3 .. :try_end_19} :catchall_132

    move-result v8

    if-nez v8, :cond_22

    .line 436
    :try_start_1c
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_48
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1f} :catch_50
    .catch Ljava/net/SocketTimeoutException; {:try_start_1c .. :try_end_1f} :catch_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1f} :catch_a6
    .catchall {:try_start_1c .. :try_end_1f} :catchall_132

    move-result v1

    .line 442
    if-ne v1, v14, :cond_5d

    .line 477
    :cond_22
    :goto_22
    :try_start_22
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_139
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_25} :catch_50
    .catch Ljava/net/SocketTimeoutException; {:try_start_22 .. :try_end_25} :catch_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_25} :catch_a6
    .catchall {:try_start_22 .. :try_end_25} :catchall_132

    .line 481
    :goto_25
    :try_start_25
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_13c
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_28} :catch_50
    .catch Ljava/net/SocketTimeoutException; {:try_start_25 .. :try_end_28} :catch_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_28} :catch_a6
    .catchall {:try_start_25 .. :try_end_28} :catchall_132

    .line 485
    :goto_28
    :try_start_28
    iget-object v8, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 487
    iget-object v8, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget-object v8, v8, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    sget-object v9, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_NONE:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    if-eq v8, v9, :cond_d1

    .line 488
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget-object v7, v7, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    sget-object v8, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_LOCALFS:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    if-ne v7, v8, :cond_42

    .line 489
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_42
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_42} :catch_50
    .catch Ljava/net/SocketTimeoutException; {:try_start_28 .. :try_end_42} :catch_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_42} :catch_a6
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_42} :catch_bc
    .catchall {:try_start_28 .. :try_end_42} :catchall_132

    .line 528
    :cond_42
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 530
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :goto_47
    return v6

    .line 437
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_48
    move-exception v3

    .line 438
    .local v3, "e":Ljava/io/IOException;
    :try_start_49
    sget-object v8, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_CONNECTION:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    const/4 v9, -0x1

    invoke-direct {p0, v8, v9}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V
    :try_end_4f
    .catch Ljava/lang/NullPointerException; {:try_start_49 .. :try_end_4f} :catch_50
    .catch Ljava/net/SocketTimeoutException; {:try_start_49 .. :try_end_4f} :catch_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_4f} :catch_a6
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4f} :catch_bc
    .catchall {:try_start_49 .. :try_end_4f} :catchall_132

    goto :goto_22

    .line 513
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :catch_50
    move-exception v3

    .line 514
    .local v3, "e":Ljava/lang/NullPointerException;
    :try_start_51
    sget-object v7, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_MEMORY:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    const/4 v8, -0x1

    invoke-direct {p0, v7, v8}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_132

    .line 528
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_47

    .line 445
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :cond_5d
    if-nez v1, :cond_67

    .line 448
    const-wide/16 v8, 0xa

    :try_start_61
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_64
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_64} :catch_65
    .catch Ljava/lang/NullPointerException; {:try_start_61 .. :try_end_64} :catch_50
    .catch Ljava/net/SocketTimeoutException; {:try_start_61 .. :try_end_64} :catch_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_61 .. :try_end_64} :catch_a6
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_bc
    .catchall {:try_start_61 .. :try_end_64} :catchall_132

    goto :goto_16

    .line 449
    :catch_65
    move-exception v8

    goto :goto_16

    .line 453
    :cond_67
    :try_start_67
    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v8

    iget-boolean v8, v8, Lcom/criware/filesystem/CriFsWebInstallerManager;->crc_enabled:Z
    :try_end_6d
    .catch Ljava/lang/NullPointerException; {:try_start_67 .. :try_end_6d} :catch_50
    .catch Ljava/net/SocketTimeoutException; {:try_start_67 .. :try_end_6d} :catch_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_67 .. :try_end_6d} :catch_a6
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6d} :catch_bc
    .catchall {:try_start_67 .. :try_end_6d} :catchall_132

    if-eqz v8, :cond_79

    .line 456
    :try_start_6f
    iget-object v8, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->this$0:Lcom/criware/filesystem/CriFsWebInstaller;

    invoke-static {v8}, Lcom/criware/filesystem/CriFsWebInstaller;->access$100(Lcom/criware/filesystem/CriFsWebInstaller;)Ljava/util/zip/CRC32;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v1}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_79
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6f .. :try_end_79} :catch_98
    .catch Ljava/lang/NullPointerException; {:try_start_6f .. :try_end_79} :catch_50
    .catch Ljava/net/SocketTimeoutException; {:try_start_6f .. :try_end_79} :catch_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_6f .. :try_end_79} :catch_a6
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_79} :catch_bc
    .catchall {:try_start_6f .. :try_end_79} :catchall_132

    .line 465
    :cond_79
    const/4 v8, 0x0

    :try_start_7a
    invoke-virtual {v5, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_b3
    .catch Ljava/lang/NullPointerException; {:try_start_7a .. :try_end_7d} :catch_50
    .catch Ljava/net/SocketTimeoutException; {:try_start_7a .. :try_end_7d} :catch_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_7a .. :try_end_7d} :catch_a6
    .catchall {:try_start_7a .. :try_end_7d} :catchall_132

    .line 470
    :try_start_7d
    monitor-enter p0
    :try_end_7e
    .catch Ljava/lang/NullPointerException; {:try_start_7d .. :try_end_7e} :catch_50
    .catch Ljava/net/SocketTimeoutException; {:try_start_7d .. :try_end_7e} :catch_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_7d .. :try_end_7e} :catch_a6
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_7e} :catch_bc
    .catchall {:try_start_7d .. :try_end_7e} :catchall_132

    .line 471
    :try_start_7e
    iget-object v8, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget-wide v10, v8, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->received_size:J

    int-to-long v12, v1

    add-long/2addr v10, v12

    iput-wide v10, v8, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->received_size:J

    .line 472
    monitor-exit p0

    goto :goto_16

    :catchall_88
    move-exception v7

    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_7e .. :try_end_8a} :catchall_88

    :try_start_8a
    throw v7
    :try_end_8b
    .catch Ljava/lang/NullPointerException; {:try_start_8a .. :try_end_8b} :catch_50
    .catch Ljava/net/SocketTimeoutException; {:try_start_8a .. :try_end_8b} :catch_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_8a .. :try_end_8b} :catch_a6
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8b} :catch_bc
    .catchall {:try_start_8a .. :try_end_8b} :catchall_132

    .line 516
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :catch_8b
    move-exception v3

    .line 517
    .local v3, "e":Ljava/net/SocketTimeoutException;
    :try_start_8c
    sget-object v7, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_CONNECTION:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    const/4 v8, -0x1

    invoke-direct {p0, v7, v8}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V
    :try_end_92
    .catchall {:try_start_8c .. :try_end_92} :catchall_132

    .line 528
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_47

    .line 457
    .end local v3    # "e":Ljava/net/SocketTimeoutException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_98
    move-exception v3

    .line 458
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_99
    sget-object v8, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_INTERNAL:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    const/4 v9, -0x1

    invoke-direct {p0, v8, v9}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    .line 459
    const/16 v8, 0xd

    invoke-static {v8}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z
    :try_end_a4
    .catch Ljava/lang/NullPointerException; {:try_start_99 .. :try_end_a4} :catch_50
    .catch Ljava/net/SocketTimeoutException; {:try_start_99 .. :try_end_a4} :catch_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_99 .. :try_end_a4} :catch_a6
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_a4} :catch_bc
    .catchall {:try_start_99 .. :try_end_a4} :catchall_132

    goto/16 :goto_22

    .line 519
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :catch_a6
    move-exception v3

    .line 520
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_a7
    sget-object v7, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_LOCALFS:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    const/4 v8, -0x1

    invoke-direct {p0, v7, v8}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V
    :try_end_ad
    .catchall {:try_start_a7 .. :try_end_ad} :catchall_132

    .line 528
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_47

    .line 466
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_b3
    move-exception v3

    .line 467
    .local v3, "e":Ljava/io/IOException;
    :try_start_b4
    sget-object v8, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_LOCALFS:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    const/4 v9, -0x1

    invoke-direct {p0, v8, v9}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V
    :try_end_ba
    .catch Ljava/lang/NullPointerException; {:try_start_b4 .. :try_end_ba} :catch_50
    .catch Ljava/net/SocketTimeoutException; {:try_start_b4 .. :try_end_ba} :catch_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_b4 .. :try_end_ba} :catch_a6
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_ba} :catch_bc
    .catchall {:try_start_b4 .. :try_end_ba} :catchall_132

    goto/16 :goto_22

    .line 522
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :catch_bc
    move-exception v3

    .line 523
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_bd
    sget-object v7, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_INTERNAL:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    const/4 v8, -0x1

    invoke-direct {p0, v7, v8}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    .line 524
    const/4 v7, 0x6

    invoke-static {v7}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    .line 525
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ca
    .catchall {:try_start_bd .. :try_end_ca} :catchall_132

    .line 528
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_47

    .line 494
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :cond_d1
    :try_start_d1
    invoke-virtual {p0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_e3

    .line 495
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_dc
    .catch Ljava/lang/NullPointerException; {:try_start_d1 .. :try_end_dc} :catch_50
    .catch Ljava/net/SocketTimeoutException; {:try_start_d1 .. :try_end_dc} :catch_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_d1 .. :try_end_dc} :catch_a6
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_dc} :catch_bc
    .catchall {:try_start_d1 .. :try_end_dc} :catchall_132

    .line 528
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_47

    .line 498
    :cond_e3
    :try_start_e3
    iget-object v8, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget-wide v8, v8, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->received_size:J

    iget-object v10, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget-wide v10, v10, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->contents_size:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_106

    .line 499
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 500
    sget-object v7, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_INTERNAL:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    const/4 v8, -0x1

    invoke-direct {p0, v7, v8}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    .line 501
    const/16 v7, 0xe

    invoke-static {v7}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z
    :try_end_ff
    .catch Ljava/lang/NullPointerException; {:try_start_e3 .. :try_end_ff} :catch_50
    .catch Ljava/net/SocketTimeoutException; {:try_start_e3 .. :try_end_ff} :catch_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_e3 .. :try_end_ff} :catch_a6
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_ff} :catch_bc
    .catchall {:try_start_e3 .. :try_end_ff} :catchall_132

    .line 528
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_47

    .line 505
    :cond_106
    :try_start_106
    new-instance v2, Ljava/io/File;

    iget-object v8, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_dst_path:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 506
    .local v2, "dst_file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_125

    .line 507
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 508
    sget-object v7, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_LOCALFS:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    const/4 v8, -0x1

    invoke-direct {p0, v7, v8}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V
    :try_end_11e
    .catch Ljava/lang/NullPointerException; {:try_start_106 .. :try_end_11e} :catch_50
    .catch Ljava/net/SocketTimeoutException; {:try_start_106 .. :try_end_11e} :catch_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_106 .. :try_end_11e} :catch_a6
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_11e} :catch_bc
    .catchall {:try_start_106 .. :try_end_11e} :catchall_132

    .line 528
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_47

    .line 511
    :cond_125
    :try_start_125
    iget-object v8, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v8, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_12a
    .catch Ljava/lang/NullPointerException; {:try_start_125 .. :try_end_12a} :catch_50
    .catch Ljava/net/SocketTimeoutException; {:try_start_125 .. :try_end_12a} :catch_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_125 .. :try_end_12a} :catch_a6
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_12a} :catch_bc
    .catchall {:try_start_125 .. :try_end_12a} :catchall_132

    .line 528
    iget-object v6, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    move v6, v7

    .line 530
    goto/16 :goto_47

    .line 528
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "dst_file":Ljava/io/File;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_132
    move-exception v6

    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 529
    throw v6

    .line 478
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_139
    move-exception v8

    goto/16 :goto_25

    .line 482
    :catch_13c
    move-exception v8

    goto/16 :goto_28
.end method

.method private task_setup()Z
    .registers 15

    .prologue
    .line 255
    :try_start_0
    iget-object v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_src_path:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "https://"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_106

    .line 256
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->is_ssl:Z

    .line 265
    :goto_13
    new-instance v8, Ljava/net/URL;

    iget-object v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_src_path:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 266
    .local v8, "url":Ljava/net/URL;
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_dst_path:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".tmp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    .line 269
    const/4 v5, 0x0

    .line 272
    .local v5, "special_socket_factory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v7, 0x0

    .line 273
    .local v7, "trust_manager_for_insecure_ssl":[Ljavax/net/ssl/X509TrustManager;
    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v9

    iget-boolean v9, v9, Lcom/criware/filesystem/CriFsWebInstallerManager;->allow_insecure_ssl:Z

    if-eqz v9, :cond_4f

    iget-boolean v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->is_ssl:Z

    if-eqz v9, :cond_4f

    .line 275
    const/4 v9, 0x1

    new-array v7, v9, [Ljavax/net/ssl/X509TrustManager;

    .end local v7    # "trust_manager_for_insecure_ssl":[Ljavax/net/ssl/X509TrustManager;
    const/4 v9, 0x0

    new-instance v10, Lcom/criware/filesystem/CriFsWebInstallerManager$LooseTrustManager;

    invoke-direct {v10}, Lcom/criware/filesystem/CriFsWebInstallerManager$LooseTrustManager;-><init>()V

    aput-object v10, v7, v9

    .line 280
    .restart local v7    # "trust_manager_for_insecure_ssl":[Ljavax/net/ssl/X509TrustManager;
    :cond_4f
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_139

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v9, v10, :cond_139

    const/4 v2, 0x1

    .line 281
    .local v2, "is_os_version_4_x":Z
    :goto_5c
    if-nez v2, :cond_60

    if-eqz v7, :cond_76

    .line 282
    :cond_60
    const-string v9, "TLS"

    invoke-static {v9}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v6

    .line 284
    .local v6, "sslcontext":Ljavax/net/ssl/SSLContext;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v7, v10}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 285
    if-eqz v2, :cond_13c

    new-instance v5, Lcom/criware/filesystem/TLSSocketFactory;

    .end local v5    # "special_socket_factory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v9

    invoke-direct {v5, v9}, Lcom/criware/filesystem/TLSSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_76
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_76} :catch_11b
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_76} :catch_1a2
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_76} :catch_246
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_76} :catch_256
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_76} :catch_266

    .line 290
    .end local v6    # "sslcontext":Ljavax/net/ssl/SSLContext;
    .restart local v5    # "special_socket_factory":Ljavax/net/ssl/SSLSocketFactory;
    :cond_76
    :goto_76
    :try_start_76
    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v9

    iget-object v9, v9, Lcom/criware/filesystem/CriFsWebInstallerManager;->proxy_host:Ljava/lang/String;

    if-eqz v9, :cond_142

    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v9

    iget-short v9, v9, Lcom/criware/filesystem/CriFsWebInstallerManager;->proxy_port:S

    if-eqz v9, :cond_142

    .line 291
    new-instance v4, Ljava/net/Proxy;

    sget-object v9, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v10, Ljava/net/InetSocketAddress;

    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v11

    iget-object v11, v11, Lcom/criware/filesystem/CriFsWebInstallerManager;->proxy_host:Ljava/lang/String;

    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v12

    iget-short v12, v12, Lcom/criware/filesystem/CriFsWebInstallerManager;->proxy_port:S

    invoke-direct {v10, v11, v12}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v4, v9, v10}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 292
    .local v4, "proxy":Ljava/net/Proxy;
    invoke-virtual {v8, v4}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    iput-object v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;
    :try_end_a6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_76 .. :try_end_a6} :catch_184
    .catch Ljava/lang/NullPointerException; {:try_start_76 .. :try_end_a6} :catch_11b
    .catch Ljava/net/MalformedURLException; {:try_start_76 .. :try_end_a6} :catch_1a2
    .catch Ljava/net/ProtocolException; {:try_start_76 .. :try_end_a6} :catch_246
    .catch Ljava/security/GeneralSecurityException; {:try_start_76 .. :try_end_a6} :catch_256
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_a6} :catch_266

    .line 307
    .end local v4    # "proxy":Ljava/net/Proxy;
    :goto_a6
    :try_start_a6
    iget-object v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    const-string v10, "GET"

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 308
    iget-object v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 309
    iget-object v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 310
    iget-object v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    const/16 v10, 0x1388

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 311
    iget-object v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    const/16 v10, 0x1388

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 312
    iget-object v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    const-string v10, "User-Agent"

    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v11

    iget-object v11, v11, Lcom/criware/filesystem/CriFsWebInstallerManager;->user_agent:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    const-string v10, "Accept-Encoding"

    const-string v11, "identity"

    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_dd
    .catch Ljava/lang/NullPointerException; {:try_start_a6 .. :try_end_dd} :catch_11b
    .catch Ljava/net/MalformedURLException; {:try_start_a6 .. :try_end_dd} :catch_1a2
    .catch Ljava/net/ProtocolException; {:try_start_a6 .. :try_end_dd} :catch_246
    .catch Ljava/security/GeneralSecurityException; {:try_start_a6 .. :try_end_dd} :catch_256
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_dd} :catch_266

    .line 315
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_de
    :try_start_de
    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v9

    iget-object v9, v9, Lcom/criware/filesystem/CriFsWebInstallerManager;->request_headers:Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;

    invoke-virtual {v9}, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->length()I

    move-result v9

    if-ge v1, v9, :cond_1c4

    .line 316
    iget-object v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v10

    iget-object v10, v10, Lcom/criware/filesystem/CriFsWebInstallerManager;->request_headers:Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;

    invoke-virtual {v10, v1}, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v11

    iget-object v11, v11, Lcom/criware/filesystem/CriFsWebInstallerManager;->request_headers:Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;

    invoke-virtual {v11, v1}, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_103
    .catch Ljava/lang/IllegalArgumentException; {:try_start_de .. :try_end_103} :catch_1b2
    .catch Ljava/lang/NullPointerException; {:try_start_de .. :try_end_103} :catch_11b
    .catch Ljava/net/MalformedURLException; {:try_start_de .. :try_end_103} :catch_1a2
    .catch Ljava/net/ProtocolException; {:try_start_de .. :try_end_103} :catch_246
    .catch Ljava/security/GeneralSecurityException; {:try_start_de .. :try_end_103} :catch_256
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_103} :catch_266

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_de

    .line 257
    .end local v1    # "i":I
    .end local v2    # "is_os_version_4_x":Z
    .end local v5    # "special_socket_factory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v7    # "trust_manager_for_insecure_ssl":[Ljavax/net/ssl/X509TrustManager;
    .end local v8    # "url":Ljava/net/URL;
    :cond_106
    :try_start_106
    iget-object v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_src_path:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "http://"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12a

    .line 258
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->is_ssl:Z
    :try_end_119
    .catch Ljava/lang/NullPointerException; {:try_start_106 .. :try_end_119} :catch_11b
    .catch Ljava/net/MalformedURLException; {:try_start_106 .. :try_end_119} :catch_1a2
    .catch Ljava/net/ProtocolException; {:try_start_106 .. :try_end_119} :catch_246
    .catch Ljava/security/GeneralSecurityException; {:try_start_106 .. :try_end_119} :catch_256
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_119} :catch_266

    goto/16 :goto_13

    .line 345
    :catch_11b
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v9, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_MEMORY:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iget-object v10, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget v10, v10, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    invoke-direct {p0, v9, v10}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    .line 347
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 348
    const/4 v9, 0x0

    .line 367
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_129
    return v9

    .line 260
    :cond_12a
    :try_start_12a
    sget-object v9, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_INTERNAL:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iget-object v10, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget v10, v10, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    invoke-direct {p0, v9, v10}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    .line 261
    const/4 v9, 0x7

    invoke-static {v9}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    .line 262
    const/4 v9, 0x0

    goto :goto_129

    .line 280
    .restart local v5    # "special_socket_factory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v7    # "trust_manager_for_insecure_ssl":[Ljavax/net/ssl/X509TrustManager;
    .restart local v8    # "url":Ljava/net/URL;
    :cond_139
    const/4 v2, 0x0

    goto/16 :goto_5c

    .line 285
    .restart local v2    # "is_os_version_4_x":Z
    .restart local v6    # "sslcontext":Ljavax/net/ssl/SSLContext;
    :cond_13c
    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_13f
    .catch Ljava/lang/NullPointerException; {:try_start_12a .. :try_end_13f} :catch_11b
    .catch Ljava/net/MalformedURLException; {:try_start_12a .. :try_end_13f} :catch_1a2
    .catch Ljava/net/ProtocolException; {:try_start_12a .. :try_end_13f} :catch_246
    .catch Ljava/security/GeneralSecurityException; {:try_start_12a .. :try_end_13f} :catch_256
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_13f} :catch_266

    move-result-object v5

    goto/16 :goto_76

    .line 293
    .end local v6    # "sslcontext":Ljavax/net/ssl/SSLContext;
    :cond_142
    :try_start_142
    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v9

    const-string v10, "http.proxyHost"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/criware/filesystem/CriFsWebInstallerManager;->proxy_host:Ljava/lang/String;

    if-eqz v10, :cond_198

    .line 294
    const-string v9, "http.proxyPort"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "portStr":Ljava/lang/String;
    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v9

    if-eqz v3, :cond_195

    .end local v3    # "portStr":Ljava/lang/String;
    :goto_15c
    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v10

    iput-short v10, v9, Lcom/criware/filesystem/CriFsWebInstallerManager;->proxy_port:S

    .line 296
    new-instance v4, Ljava/net/Proxy;

    sget-object v9, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v10, Ljava/net/InetSocketAddress;

    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v11

    iget-object v11, v11, Lcom/criware/filesystem/CriFsWebInstallerManager;->proxy_host:Ljava/lang/String;

    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v12

    iget-short v12, v12, Lcom/criware/filesystem/CriFsWebInstallerManager;->proxy_port:S

    invoke-direct {v10, v11, v12}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v4, v9, v10}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 297
    .restart local v4    # "proxy":Ljava/net/Proxy;
    invoke-virtual {v8, v4}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    iput-object v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;
    :try_end_182
    .catch Ljava/lang/IllegalArgumentException; {:try_start_142 .. :try_end_182} :catch_184
    .catch Ljava/lang/NullPointerException; {:try_start_142 .. :try_end_182} :catch_11b
    .catch Ljava/net/MalformedURLException; {:try_start_142 .. :try_end_182} :catch_1a2
    .catch Ljava/net/ProtocolException; {:try_start_142 .. :try_end_182} :catch_246
    .catch Ljava/security/GeneralSecurityException; {:try_start_142 .. :try_end_182} :catch_256
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_182} :catch_266

    goto/16 :goto_a6

    .line 301
    .end local v4    # "proxy":Ljava/net/Proxy;
    :catch_184
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_185
    sget-object v9, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_INTERNAL:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iget-object v10, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget v10, v10, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    invoke-direct {p0, v9, v10}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    .line 303
    const/16 v9, 0xb

    invoke-static {v9}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z
    :try_end_193
    .catch Ljava/lang/NullPointerException; {:try_start_185 .. :try_end_193} :catch_11b
    .catch Ljava/net/MalformedURLException; {:try_start_185 .. :try_end_193} :catch_1a2
    .catch Ljava/net/ProtocolException; {:try_start_185 .. :try_end_193} :catch_246
    .catch Ljava/security/GeneralSecurityException; {:try_start_185 .. :try_end_193} :catch_256
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_193} :catch_266

    .line 304
    const/4 v9, 0x0

    goto :goto_129

    .line 295
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "portStr":Ljava/lang/String;
    :cond_195
    :try_start_195
    const-string v3, "-1"

    goto :goto_15c

    .line 299
    .end local v3    # "portStr":Ljava/lang/String;
    :cond_198
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    iput-object v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;
    :try_end_1a0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_195 .. :try_end_1a0} :catch_184
    .catch Ljava/lang/NullPointerException; {:try_start_195 .. :try_end_1a0} :catch_11b
    .catch Ljava/net/MalformedURLException; {:try_start_195 .. :try_end_1a0} :catch_1a2
    .catch Ljava/net/ProtocolException; {:try_start_195 .. :try_end_1a0} :catch_246
    .catch Ljava/security/GeneralSecurityException; {:try_start_195 .. :try_end_1a0} :catch_256
    .catch Ljava/io/IOException; {:try_start_195 .. :try_end_1a0} :catch_266

    goto/16 :goto_a6

    .line 349
    .end local v2    # "is_os_version_4_x":Z
    .end local v5    # "special_socket_factory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v7    # "trust_manager_for_insecure_ssl":[Ljavax/net/ssl/X509TrustManager;
    .end local v8    # "url":Ljava/net/URL;
    :catch_1a2
    move-exception v0

    .line 350
    .local v0, "e":Ljava/net/MalformedURLException;
    sget-object v9, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_DNS:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iget-object v10, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget v10, v10, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    invoke-direct {p0, v9, v10}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    .line 351
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 352
    const/4 v9, 0x0

    goto/16 :goto_129

    .line 318
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .restart local v1    # "i":I
    .restart local v2    # "is_os_version_4_x":Z
    .restart local v5    # "special_socket_factory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v7    # "trust_manager_for_insecure_ssl":[Ljavax/net/ssl/X509TrustManager;
    .restart local v8    # "url":Ljava/net/URL;
    :catch_1b2
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1b3
    sget-object v9, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_INTERNAL:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iget-object v10, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget v10, v10, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    invoke-direct {p0, v9, v10}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    .line 320
    const/16 v9, 0xc

    invoke-static {v9}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    .line 321
    const/4 v9, 0x0

    goto/16 :goto_129

    .line 323
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1c4
    if-eqz v5, :cond_1cd

    .line 325
    iget-object v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    check-cast v9, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v9, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 328
    :cond_1cd
    iget-object v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget-wide v10, v9, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->contents_size:J

    const-wide/16 v12, -0x1

    cmp-long v9, v10, v12

    if-eqz v9, :cond_238

    .line 329
    iget-object v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1f0

    .line 330
    const/16 v9, 0x8

    invoke-static {v9}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    .line 331
    sget-object v9, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_LOCALFS:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iget-object v10, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget v10, v10, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    invoke-direct {p0, v9, v10}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    .line 332
    const/4 v9, 0x0

    goto/16 :goto_129

    .line 334
    :cond_1f0
    iget-object v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    iget-object v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget-wide v12, v9, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->received_size:J

    cmp-long v9, v10, v12

    if-eqz v9, :cond_20f

    .line 335
    const/16 v9, 0x9

    invoke-static {v9}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    .line 336
    sget-object v9, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_INTERNAL:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iget-object v10, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget v10, v10, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    invoke-direct {p0, v9, v10}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    .line 337
    const/4 v9, 0x0

    goto/16 :goto_129

    .line 339
    :cond_20f
    iget-object v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    const-string v10, "Range"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bytes="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_235
    :goto_235
    const/4 v9, 0x1

    goto/16 :goto_129

    .line 341
    :cond_238
    iget-object v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_235

    .line 342
    iget-object v9, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_245
    .catch Ljava/lang/NullPointerException; {:try_start_1b3 .. :try_end_245} :catch_11b
    .catch Ljava/net/MalformedURLException; {:try_start_1b3 .. :try_end_245} :catch_1a2
    .catch Ljava/net/ProtocolException; {:try_start_1b3 .. :try_end_245} :catch_246
    .catch Ljava/security/GeneralSecurityException; {:try_start_1b3 .. :try_end_245} :catch_256
    .catch Ljava/io/IOException; {:try_start_1b3 .. :try_end_245} :catch_266

    goto :goto_235

    .line 353
    .end local v1    # "i":I
    .end local v2    # "is_os_version_4_x":Z
    .end local v5    # "special_socket_factory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v7    # "trust_manager_for_insecure_ssl":[Ljavax/net/ssl/X509TrustManager;
    .end local v8    # "url":Ljava/net/URL;
    :catch_246
    move-exception v0

    .line 354
    .local v0, "e":Ljava/net/ProtocolException;
    sget-object v9, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_CONNECTION:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iget-object v10, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget v10, v10, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    invoke-direct {p0, v9, v10}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    .line 355
    invoke-virtual {v0}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 356
    const/4 v9, 0x0

    goto/16 :goto_129

    .line 357
    .end local v0    # "e":Ljava/net/ProtocolException;
    :catch_256
    move-exception v0

    .line 358
    .local v0, "e":Ljava/security/GeneralSecurityException;
    sget-object v9, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_SSL:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iget-object v10, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget v10, v10, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    invoke-direct {p0, v9, v10}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    .line 359
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 360
    const/4 v9, 0x0

    goto/16 :goto_129

    .line 361
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_266
    move-exception v0

    .line 362
    .local v0, "e":Ljava/io/IOException;
    sget-object v9, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_INTERNAL:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iget-object v10, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget v10, v10, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    invoke-direct {p0, v9, v10}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    .line 363
    const/4 v9, 0x4

    invoke-static {v9}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    .line 364
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 365
    const/4 v9, 0x0

    goto/16 :goto_129
.end method


# virtual methods
.method public Cancel()V
    .registers 3

    .prologue
    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->cancel(Z)Z

    .line 230
    monitor-enter p0

    .line 231
    :try_start_5
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->STOPPING:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    iput-object v1, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    .line 232
    monitor-exit p0

    .line 233
    return-void

    .line 232
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public declared-synchronized GetTaskStatusInfo()Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;
    .registers 2

    .prologue
    .line 236
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected varargs doInBackground([Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;)Ljava/lang/Boolean;
    .registers 7
    .param p1, "params"    # [Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    .prologue
    const/4 v4, 0x0

    .line 180
    aget-object v0, p1, v4

    iget-object v0, v0, Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;->param_src_path:Ljava/lang/String;

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_src_path:Ljava/lang/String;

    .line 181
    aget-object v0, p1, v4

    iget-object v0, v0, Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;->param_dst_path:Ljava/lang/String;

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_dst_path:Ljava/lang/String;

    .line 182
    monitor-enter p0

    .line 183
    :try_start_e
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-wide v2, v1, Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;->param_contents_size:J

    iput-wide v2, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->contents_size:J

    .line 184
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-wide v2, v1, Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;->param_received_size:J

    iput-wide v2, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->received_size:J

    .line 185
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_35

    .line 188
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_setup()Z

    move-result v0

    if-nez v0, :cond_38

    .line 189
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_30

    .line 190
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 192
    :cond_30
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 212
    :goto_34
    return-object v0

    .line 185
    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0

    .line 195
    :cond_38
    invoke-virtual {p0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 196
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 197
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 198
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_34

    .line 201
    :cond_4d
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_connect()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 202
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 203
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_34

    .line 206
    :cond_5d
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_copyfile()Z

    move-result v0

    if-nez v0, :cond_68

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_34

    .line 209
    :cond_68
    monitor-enter p0

    .line 210
    :try_start_69
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->STOP:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    iput-object v1, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    .line 211
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_76

    .line 212
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_34

    .line 211
    :catchall_76
    move-exception v0

    :try_start_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 165
    check-cast p1, [Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    invoke-virtual {p0, p1}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->doInBackground([Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .registers 3

    .prologue
    .line 223
    monitor-enter p0

    .line 224
    :try_start_1
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->STOP:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    iput-object v1, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    .line 225
    monitor-exit p0

    .line 226
    return-void

    .line 225
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "is_completed"    # Ljava/lang/Boolean;

    .prologue
    .line 217
    monitor-enter p0

    .line 218
    :try_start_1
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->STOP:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    iput-object v1, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    .line 219
    monitor-exit p0

    .line 220
    return-void

    .line 219
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 165
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
