.class public Lcom/tencent/gcloud/tsssdk/OneSDK_Tss;
.super Ljava/lang/Object;


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


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReportData()[B
    .registers 1

    invoke-static {}, Lcom/tencent/tp/TssSdk;->getReportData()[B

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/tencent/tp/TssSdk;->init(Landroid/content/Context;I)V

    return-void
.end method

.method public static ioctl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/tencent/tp/TssSdk;->ioctl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static onPause()V
    .registers 0

    invoke-static {}, Lcom/tencent/tp/TssSdk;->onPause()V

    return-void
.end method

.method public static onRecvData([B)V
    .registers 1

    invoke-static {p0}, Lcom/tencent/tp/TssSdk;->onRecvData([B)V

    return-void
.end method

.method public static onResume()V
    .registers 0

    invoke-static {}, Lcom/tencent/tp/TssSdk;->onResume()V

    return-void
.end method

.method public static setUserInfo(ILjava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/tencent/tp/TssSdk;->setUserInfo(ILjava/lang/String;)V

    return-void
.end method
