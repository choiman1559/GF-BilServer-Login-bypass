.class public Lcom/bsgamesdk/android/presenter/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/bsgamesdk/android/presenter/c;

.field private b:Lcom/bsgamesdk/android/presenter/CaptchaMModel;


# direct methods
.method public constructor <init>(Lcom/bsgamesdk/android/presenter/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bsgamesdk/android/presenter/b;->a:Lcom/bsgamesdk/android/presenter/c;

    new-instance v0, Lcom/bsgamesdk/android/presenter/CaptchaMModel;

    invoke-direct {v0}, Lcom/bsgamesdk/android/presenter/CaptchaMModel;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/presenter/b;->b:Lcom/bsgamesdk/android/presenter/CaptchaMModel;

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/presenter/b;)Lcom/bsgamesdk/android/presenter/c;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/b;->a:Lcom/bsgamesdk/android/presenter/c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bsgamesdk/android/presenter/b;->a:Lcom/bsgamesdk/android/presenter/c;

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/b;->b:Lcom/bsgamesdk/android/presenter/CaptchaMModel;

    new-instance v1, Lcom/bsgamesdk/android/presenter/b$1;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/presenter/b$1;-><init>(Lcom/bsgamesdk/android/presenter/b;)V

    invoke-virtual {v0, p1, v1}, Lcom/bsgamesdk/android/presenter/CaptchaMModel;->a(Landroid/app/Activity;Lcom/bsgamesdk/android/presenter/a;)V

    return-void
.end method
