.class public final Lcom/unity3d/player/h;
.super Ljava/lang/Object;


# static fields
.field static final a:Z

.field static final b:Z

.field static final c:Z

.field static final d:Lcom/unity3d/player/c;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_26

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/unity3d/player/h;->a:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_28

    move v0, v1

    :goto_12
    sput-boolean v0, Lcom/unity3d/player/h;->b:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_2a

    :goto_1a
    sput-boolean v1, Lcom/unity3d/player/h;->c:Z

    if-eqz v1, :cond_2c

    new-instance v0, Lcom/unity3d/player/f;

    invoke-direct {v0}, Lcom/unity3d/player/f;-><init>()V

    :goto_23
    sput-object v0, Lcom/unity3d/player/h;->d:Lcom/unity3d/player/c;

    return-void

    :cond_26
    move v0, v2

    goto :goto_9

    :cond_28
    move v0, v2

    goto :goto_12

    :cond_2a
    move v1, v2

    goto :goto_1a

    :cond_2c
    const/4 v0, 0x0

    goto :goto_23
.end method
