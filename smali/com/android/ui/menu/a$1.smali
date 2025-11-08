.class Lcom/android/ui/menu/a$1;
.super Ljava/lang/Object;
.source "CameraWatermarkDisplayInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ui/menu/a;->a(Landroidx/appcompat/app/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/ui/menu/a;


# direct methods
.method constructor <init>(Lcom/android/ui/menu/a;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/ui/menu/a$1;->a:Lcom/android/ui/menu/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    .line 107
    iget-object p1, p0, Lcom/android/ui/menu/a$1;->a:Lcom/android/ui/menu/a;

    iget-object p3, p1, Lcom/android/ui/menu/a;->e:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/ui/menu/a$1;->a:Lcom/android/ui/menu/a;

    invoke-static {v0}, Lcom/android/ui/menu/a;->a(Lcom/android/ui/menu/a;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/ui/menu/a;->a(Lcom/android/ui/menu/a;I)Z

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/android/ui/menu/a$1;->a:Lcom/android/ui/menu/a;

    iget-object p3, p1, Lcom/android/ui/menu/a;->e:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/ui/menu/a$1;->a:Lcom/android/ui/menu/a;

    invoke-static {v0}, Lcom/android/ui/menu/a;->a(Lcom/android/ui/menu/a;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/ui/menu/a;->a(Lcom/android/ui/menu/a;I)Z

    .line 112
    :goto_0
    iget-object p1, p0, Lcom/android/ui/menu/a$1;->a:Lcom/android/ui/menu/a;

    invoke-static {p1}, Lcom/android/ui/menu/a;->b(Lcom/android/ui/menu/a;)Lcom/coui/appcompat/widget/toolbar/COUIActionMenuItemView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 113
    iget-object p1, p0, Lcom/android/ui/menu/a$1;->a:Lcom/android/ui/menu/a;

    invoke-static {p1}, Lcom/android/ui/menu/a;->b(Lcom/android/ui/menu/a;)Lcom/coui/appcompat/widget/toolbar/COUIActionMenuItemView;

    move-result-object p1

    iget-object p2, p0, Lcom/android/ui/menu/a$1;->a:Lcom/android/ui/menu/a;

    iget-object p2, p2, Lcom/android/ui/menu/a;->e:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuItemView;->setEnabled(Z)V

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/android/ui/menu/a$1;->a:Lcom/android/ui/menu/a;

    iget-object p1, p1, Lcom/android/ui/menu/a;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 117
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/ui/menu/a$1;->a:Lcom/android/ui/menu/a;

    const p2, 0x7f1003a3

    .line 118
    invoke-virtual {p0, p2}, Lcom/android/ui/menu/a;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 117
    invoke-static {p1, p0}, Lcom/oplus/camera/util/o;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
