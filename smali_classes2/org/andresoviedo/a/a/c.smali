.class public Lorg/andresoviedo/a/a/c;
.super Ljava/lang/Object;
.source "GL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andresoviedo/a/a/c$b;,
        Lorg/andresoviedo/a/a/c$a;
    }
.end annotation


# static fields
.field public static a:Lorg/andresoviedo/a/a/c;


# instance fields
.field b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lorg/andresoviedo/a/a/c;

    invoke-direct {v0}, Lorg/andresoviedo/a/a/c;-><init>()V

    sput-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/andresoviedo/a/a/c;->b:Ljava/util/Set;

    .line 1114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/andresoviedo/a/a/c;->c:Ljava/util/Set;

    .line 1157
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/andresoviedo/a/a/c;->d:Ljava/util/Set;

    .line 1217
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/andresoviedo/a/a/c;->e:Ljava/util/Set;

    .line 3433
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/andresoviedo/a/a/c;->f:Ljava/util/Map;

    return-void
.end method

.method public static m(I)Z
    .locals 5

    .line 2115
    new-instance v0, Lorg/andresoviedo/a/a/c$a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "glIsProgram"

    invoke-direct {v0, v2, v1}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2116
    :try_start_0
    invoke-static {p0}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "GLES20"

    .line 2120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid program"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2123
    :cond_0
    invoke-virtual {v0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return v1

    :catch_0
    move-exception p0

    .line 2115
    :try_start_1
    invoke-virtual {v0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 741
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "glCreateProgram"

    invoke-direct {p0, v2, v1}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 742
    :try_start_0
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 743
    :cond_0
    invoke-static {v0}, Lcom/b/a/n;->a(Z)V

    .line 744
    sget-object v0, Lorg/andresoviedo/a/a/c$b;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lorg/andresoviedo/a/a/c$b;

    invoke-direct {v3, v1}, Lorg/andresoviedo/a/a/c$b;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return v1

    :catch_0
    move-exception v0

    .line 741
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
.end method

.method public a(ILjava/lang/String;)I
    .locals 3

    .line 1476
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "glGetAttribLocation"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1477
    :try_start_0
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1481
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return p1

    :catch_0
    move-exception p1

    .line 1476
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public a(FFFF)V
    .locals 3

    .line 576
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "glClearColor"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 576
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public a(I)V
    .locals 3

    .line 358
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "glActiveTexture"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    :try_start_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 358
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public a(II)V
    .locals 3

    .line 370
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "glAttachShader"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    :try_start_0
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 373
    invoke-static {p1}, Lorg/andresoviedo/a/a/c$b;->a(I)Lorg/andresoviedo/a/a/c$b;

    move-result-object p1

    iget-object p1, p1, Lorg/andresoviedo/a/a/c$b;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 370
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public a(III)V
    .locals 3

    .line 983
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "glDrawArrays"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 984
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 983
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public a(IIII)V
    .locals 3

    .line 2276
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "glScissor"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2277
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glScissor(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2283
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 2276
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public a(IIILjava/nio/Buffer;)V
    .locals 3

    .line 1016
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const-string v1, "glDrawElements"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1017
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 1016
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public a(IIIZILjava/nio/Buffer;)V
    .locals 3

    .line 3306
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const-string v1, "glVertexAttribPointer"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3307
    :try_start_0
    invoke-static/range {p1 .. p6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3315
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 3306
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public a(IILjava/lang/String;)V
    .locals 3

    .line 383
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "glBindAttribLocation"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 386
    invoke-static {p1}, Lorg/andresoviedo/a/a/c$b;->a(I)Lorg/andresoviedo/a/a/c$b;

    move-result-object p1

    iget-object p1, p1, Lorg/andresoviedo/a/a/c$b;->e:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 383
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public a(IIZ[FI)V
    .locals 3

    .line 3039
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "glUniformMatrix4fv"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3040
    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3047
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 3039
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public a(II[FI)V
    .locals 3

    .line 2783
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "glUniform3fv"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2784
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2790
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 2783
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public a(II[II)V
    .locals 3

    .line 1652
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "glGetProgramiv"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1653
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1659
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 1652
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public a(I[II)V
    .locals 3

    .line 779
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "glDeleteBuffers"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 779
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public b()I
    .locals 2

    .line 1547
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "glGetError"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1548
    :try_start_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1550
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return v0

    :catch_0
    move-exception v0

    .line 1547
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
.end method

.method public b(ILjava/lang/String;)I
    .locals 3

    .line 1993
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "glGetUniformLocation"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1994
    :try_start_0
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1998
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return p1

    :catch_0
    move-exception p1

    .line 1993
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public b(I)V
    .locals 3

    .line 562
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "glClear"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    :try_start_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 562
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public b(II)V
    .locals 3

    .line 434
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "glBindTexture"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    :try_start_0
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 434
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public b(III)V
    .locals 3

    .line 2507
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "glTexParameteri"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2508
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2513
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 2507
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public b(IIII)V
    .locals 3

    .line 3325
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "glViewport"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3326
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3332
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 3325
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public b(II[FI)V
    .locals 3

    .line 2883
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "glUniform4fv"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2884
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2890
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 2883
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public b(II[II)V
    .locals 3

    .line 1727
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "glGetShaderiv"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1728
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1734
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 1727
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public b(I[II)V
    .locals 3

    .line 807
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "glDeleteFramebuffers"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 808
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 807
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public c()V
    .locals 2

    .line 3335
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sput-wide v0, Lorg/andresoviedo/a/a/c$a;->a:J

    const-string p0, "GLES20"

    const-string v0, "onSurfaceCreated"

    .line 3336
    invoke-static {p0, v0}, Lcom/b/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(I)V
    .locals 3

    .line 629
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "glCompileShader"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 630
    :try_start_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 629
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public c(II)V
    .locals 3

    .line 488
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "glBlendFunc"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    :try_start_0
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBlendFunc(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 488
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public c(ILjava/lang/String;)V
    .locals 4

    .line 2331
    new-instance v0, Lorg/andresoviedo/a/a/c$a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "glShaderSource"

    invoke-direct {v0, v2, v1}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2332
    :try_start_0
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 2336
    iget-object p0, p0, Lorg/andresoviedo/a/a/c;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2337
    invoke-virtual {v0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p0

    .line 2331
    :try_start_1
    invoke-virtual {v0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public c(I[II)V
    .locals 3

    .line 885
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "glDeleteTextures"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 886
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 885
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public d(I)I
    .locals 5

    .line 754
    new-instance v0, Lorg/andresoviedo/a/a/c$a;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "glCreateShader"

    invoke-direct {v0, v3, v2}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 755
    :try_start_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    .line 756
    :goto_0
    invoke-static {v1}, Lcom/b/a/n;->a(Z)V

    .line 757
    iget-object p0, p0, Lorg/andresoviedo/a/a/c;->b:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    invoke-virtual {v0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return p1

    :catch_0
    move-exception p0

    .line 754
    :try_start_1
    invoke-virtual {v0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public d()V
    .locals 6

    .line 3391
    iget-object v0, p0, Lorg/andresoviedo/a/a/c;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 3392
    iget-object v0, p0, Lorg/andresoviedo/a/a/c;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 3394
    iget-object v2, p0, Lorg/andresoviedo/a/a/c;->e:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    add-int/lit8 v5, v3, 0x1

    .line 3395
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v3

    move v3, v5

    goto :goto_0

    .line 3397
    :cond_0
    iget-object v2, p0, Lorg/andresoviedo/a/a/c;->e:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3398
    invoke-virtual {p0, v3, v0, v1}, Lorg/andresoviedo/a/a/c;->c(I[II)V

    .line 3400
    :cond_1
    iget-object v0, p0, Lorg/andresoviedo/a/a/c;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 3401
    iget-object v0, p0, Lorg/andresoviedo/a/a/c;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 3403
    iget-object v2, p0, Lorg/andresoviedo/a/a/c;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    add-int/lit8 v5, v3, 0x1

    .line 3404
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v3

    move v3, v5

    goto :goto_1

    .line 3406
    :cond_2
    iget-object v2, p0, Lorg/andresoviedo/a/a/c;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3407
    invoke-virtual {p0, v3, v0, v1}, Lorg/andresoviedo/a/a/c;->a(I[II)V

    .line 3409
    :cond_3
    iget-object v0, p0, Lorg/andresoviedo/a/a/c;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 3410
    iget-object v0, p0, Lorg/andresoviedo/a/a/c;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 3412
    iget-object v2, p0, Lorg/andresoviedo/a/a/c;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    add-int/lit8 v5, v3, 0x1

    .line 3413
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v3

    move v3, v5

    goto :goto_2

    .line 3415
    :cond_4
    iget-object v2, p0, Lorg/andresoviedo/a/a/c;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3416
    invoke-virtual {p0, v3, v0, v1}, Lorg/andresoviedo/a/a/c;->b(I[II)V

    .line 3418
    :cond_5
    iget-object v0, p0, Lorg/andresoviedo/a/a/c;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 3419
    iget-object v0, p0, Lorg/andresoviedo/a/a/c;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3420
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/andresoviedo/a/a/c;->f(I)V

    goto :goto_3

    .line 3422
    :cond_6
    iget-object v0, p0, Lorg/andresoviedo/a/a/c;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3424
    :cond_7
    sget-object v0, Lorg/andresoviedo/a/a/c$b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 3425
    sget-object v0, Lorg/andresoviedo/a/a/c$b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3426
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/andresoviedo/a/a/c;->e(I)V

    goto :goto_4

    .line 3428
    :cond_8
    sget-object p0, Lorg/andresoviedo/a/a/c$b;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_9
    return-void
.end method

.method public d(II)V
    .locals 3

    .line 2625
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "glUniform1i"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2626
    :try_start_0
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2630
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 2625
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public d(I[II)V
    .locals 5

    .line 1223
    new-instance v0, Lorg/andresoviedo/a/a/c$a;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "glGenTextures"

    invoke-direct {v0, v2, v1}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1224
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :goto_0
    if-ge v3, p1, :cond_0

    .line 1230
    iget-object v1, p0, Lorg/andresoviedo/a/a/c;->e:Ljava/util/Set;

    add-int v2, v3, p3

    aget v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1232
    :cond_0
    invoke-virtual {v0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p0

    .line 1223
    :try_start_1
    invoke-virtual {v0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public e(I)V
    .locals 3

    .line 833
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "glDeleteProgram"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 834
    :try_start_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 833
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public f(I)V
    .locals 3

    .line 872
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "glDeleteShader"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 873
    :try_start_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 872
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public g(I)V
    .locals 3

    .line 959
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "glDisable"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 960
    :try_start_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 959
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public h(I)V
    .locals 3

    .line 970
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "glDisableVertexAttribArray"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 971
    :try_start_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 970
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public i(I)V
    .locals 3

    .line 1030
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "glEnable"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1031
    :try_start_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 1030
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public j(I)V
    .locals 3

    .line 1041
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "glEnableVertexAttribArray"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1042
    :try_start_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 1041
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public k(I)Ljava/lang/String;
    .locals 3

    .line 1682
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "glGetProgramInfoLog"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1683
    :try_start_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1686
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-object p1

    :catch_0
    move-exception p1

    .line 1682
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public l(I)Ljava/lang/String;
    .locals 3

    .line 1757
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "glGetShaderInfoLog"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1758
    :try_start_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1761
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-object p1

    :catch_0
    move-exception p1

    .line 1757
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public n(I)V
    .locals 3

    .line 2174
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "glLinkProgram"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2175
    :try_start_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2178
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 2174
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public o(I)V
    .locals 3

    .line 3071
    new-instance p0, Lorg/andresoviedo/a/a/c$a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "glUseProgram"

    invoke-direct {p0, v1, v0}, Lorg/andresoviedo/a/a/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3072
    :try_start_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 3075
    invoke-static {p1}, Lorg/andresoviedo/a/a/c$b;->b(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3076
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 3071
    :try_start_1
    invoke-virtual {p0}, Lorg/andresoviedo/a/a/c$a;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method
