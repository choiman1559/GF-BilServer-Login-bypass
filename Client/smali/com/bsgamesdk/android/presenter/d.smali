.class public Lcom/bsgamesdk/android/presenter/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/bsgamesdk/android/presenter/e;

.field private b:Lcom/bsgamesdk/android/presenter/PhoneGetMModel;


# direct methods
.method public constructor <init>(Lcom/bsgamesdk/android/presenter/e;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bsgamesdk/android/presenter/d;->a:Lcom/bsgamesdk/android/presenter/e;

    new-instance v0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel;

    invoke-direct {v0}, Lcom/bsgamesdk/android/presenter/PhoneGetMModel;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/presenter/d;->b:Lcom/bsgamesdk/android/presenter/PhoneGetMModel;

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/presenter/d;)Lcom/bsgamesdk/android/presenter/e;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/d;->a:Lcom/bsgamesdk/android/presenter/e;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bsgamesdk/android/presenter/d;->a:Lcom/bsgamesdk/android/presenter/e;

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)V
    .registers 13

    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/d;->b:Lcom/bsgamesdk/android/presenter/PhoneGetMModel;

    new-instance v6, Lcom/bsgamesdk/android/presenter/d$1;

    invoke-direct {v6, p0}, Lcom/bsgamesdk/android/presenter/d$1;-><init>(Lcom/bsgamesdk/android/presenter/d;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bsgamesdk/android/presenter/PhoneGetMModel;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Lcom/bsgamesdk/android/presenter/a;)V

    return-void
.end method
