.class public abstract Lcom/bilibili/deviceutils/interfaces/BilibiliDeviceCallBack;
.super Ljava/lang/Object;


# static fields
.field public static final INIT:I = 0x1

.field public static final TRACK:I = 0x2

.field public static final TRACKIP:I = 0x3


# instance fields
.field private tag:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bilibili/deviceutils/interfaces/BilibiliDeviceCallBack;->tag:I

    return-void
.end method


# virtual methods
.method public abstract error(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public getTag()I
    .registers 2

    iget v0, p0, Lcom/bilibili/deviceutils/interfaces/BilibiliDeviceCallBack;->tag:I

    return v0
.end method

.method public abstract success(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
