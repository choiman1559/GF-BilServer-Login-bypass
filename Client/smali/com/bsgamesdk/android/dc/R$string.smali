.class public final Lcom/bsgamesdk/android/dc/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/dc/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static final app_name:I

.field public static final bsgamesdk_dc_anti_bottom:I

.field public static final bsgamesdk_dc_anti_title:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    sget v0, Lcom/bsgamesdk/android/R$string;->app_name:I

    sput v0, Lcom/bsgamesdk/android/dc/R$string;->app_name:I

    .line 79
    sget v0, Lcom/bsgamesdk/android/R$string;->bsgamesdk_dc_anti_bottom:I

    sput v0, Lcom/bsgamesdk/android/dc/R$string;->bsgamesdk_dc_anti_bottom:I

    .line 80
    sget v0, Lcom/bsgamesdk/android/R$string;->bsgamesdk_dc_anti_title:I

    sput v0, Lcom/bsgamesdk/android/dc/R$string;->bsgamesdk_dc_anti_title:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
