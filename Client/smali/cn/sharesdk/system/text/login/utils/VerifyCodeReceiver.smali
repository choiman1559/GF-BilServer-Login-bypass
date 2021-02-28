.class public Lcn/sharesdk/system/text/login/utils/VerifyCodeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VerifyCodeReceiver.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcn/sharesdk/system/text/login/utils/VerifyCodeReadListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [C

    fill-array-data v1, :array_e

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcn/sharesdk/system/text/login/utils/VerifyCodeReceiver;->a:Ljava/lang/String;

    return-void

    :array_e
    .array-data 2
        0x7684s
        -0x6574s
        -0x743fs
        0x7801s
        -0xe6s
    .end array-data
.end method

.method public constructor <init>(Lcn/sharesdk/system/text/login/utils/VerifyCodeReadListener;)V
    .registers 2
    .param p1, "listener"    # Lcn/sharesdk/system/text/login/utils/VerifyCodeReadListener;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    iput-object p1, p0, Lcn/sharesdk/system/text/login/utils/VerifyCodeReceiver;->b:Lcn/sharesdk/system/text/login/utils/VerifyCodeReadListener;

    .line 31
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 100
    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 102
    sget-object v0, Lcn/sharesdk/system/text/login/utils/VerifyCodeReceiver;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_17

    .line 103
    sget-object v1, Lcn/sharesdk/system/text/login/utils/VerifyCodeReceiver;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_16
    :goto_16
    return v0

    .line 104
    :cond_17
    const-string v0, "Your pin is "

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_16

    .line 105
    sget-object v1, Lcn/sharesdk/system/text/login/utils/VerifyCodeReceiver;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_16

    :cond_27
    move v0, v1

    goto :goto_16
.end method

.method private a(Landroid/telephony/SmsMessage;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 57
    if-nez p1, :cond_4

    .line 73
    :cond_3
    :goto_3
    return v0

    .line 60
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-direct {p0, v1}, Lcn/sharesdk/system/text/login/utils/VerifyCodeReceiver;->a(Ljava/lang/String;)I

    move-result v2

    .line 62
    const/4 v3, -0x1

    if-le v2, v3, :cond_3

    .line 63
    add-int/lit8 v0, v2, 0x4

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_27

    .line 65
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "operation not in UI Thread"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_27
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/VerifyCodeReceiver;->b:Lcn/sharesdk/system/text/login/utils/VerifyCodeReadListener;

    if-nez v1, :cond_33

    .line 68
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "listener can not be null"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_33
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/VerifyCodeReceiver;->b:Lcn/sharesdk/system/text/login/utils/VerifyCodeReadListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/system/text/login/utils/VerifyCodeReadListener;->onReadVerifyCode(Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_4a

    .line 37
    const-string v1, "pdus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 38
    array-length v1, v0

    new-array v4, v1, [Landroid/telephony/SmsMessage;

    move v2, v3

    .line 39
    :goto_21
    array-length v1, v0

    if-ge v2, v1, :cond_34

    .line 40
    aget-object v1, v0, v2

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    aput-object v1, v4, v2

    .line 39
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_21

    .line 43
    :cond_34
    array-length v0, v4

    :goto_35
    if-ge v3, v0, :cond_4a

    aget-object v1, v4, v3

    .line 44
    if-eqz v1, :cond_3e

    .line 46
    :try_start_3b
    invoke-direct {p0, v1}, Lcn/sharesdk/system/text/login/utils/VerifyCodeReceiver;->a(Landroid/telephony/SmsMessage;)Z
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3e} :catch_41

    .line 43
    :cond_3e
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 47
    :catch_41
    move-exception v1

    .line 48
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_3e

    .line 54
    :cond_4a
    return-void
.end method
