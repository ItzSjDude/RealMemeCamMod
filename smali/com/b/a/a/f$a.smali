.class Lcom/b/a/a/f$a;
.super Ljava/lang/Object;
.source "CameraAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:[F

.field e:F

.field f:F

.field g:F

.field h:F

.field final synthetic i:Lcom/b/a/a/f;


# direct methods
.method constructor <init>(Lcom/b/a/a/f;Lorg/andresoviedo/android_3d_model_engine/b/c;)V
    .locals 1

    .line 54
    iput-object p1, p0, Lcom/b/a/a/f$a;->i:Lcom/b/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iget p1, p2, Lorg/andresoviedo/android_3d_model_engine/b/c;->a:F

    iput p1, p0, Lcom/b/a/a/f$a;->a:F

    .line 56
    iget p1, p2, Lorg/andresoviedo/android_3d_model_engine/b/c;->b:F

    iput p1, p0, Lcom/b/a/a/f$a;->b:F

    .line 57
    iget p1, p2, Lorg/andresoviedo/android_3d_model_engine/b/c;->c:F

    iput p1, p0, Lcom/b/a/a/f$a;->c:F

    .line 58
    invoke-virtual {p2}, Lorg/andresoviedo/android_3d_model_engine/b/c;->a()[F

    move-result-object p1

    invoke-virtual {p2}, Lorg/andresoviedo/android_3d_model_engine/b/c;->a()[F

    move-result-object v0

    array-length v0, v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/a/f$a;->d:[F

    .line 59
    iget p1, p2, Lorg/andresoviedo/android_3d_model_engine/b/c;->j:F

    iput p1, p0, Lcom/b/a/a/f$a;->e:F

    .line 60
    iget p1, p2, Lorg/andresoviedo/android_3d_model_engine/b/c;->m:F

    iput p1, p0, Lcom/b/a/a/f$a;->f:F

    .line 61
    iget p1, p2, Lorg/andresoviedo/android_3d_model_engine/b/c;->k:F

    iput p1, p0, Lcom/b/a/a/f$a;->g:F

    .line 62
    iget p1, p2, Lorg/andresoviedo/android_3d_model_engine/b/c;->l:F

    iput p1, p0, Lcom/b/a/a/f$a;->h:F

    return-void
.end method
