.class public final Lcom/bsgamesdk/android/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final com_bsgamesdk_android_widget_AlignTextView:[I

.field public static final com_bsgamesdk_android_widget_AlignTextView_bsgamesdk_alignTextView_align:I = 0x0

.field public static final com_bsgamesdk_android_widget_CheckBoxAgreeLayout:[I

.field public static final com_bsgamesdk_android_widget_CheckBoxAgreeLayout_bsgamesdk_checkBoxAgreeLayout_checkbox:I = 0x0

.field public static final com_bsgamesdk_android_widget_CheckBoxAgreeLayout_bsgamesdk_checkBoxAgreeLayout_text:I = 0x1

.field public static final com_bsgamesdk_android_widget_PasswordLayout:[I

.field public static final com_bsgamesdk_android_widget_PasswordLayout_bsgamesdk_passwordLayout_edit_text:I = 0x0

.field public static final com_bsgamesdk_android_widget_RoundImageViewByXfermode:[I

.field public static final com_bsgamesdk_android_widget_RoundImageViewByXfermode_bsgamesdk_roundImageView_borderRadius:I = 0x0

.field public static final com_bsgamesdk_android_widget_RoundImageViewByXfermode_bsgamesdk_roundImageView_type:I = 0x1

.field public static final com_bsgamesdk_android_widget_SwitchButton:[I

.field public static final com_bsgamesdk_android_widget_SwitchButton_bsgamesdk_switchButton_background:I = 0x0

.field public static final com_bsgamesdk_android_widget_SwitchButton_bsgamesdk_switchButton_frame:I = 0x1

.field public static final com_bsgamesdk_android_widget_SwitchButton_bsgamesdk_switchButton_mask:I = 0x2

.field public static final com_bsgamesdk_android_widget_SwitchButton_bsgamesdk_switchButton_thumb_highlight:I = 0x3

.field public static final com_bsgamesdk_android_widget_SwitchButton_bsgamesdk_switchButton_thumb_normal:I = 0x4

.field public static final com_bsgamesdk_android_widget_SwitchImg:[I

.field public static final com_bsgamesdk_android_widget_SwitchImg_bsgamesdk_switchImage_img_hide:I = 0x0

.field public static final com_bsgamesdk_android_widget_SwitchImg_bsgamesdk_switchImage_img_show:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 802
    new-array v0, v4, [I

    const v1, 0x7f03004f

    aput v1, v0, v3

    sput-object v0, Lcom/bsgamesdk/android/R$styleable;->com_bsgamesdk_android_widget_AlignTextView:[I

    .line 804
    new-array v0, v2, [I

    fill-array-data v0, :array_34

    sput-object v0, Lcom/bsgamesdk/android/R$styleable;->com_bsgamesdk_android_widget_CheckBoxAgreeLayout:[I

    .line 807
    new-array v0, v4, [I

    const v1, 0x7f030070

    aput v1, v0, v3

    sput-object v0, Lcom/bsgamesdk/android/R$styleable;->com_bsgamesdk_android_widget_PasswordLayout:[I

    .line 809
    new-array v0, v2, [I

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/bsgamesdk/android/R$styleable;->com_bsgamesdk_android_widget_RoundImageViewByXfermode:[I

    .line 812
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_44

    sput-object v0, Lcom/bsgamesdk/android/R$styleable;->com_bsgamesdk_android_widget_SwitchButton:[I

    .line 818
    new-array v0, v2, [I

    fill-array-data v0, :array_52

    sput-object v0, Lcom/bsgamesdk/android/R$styleable;->com_bsgamesdk_android_widget_SwitchImg:[I

    return-void

    .line 804
    nop

    :array_34
    .array-data 4
        0x7f030055
        0x7f030056
    .end array-data

    .line 809
    :array_3c
    .array-data 4
        0x7f030072
        0x7f030073
    .end array-data

    .line 812
    :array_44
    .array-data 4
        0x7f030074
        0x7f030075
        0x7f030076
        0x7f030077
        0x7f030078
    .end array-data

    .line 818
    :array_52
    .array-data 4
        0x7f030079
        0x7f03007a
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
