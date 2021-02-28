.class final Lcom/unity3d/player/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/a;


# direct methods
.method constructor <init>(Lcom/unity3d/player/a;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/a$a;->a:Lcom/unity3d/player/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .registers 3

    invoke-virtual {p1}, Ljavax/net/ssl/HandshakeCompletedEvent;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    :try_start_a
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;
    :try_end_11
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_a .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    goto :goto_11
.end method
