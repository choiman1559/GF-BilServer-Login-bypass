.class public final Lcom/qiniu/android/dns/NetworkInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/dns/NetworkInfo$NetSatus;
    }
.end annotation


# static fields
.field public static final ISP_CMCC:I = 0x3

.field public static final ISP_CNC:I = 0x2

.field public static final ISP_CTC:I = 0x1

.field public static final ISP_DIANXIN:I = 0x1

.field public static final ISP_GENERAL:I = 0x0

.field public static final ISP_LIANTONG:I = 0x2

.field public static final ISP_OTHER:I = 0x3e7

.field public static final ISP_YIDONG:I = 0x3

.field public static final noNetwork:Lcom/qiniu/android/dns/NetworkInfo;

.field public static final normal:Lcom/qiniu/android/dns/NetworkInfo;


# instance fields
.field public final netStatus:Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

.field public final provider:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lcom/qiniu/android/dns/NetworkInfo;

    sget-object v1, Lcom/qiniu/android/dns/NetworkInfo$NetSatus;->NO_NETWORK:Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

    invoke-direct {v0, v1, v2}, Lcom/qiniu/android/dns/NetworkInfo;-><init>(Lcom/qiniu/android/dns/NetworkInfo$NetSatus;I)V

    sput-object v0, Lcom/qiniu/android/dns/NetworkInfo;->noNetwork:Lcom/qiniu/android/dns/NetworkInfo;

    new-instance v0, Lcom/qiniu/android/dns/NetworkInfo;

    sget-object v1, Lcom/qiniu/android/dns/NetworkInfo$NetSatus;->WIFI:Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

    invoke-direct {v0, v1, v2}, Lcom/qiniu/android/dns/NetworkInfo;-><init>(Lcom/qiniu/android/dns/NetworkInfo$NetSatus;I)V

    sput-object v0, Lcom/qiniu/android/dns/NetworkInfo;->normal:Lcom/qiniu/android/dns/NetworkInfo;

    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/dns/NetworkInfo$NetSatus;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qiniu/android/dns/NetworkInfo;->netStatus:Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

    iput p2, p0, Lcom/qiniu/android/dns/NetworkInfo;->provider:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkInfo{provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qiniu/android/dns/NetworkInfo;->provider:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", netStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qiniu/android/dns/NetworkInfo;->netStatus:Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
