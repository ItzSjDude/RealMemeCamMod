.class Lcom/oplus/camera/ui/menu/levelcontrol/c$1;
.super Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$c;
.source "BlurMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/levelcontrol/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/levelcontrol/c;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/levelcontrol/c;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getRealValue(I)I

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->access$000(Lcom/oplus/camera/ui/menu/levelcontrol/c;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    invoke-virtual {v1, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->convertBlurMenuValueToTextValue(I)F

    move-result p1

    .line 145
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    invoke-static {v1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->access$002(Lcom/oplus/camera/ui/menu/levelcontrol/c;I)I

    .line 146
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->access$100(Lcom/oplus/camera/ui/menu/levelcontrol/c;)Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->a(IZ)V

    .line 147
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->access$100(Lcom/oplus/camera/ui/menu/levelcontrol/c;)Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->k()V

    .line 149
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->access$200(Lcom/oplus/camera/ui/menu/levelcontrol/c;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->access$200(Lcom/oplus/camera/ui/menu/levelcontrol/c;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->convertValueToFocus(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
