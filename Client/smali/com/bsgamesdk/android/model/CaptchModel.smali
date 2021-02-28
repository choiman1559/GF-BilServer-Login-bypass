.class public Lcom/bsgamesdk/android/model/CaptchModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bsgamesdk/android/model/CaptchModel;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/bsgamesdk/android/model/CaptchModel;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/model/CaptchModel;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/model/CaptchModel;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/model/CaptchModel;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/model/CaptchModel;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/model/CaptchModel;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/model/CaptchModel;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bsgamesdk/android/model/CaptchModel;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/bsgamesdk/android/model/CaptchModel;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bsgamesdk/android/model/CaptchModel;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/model/CaptchModel;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/bsgamesdk/android/model/CaptchModel;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bsgamesdk/android/model/CaptchModel;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/bsgamesdk/android/model/CaptchModel;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bsgamesdk/android/model/CaptchModel;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/model/CaptchModel;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/bsgamesdk/android/model/CaptchModel;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/bsgamesdk/android/model/CaptchModel;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/bsgamesdk/android/model/CaptchModel;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/bsgamesdk/android/model/CaptchModel;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCaptcha_code()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/model/CaptchModel;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptcha_type()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/model/CaptchModel;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getChallenge()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/model/CaptchModel;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCtoken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/model/CaptchModel;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getGt_user_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/model/CaptchModel;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getImage_token()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/model/CaptchModel;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSeccode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/model/CaptchModel;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getValidate()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/model/CaptchModel;->e:Ljava/lang/String;

    return-object v0
.end method

.method public setCaptcha_code(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/model/CaptchModel;->c:Ljava/lang/String;

    return-void
.end method

.method public setCaptcha_type(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/model/CaptchModel;->a:Ljava/lang/String;

    return-void
.end method

.method public setChallenge(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/model/CaptchModel;->d:Ljava/lang/String;

    return-void
.end method

.method public setCtoken(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/model/CaptchModel;->h:Ljava/lang/String;

    return-void
.end method

.method public setGt_user_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/model/CaptchModel;->g:Ljava/lang/String;

    return-void
.end method

.method public setImage_token(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/model/CaptchModel;->b:Ljava/lang/String;

    return-void
.end method

.method public setSeccode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/model/CaptchModel;->f:Ljava/lang/String;

    return-void
.end method

.method public setValidate(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/model/CaptchModel;->e:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captcha_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/model/CaptchModel;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",image_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/model/CaptchModel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",captcha_code+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/model/CaptchModel;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",challenge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/model/CaptchModel;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",validate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/model/CaptchModel;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",seccode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/model/CaptchModel;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",gt_user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/model/CaptchModel;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
