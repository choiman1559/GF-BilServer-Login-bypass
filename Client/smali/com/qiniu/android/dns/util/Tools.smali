.class public Lcom/qiniu/android/dns/util/Tools;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHostName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v6, 0x7

    const/4 v5, 0x1

    const/16 v4, 0x2f

    const/16 v3, 0x8

    if-nez p0, :cond_b

    const-string v0, ""

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-le v1, v6, :cond_2a

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_2a
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_2f
    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    const/16 v1, 0x9

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-le v1, v3, :cond_44

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_44
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_49
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-le v1, v5, :cond_a

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
