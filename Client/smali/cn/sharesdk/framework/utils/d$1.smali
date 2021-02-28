.class Lcn/sharesdk/framework/utils/d$1;
.super Lcom/mob/commons/logcollector/LogsCollector;
.source "SSDKLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/utils/d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/utils/d;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/utils/d;)V
    .registers 2

    .prologue
    .line 14
    iput-object p1, p0, Lcn/sharesdk/framework/utils/d$1;->a:Lcn/sharesdk/framework/utils/d;

    invoke-direct {p0}, Lcom/mob/commons/logcollector/LogsCollector;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSDKTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    const-string v0, "SHARESDK"

    return-object v0
.end method

.method protected getSDKVersion()I
    .registers 2

    .prologue
    .line 16
    const v0, 0xeaad

    return v0
.end method
