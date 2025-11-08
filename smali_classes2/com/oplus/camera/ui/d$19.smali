.class Lcom/oplus/camera/ui/d$19;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->a(III[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:[Ljava/lang/Object;

.field final synthetic e:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;III[Ljava/lang/Object;)V
    .locals 0

    .line 6079
    iput-object p1, p0, Lcom/oplus/camera/ui/d$19;->e:Lcom/oplus/camera/ui/d;

    iput p2, p0, Lcom/oplus/camera/ui/d$19;->a:I

    iput p3, p0, Lcom/oplus/camera/ui/d$19;->b:I

    iput p4, p0, Lcom/oplus/camera/ui/d$19;->c:I

    iput-object p5, p0, Lcom/oplus/camera/ui/d$19;->d:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 6082
    iget-object v0, p0, Lcom/oplus/camera/ui/d$19;->e:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->cR()V

    .line 6084
    iget-object v0, p0, Lcom/oplus/camera/ui/d$19;->e:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->p(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/a/a;

    move-result-object v1

    iget v2, p0, Lcom/oplus/camera/ui/d$19;->a:I

    iget v5, p0, Lcom/oplus/camera/ui/d$19;->b:I

    iget-object v0, p0, Lcom/oplus/camera/ui/d$19;->e:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->aa(Lcom/oplus/camera/ui/d;)I

    move-result v6

    iget-object v0, p0, Lcom/oplus/camera/ui/d$19;->e:Lcom/oplus/camera/ui/d;

    const-string v3, "key_full_screen_center_support"

    .line 6085
    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/d;->j(Ljava/lang/String;)Z

    move-result v8

    iget v10, p0, Lcom/oplus/camera/ui/d$19;->c:I

    iget-object v11, p0, Lcom/oplus/camera/ui/d$19;->d:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 6084
    invoke-virtual/range {v1 .. v11}, Lcom/oplus/camera/ui/a/a;->a(IZZIIZZZI[Ljava/lang/Object;)V

    return-void
.end method
