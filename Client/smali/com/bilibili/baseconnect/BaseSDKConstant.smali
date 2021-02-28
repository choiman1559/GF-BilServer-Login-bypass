.class public Lcom/bilibili/baseconnect/BaseSDKConstant;
.super Ljava/lang/Object;


# static fields
.field public static FIGERPRINT:Ljava/lang/String;

.field public static TRACKOPEN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "TRACKOPEN"

    sput-object v0, Lcom/bilibili/baseconnect/BaseSDKConstant;->TRACKOPEN:Ljava/lang/String;

    const-string v0, "FIGERPRINT"

    sput-object v0, Lcom/bilibili/baseconnect/BaseSDKConstant;->FIGERPRINT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
