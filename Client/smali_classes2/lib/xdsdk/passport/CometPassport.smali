.class public Llib/xdsdk/passport/CometPassport;
.super Ljava/lang/Object;
.source "CometPassport.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassMap;
    value = {
        Llib/xdsdk/passport/-$$Lambda$CometPassport$Koz30RExYGGcDnkSLdiHCNw94GY;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llib/xdsdk/passport/CometPassport$OnXdgLoginCompleteListener;
    }
.end annotation


# static fields
.field private static XdgLoginCompleteListener:Llib/xdsdk/passport/CometPassport$OnXdgLoginCompleteListener;

.field private static m_obj:Llib/xdsdk/passport/CometPassport;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Llib/xdsdk/passport/CometPassport$OnXdgLoginCompleteListener;
    .registers 1

    .line 20
    sget-object v0, Llib/xdsdk/passport/CometPassport;->XdgLoginCompleteListener:Llib/xdsdk/passport/CometPassport$OnXdgLoginCompleteListener;

    return-object v0
.end method

.method private getAndroidID(Landroid/app/Activity;)Ljava/lang/String;
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static model()Llib/xdsdk/passport/CometPassport;
    .registers 1

    .line 33
    sget-object v0, Llib/xdsdk/passport/CometPassport;->m_obj:Llib/xdsdk/passport/CometPassport;

    if-eqz v0, :cond_5

    .line 34
    return-object v0

    .line 36
    :cond_5
    new-instance v0, Llib/xdsdk/passport/CometPassport;

    invoke-direct {v0}, Llib/xdsdk/passport/CometPassport;-><init>()V

    sput-object v0, Llib/xdsdk/passport/CometPassport;->m_obj:Llib/xdsdk/passport/CometPassport;

    .line 37
    return-object v0
.end method

.method public static urldecode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 97
    const-string v0, ""

    if-nez p0, :cond_5

    .line 98
    return-object v0

    .line 101
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_12

    :cond_c
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_12} :catch_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_13

    :goto_12
    return-object v0

    .line 104
    :catch_13
    move-exception v1

    .line 105
    .local v1, "unused2":Ljava/lang/Exception;
    return-object v0

    .line 102
    .end local v1    # "unused2":Ljava/lang/Exception;
    :catch_15
    move-exception v0

    .line 103
    .local v0, "unused":Ljava/io/UnsupportedEncodingException;
    return-object p0
.end method

.method public static urlencode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 84
    const-string v0, ""

    if-nez p0, :cond_5

    .line 85
    return-object v0

    .line 88
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_12

    :cond_c
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_12} :catch_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_13

    :goto_12
    return-object v0

    .line 91
    :catch_13
    move-exception v1

    .line 92
    .local v1, "unused2":Ljava/lang/Exception;
    return-object v0

    .line 89
    .end local v1    # "unused2":Ljava/lang/Exception;
    :catch_15
    move-exception v0

    .line 90
    .local v0, "unused":Ljava/io/UnsupportedEncodingException;
    return-object p0
.end method


# virtual methods
.method public synthetic lambda$signInWithXdg$0$CometPassport(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/lang/String;
    .param p3, "activity"    # Landroid/app/Activity;

    .line 43
    const-string v0, ""

    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v1, "r8":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "appid"

    const-string v3, "158714"

    invoke-static {v3}, Llib/xdsdk/passport/CometPassport;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v2, "ver"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v2, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-object v2, p1

    .line 48
    .local v2, "r9":Ljava/lang/String;
    const-string v3, "@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3c

    .line 49
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 51
    :cond_3c
    const-string v3, "username"

    invoke-static {v2}, Llib/xdsdk/passport/CometPassport;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v3, "password"

    invoke-static {p2}, Llib/xdsdk/passport/CometPassport;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v3, "fuid"

    const-string v5, "android_kr_snqx"

    invoke-static {v5}, Llib/xdsdk/passport/CometPassport;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v3, "device_id"

    invoke-direct {p0, p3}, Llib/xdsdk/passport/CometPassport;->getAndroidID(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Llib/xdsdk/passport/CometPassport;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v3, "binding"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v3, "autologin"

    invoke-static {v0}, Llib/xdsdk/passport/CometPassport;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v3, "device_token"

    invoke-static {v0}, Llib/xdsdk/passport/CometPassport;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string v3, "https://%s/%s/signin"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "p.17996api.com"

    aput-object v7, v5, v6

    const-string v6, "api2"

    aput-object v6, v5, v4

    invoke-static {v0, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Llib/xdsdk/passport/CometPassport$1;

    invoke-direct {v3, p0, p3}, Llib/xdsdk/passport/CometPassport$1;-><init>(Llib/xdsdk/passport/CometPassport;Landroid/app/Activity;)V

    invoke-static {p3, v0, v3, v1}, Llib/xdsdk/passport/httpUrlConnectionUtil/HttpUrlConnectionHelper;->doPost(Landroid/app/Activity;Ljava/lang/String;Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;Ljava/util/Map;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9d} :catch_9e

    .line 74
    .end local v1    # "r8":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "r9":Ljava/lang/String;
    goto :goto_a2

    .line 72
    :catch_9e
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a2
    return-void
.end method

.method public setOnXdgLoginCompleteListener(Llib/xdsdk/passport/CometPassport$OnXdgLoginCompleteListener;)V
    .registers 2
    .param p1, "listener"    # Llib/xdsdk/passport/CometPassport$OnXdgLoginCompleteListener;

    .line 29
    sput-object p1, Llib/xdsdk/passport/CometPassport;->XdgLoginCompleteListener:Llib/xdsdk/passport/CometPassport$OnXdgLoginCompleteListener;

    .line 30
    return-void
.end method

.method public signInWithXdg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Llib/xdsdk/passport/-$$Lambda$CometPassport$Koz30RExYGGcDnkSLdiHCNw94GY;

    invoke-direct {v1, p0, p2, p3, p1}, Llib/xdsdk/passport/-$$Lambda$CometPassport$Koz30RExYGGcDnkSLdiHCNw94GY;-><init>(Llib/xdsdk/passport/CometPassport;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 75
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 76
    return-void
.end method
