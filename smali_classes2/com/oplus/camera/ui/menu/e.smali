.class public Lcom/oplus/camera/ui/menu/e;
.super Ljava/lang/Object;
.source "OptionItemInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/e;->a:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/e;->b:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/e;->c:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/e;->d:Landroid/graphics/drawable/Drawable;

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/oplus/camera/ui/menu/e;->e:I

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/e;->f:Z

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/e;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/oplus/camera/ui/menu/e;->e:I

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/e;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/e;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/e;->f:Z

    return-void
.end method

.method public b()I
    .locals 0

    .line 34
    iget p0, p0, Lcom/oplus/camera/ui/menu/e;->e:I

    return p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/e;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/e;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/e;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/e;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method public f()Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/e;->f:Z

    return p0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/e;->a:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/e;->c:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/e;->b:Ljava/lang/String;

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/e;->f:Z

    return-void
.end method
