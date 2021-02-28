.class public final Lcom/qiniu/android/dns/NetworkReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final PREFERRED_APN_URI:Landroid/net/Uri;

.field private static mdnsManager:Lcom/qiniu/android/dns/DnsManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/qiniu/android/dns/NetworkReceiver;->PREFERRED_APN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static createNetInfo(Landroid/net/NetworkInfo;Landroid/content/Context;)Lcom/qiniu/android/dns/NetworkInfo;
    .registers 11

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_8

    sget-object v0, Lcom/qiniu/android/dns/NetworkInfo;->noNetwork:Lcom/qiniu/android/dns/NetworkInfo;

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v7, :cond_19

    sget-object v0, Lcom/qiniu/android/dns/NetworkInfo$NetSatus;->WIFI:Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

    move-object v1, v0

    move v0, v6

    :goto_12
    new-instance v2, Lcom/qiniu/android/dns/NetworkInfo;

    invoke-direct {v2, v1, v0}, Lcom/qiniu/android/dns/NetworkInfo;-><init>(Lcom/qiniu/android/dns/NetworkInfo$NetSatus;I)V

    move-object v0, v2

    goto :goto_7

    :cond_19
    sget-object v8, Lcom/qiniu/android/dns/NetworkInfo$NetSatus;->MOBILE:Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/qiniu/android/dns/NetworkReceiver;->PREFERRED_APN_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_9b

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "user"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9b

    const-string v2, "ctwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "ctnet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9b

    :cond_4d
    move v0, v7

    :goto_4e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-eq v0, v7, :cond_98

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_98

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cmwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    const-string v2, "cmnet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    :cond_71
    const/4 v0, 0x3

    move-object v1, v8

    goto :goto_12

    :cond_74
    const-string v2, "3gnet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string v2, "uninet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string v2, "3gwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string v2, "uniwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    :cond_94
    const/4 v0, 0x2

    move-object v1, v8

    goto/16 :goto_12

    :cond_98
    move-object v1, v8

    goto/16 :goto_12

    :cond_9b
    move v0, v6

    goto :goto_4e
.end method

.method public static setDnsManager(Lcom/qiniu/android/dns/DnsManager;)V
    .registers 1

    sput-object p0, Lcom/qiniu/android/dns/NetworkReceiver;->mdnsManager:Lcom/qiniu/android/dns/DnsManager;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    sget-object v0, Lcom/qiniu/android/dns/NetworkReceiver;->mdnsManager:Lcom/qiniu/android/dns/DnsManager;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/qiniu/android/dns/NetworkReceiver;->createNetInfo(Landroid/net/NetworkInfo;Landroid/content/Context;)Lcom/qiniu/android/dns/NetworkInfo;

    move-result-object v0

    sget-object v1, Lcom/qiniu/android/dns/NetworkReceiver;->mdnsManager:Lcom/qiniu/android/dns/DnsManager;

    invoke-virtual {v1, v0}, Lcom/qiniu/android/dns/DnsManager;->onNetworkChange(Lcom/qiniu/android/dns/NetworkInfo;)V

    goto :goto_4
.end method
