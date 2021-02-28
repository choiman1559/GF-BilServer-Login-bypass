.class public Lorg/apache/commons/lang3/builder/StandardToStringStyle;
.super Lorg/apache/commons/lang3/builder/ToStringStyle;
.source "StandardToStringStyle.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public getArrayEnd()Ljava/lang/String;
    .registers 2

    .prologue
    .line 215
    invoke-super {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getArrayEnd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArraySeparator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    invoke-super {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getArraySeparator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArrayStart()Ljava/lang/String;
    .registers 2

    .prologue
    .line 190
    invoke-super {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getArrayStart()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentEnd()Ljava/lang/String;
    .registers 2

    .prologue
    .line 290
    invoke-super {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getContentEnd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentStart()Ljava/lang/String;
    .registers 2

    .prologue
    .line 265
    invoke-super {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getContentStart()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldNameValueSeparator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 315
    invoke-super {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getFieldNameValueSeparator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldSeparator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 340
    invoke-super {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getFieldSeparator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNullText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 417
    invoke-super {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSizeEndText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 476
    invoke-super {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getSizeEndText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSizeStartText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 445
    invoke-super {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getSizeStartText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryObjectEndText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 538
    invoke-super {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getSummaryObjectEndText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryObjectStartText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 507
    invoke-super {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getSummaryObjectStartText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isArrayContentDetail()Z
    .registers 2

    .prologue
    .line 168
    invoke-super {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isArrayContentDetail()Z

    move-result v0

    return v0
.end method

.method public isDefaultFullDetail()Z
    .registers 2

    .prologue
    .line 145
    invoke-super {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isDefaultFullDetail()Z

    move-result v0

    return v0
.end method

.method public isFieldSeparatorAtEnd()Z
    .registers 2

    .prologue
    .line 393
    invoke-super {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFieldSeparatorAtEnd()Z

    move-result v0

    return v0
.end method

.method public isFieldSeparatorAtStart()Z
    .registers 2

    .prologue
    .line 367
    invoke-super {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFieldSeparatorAtStart()Z

    move-result v0

    return v0
.end method

.method public isUseClassName()Z
    .registers 2

    .prologue
    .line 55
    invoke-super {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isUseClassName()Z

    move-result v0

    return v0
.end method

.method public isUseFieldNames()Z
    .registers 2

    .prologue
    .line 122
    invoke-super {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isUseFieldNames()Z

    move-result v0

    return v0
.end method

.method public isUseIdentityHashCode()Z
    .registers 2

    .prologue
    .line 100
    invoke-super {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isUseIdentityHashCode()Z

    move-result v0

    return v0
.end method

.method public isUseShortClassName()Z
    .registers 2

    .prologue
    .line 78
    invoke-super {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isUseShortClassName()Z

    move-result v0

    return v0
.end method

.method public setArrayContentDetail(Z)V
    .registers 2
    .param p1, "arrayContentDetail"    # Z

    .prologue
    .line 178
    invoke-super {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setArrayContentDetail(Z)V

    .line 179
    return-void
.end method

.method public setArrayEnd(Ljava/lang/String;)V
    .registers 2
    .param p1, "arrayEnd"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-super {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setArrayEnd(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public setArraySeparator(Ljava/lang/String;)V
    .registers 2
    .param p1, "arraySeparator"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-super {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setArraySeparator(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public setArrayStart(Ljava/lang/String;)V
    .registers 2
    .param p1, "arrayStart"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-super {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setArrayStart(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public setContentEnd(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentEnd"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-super {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setContentEnd(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public setContentStart(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentStart"    # Ljava/lang/String;

    .prologue
    .line 278
    invoke-super {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setContentStart(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public setDefaultFullDetail(Z)V
    .registers 2
    .param p1, "defaultFullDetail"    # Z

    .prologue
    .line 156
    invoke-super {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setDefaultFullDetail(Z)V

    .line 157
    return-void
.end method

.method public setFieldNameValueSeparator(Ljava/lang/String;)V
    .registers 2
    .param p1, "fieldNameValueSeparator"    # Ljava/lang/String;

    .prologue
    .line 328
    invoke-super {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setFieldNameValueSeparator(Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public setFieldSeparator(Ljava/lang/String;)V
    .registers 2
    .param p1, "fieldSeparator"    # Ljava/lang/String;

    .prologue
    .line 353
    invoke-super {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setFieldSeparator(Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public setFieldSeparatorAtEnd(Z)V
    .registers 2
    .param p1, "fieldSeparatorAtEnd"    # Z

    .prologue
    .line 405
    invoke-super {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setFieldSeparatorAtEnd(Z)V

    .line 406
    return-void
.end method

.method public setFieldSeparatorAtStart(Z)V
    .registers 2
    .param p1, "fieldSeparatorAtStart"    # Z

    .prologue
    .line 379
    invoke-super {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setFieldSeparatorAtStart(Z)V

    .line 380
    return-void
.end method

.method public setNullText(Ljava/lang/String;)V
    .registers 2
    .param p1, "nullText"    # Ljava/lang/String;

    .prologue
    .line 430
    invoke-super {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setNullText(Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public setSizeEndText(Ljava/lang/String;)V
    .registers 2
    .param p1, "sizeEndText"    # Ljava/lang/String;

    .prologue
    .line 492
    invoke-super {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setSizeEndText(Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method public setSizeStartText(Ljava/lang/String;)V
    .registers 2
    .param p1, "sizeStartText"    # Ljava/lang/String;

    .prologue
    .line 461
    invoke-super {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setSizeStartText(Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public setSummaryObjectEndText(Ljava/lang/String;)V
    .registers 2
    .param p1, "summaryObjectEndText"    # Ljava/lang/String;

    .prologue
    .line 554
    invoke-super {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setSummaryObjectEndText(Ljava/lang/String;)V

    .line 555
    return-void
.end method

.method public setSummaryObjectStartText(Ljava/lang/String;)V
    .registers 2
    .param p1, "summaryObjectStartText"    # Ljava/lang/String;

    .prologue
    .line 523
    invoke-super {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setSummaryObjectStartText(Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method public setUseClassName(Z)V
    .registers 2
    .param p1, "useClassName"    # Z

    .prologue
    .line 65
    invoke-super {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setUseClassName(Z)V

    .line 66
    return-void
.end method

.method public setUseFieldNames(Z)V
    .registers 2
    .param p1, "useFieldNames"    # Z

    .prologue
    .line 132
    invoke-super {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setUseFieldNames(Z)V

    .line 133
    return-void
.end method

.method public setUseIdentityHashCode(Z)V
    .registers 2
    .param p1, "useIdentityHashCode"    # Z

    .prologue
    .line 110
    invoke-super {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setUseIdentityHashCode(Z)V

    .line 111
    return-void
.end method

.method public setUseShortClassName(Z)V
    .registers 2
    .param p1, "useShortClassName"    # Z

    .prologue
    .line 89
    invoke-super {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->setUseShortClassName(Z)V

    .line 90
    return-void
.end method