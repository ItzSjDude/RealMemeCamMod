.class Lcom/oplus/camera/ui/d$18;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->a(II[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:[Ljava/lang/Object;

.field final synthetic d:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;II[Ljava/lang/Object;)V
    .locals 0

    .line 6060
    iput-object p1, p0, Lcom/oplus/camera/ui/d$18;->d:Lcom/oplus/camera/ui/d;

    iput p2, p0, Lcom/oplus/camera/ui/d$18;->a:I

    iput p3, p0, Lcom/oplus/camera/ui/d$18;->b:I

    iput-object p4, p0, Lcom/oplus/camera/ui/d$18;->c:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 6063
    iget-object v0, p0, Lcom/oplus/camera/ui/d$18;->d:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->cR()V

    .line 6065
    iget-object v0, p0, Lcom/oplus/camera/ui/d$18;->d:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->p(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/a/a;

    move-result-object v1

    iget v2, p0, Lcom/oplus/camera/ui/d$18;->a:I

    iget v5, p0, Lcom/oplus/camera/ui/d$18;->b:I

    iget-object v0, p0, Lcom/oplus/camera/ui/d$18;->d:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->aa(Lcom/oplus/camera/ui/d;)I

    move-result v6

    iget-object v0, p0, Lcom/oplus/camera/ui/d$18;->d:Lcom/oplus/camera/ui/d;

    const-string v3, "key_full_screen_center_support"

    .line 6066
    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/d;->j(Ljava/lang/String;)Z

    move-result v8

    iget-object v10, p0, Lcom/oplus/camera/ui/d$18;->c:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 6065
    invoke-virtual/range {v1 .. v10}, Lcom/oplus/camera/ui/a/a;->a(IZZIIZZZ[Ljava/lang/Object;)V

    return-void
.end method
