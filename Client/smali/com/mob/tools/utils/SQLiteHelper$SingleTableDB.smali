.class public Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
.super Ljava/lang/Object;
.source "SQLiteHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/SQLiteHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleTableDB"
.end annotation


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private fieldLimits:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private fieldTypes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private primary:Ljava/lang/String;

.field private primaryAutoincrement:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->path:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->name:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->fieldTypes:Ljava/util/LinkedHashMap;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->fieldLimits:Ljava/util/HashMap;

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/mob/tools/utils/SQLiteHelper$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/mob/tools/utils/SQLiteHelper$1;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V
    .registers 1
    .param p0, "x0"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->open()V

    return-void
.end method

.method static synthetic access$200(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V
    .registers 1
    .param p0, "x0"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->close()V

    return-void
.end method

.method private close()V
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_c

    .line 155
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 158
    :cond_c
    return-void
.end method

.method private getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->name:Ljava/lang/String;

    return-object v0
.end method

.method private open()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    const/4 v12, 0x0

    .line 117
    iget-object v11, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v11, :cond_dd

    .line 118
    new-instance v4, Ljava/io/File;

    iget-object v11, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->path:Ljava/lang/String;

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v4, "file":Ljava/io/File;
    invoke-static {v4, v14}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    iput-object v11, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 121
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "select count(*) from sqlite_master where type =\'table\' and name =\'"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->name:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "\' "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 122
    .local v9, "sql":Ljava/lang/String;
    iget-object v11, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11, v9, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 123
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x1

    .line 124
    .local v8, "shouldCreate":Z
    if-eqz v1, :cond_47

    .line 125
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_44

    .line 126
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-lez v11, :cond_44

    .line 127
    const/4 v8, 0x0

    .line 130
    :cond_44
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 133
    :cond_47
    if-eqz v8, :cond_dd

    .line 134
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v11, "create table  "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->name:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v11, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->fieldTypes:Ljava/util/LinkedHashMap;

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_69
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 137
    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 138
    .local v3, "field":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 139
    .local v10, "type":Ljava/lang/String;
    iget-object v11, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->fieldLimits:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 140
    .local v5, "notNull":Z
    iget-object v11, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->primary:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 141
    .local v6, "primary":Z
    if-eqz v6, :cond_ba

    iget-boolean v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->primaryAutoincrement:Z

    .line 142
    .local v0, "autoincrement":Z
    :goto_97
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    if-eqz v5, :cond_bc

    const-string v11, " not null"

    :goto_a8
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    if-eqz v6, :cond_bf

    const-string v11, " primary key"

    :goto_af
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    if-eqz v0, :cond_c2

    const-string v11, " autoincrement,"

    :goto_b6
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_69

    .end local v0    # "autoincrement":Z
    :cond_ba
    move v0, v12

    .line 141
    goto :goto_97

    .line 143
    .restart local v0    # "autoincrement":Z
    :cond_bc
    const-string v11, ""

    goto :goto_a8

    .line 144
    :cond_bf
    const-string v11, ""

    goto :goto_af

    .line 145
    :cond_c2
    const-string v11, ","

    goto :goto_b6

    .line 147
    .end local v0    # "autoincrement":Z
    .end local v2    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "field":Ljava/lang/String;
    .end local v5    # "notNull":Z
    .end local v6    # "primary":Z
    .end local v10    # "type":Ljava/lang/String;
    :cond_c5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    const-string v13, ");"

    invoke-virtual {v7, v11, v12, v13}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v11, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "shouldCreate":Z
    .end local v9    # "sql":Ljava/lang/String;
    :cond_dd
    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldType"    # Ljava/lang/String;
    .param p3, "notNull"    # Z

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_12

    .line 106
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->fieldTypes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->fieldLimits:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_12
    return-void
.end method

.method public setPrimary(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "autoincrement"    # Z

    .prologue
    .line 112
    iput-object p1, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->primary:Ljava/lang/String;

    .line 113
    iput-boolean p2, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->primaryAutoincrement:Z

    .line 114
    return-void
.end method
