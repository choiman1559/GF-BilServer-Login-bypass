.class public final Lcom/tencent/mm/opensdk/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/os/Bundle;Ljava/lang/String;)I
    .registers 7

    const/4 v0, -0x1

    if-nez p0, :cond_4

    :goto_3
    return v0

    :cond_4
    const/4 v1, -0x1

    :try_start_5
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_a

    move-result v0

    goto :goto_3

    :catch_a
    move-exception v1

    const-string v2, "MicroMsg.IntentUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getIntExtra exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    goto :goto_3

    :catch_9
    move-exception v1

    const-string v2, "MicroMsg.IntentUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getStringExtra exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
