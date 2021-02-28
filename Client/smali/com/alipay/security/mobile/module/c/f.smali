.class public final Lcom/alipay/security/mobile/module/c/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_6

    :goto_3
    const-string v0, ""

    return-object v0

    :catch_6
    move-exception v0

    goto :goto_3
.end method
