.class public final Lcom/unity3d/player/p;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/p$b;,
        Lcom/unity3d/player/p$a;
    }
.end annotation


# static fields
.field private static a:Z


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/SurfaceView;

.field private final d:Landroid/view/SurfaceHolder;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:I

.field private final h:Z

.field private final i:J

.field private final j:J

.field private final k:Landroid/widget/FrameLayout;

.field private final l:Landroid/view/Display;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/media/MediaPlayer;

.field private r:Landroid/widget/MediaController;

.field private s:Z

.field private t:Z

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Lcom/unity3d/player/p$a;

.field private y:Lcom/unity3d/player/p$b;

.field private volatile z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/player/p;->a:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;IIIZJJLcom/unity3d/player/p$a;)V
    .registers 19

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/unity3d/player/p;->s:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/unity3d/player/p;->t:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/unity3d/player/p;->u:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/unity3d/player/p;->v:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/unity3d/player/p;->w:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/unity3d/player/p;->z:I

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/unity3d/player/p;->x:Lcom/unity3d/player/p$a;

    iput-object p1, p0, Lcom/unity3d/player/p;->b:Landroid/content/Context;

    iput-object p0, p0, Lcom/unity3d/player/p;->k:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/SurfaceView;

    invoke-direct {v2, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unity3d/player/p;->c:Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/unity3d/player/p;->c:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/unity3d/player/p;->d:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/unity3d/player/p;->d:Landroid/view/SurfaceHolder;

    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v2, p0, Lcom/unity3d/player/p;->d:Landroid/view/SurfaceHolder;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    iget-object v2, p0, Lcom/unity3d/player/p;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/unity3d/player/p;->k:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/unity3d/player/p;->c:Landroid/view/SurfaceView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/unity3d/player/p;->b:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/unity3d/player/p;->l:Landroid/view/Display;

    iput-object p2, p0, Lcom/unity3d/player/p;->e:Ljava/lang/String;

    iput p4, p0, Lcom/unity3d/player/p;->f:I

    iput p5, p0, Lcom/unity3d/player/p;->g:I

    iput-boolean p6, p0, Lcom/unity3d/player/p;->h:Z

    iput-wide p7, p0, Lcom/unity3d/player/p;->i:J

    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/unity3d/player/p;->j:J

    sget-boolean v2, Lcom/unity3d/player/p;->a:Z

    if-eqz v2, :cond_79

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fileName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unity3d/player/p;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/player/p;->b(Ljava/lang/String;)V

    :cond_79
    sget-boolean v2, Lcom/unity3d/player/p;->a:Z

    if-eqz v2, :cond_8f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "backgroundColor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/player/p;->b(Ljava/lang/String;)V

    :cond_8f
    sget-boolean v2, Lcom/unity3d/player/p;->a:Z

    if-eqz v2, :cond_a7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "controlMode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/unity3d/player/p;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/player/p;->b(Ljava/lang/String;)V

    :cond_a7
    sget-boolean v2, Lcom/unity3d/player/p;->a:Z

    if-eqz v2, :cond_bf

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "scalingMode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/unity3d/player/p;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/player/p;->b(Ljava/lang/String;)V

    :cond_bf
    sget-boolean v2, Lcom/unity3d/player/p;->a:Z

    if-eqz v2, :cond_d7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isURL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/unity3d/player/p;->h:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/player/p;->b(Ljava/lang/String;)V

    :cond_d7
    sget-boolean v2, Lcom/unity3d/player/p;->a:Z

    if-eqz v2, :cond_ef

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "videoOffset: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/unity3d/player/p;->i:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/player/p;->b(Ljava/lang/String;)V

    :cond_ef
    sget-boolean v2, Lcom/unity3d/player/p;->a:Z

    if-eqz v2, :cond_107

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "videoLength: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/unity3d/player/p;->j:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/player/p;->b(Ljava/lang/String;)V

    :cond_107
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/unity3d/player/p;->setFocusable(Z)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/unity3d/player/p;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private a(I)V
    .registers 4

    iput p1, p0, Lcom/unity3d/player/p;->z:I

    iget-object v0, p0, Lcom/unity3d/player/p;->x:Lcom/unity3d/player/p$a;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/unity3d/player/p;->x:Lcom/unity3d/player/p$a;

    iget v1, p0, Lcom/unity3d/player/p;->z:I

    invoke-interface {v0, v1}, Lcom/unity3d/player/p$a;->a(I)V

    :cond_d
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/unity3d/player/p;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .registers 4

    const-string v0, "Video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VideoPlayer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic b()Z
    .registers 1

    sget-boolean v0, Lcom/unity3d/player/p;->a:Z

    return v0
.end method

.method private c()V
    .registers 8

    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/unity3d/player/p;->d:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-boolean v0, p0, Lcom/unity3d/player/p;->v:Z

    if-nez v0, :cond_1d

    sget-boolean v0, Lcom/unity3d/player/p;->a:Z

    if-eqz v0, :cond_18

    const-string v0, "Resuming playback"

    invoke-static {v0}, Lcom/unity3d/player/p;->b(Ljava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/player/p;->a(I)V

    invoke-virtual {p0}, Lcom/unity3d/player/p;->doCleanUp()V

    :try_start_25
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    iget-boolean v0, p0, Lcom/unity3d/player/p;->h:Z

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/unity3d/player/p;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/unity3d/player/p;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_3d
    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/unity3d/player/p;->d:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    new-instance v0, Lcom/unity3d/player/p$b;

    invoke-direct {v0, p0, p0}, Lcom/unity3d/player/p$b;-><init>(Lcom/unity3d/player/p;Lcom/unity3d/player/p;)V

    iput-object v0, p0, Lcom/unity3d/player/p;->y:Lcom/unity3d/player/p$b;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/unity3d/player/p;->y:Lcom/unity3d/player/p$b;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_7a} :catch_7b

    goto :goto_1d

    :catch_7b
    move-exception v0

    sget-boolean v1, Lcom/unity3d/player/p;->a:Z

    if-eqz v1, :cond_9a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/p;->b(Ljava/lang/String;)V

    :cond_9a
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/unity3d/player/p;->a(I)V

    goto/16 :goto_1d

    :cond_a0
    :try_start_a0
    iget-wide v0, p0, Lcom/unity3d/player/p;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c1

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/unity3d/player/p;->e:Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-wide v2, p0, Lcom/unity3d/player/p;->i:J

    iget-wide v4, p0, Lcom/unity3d/player/p;->j:J

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_3d

    :cond_c1
    invoke-virtual {p0}, Lcom/unity3d/player/p;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_c8} :catch_7b

    move-result-object v0

    :try_start_c9
    iget-object v1, p0, Lcom/unity3d/player/p;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_e3} :catch_e5
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_e3} :catch_7b

    goto/16 :goto_3d

    :catch_e5
    move-exception v0

    :try_start_e6
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/unity3d/player/p;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_f9} :catch_7b

    goto/16 :goto_3d
