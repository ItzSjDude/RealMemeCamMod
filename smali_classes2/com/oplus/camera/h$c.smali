.class Lcom/oplus/camera/h$c;
.super Ljava/lang/Object;
.source "CameraPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/h;

.field private b:Lcom/coui/appcompat/dialog/app/b;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/h;Lcom/coui/appcompat/dialog/app/b;Ljava/util/List;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/dialog/app/b;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 778
    iput-object p1, p0, Lcom/oplus/camera/h$c;->a:Lcom/oplus/camera/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 774
    iput-object p1, p0, Lcom/oplus/camera/h$c;->b:Lcom/coui/appcompat/dialog/app/b;

    .line 775
    iput-object p1, p0, Lcom/oplus/camera/h$c;->c:Ljava/util/List;

    .line 776
    iput-object p1, p0, Lcom/oplus/camera/h$c;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 779
    iput-object p2, p0, Lcom/oplus/camera/h$c;->b:Lcom/coui/appcompat/dialog/app/b;

    .line 780
    iput-object p3, p0, Lcom/oplus/camera/h$c;->c:Ljava/util/List;

    .line 781
    iput-object p4, p0, Lcom/oplus/camera/h$c;->d:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    .line 785
    iget-object p0, p0, Lcom/oplus/camera/h$c;->b:Lcom/coui/appcompat/dialog/app/b;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 789
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result p0

    return p0
.end method

.method public b()V
    .locals 0

    .line 793
    iget-object p0, p0, Lcom/oplus/camera/h$c;->b:Lcom/coui/appcompat/dialog/app/b;

    if-eqz p0, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b;->show()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 799
    invoke-virtual {p0}, Lcom/oplus/camera/h$c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/oplus/camera/h$c;->b:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 803
    iput-object v0, p0, Lcom/oplus/camera/h$c;->b:Lcom/coui/appcompat/dialog/app/b;

    .line 804
    iput-object v0, p0, Lcom/oplus/camera/h$c;->c:Ljava/util/List;

    .line 805
    iput-object v0, p0, Lcom/oplus/camera/h$c;->d:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 809
    iget-object p0, p0, Lcom/oplus/camera/h$c;->c:Ljava/util/List;

    return-object p0
.end method

.method public e()Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 813
    iget-object p0, p0, Lcom/oplus/camera/h$c;->d:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public f()Z
    .locals 1

    .line 817
    iget-object p0, p0, Lcom/oplus/camera/h$c;->c:Ljava/util/List;

    if-eqz p0, :cond_0

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 818
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
