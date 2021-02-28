.class public Lcom/tencent/tp/TssSdk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tp/TssSdk$ISendDataToSvr;
    }
.end annotation


# static fields
.field public static final ENTRT_ID_FACEBOOK:I = 0x3

.field public static final ENTRY_ID_APPLE:I = 0xb

.field public static final ENTRY_ID_GAMECENTER:I = 0x7

.field public static final ENTRY_ID_GARENA:I = 0xe

.field public static final ENTRY_ID_GOOGLEPLAY:I = 0x8

.field public static final ENTRY_ID_HUAWEI:I = 0xf

.field public static final ENTRY_ID_KUAISHOU:I = 0xa

.field public static final ENTRY_ID_LINE:I = 0x5

.field public static final ENTRY_ID_MICROSOFT:I = 0x13

.field public static final ENTRY_ID_MM:I = 0x2

.field public static final ENTRY_ID_NAVER:I = 0xd

.field public static final ENTRY_ID_NEXON:I = 0xc

.field public static final ENTRY_ID_NINTENDO:I = 0x11

.field public static final ENTRY_ID_OTHERS:I = 0x63

.field public static final ENTRY_ID_PSN:I = 0x12

.field public static final ENTRY_ID_QQ:I = 0x1

.field public static final ENTRY_ID_RIOT:I = 0x10

.field public static final ENTRY_ID_TWITTER:I = 0x4

.field public static final ENTRY_ID_VK:I = 0x9

.field public static final ENTRY_ID_WHATSAPP:I = 0x6

.field public static final TSS_SDK_VERSION:Ljava/lang/String; = "5.0.6(2020/11/10)-jar-version"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "tersafe2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decTssInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "dec_tss_info:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/TssSdk;->ioctl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReportData()[B
    .registers 2

    new-instance v0, Lcom/tencent/tp/TssIOCtlResult;

    invoke-direct {v0}, Lcom/tencent/tp/TssIOCtlResult;-><init>()V

    const-string v1, "bzo_mzkjmo_yvov"

    invoke-static {v1}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tp/TssIOCtlResult;->cmd:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tp/TssSdk;->getsdkantidata(Lcom/tencent/tp/TssIOCtlResult;)I

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x0

    :goto_14
    return-object v0

    :cond_15
    iget-object v0, v0, Lcom/tencent/tp/TssIOCtlResult;->data:[B

    goto :goto_14
.end method

.method public static native getsdkantidata(Lcom/tencent/tp/TssIOCtlResult;)I
.end method

.method public static native hasMatchRate(I)I
.end method

.method public static init(Landroid/content/Context;I)V
    .registers 3

    new-instance v0, Lcom/tencent/tp/TssSdkInitInfo;

    invoke-direct {v0}, Lcom/tencent/tp/TssSdkInitInfo;-><init>()V

    iput p1, v0, Lcom/tencent/tp/TssSdkInitInfo;->game_id:I

    invoke-static {v0}, Lcom/tencent/tp/TssSdk;->init(Lcom/tencent/tp/TssSdkInitInfo;)V

    return-void
.end method

.method public static native init(Lcom/tencent/tp/TssSdkInitInfo;)V
.end method

.method public static ioctl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    new-instance v1, Lcom/tencent/tp/TssIOCtlResult;

    invoke-direct {v1}, Lcom/tencent/tp/TssIOCtlResult;-><init>()V

    iput-object p0, v1, Lcom/tencent/tp/TssIOCtlResult;->cmd:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/tp/TssSdk;->getsdkantidata(Lcom/tencent/tp/TssIOCtlResult;)I

    move-result v2

    if-nez v2, :cond_9

    iget-object v0, v1, Lcom/tencent/tp/TssIOCtlResult;->response:Ljava/lang/String;

    goto :goto_9
.end method

.method public static onPause()V
    .registers 2

    new-instance v0, Lcom/tencent/tp/TssSdkGameStatusInfo;

    invoke-direct {v0}, Lcom/tencent/tp/TssSdkGameStatusInfo;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/tencent/tp/TssSdkGameStatusInfo;->game_status:I

    invoke-static {v0}, Lcom/tencent/tp/TssSdk;->setgamestatus(Lcom/tencent/tp/TssSdkGameStatusInfo;)V

    return-void
.end method

.method public static onRecvData([B)V
    .registers 2

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/tencent/tp/TssSdk;->senddatatosdk([BI)V

    return-void
.end method

.method public static onResume()V
    .registers 2

    new-instance v0, Lcom/tencent/tp/TssSdkGameStatusInfo;

    invoke-direct {v0}, Lcom/tencent/tp/TssSdkGameStatusInfo;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/tp/TssSdkGameStatusInfo;->game_status:I

    invoke-static {v0}, Lcom/tencent/tp/TssSdk;->setgamestatus(Lcom/tencent/tp/TssSdkGameStatusInfo;)V

    return-void
.end method

.method public static native onruntimeinfo([BI)V
.end method

.method public static registTssInfoReceiver(Lcom/tencent/tp/TssInfoPublisher$TssInfoReceiver;)V
    .registers 2

    invoke-static {}, Lcom/tencent/tp/TssInfoPublisher;->a()Lcom/tencent/tp/TssInfoPublisher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tp/TssInfoPublisher;->a(Lcom/tencent/tp/TssInfoPublisher$TssInfoReceiver;)V

    return-void
.end method

.method public static native senddatatosdk([BI)V
.end method

.method public static native senddatatosvr([BI)V
.end method

.method public static setUserInfo(ILjava/lang/String;)V
    .registers 4

    const/4 v1, 0x2

    new-instance v0, Lcom/tencent/tp/TssSdkUserInfo;

    invoke-direct {v0}, Lcom/tencent/tp/TssSdkUserInfo;-><init>()V

    iput p0, v0, Lcom/tencent/tp/TssSdkUserInfo;->entry_id:I

    iput v1, v0, Lcom/tencent/tp/TssSdkUserInfo;->uin_type:I

    iput-object p1, v0, Lcom/tencent/tp/TssSdkUserInfo;->uin_str:Ljava/lang/String;

    iput v1, v0, Lcom/tencent/tp/TssSdkUserInfo;->app_id_type:I

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/tp/TssSdkUserInfo;->app_id_str:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tp/TssSdk;->setuserinfo(Lcom/tencent/tp/TssSdkUserInfo;)V

    return-void
.end method

.method public static native setgamestatus(Lcom/tencent/tp/TssSdkGameStatusInfo;)V
.end method

.method public static native setsenddatatosvrcb(Ljava/lang/Object;)V
.end method

.method public static native setuserinfo(Lcom/tencent/tp/TssSdkUserInfo;)V
.end method

.method public static native setuserinfoex(Lcom/tencent/tp/TssSdkUserInfoEx;)V
.end method
