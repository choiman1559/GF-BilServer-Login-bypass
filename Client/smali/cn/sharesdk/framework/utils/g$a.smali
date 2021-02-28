.class Lcn/sharesdk/framework/utils/g$a;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/framework/utils/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/utils/g$a;->a:Ljava/util/HashMap;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcn/sharesdk/framework/utils/g$a;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public characters([CII)V
    .registers 7
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 50
    invoke-static {p1, p2, p3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 58
    :cond_e
    :goto_e
    return-void

    .line 55
    :cond_f
    iget-object v1, p0, Lcn/sharesdk/framework/utils/g$a;->b:Ljava/util/HashMap;

    if-eqz v1, :cond_e

    .line 56
    iget-object v1, p0, Lcn/sharesdk/framework/utils/g$a;->b:Ljava/util/HashMap;

    const-string v2, "value"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sharesdk/framework/utils/g$a;->b:Ljava/util/HashMap;

    .line 47
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcn/sharesdk/framework/utils/g$a;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_27

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    iget-object v1, p0, Lcn/sharesdk/framework/utils/g$a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iput-object v0, p0, Lcn/sharesdk/framework/utils/g$a;->b:Ljava/util/HashMap;

    .line 39
    :goto_10
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 40
    const/4 v0, 0x0

    :goto_15
    if-ge v0, v1, :cond_36

    .line 41
    iget-object v2, p0, Lcn/sharesdk/framework/utils/g$a;->b:Ljava/util/HashMap;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 36
    :cond_27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/utils/g$a;->b:Ljava/util/HashMap;

    .line 37
    iget-object v0, p0, Lcn/sharesdk/framework/utils/g$a;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcn/sharesdk/framework/utils/g$a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 43
    :cond_36
    return-void
.end method
