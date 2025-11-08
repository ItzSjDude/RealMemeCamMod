.class public Lorg/andresoviedo/android_3d_model_engine/b/e;
.super Ljava/lang/Object;
.source "Element.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/nio/IntBuffer;

.field private d:Ljava/lang/String;

.field private e:Lorg/andresoviedo/android_3d_model_engine/b/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/IntBuffer;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/e;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/e;->b:Ljava/util/List;

    .line 72
    iput-object p2, p0, Lorg/andresoviedo/android_3d_model_engine/b/e;->c:Ljava/nio/IntBuffer;

    .line 73
    iput-object p3, p0, Lorg/andresoviedo/android_3d_model_engine/b/e;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/nio/IntBuffer;
    .locals 3

    .line 86
    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/e;->c:Ljava/nio/IntBuffer;

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lorg/andresoviedo/a/b/a;->a(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/e;->c:Ljava/nio/IntBuffer;

    .line 88
    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/e;->c:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 89
    :goto_0
    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/e;->c:Ljava/nio/IntBuffer;

    iget-object v2, p0, Lorg/andresoviedo/android_3d_model_engine/b/e;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/e;->c:Ljava/nio/IntBuffer;

    return-object p0
.end method

.method public a(Lorg/andresoviedo/android_3d_model_engine/b/f;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/e;->e:Lorg/andresoviedo/android_3d_model_engine/b/f;

    return-void
.end method

.method public b()Lorg/andresoviedo/android_3d_model_engine/b/f;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/e;->e:Lorg/andresoviedo/android_3d_model_engine/b/f;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", indices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/e;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", indexBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/e;->c:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", material="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/e;->e:Lorg/andresoviedo/android_3d_model_engine/b/f;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
