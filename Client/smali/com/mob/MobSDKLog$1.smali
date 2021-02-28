.class Lcom/mob/MobSDKLog$1;
.super Lcom/mob/commons/logcollector/LogsCollector;
.source "MobSDKLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/a;


# direct methods
.method constructor <init>(Lcom/mob/a;)V
    .registers 2

    .prologue
    .line 13
    iput-object p1, p0, Lcom/mob/MobSDKLog$1;->a:Lcom/mob/a;

    invoke-direct {p0}, Lcom/mob/commons/logcollector/LogsCollector;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSDKTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    const-string v0, "MOBSDK"

    return-object v0
.end method

.method protected getSDKVersion()I
    .registers 2

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method
