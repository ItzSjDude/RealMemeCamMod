.class Lcom/oplus/camera/ui/d$76;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Lcom/oplus/camera/timelapsepro/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->gf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;)V
    .locals 0

    .line 14110
    iput-object p1, p0, Lcom/oplus/camera/ui/d$76;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(IZ[Ljava/lang/Object;)V
    .locals 15

    move-object v0, p0

    .line 14113
    iget-object v1, v0, Lcom/oplus/camera/ui/d$76;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v1}, Lcom/oplus/camera/ui/d;->p(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/a/a;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    move/from16 v3, p1

    if-eq v1, v3, :cond_0

    .line 14115
    iget-object v0, v0, Lcom/oplus/camera/ui/d$76;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->p(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/a/a;

    move-result-object v2

    xor-int/lit8 v4, p2, 0x1

    const/16 v6, 0xbb8

    const v7, 0x7f0805e9

    const v8, 0x7f0604ff

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, -0x1

    move/from16 v3, p1

    move/from16 v5, p2

    move-object/from16 v14, p3

    invoke-virtual/range {v2 .. v14}, Lcom/oplus/camera/ui/a/a;->a(IZZIIIIZZZI[Ljava/lang/Object;)V

    goto :goto_0

    .line 14119
    :cond_0
    iget-object v0, v0, Lcom/oplus/camera/ui/d$76;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->p(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/a/a;->c(Z)V

    :cond_1
    :goto_0
    return-void
.end method
