.class public Lcom/oplus/camera/ui/preview/a/y$a;
.super Ljava/lang/Object;
.source "TexturePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/a/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/oplus/camera/gl/h;

.field public b:Lcom/oplus/camera/gl/g;

.field public c:Lcom/oplus/camera/gl/s;

.field public d:Lcom/oplus/camera/gl/s;

.field public e:Lcom/oplus/camera/aps/util/CameraApsResult;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:[F

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field final synthetic p:Lcom/oplus/camera/ui/preview/a/y;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/preview/a/y;)V
    .locals 1

    .line 76
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/y$a;->p:Lcom/oplus/camera/ui/preview/a/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    .line 78
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/y$a;->b:Lcom/oplus/camera/gl/g;

    .line 79
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    .line 80
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/y$a;->d:Lcom/oplus/camera/gl/s;

    .line 81
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/y$a;->e:Lcom/oplus/camera/aps/util/CameraApsResult;

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/y$a;->f:Z

    .line 83
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/y$a;->g:Z

    .line 84
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/y$a;->h:Z

    .line 85
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/y$a;->i:[F

    .line 86
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/y$a;->j:I

    .line 87
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/y$a;->k:I

    .line 88
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/y$a;->l:I

    .line 89
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/y$a;->m:I

    .line 90
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/y$a;->n:I

    .line 91
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/y$a;->o:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FrameInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mExtTexture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/y$a;->b:Lcom/oplus/camera/gl/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mInTexture: "

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/y$a;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight: "

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/y$a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRequestRenderType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/y$a;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOrientation: "

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/y$a;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mbApsAlgoInitFinish: "

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/y$a;->h:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
