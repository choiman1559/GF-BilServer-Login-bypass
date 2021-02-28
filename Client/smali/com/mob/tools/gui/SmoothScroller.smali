.class public Lcom/mob/tools/gui/SmoothScroller;
.super Landroid/widget/Scroller;
.source "SmoothScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;
    }
.end annotation


# static fields
.field private static final DEFAULT:Landroid/view/animation/Interpolator;

.field private static final OVER_SCROLL:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x65

    .line 23
    new-array v0, v3, [F

    fill-array-data v0, :array_1c

    .line 36
    .local v0, "defaultInt":[F
    new-instance v2, Lcom/mob/tools/gui/SmoothScroller$1;

    invoke-direct {v2, v0}, Lcom/mob/tools/gui/SmoothScroller$1;-><init>([F)V

    sput-object v2, Lcom/mob/tools/gui/SmoothScroller;->DEFAULT:Landroid/view/animation/Interpolator;

    .line 42
    new-array v1, v3, [F

    fill-array-data v1, :array_ea

    .line 55
    .local v1, "overScroll":[F
    new-instance v2, Lcom/mob/tools/gui/SmoothScroller$2;

    invoke-direct {v2, v1}, Lcom/mob/tools/gui/SmoothScroller$2;-><init>([F)V

    sput-object v2, Lcom/mob/tools/gui/SmoothScroller;->OVER_SCROLL:Landroid/view/animation/Interpolator;

    .line 60
    return-void

    .line 23
    nop

    :array_1c
    .array-data 4
        0x0
        0x399d4952    # 3.0E-4f
        0x3a9d4952    # 0.0012f
        0x3b2a64c3    # 0.0026f
        0x3b9a0275    # 0.0047f
        0x3bef34d7    # 0.0073f
        0x3c2a64c3    # 0.0104f
        0x3c656042    # 0.014f
        0x3c95182b    # 0.0182f
        0x3cbac711    # 0.0228f
        0x3ce56042    # 0.028f
        0x3d09a027    # 0.0336f
        0x3d229c78    # 0.0397f
        0x3d3da512    # 0.0463f
        0x3d5a511a    # 0.0533f
        0x3d79096c    # 0.0608f
        0x3d8c7e28    # 0.0686f
        0x3d9d7dbf    # 0.0769f
        0x3daf1aa0    # 0.0855f
        0x3dc1bda5
        0x3dd4fdf4    # 0.104f
        0x3de90ff9    # 0.1138f
        0x3dfdbf48    # 0.1239f
        0x3e09a027    # 0.1344f
        0x3e14af4f    # 0.1452f
        0x3e200d1b    # 0.1563f
        0x3e2b9f56    # 0.1676f
        0x3e379a6b    # 0.1793f
        0x3e43e426    # 0.1913f
        0x3e50624e    # 0.2035f
        0x3e5d2f1b    # 0.216f
        0x3e6a3055    # 0.2287f
        0x3e778034    # 0.2417f
        0x3e827525    # 0.2548f
        0x3e895183    # 0.2682f
        0x3e903afb    # 0.2817f
        0x3e974bc7    # 0.2955f
        0x3e9e69ad    # 0.3094f
        0x3ea5a1cb    # 0.3235f
        0x3eace704    # 0.3377f
        0x3eb43958    # 0.352f
        0x3ebba5e3    # 0.3665f
        0x3ec3126f    # 0.381f
        0x3eca9931    # 0.3957f
        0x3ed21ff3    # 0.4104f
        0x3ed9c0ec    # 0.4253f
        0x3ee154ca    # 0.4401f
        0x3ee902de    # 0.4551f
        0x3ef0a3d7    # 0.47f
        0x3ef851ec    # 0.485f
        0x3f000000    # 0.5f
        0x3f03d70a    # 0.515f
        0x3f07ae14    # 0.53f
        0x3f0b7e91    # 0.5449f
        0x3f0f559b    # 0.5599f
        0x3f132618    # 0.5748f
        0x3f16f007    # 0.5896f
        0x3f1ab368    # 0.6043f
        0x3f1e76c9    # 0.619f
        0x3f222d0e    # 0.6335f
        0x3f25e354    # 0.648f
        0x3f298c7e    # 0.6623f
        0x3f2d2f1b    # 0.6765f
        0x3f30cb29    # 0.6906f
        0x3f345a1d    # 0.7045f
        0x3f37e282    # 0.7183f
        0x3f3b573f    # 0.7318f
        0x3f3ec56d    # 0.7452f
        0x3f421ff3    # 0.7583f
        0x3f4573eb    # 0.7713f
        0x3f48b439    # 0.784f
        0x3f4be76d    # 0.7965f
        0x3f4f06f7    # 0.8087f
        0x3f521965    # 0.8207f
        0x3f55182b    # 0.8324f
        0x3f580347    # 0.8438f
        0x3f5ad42c    # 0.8548f
        0x3f5d97f6    # 0.8656f
        0x3f604817    # 0.8761f
        0x3f62de01    # 0.8862f
        0x3f656042    # 0.896f
        0x3f67c84b    # 0.9054f
        0x3f6a1cac    # 0.9145f
        0x3f6c5048    # 0.9231f
        0x3f6e703b    # 0.9314f
        0x3f706f69    # 0.9392f
        0x3f725aee    # 0.9467f
        0x3f7425af    # 0.9537f
        0x3f75d639    # 0.9603f
        0x3f7765fe    # 0.9664f
        0x3f78d4fe    # 0.972f
        0x3f7a29c7    # 0.9772f
        0x3f7b573f    # 0.9818f
        0x3f7c6a7f    # 0.986f
        0x3f7d566d    # 0.9896f
        0x3f7e2196    # 0.9927f
        0x3f7ecbfb    # 0.9953f
        0x3f7f559b    # 0.9974f
        0x3f7fb15b    # 0.9988f
        0x3f7fec57    # 0.9997f
        0x3f800000    # 1.0f
    .end array-data

    .line 42
    :array_ea
    .array-data 4
        0x0
        0x3a03126f    # 5.0E-4f
        0x3af9096c    # 0.0019f
        0x3b8ce704    # 0.0043f
        0x3bf9096c    # 0.0076f
        0x3c4154ca    # 0.0118f
        0x3c89a027    # 0.0168f
        0x3cb9f55a    # 0.0227f
        0x3cf0d845    # 0.0294f
        0x3d172474    # 0.0369f
        0x3d3923a3    # 0.0452f
        0x3d5e00d2    # 0.0542f
        0x3d83126f    # 0.064f
        0x3d985f07    # 0.0744f
        0x3daf4f0e    # 0.0856f
        0x3dc779a7    # 0.0974f
        0x3de0ded3    # 0.1098f
        0x3dfbb2ff    # 0.1229f
        0x3e0bc6a8    # 0.1365f
        0x3e1a511a    # 0.1507f
        0x3e2978d5    # 0.1655f
        0x3e3923a3    # 0.1808f
        0x3e495183    # 0.1966f
        0x3e59e83e    # 0.2128f
        0x3e6b1c43    # 0.2296f
        0x3e7c9eed    # 0.2467f
        0x3e875254    # 0.2643f
        0x3e907c85    # 0.2822f
        0x3e99db23    # 0.3005f
        0x3ea36113    # 0.3191f
        0x3ead1b71    # 0.3381f
        0x3eb6fd22    # 0.3574f
        0x3ec0f909    # 0.3769f
        0x3ecb1c43    # 0.3967f
        0x3ed54c98    # 0.4166f
        0x3edfa440    # 0.4368f
        0x3eea161e    # 0.4572f
        0x3ef4a234    # 0.4778f
        0x3eff2e49    # 0.4984f
        0x3f04ea4b    # 0.5192f
        0x3f0a43fe    # 0.5401f
        0x3f0f9db2    # 0.561f
        0x3f14fdf4    # 0.582f
        0x3f1a5e35    # 0.603f
        0x3f1fbe77    # 0.624f
        0x3f251eb8    # 0.645f
        0x3f2a786c    # 0.6659f
        0x3f2fcb92    # 0.6867f
        0x3f351eb8    # 0.7075f
        0x3f3a64c3    # 0.7281f
        0x3f3fa440    # 0.7486f
        0x3f44d6a1    # 0.7689f
        0x3f4a0275    # 0.7891f
        0x3f4f1aa0    # 0.809f
        0x3f5425af    # 0.8287f
        0x3f5923a3    # 0.8482f
        0x3f5e075f    # 0.8673f
        0x3f62de01    # 0.8862f
        0x3f67a0f9    # 0.9048f
        0x3f6c49ba    # 0.923f
        0x3f70d845    # 0.9408f
        0x3f754c98    # 0.9582f
        0x3f79ad43    # 0.9753f
        0x3f7ded29    # 0.9919f
        0x3f810625    # 1.008f
        0x3f830553    # 1.0236f
        0x3f84f766    # 1.0388f
        0x3f86d5d0    # 1.0534f
        0x3f88a090    # 1.0674f
        0x3f8a5aee    # 1.0809f
        0x3f8c01a3    # 1.0938f
        0x3f8d94af    # 1.1061f
        0x3f8f10cb    # 1.1177f
        0x3f9075f7    # 1.1286f
        0x3f91c77a    # 1.1389f
        0x3f92fec5    # 1.1484f
        0x3f942268    # 1.1573f
        0x3f95288d    # 1.1653f
        0x3f9617c2    # 1.1726f
        0x3f96ecc0    # 1.1791f
        0x3f97a440    # 1.1847f
        0x3f984189    # 1.1895f
        0x3f98c155    # 1.1934f
        0x3f9926e9    # 1.1965f
        0x3f996bba    # 1.1986f
        0x3f99930c    # 1.1998f
        0x3f99930c    # 1.1998f
        0x3f9902de    # 1.1954f
        0x3f97d8ae    # 1.1863f
        0x3f962824    # 1.1731f
        0x3f941206    # 1.1568f
        0x3f91ad43    # 1.1381f
        0x3f8f1759    # 1.1179f
        0x3f8c6a7f    # 1.097f
        0x3f89c0ec    # 1.0762f
        0x3f87381d    # 1.0564f
        0x3f84e704    # 1.0383f
        0x3f82eb1c    # 1.0228f
        0x3f815e9e    # 1.0107f
        0x3f805bc0    # 1.0028f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    sget-object v0, Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;->DEFAULT:Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/gui/SmoothScroller;-><init>(Landroid/content/Context;Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;

    .prologue
    .line 67
    invoke-static {p2}, Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;->access$200(Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 68
    return-void
.end method

.method static synthetic access$000()Landroid/view/animation/Interpolator;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lcom/mob/tools/gui/SmoothScroller;->DEFAULT:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$100()Landroid/view/animation/Interpolator;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lcom/mob/tools/gui/SmoothScroller;->OVER_SCROLL:Landroid/view/animation/Interpolator;

    return-object v0
.end method
