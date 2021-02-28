.class Lcom/mob/tools/network/NetworkHelper$5;
.super Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
.source "NetworkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/network/NetworkHelper;->getHttpPatch(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/network/NetworkHelper;


# direct methods
.method constructor <init>(Lcom/mob/tools/network/NetworkHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mob/tools/network/NetworkHelper;

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/mob/tools/network/NetworkHelper$5;->this$0:Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1231
    const-string v0, "PATCH"

    return-object v0
.end method
