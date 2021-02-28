.class public Lcom/bsgamesdk/android/model/d;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bsgamesdk/android/model/d;->a:I

    iput-object p2, p0, Lcom/bsgamesdk/android/model/d;->b:Ljava/lang/String;

    iput p3, p0, Lcom/bsgamesdk/android/model/d;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/bsgamesdk/android/model/d;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/model/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/bsgamesdk/android/model/d;->c:I

    return v0
.end method
