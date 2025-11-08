.class Lcom/oplus/camera/ui/menu/a/e$4;
.super Ljava/lang/Object;
.source "ModePickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/a/e;->setTextArray(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/a/e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/a/e;)V
    .locals 0

    .line 674
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$4;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 677
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e$4;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/a/e;->b(Lcom/oplus/camera/ui/menu/a/e;)Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/camera/ui/menu/a/e;->a(Lcom/oplus/camera/ui/menu/a/e;Landroid/text/TextPaint;)V

    return-void
.end method
