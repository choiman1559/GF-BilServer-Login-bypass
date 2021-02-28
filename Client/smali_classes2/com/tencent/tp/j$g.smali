.class public final Lcom/tencent/tp/j$g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tp/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# static fields
.field public static about:I

.field public static app_name:I

.field public static click_me:I

.field public static game_protected:I

.field public static gcloud_game_id:I

.field public static gcloud_game_key:I

.field public static hello_world:I

.field public static menu_settings:I

.field public static native_crash:I

.field public static ok:I

.field public static performence:I

.field public static sdk:I

.field public static sdk_dev:I

.field public static shell_code:I

.field public static speed_down_detected:I

.field public static speed_up_detected:I

.field public static start_tick:I

.field public static stop_tick:I

.field public static tick_txt:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x7f050000

    sput v0, Lcom/tencent/tp/j$g;->about:I

    const v0, 0x7f050001

    sput v0, Lcom/tencent/tp/j$g;->app_name:I

    const v0, 0x7f050002

    sput v0, Lcom/tencent/tp/j$g;->click_me:I

    const v0, 0x7f050003

    sput v0, Lcom/tencent/tp/j$g;->game_protected:I

    const v0, 0x7f050004

    sput v0, Lcom/tencent/tp/j$g;->gcloud_game_id:I

    const v0, 0x7f050005

    sput v0, Lcom/tencent/tp/j$g;->gcloud_game_key:I

    const v0, 0x7f050006

    sput v0, Lcom/tencent/tp/j$g;->hello_world:I

    const v0, 0x7f050007

    sput v0, Lcom/tencent/tp/j$g;->menu_settings:I

    const v0, 0x7f050008

    sput v0, Lcom/tencent/tp/j$g;->native_crash:I

    const v0, 0x7f050009

    sput v0, Lcom/tencent/tp/j$g;->ok:I

    const v0, 0x7f05000a

    sput v0, Lcom/tencent/tp/j$g;->performence:I

    const v0, 0x7f05000b

    sput v0, Lcom/tencent/tp/j$g;->sdk:I

    const v0, 0x7f05000c

    sput v0, Lcom/tencent/tp/j$g;->sdk_dev:I

    const v0, 0x7f05000d

    sput v0, Lcom/tencent/tp/j$g;->shell_code:I

    const v0, 0x7f05000e

    sput v0, Lcom/tencent/tp/j$g;->speed_down_detected:I

    const v0, 0x7f05000f

    sput v0, Lcom/tencent/tp/j$g;->speed_up_detected:I

    const v0, 0x7f050010

    sput v0, Lcom/tencent/tp/j$g;->start_tick:I

    const v0, 0x7f050011

    sput v0, Lcom/tencent/tp/j$g;->stop_tick:I

    const v0, 0x7f050012

    sput v0, Lcom/tencent/tp/j$g;->tick_txt:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
