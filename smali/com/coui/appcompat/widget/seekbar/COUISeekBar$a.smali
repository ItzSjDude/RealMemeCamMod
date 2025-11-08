.class Lcom/coui/appcompat/widget/seekbar/COUISeekBar$a;
.super Ljava/lang/Object;
.source "COUISeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/seekbar/COUISeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;


# virtual methods
.method public run()V
    .locals 2

    .line 810
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 811
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$a;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$a;->a:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-static {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->e(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
