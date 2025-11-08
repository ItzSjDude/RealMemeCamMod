.class public abstract Lcom/oplus/camera/r/a;
.super Ljava/lang/Object;
.source "SLVBaseMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/r/a$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/app/Activity;

.field protected b:Lcom/oplus/camera/ui/CameraUIInterface;

.field protected c:Lcom/oplus/camera/r/a$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/ui/CameraUIInterface;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/oplus/camera/r/a;->c:Lcom/oplus/camera/r/a$a;

    .line 51
    iput-object p1, p0, Lcom/oplus/camera/r/a;->a:Landroid/app/Activity;

    .line 52
    iput-object p2, p0, Lcom/oplus/camera/r/a;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string p0, "SLVBaseMode"

    const-string p1, " enter"

    .line 54
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method abstract a()I
.end method

.method public a(I)Lcom/oplus/camera/ui/control/b;
    .locals 3

    const-string p0, "button_shape_dial_still"

    const-string v0, "button_color_inside_red"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    .line 80
    :cond_0
    new-instance p0, Lcom/oplus/camera/ui/control/b;

    invoke-direct {p0}, Lcom/oplus/camera/ui/control/b;-><init>()V

    const-string p1, "button_color_inside_none"

    .line 81
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 82
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    goto :goto_1

    .line 74
    :cond_1
    new-instance p1, Lcom/oplus/camera/ui/control/b;

    const/4 v2, 0x5

    invoke-direct {p1, v2, v0, p0, v1}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 68
    :cond_2
    new-instance p1, Lcom/oplus/camera/ui/control/b;

    const/4 v2, 0x6

    invoke-direct {p1, v2, v0, p0, v1}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    :goto_0
    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public a(Lcom/oplus/camera/r/a$a;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/oplus/camera/r/a;->c:Lcom/oplus/camera/r/a$a;

    return-void
.end method

.method public a(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c()I
    .locals 0

    const p0, 0x7fffffff

    return p0
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/oplus/camera/r/a;->a:Landroid/app/Activity;

    .line 118
    iput-object v0, p0, Lcom/oplus/camera/r/a;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 119
    iput-object v0, p0, Lcom/oplus/camera/r/a;->c:Lcom/oplus/camera/r/a$a;

    const-string p0, "SLVBaseMode"

    const-string v0, "exit"

    .line 121
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
