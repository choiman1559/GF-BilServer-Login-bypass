.class public Lcom/mob/commons/SHARESDK;
.super Ljava/lang/Object;
.source "SHARESDK.java"

# interfaces
.implements Lcom/mob/commons/MobProduct;


# static fields
.field public static final SDK_TAG:Ljava/lang/String; = "SHARESDK"

.field public static final SDK_VERSION_INT:I = 0x4d

.field public static final SDK_VERSION_NAME:Ljava/lang/String; = "3.1.1"

.field public static final SERVER_VERSION_INT:I = 0xea60


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProductTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->isDebug()Z

    .line 14
    const-string v0, "SHARESDK"

    return-object v0
.end method

.method public getSdkver()I
    .registers 2

    .prologue
    .line 18
    const v0, 0xeaad

    return v0
.end method