.end method

.method private d()V
    .registers 2

    invoke-virtual {p0}, Lcom/unity3d/player/p;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unity3d/player/p;->a(I)V

    sget-boolean v0, Lcom/unity3d/player/p;->a:Z

    if-eqz v0, :cond_14

    const-string v0, "startVideoPlayback"

    invoke-static {v0}, Lcom/unity3d/player/p;->b(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {p0}, Lcom/unity3d/player/p;->updateVideoLayout()V

    iget-boolean v0, p0, Lcom/unity3d/player/p;->v:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/unity3d/player/p;->start()V

    goto :goto_6
.end method


# virtual methods
.method public final CancelOnPrepare()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/unity3d/player/p;->a(I)V

    return-void
.end method

.method final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unity3d/player/p;->v:Z

    return v0
.end method

.method public final canPause()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final canSeekBackward()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final canSeekForward()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final destroyPlayer()V
    .registers 2

    sget-boolean v0, Lcom/unity3d/player/p;->a:Z

    if-eqz v0, :cond_9

    const-string v0, "destroyPlayer"

    invoke-static {v0}, Lcom/unity3d/player/p;->b(Ljava/lang/String;)V

    :cond_9
    iget-boolean v0, p0, Lcom/unity3d/player/p;->v:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/unity3d/player/p;->pause()V

    :cond_10
    invoke-virtual {p0}, Lcom/unity3d/player/p;->doCleanUp()V

    return-void
.end method

.method protected final doCleanUp()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unity3d/player/p;->y:Lcom/unity3d/player/p$b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/unity3d/player/p;->y:Lcom/unity3d/player/p$b;

    invoke-virtual {v0}, Lcom/unity3d/player/p$b;->a()V

    iput-object v2, p0, Lcom/unity3d/player/p;->y:Lcom/unity3d/player/p$b;

    :cond_d
    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    :cond_18
    iput v1, p0, Lcom/unity3d/player/p;->o:I

    iput v1, p0, Lcom/unity3d/player/p;->p:I

    iput-boolean v1, p0, Lcom/unity3d/player/p;->t:Z

    iput-boolean v1, p0, Lcom/unity3d/player/p;->s:Z

    return-void
.end method

.method public final getBufferPercentage()I
    .registers 2

    iget-boolean v0, p0, Lcom/unity3d/player/p;->h:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/unity3d/player/p;->u:I

    :goto_6
    return v0

    :cond_7
    const/16 v0, 0x64

    goto :goto_6
.end method

.method public final getCurrentPosition()I
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_5
.end method

.method public final getDuration()I
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_5
.end method

.method public final isPlaying()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/unity3d/player/p;->t:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/unity3d/player/p;->s:Z

    if-eqz v0, :cond_12

    move v0, v1

    :goto_b
    iget-object v3, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    if-nez v3, :cond_16

    if-nez v0, :cond_14

    :cond_11
    :goto_11
    return v1

    :cond_12
    move v0, v2

    goto :goto_b

    :cond_14
    move v1, v2

    goto :goto_11

    :cond_16
    iget-object v3, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_11

    if-eqz v0, :cond_11

    move v1, v2

    goto :goto_11
.end method

.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 5

    sget-boolean v0, Lcom/unity3d/player/p;->a:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBufferingUpdate percent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/p;->b(Ljava/lang/String;)V

    :cond_16
    iput p2, p0, Lcom/unity3d/player/p;->u:I

    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    sget-boolean v0, Lcom/unity3d/player/p;->a:Z

    if-eqz v0, :cond_9

    const-string v0, "onCompletion called"

    invoke-static {v0}, Lcom/unity3d/player/p;->b(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Lcom/unity3d/player/p;->destroyPlayer()V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/unity3d/player/p;->a(I)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_10

    iget v0, p0, Lcom/unity3d/player/p;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    if-eqz p1, :cond_19

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_19

    :cond_10
    invoke-virtual {p0}, Lcom/unity3d/player/p;->destroyPlayer()V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/unity3d/player/p;->a(I)V

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    iget-object v0, p0, Lcom/unity3d/player/p;->r:Landroid/widget/MediaController;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/unity3d/player/p;->r:Landroid/widget/MediaController;

    invoke-virtual {v0, p1, p2}, Landroid/widget/MediaController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_18

    :cond_24
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_18
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5

    const/4 v2, 0x1

    sget-boolean v0, Lcom/unity3d/player/p;->a:Z

    if-eqz v0, :cond_a

    const-string v0, "onPrepared called"

    invoke-static {v0}, Lcom/unity3d/player/p;->b(Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/unity3d/player/p;->y:Lcom/unity3d/player/p$b;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/unity3d/player/p;->y:Lcom/unity3d/player/p$b;

    invoke-virtual {v0}, Lcom/unity3d/player/p$b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/p;->y:Lcom/unity3d/player/p$b;

    :cond_16
    iget v0, p0, Lcom/unity3d/player/p;->f:I

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/unity3d/player/p;->f:I

    if-ne v0, v2, :cond_3b

    :cond_1e
    new-instance v0, Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/unity3d/player/p;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/player/p;->r:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/unity3d/player/p;->r:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    iget-object v0, p0, Lcom/unity3d/player/p;->r:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/unity3d/player/p;->r:Landroid/widget/MediaController;

    invoke-virtual {v0, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    iget-object v0, p0, Lcom/unity3d/player/p;->r:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :cond_3b
    iput-boolean v2, p0, Lcom/unity3d/player/p;->t:Z

    iget-boolean v0, p0, Lcom/unity3d/player/p;->t:Z

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/unity3d/player/p;->s:Z

    if-eqz v0, :cond_48

    invoke-direct {p0}, Lcom/unity3d/player/p;->d()V

    :cond_48
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/unity3d/player/p;->f:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/unity3d/player/p;->destroyPlayer()V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/unity3d/player/p;->a(I)V

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    iget-object v0, p0, Lcom/unity3d/player/p;->r:Landroid/widget/MediaController;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/unity3d/player/p;->r:Landroid/widget/MediaController;

    invoke-virtual {v0, p1}, Landroid/widget/MediaController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_15

    :cond_21
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_15
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 6

    sget-boolean v0, Lcom/unity3d/player/p;->a:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onVideoSizeChanged called "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/p;->b(Ljava/lang/String;)V

    :cond_20
    if-eqz p2, :cond_24

    if-nez p3, :cond_4b

    :cond_24
    sget-boolean v0, Lcom/unity3d/player/p;->a:Z

    if-eqz v0, :cond_4a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid video width("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") or height("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/p;->b(Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    return-void

    :cond_4b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/p;->s:Z

    iput p2, p0, Lcom/unity3d/player/p;->o:I

    iput p3, p0, Lcom/unity3d/player/p;->p:I

    iget-boolean v0, p0, Lcom/unity3d/player/p;->t:Z

    if-eqz v0, :cond_4a

    iget-boolean v0, p0, Lcom/unity3d/player/p;->s:Z

    if-eqz v0, :cond_4a

    invoke-direct {p0}, Lcom/unity3d/player/p;->d()V

    goto :goto_4a
.end method

.method public final pause()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/unity3d/player/p;->w:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/p;->v:Z

    goto :goto_4
.end method

.method public final seekTo(I)V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_4
.end method

.method public final start()V
    .registers 2

    sget-boolean v0, Lcom/unity3d/player/p;->a:Z

    if-eqz v0, :cond_9

    const-string v0, "Start"

    invoke-static {v0}, Lcom/unity3d/player/p;->b(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    if-nez v0, :cond_e

    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/unity3d/player/p;->w:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/p;->v:Z

    goto :goto_d
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7

    sget-boolean v0, Lcom/unity3d/player/p;->a:Z

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "surfaceChanged called "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/p;->b(Ljava/lang/String;)V

    :cond_2a
    iget v0, p0, Lcom/unity3d/player/p;->m:I

    if-ne v0, p3, :cond_32

    iget v0, p0, Lcom/unity3d/player/p;->n:I

    if-eq v0, p4, :cond_3d

    :cond_32
    iput p3, p0, Lcom/unity3d/player/p;->m:I

    iput p4, p0, Lcom/unity3d/player/p;->n:I

    iget-boolean v0, p0, Lcom/unity3d/player/p;->w:Z

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lcom/unity3d/player/p;->updateVideoLayout()V

    :cond_3d
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    sget-boolean v0, Lcom/unity3d/player/p;->a:Z

    if-eqz v0, :cond_9

    const-string v0, "surfaceCreated called"

    invoke-static {v0}, Lcom/unity3d/player/p;->b(Ljava/lang/String;)V

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/p;->w:Z

    invoke-direct {p0}, Lcom/unity3d/player/p;->c()V

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    sget-boolean v0, Lcom/unity3d/player/p;->a:Z

    if-eqz v0, :cond_9

    const-string v0, "surfaceDestroyed called"

    invoke-static {v0}, Lcom/unity3d/player/p;->b(Ljava/lang/String;)V

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/p;->w:Z

    return-void
.end method

.method protected final updateVideoLayout()V
    .registers 7

    sget-boolean v0, Lcom/unity3d/player/p;->a:Z

    if-eqz v0, :cond_9

    const-string v0, "updateVideoLayout"

    invoke-static {v0}, Lcom/unity3d/player/p;->b(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/unity3d/player/p;->q:Landroid/media/MediaPlayer;

    if-nez v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget v0, p0, Lcom/unity3d/player/p;->m:I

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/unity3d/player/p;->n:I

    if-nez v0, :cond_34

    :cond_16
    iget-object v0, p0, Lcom/unity3d/player/p;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/unity3d/player/p;->m:I

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/unity3d/player/p;->n:I

    :cond_34
    iget v1, p0, Lcom/unity3d/player/p;->m:I

    iget v0, p0, Lcom/unity3d/player/p;->n:I

    iget-boolean v2, p0, Lcom/unity3d/player/p;->s:Z

    if-eqz v2, :cond_b4

    iget v2, p0, Lcom/unity3d/player/p;->o:I

    int-to-float v2, v2

    iget v3, p0, Lcom/unity3d/player/p;->p:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/unity3d/player/p;->m:I

    int-to-float v3, v3

    iget v4, p0, Lcom/unity3d/player/p;->n:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lcom/unity3d/player/p;->g:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_96

    cmpg-float v3, v3, v2

    if-gtz v3, :cond_90

    iget v0, p0, Lcom/unity3d/player/p;->m:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    :cond_58
    :goto_58
    iget v2, p0, Lcom/unity3d/player/p;->m:I

    if-ne v2, v1, :cond_60

    iget v2, p0, Lcom/unity3d/player/p;->n:I

    if-eq v2, v0, :cond_d

    :cond_60
    sget-boolean v2, Lcom/unity3d/player/p;->a:Z

    if-eqz v2, :cond_80

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "frameWidth = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; frameHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/player/p;->b(Ljava/lang/String;)V

    :cond_80
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v1, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/unity3d/player/p;->k:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/unity3d/player/p;->c:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_d

    :cond_90
    iget v1, p0, Lcom/unity3d/player/p;->n:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_58

    :cond_96
    iget v4, p0, Lcom/unity3d/player/p;->g:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_ab

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_a5

    iget v0, p0, Lcom/unity3d/player/p;->m:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_58

    :cond_a5
    iget v1, p0, Lcom/unity3d/player/p;->n:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_58

    :cond_ab
    iget v2, p0, Lcom/unity3d/player/p;->g:I

    if-nez v2, :cond_58

    iget v1, p0, Lcom/unity3d/player/p;->o:I

    iget v0, p0, Lcom/unity3d/player/p;->p:I

    goto :goto_58

    :cond_b4
    sget-boolean v2, Lcom/unity3d/player/p;->a:Z

    if-eqz v2, :cond_58

    const-string v2, "updateVideoLayout: Video size is not known yet"

    invoke-static {v2}, Lcom/unity3d/player/p;->b(Ljava/lang/String;)V

    goto :goto_58
.end method
