.class public Lcom/tencent/wetest/Robot;
.super Ljava/lang/Thread;


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field public static c:Z


# instance fields
.field public d:[B

.field e:Ljava/nio/ByteBuffer;

.field f:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private g:Ljava/net/Socket;

.field private h:Ljava/io/InputStream;

.field private i:Ljava/io/OutputStream;

.field private j:I

.field private k:Lcom/tencent/wetest/c;

.field private final l:I

.field private m:Lcom/tencent/wetest/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x5

    sput v0, Lcom/tencent/wetest/Robot;->a:I

    const-string v0, "wetest"

    sput-object v0, Lcom/tencent/wetest/Robot;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/wetest/Robot;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/16 v2, 0x1000

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v1, p0, Lcom/tencent/wetest/Robot;->g:Ljava/net/Socket;

    iput-object v1, p0, Lcom/tencent/wetest/Robot;->h:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/tencent/wetest/Robot;->i:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wetest/Robot;->j:I

    new-instance v0, Lcom/tencent/wetest/c;

    invoke-direct {v0, p0}, Lcom/tencent/wetest/c;-><init>(Lcom/tencent/wetest/Robot;)V

    iput-object v0, p0, Lcom/tencent/wetest/Robot;->k:Lcom/tencent/wetest/c;

    iput v2, p0, Lcom/tencent/wetest/Robot;->l:I

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/tencent/wetest/Robot;->d:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wetest/Robot;->e:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wetest/Robot;->f:Ljavax/xml/parsers/DocumentBuilderFactory;

    iput-object v1, p0, Lcom/tencent/wetest/Robot;->m:Lcom/tencent/wetest/g;

    return-void
.end method

.method public static startAutomation()V
    .registers 3

    :try_start_0
    sget-boolean v0, Lcom/tencent/wetest/Robot;->c:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/tencent/wetest/Robot;->b:Ljava/lang/String;

    const-string v1, "robot already running."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    new-instance v0, Lcom/tencent/wetest/Robot;

    invoke-direct {v0}, Lcom/tencent/wetest/Robot;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/wetest/Robot;->start()V

    sget-object v0, Lcom/tencent/wetest/Robot;->b:Ljava/lang/String;

    const-string v1, "robot started."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/wetest/Robot;->c:Z
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_b

    :catch_1f
    move-exception v0

    sget-object v1, Lcom/tencent/wetest/Robot;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method


# virtual methods
.method public a(Lcom/tencent/wetest/d;)Landroid/view/View;
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/wetest/Robot;->m:Lcom/tencent/wetest/g;

    if-nez v0, :cond_c

    new-instance v0, Lcom/tencent/wetest/g;

    invoke-direct {v0}, Lcom/tencent/wetest/g;-><init>()V

    iput-object v0, p0, Lcom/tencent/wetest/Robot;->m:Lcom/tencent/wetest/g;

    :cond_c
    iget-object v0, p0, Lcom/tencent/wetest/Robot;->m:Lcom/tencent/wetest/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/wetest/g;->a(Z)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1e

    sget-object v0, Lcom/tencent/wetest/Robot;->b:Ljava/lang/String;

    const-string v1, "views = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :cond_1d
    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_24
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2c

    move-object v0, v2

    goto :goto_1d

    :cond_2c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_24

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {p0, v0, p1}, Lcom/tencent/wetest/Robot;->b(Landroid/view/View;Lcom/tencent/wetest/d;)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {p0, v0, p1}, Lcom/tencent/wetest/Robot;->a(Landroid/view/View;Lcom/tencent/wetest/d;)Z

    move-result v4

    if-eqz v4, :cond_24

    iget v4, p1, Lcom/tencent/wetest/d;->c:I

    if-eq v1, v4, :cond_1d

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24
.end method

.method public a(ILjava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v2, "UTF-8"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, ""

    const-string v3, "commandresult"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "result"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "result"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "sequence"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/tencent/wetest/Robot;->k:Lcom/tencent/wetest/c;

    iget-object v2, v2, Lcom/tencent/wetest/c;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "sequence"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "description"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p2, :cond_54

    invoke-interface {v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_54
    const-string v2, ""

    const-string v3, "description"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "commandresult"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/wetest/Robot;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/tencent/wetest/Robot;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/tencent/wetest/Robot;->e:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/tencent/wetest/Robot;->j:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/tencent/wetest/Robot;->e:Ljava/nio/ByteBuffer;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length v2, v0

    if-lez v2, :cond_8c

    iget-object v2, p0, Lcom/tencent/wetest/Robot;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_8c
    iget-object v0, p0, Lcom/tencent/wetest/Robot;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v2, p0, Lcom/tencent/wetest/Robot;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendResult: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/wetest/Robot;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/wetest/Robot;->i:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/tencent/wetest/Robot;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    sget v0, Lcom/tencent/wetest/Robot;->a:I

    if-gtz v0, :cond_9

    sget-object v0, Lcom/tencent/wetest/Robot;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "loglevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :try_start_8
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/tencent/wetest/Robot;->a:I
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_e} :catch_2c

    :goto_e
    return-void

    :cond_f
    sget-object v0, Lcom/tencent/wetest/Robot;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :catch_2c
    move-exception v0

    goto :goto_e
.end method

.method protected a(Lorg/w3c/dom/Element;)V
    .registers 8

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-lt v1, v3, :cond_d

    return-void

    :cond_d
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v4, v0, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_31

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "containtext"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    iget-object v4, p0, Lcom/tencent/wetest/Robot;->k:Lcom/tencent/wetest/c;

    iget-object v4, v4, Lcom/tencent/wetest/c;->a:Lcom/tencent/wetest/d;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/wetest/d;->a:Ljava/lang/String;

    :cond_31
    :goto_31
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_35
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "index"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    :try_start_41
    iget-object v4, p0, Lcom/tencent/wetest/Robot;->k:Lcom/tencent/wetest/c;

    iget-object v4, v4, Lcom/tencent/wetest/c;->a:Lcom/tencent/wetest/d;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/tencent/wetest/d;->c:I
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_53} :catch_54

    goto :goto_31

    :catch_54
    move-exception v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error index: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wetest/Robot;->a(Ljava/lang/String;)V

    goto :goto_31

    :cond_6c
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "classtype"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    iget-object v4, p0, Lcom/tencent/wetest/Robot;->k:Lcom/tencent/wetest/c;

    iget-object v4, v4, Lcom/tencent/wetest/c;->a:Lcom/tencent/wetest/d;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/wetest/d;->b:Ljava/lang/String;

    goto :goto_31

    :cond_87
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unknown find expr node: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wetest/Robot;->a(Ljava/lang/String;)V

    goto :goto_31
.end method

.method public a()Z
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/qqlogin.cfg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3c

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_22
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2d

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    const/4 v0, 0x1

    :goto_2c
    return v0

    :cond_2d
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/tencent/wetest/Robot;->b(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    goto :goto_22

    :catch_36
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3a
    const/4 v0, 0x0

    goto :goto_2c

    :cond_3c
    :try_start_3c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "can\'t find /data/local/tmp/qqlogin.cfg"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_43} :catch_36

    goto :goto_3a
.end method

.method public a(Landroid/view/View;Lcom/tencent/wetest/d;)Z
    .registers 7

    const/4 v0, 0x1

    iget-object v1, p2, Lcom/tencent/wetest/d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/tencent/wetest/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_20
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_b0

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_46

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TEXT: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/wetest/Robot;->a(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/tencent/wetest/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_46
    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_6a

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Hint:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/wetest/Robot;->a(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/tencent/wetest/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_6a
    iget-object v1, p2, Lcom/tencent/wetest/d;->a:Ljava/lang/String;

    const-string v2, "\u5bc6\u7801"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7e

    iget-object v1, p2, Lcom/tencent/wetest/d;->a:Ljava/lang/String;

    const-string v2, "password"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    :cond_7e
    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InputType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/wetest/Robot;->a(Ljava/lang/String;)V

    and-int/lit16 v1, v1, 0xf0

    if-nez v1, :cond_9

    :cond_98
    instance-of v1, p1, Landroid/widget/EditText;

    if-eqz v1, :cond_b0

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_b0

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/tencent/wetest/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_b0
    const/4 v0, 0x0

    goto/16 :goto_9
.end method

.method public a(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v0, 0x1

    :cond_c
    :goto_c
    return v0

    :cond_d
    const-string v2, "View"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, v1, p2}, Lcom/tencent/wetest/Robot;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    goto :goto_c
.end method

.method protected b()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wetest/Robot;->g:Ljava/net/Socket;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tencent/wetest/Robot;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wetest/Robot;->g:Ljava/net/Socket;

    :cond_c
    iget-object v0, p0, Lcom/tencent/wetest/Robot;->h:Ljava/io/InputStream;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/tencent/wetest/Robot;->h:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wetest/Robot;->h:Ljava/io/InputStream;

    :cond_18
    iget-object v0, p0, Lcom/tencent/wetest/Robot;->i:Ljava/io/OutputStream;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/tencent/wetest/Robot;->i:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wetest/Robot;->i:Ljava/io/OutputStream;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_24} :catch_25

    :cond_24
    :goto_24
    return-void

    :catch_25
    move-exception v0

    goto :goto_24
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    const-string v0, ""

    :cond_25
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/tencent/wetest/Robot;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public b(Landroid/view/View;Lcom/tencent/wetest/d;)Z
    .registers 5

    iget-object v0, p2, Lcom/tencent/wetest/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p2, Lcom/tencent/wetest/d;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/wetest/Robot;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    goto :goto_9
.end method

.method protected c()V
    .registers 4

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/tencent/wetest/Robot;->g:Ljava/net/Socket;

    new-instance v0, Ljava/net/InetSocketAddress;

    const-string v1, "127.0.0.1"

    const/16 v2, 0x67c0

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tencent/wetest/Robot;->g:Ljava/net/Socket;

    invoke-virtual {v1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    iget-object v0, p0, Lcom/tencent/wetest/Robot;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wetest/Robot;->h:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/tencent/wetest/Robot;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wetest/Robot;->i:Ljava/io/OutputStream;

    return-void
.end method

.method public d()I
    .registers 6

    new-instance v2, Ljava/io/DataInputStream;

    iget-object v0, p0, Lcom/tencent/wetest/Robot;->h:Ljava/io/InputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    if-gtz v3, :cond_22

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recv 4 bytes fail, len:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    add-int/lit8 v1, v3, -0x4

    const/4 v0, 0x0

    :goto_25
    if-gtz v1, :cond_2a

    add-int/lit8 v0, v3, -0x4

    return v0

    :cond_2a
    iget-object v4, p0, Lcom/tencent/wetest/Robot;->d:[B

    invoke-virtual {v2, v4, v0, v1}, Ljava/io/DataInputStream;->read([BII)I

    move-result v4

    if-gtz v4, :cond_4d

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "recv "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    sub-int/2addr v1, v4

    add-int/2addr v0, v4

    goto :goto_25
.end method

.method protected e()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/wetest/Robot;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/tencent/wetest/Robot;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/tencent/wetest/Robot;->e:Ljava/nio/ByteBuffer;

    const/16 v1, 0xa9

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/tencent/wetest/Robot;->e:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/tencent/wetest/Robot;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/tencent/wetest/Robot;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/tencent/wetest/Robot;->e:Ljava/nio/ByteBuffer;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/tencent/wetest/Robot;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/wetest/Robot;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/tencent/wetest/Robot;->i:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/tencent/wetest/Robot;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    const-string v0, "register to wetest..."

    invoke-virtual {p0, v0}, Lcom/tencent/wetest/Robot;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/wetest/Robot;->d()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/wetest/Robot;->d:[B

    invoke-static {v1, v3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const/16 v2, 0xaa

    if-eq v1, v2, :cond_77

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "register to wetest but get unexpected response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    if-eqz v0, :cond_8e

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "register to wetest but get error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8e
    const-string v0, "register to wetest ok!"

    invoke-virtual {p0, v0}, Lcom/tencent/wetest/Robot;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected f()V
    .registers 8

    const/16 v6, 0x8

    const/4 v0, 0x0

    const-string v1, "parseCommand"

    invoke-virtual {p0, v1}, Lcom/tencent/wetest/Robot;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/wetest/Robot;->d()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/wetest/Robot;->d:[B

    invoke-static {v2, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/tencent/wetest/Robot;->j:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/16 v2, 0x800

    if-le v1, v2, :cond_35

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "xml is too long: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/tencent/wetest/Robot;->d:[B

    invoke-direct {v2, v3, v6, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "parseCommand:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/wetest/Robot;->d:[B

    invoke-direct {v4, v5, v6, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/wetest/Robot;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/wetest/Robot;->f:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    iget-object v1, p0, Lcom/tencent/wetest/Robot;->k:Lcom/tencent/wetest/c;

    invoke-virtual {v1}, Lcom/tencent/wetest/c;->a()V

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    move v1, v0

    :goto_71
    if-lt v1, v3, :cond_74

    return-void

    :cond_74
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v4, v0, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_96

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "action"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    iget-object v4, p0, Lcom/tencent/wetest/Robot;->k:Lcom/tencent/wetest/c;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/wetest/c;->b:Ljava/lang/String;

    :cond_96
    :goto_96
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_71

    :cond_9a
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "findexpr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_aa

    invoke-virtual {p0, v0}, Lcom/tencent/wetest/Robot;->a(Lorg/w3c/dom/Element;)V

    goto :goto_96

    :cond_aa
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sequence"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c3

    iget-object v4, p0, Lcom/tencent/wetest/Robot;->k:Lcom/tencent/wetest/c;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/wetest/c;->c:Ljava/lang/String;

    goto :goto_96

    :cond_c3
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "param"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d4

    iget-object v4, p0, Lcom/tencent/wetest/Robot;->k:Lcom/tencent/wetest/c;

    iput-object v0, v4, Lcom/tencent/wetest/c;->d:Lorg/w3c/dom/Element;

    goto :goto_96

    :cond_d4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unknown node: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wetest/Robot;->a(Ljava/lang/String;)V

    goto :goto_96
.end method

.method public g()V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/wetest/Robot;->k:Lcom/tencent/wetest/c;

    invoke-virtual {v0}, Lcom/tencent/wetest/c;->b()Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/tencent/wetest/Robot;->k:Lcom/tencent/wetest/c;

    iget-object v0, v0, Lcom/tencent/wetest/c;->a:Lcom/tencent/wetest/d;

    invoke-virtual {p0, v0}, Lcom/tencent/wetest/Robot;->a(Lcom/tencent/wetest/d;)Landroid/view/View;

    move-result-object v0

    const-string v3, "touch"

    iget-object v4, p0, Lcom/tencent/wetest/Robot;->k:Lcom/tencent/wetest/c;

    iget-object v4, v4, Lcom/tencent/wetest/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    if-nez v0, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "can\'t found: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/wetest/Robot;->k:Lcom/tencent/wetest/c;

    iget-object v2, v2, Lcom/tencent/wetest/c;->a:Lcom/tencent/wetest/d;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/tencent/wetest/Robot;->a(ILjava/lang/String;)V

    goto :goto_a

    :cond_38
    new-instance v1, Lcom/tencent/wetest/a;

    invoke-direct {v1, p0, v0}, Lcom/tencent/wetest/a;-><init>(Lcom/tencent/wetest/Robot;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const-string v0, ""

    invoke-virtual {p0, v2, v0}, Lcom/tencent/wetest/Robot;->a(ILjava/lang/String;)V

    goto :goto_a

    :cond_46
    const-string v3, "input"

    iget-object v4, p0, Lcom/tencent/wetest/Robot;->k:Lcom/tencent/wetest/c;

    iget-object v4, v4, Lcom/tencent/wetest/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    if-nez v0, :cond_6b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "can\'t found: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/wetest/Robot;->k:Lcom/tencent/wetest/c;

    iget-object v2, v2, Lcom/tencent/wetest/c;->a:Lcom/tencent/wetest/d;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/tencent/wetest/Robot;->a(ILjava/lang/String;)V

    goto :goto_a

    :cond_6b
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/tencent/wetest/Robot;->k:Lcom/tencent/wetest/c;

    iget-object v1, v1, Lcom/tencent/wetest/c;->d:Lorg/w3c/dom/Element;

    const-string v3, "text"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Landroid/widget/EditText;

    new-instance v3, Lcom/tencent/wetest/b;

    invoke-direct {v3, p0, v0, v1}, Lcom/tencent/wetest/b;-><init>(Lcom/tencent/wetest/Robot;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    const-string v0, ""

    invoke-virtual {p0, v2, v0}, Lcom/tencent/wetest/Robot;->a(ILjava/lang/String;)V

    goto :goto_a

    :cond_89
    const/4 v0, 0x3

    const-string v1, "not inputable."

    invoke-virtual {p0, v0, v1}, Lcom/tencent/wetest/Robot;->a(ILjava/lang/String;)V

    goto/16 :goto_a

    :cond_91
    const-string v3, "exist"

    iget-object v4, p0, Lcom/tencent/wetest/Robot;->k:Lcom/tencent/wetest/c;

    iget-object v4, v4, Lcom/tencent/wetest/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    if-nez v0, :cond_a7

    move v0, v1

    :goto_a0
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/tencent/wetest/Robot;->a(ILjava/lang/String;)V

    goto/16 :goto_a

    :cond_a7
    move v0, v2

    goto :goto_a0

    :cond_a9
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/wetest/Robot;->k:Lcom/tencent/wetest/c;

    iget-object v2, v2, Lcom/tencent/wetest/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/wetest/Robot;->a(ILjava/lang/String;)V

    goto/16 :goto_a
.end method

.method public h()V
    .registers 1

    :goto_0
    invoke-virtual {p0}, Lcom/tencent/wetest/Robot;->f()V

    invoke-virtual {p0}, Lcom/tencent/wetest/Robot;->g()V

    goto :goto_0
.end method

.method public run()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/wetest/Robot;->a()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_17

    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/tencent/wetest/Robot;->c()V

    invoke-virtual {p0}, Lcom/tencent/wetest/Robot;->e()V

    invoke-virtual {p0}, Lcom/tencent/wetest/Robot;->h()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_22

    :goto_c
    invoke-virtual {p0}, Lcom/tencent/wetest/Robot;->b()V

    const-wide/16 v0, 0x7d0

    :try_start_11
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_3

    :catch_15
    move-exception v0

    goto :goto_3

    :catch_17
    move-exception v0

    sget-object v1, Lcom/tencent/wetest/Robot;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_22
    move-exception v0

    goto :goto_c
.end method
